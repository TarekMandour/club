<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Client;
use Illuminate\Support\Str;
use phpDocumentor\Reflection\DocBlock\Tags\Uses;
use Validator;

class AuthController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth:admin');
    }

    public function login(Request $request)
    {

        $rule = [
            'username' => 'required',
            'password' => 'required|min:6',

        ];
        $validate = Validator::make($request->all(), $rule);

        if ($validate->fails()) {

            return response(['status' => 401, 'msg' => $validate->messages()->first(), 'data' => NULL]);
        } else {
            $client = Client::where('phone', $request->username)->first();


            if (!empty($client)) {
                if (Hash::check($request->password, $client->password)) {

                    Auth::guard('client')->attempt(['phone' => $client->phone, 'password' => $request->password, 'is_active' => 1], Str::random(10));

                    $client->token = $request->token;
                    $client->save();
                    return $this->get_profile($client->id);

                } else {
                    return response(['status' => 401, 'msg' => trans('lang.Password_is_wrong'), 'data' => NULL]);

                }
            } else {
                return response(['status' => 401, 'msg' => trans('lang.There_is_no_account_for_this_user'), 'data' => NULL]);

            }

        }

    }

    public function check_code(Request $request)
    {

        $rule = [
            'phone' => 'required',
            'recode' => 'required|min:4'
        ];

        $validate = Validator::make($request->all(), $rule);

        if ($validate->fails()) {

            return response(['status' => 401, 'msg' => $validate->messages()->first(), 'data' => NULL]);
        } else {

            $message = "كود التحقق : " . $request->recode;

            $ch = curl_init();
            $url = "https://smssmartegypt.com/sms/api/";
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, "username=eng.elnader@gmail.com&password=123456&sendername=MSPharmacys&mobiles=" . $request->phone . "&message=" . $message . " "); // define what you want to post
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            $output = curl_exec($ch);

            curl_close($ch);

            return response(['status' => 200, 'msg' => trans('lang.Successfully_done'), 'data' => NULL]);


        }

    }

    public function change_pasword(Request $request)
    {

        $rule = [
            'phone' => 'required',
            'password' => 'required|min:6'
        ];

        $validate = Validator::make($request->all(), $rule);

        if ($validate->fails()) {

            return response(['status' => 401, 'msg' => $validate->messages()->first(), 'data' => NULL]);
        } else {


            $data = Client::where('phone', $request->phone)->update([
                'password' => Hash::make($request->password)
            ]);

            if ($data) {
                $client = Client::where('phone', $request->phone)->first();
                return $this->get_profile($client->id);

            } else {
                return response(['status' => 401, 'msg' => trans('lang.Sorry_phone_number_is_wrong'), 'data' => NULL]);

            }

        }

    }

    public function Register(Request $request)
    {

        $rule = [
            'membership_no' => 'required',
            'national_no' => 'required'
        ];
        $validate = Validator::make($request->all(), $rule);

        if ($validate->fails()) {

            return response(['status' => 401, 'msg' => $validate->messages()->first(), 'data' => NULL]);
        } else {
            $client = Client::where('membership_no', $request->membership_no)->where('national_no', $request->national_no)->first();


            if (!empty($client)) {

                return $this->get_profile($client->id);

            } else {
                return response(['status' => 401, 'msg' => trans('lang.There_is_no_account_for_this_user'), 'data' => NULL]);

            }

        }

    }

    public function UpdateProfile(Request $request)
    {

        $rule = [
            'client_id' => 'required'
        ];

        $validate = Validator::make($request->all(), $rule);

        if ($validate->fails()) {

            return response(['status' => 401, 'msg' => $validate->messages()->first(), 'data' => NULL]);
        } else {

            $old_client = Client::find($request->client_id);

            if ($img = $request->file('photo')) {
                $name = 'img1_' . time() . '.' . $img->getClientOriginalExtension();
                $img->move(public_path('uploads/clients'), $name);
                $photo = $name;
            } else {
                $photo = $old_client->photo;
            }

            $data = Client::where('id', $request->client_id)->update([
                'photo' => $photo,
            ]);

            return $this->get_profile($request->client_id);

        }

    }

    public function get_profile($id)
    {

        $data = Client::with('Followers', 'Payments', 'Debts', 'Cards', 'Notifications')->find($id);

        if (!$data) {
            return response(['status' => 404, 'msg' => trans('lang.There_are_no_results'), 'data' => NULL]);
        } else {
            return response(['status' => 200, 'msg' => trans('lang.Successfully_done'), 'data' => $data]);

        }
    }


}
