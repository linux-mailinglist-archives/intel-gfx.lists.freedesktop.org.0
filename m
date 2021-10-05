Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9955C423199
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 22:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CC66EC41;
	Tue,  5 Oct 2021 20:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4A06EC41
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 20:21:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="225740861"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="225740861"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 13:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="714505636"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2021 13:21:10 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 13:21:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 01:51:05 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 5 Oct 2021 13:21:03 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Thread-Topic: [PATCH] drm/i915/bios: gracefully disable dual eDP for now
Thread-Index: AQHXuhJfAjsc9yQgCke0ym38APyFMavFT+QA
Date: Tue, 5 Oct 2021 20:21:03 +0000
Message-ID: <995bbd7b0d68a8c22d6192c92ec5a8bedbfcd18f.camel@intel.com>
References: <20211005175636.24669-1-jani.nikula@intel.com>
In-Reply-To: <20211005175636.24669-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <406FA2E37388F640B27B18CF59219476@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: gracefully disable dual eDP
 for now
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIxLTEwLTA1IGF0IDIwOjU2ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
Rm9yIHRoZSB0aW1lIGJlaW5nLCBuZWl0aGVyIHRoZSBwb3dlciBzZXF1ZW5jZXIgbm9yIHRoZSBi
YWNrbGlnaHQgY29kZQ0KPiBwcm9wZXJseSBzdXBwb3J0IHR3byBlRFAgcGFuZWxzIHNpbXVsdGFu
ZW91c2x5LiBXaGlsZSB0aGUgc29mdHdhcmUNCj4gc3RhdGVzIHdpbGwgYmUgaW5kZXBlbmRlbnQs
IHRoZSBzYW1lIHNldHMgb2YgcmVnaXN0ZXJzIHdpbGwgYmUgdXNlZCBmb3INCj4gYm90aCBlRFAg
cGFuZWxzLCBjbG9iYmVyaW5nIHRoZSBoYXJkd2FyZSBzdGF0ZSBhbmQgbGVhZGluZyB0byBlcnJv
cnMuDQo+IA0KPiBHcmFjZWZ1bGx5IGRpc2FibGUgZHVhbCBlRFAgdW50aWwgcHJvcGVyIHN1cHBv
cnQgaGFzIGJlZW4gYWRkZWQuDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwu
Y29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gQ2M6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgfCA0NyArKysrKysrKysr
KysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGluc2VydGlvbnMoKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4IGY5Nzc2
Y2E4NWRlMy4uYjk5OTA3YzY1NmJiIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMTkzMCw2ICsxOTMwLDUwIEBAIHN0YXRpYyBpbnQgX2lu
dGVsX2Jpb3NfbWF4X3RtZHNfY2xvY2soY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhICpkZXZkDQo+ICAJfQ0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgZW51bSBwb3J0IGdldF9lZHBf
cG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkNCj4gK3sNCj4gKwljb25zdCBzdHJ1
Y3QgaW50ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGE7DQo+ICsJZW51bSBwb3J0IHBvcnQ7
DQo+ICsNCj4gKwlmb3JfZWFjaF9wb3J0KHBvcnQpIHsNCj4gKwkJZGV2ZGF0YSA9IGk5MTUtPnZi
dC5wb3J0c1twb3J0XTsNCj4gKw0KPiArCQlpZiAoZGV2ZGF0YSAmJiBpbnRlbF9iaW9zX2VuY29k
ZXJfc3VwcG9ydHNfZWRwKGRldmRhdGEpKQ0KPiArCQkJcmV0dXJuIHBvcnQ7DQo+ICsJfQ0KPiAr
DQo+ICsJcmV0dXJuIFBPUlRfTk9ORTsNCj4gK30NCj4gKw0KPiArLyoNCj4gKyAqIEZJWE1FOiBU
aGUgcG93ZXIgc2VxdWVuY2VyIGFuZCBiYWNrbGlnaHQgY29kZSBjdXJyZW50bHkgZG8gbm90IHN1
cHBvcnQgbW9yZQ0KPiArICogdGhhbiBvbmUgc2V0IHJlZ2lzdGVycywgYXQgbGVhc3Qgbm90IG9u
IGFueXRoaW5nIG90aGVyIHRoYW4gVkxWL0NIVi4gSXQgd2lsbA0KPiArICogY2xvYmJlciB0aGUg
cmVnaXN0ZXJzLiBBcyBhIHRlbXBvcmFyeSB3b3JrYXJvdW5kLCBncmFjZWZ1bGx5IHByZXZlbnQg
bW9yZQ0KPiArICogdGhhbiBvbmUgZURQIGZyb20gYmVpbmcgcmVnaXN0ZXJlZC4NCj4gKyAqLw0K
PiArc3RhdGljIHZvaWQgc2FuaXRpemVfZHVhbF9lZHAoc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rl
cl9kYXRhICpkZXZkYXRhLA0KPiArCQkJICAgICAgZW51bSBwb3J0IHBvcnQpDQo+ICt7DQo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkZXZkYXRhLT5pOTE1Ow0KPiArCXN0cnVj
dCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZCA9ICZkZXZkYXRhLT5jaGlsZDsNCj4gKwllbnVt
IHBvcnQgcDsNCj4gKw0KPiArCS8qIENIViBtaWdodCBub3QgY2xvYmJlciBQUFMgcmVnaXN0ZXJz
LiAqLw0KPiArCWlmIChJU19DSEVSUllWSUVXKGk5MTUpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4g
KwlwID0gZ2V0X2VkcF9wb3J0KGk5MTUpOw0KPiArCWlmIChwID09IFBPUlRfTk9ORSkNCj4gKwkJ
cmV0dXJuOw0KPiArDQo+ICsJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgImJvdGggcG9ydHMgJWMg
YW5kICVjIGNvbmZpZ3VyZWQgYXMgZURQLCAiDQo+ICsJCSAgICAiZGlzYWJsaW5nIHBvcnQgJWMg
ZURQXG4iLCBwb3J0X25hbWUocCksIHBvcnRfbmFtZShwb3J0KSwNCj4gKwkJICAgIHBvcnRfbmFt
ZShwb3J0KSk7DQo+ICsNCj4gKwljaGlsZC0+ZGV2aWNlX3R5cGUgJj0gfkRFVklDRV9UWVBFX0RJ
U1BMQVlQT1JUX09VVFBVVDsNCg0KV2h5IGFsc28gY2xlYW5pbmcgdGhlIERFVklDRV9UWVBFX0RJ
U1BMQVlQT1JUX09VVFBVVCBiaXQ/IFRoZSByZXN0IGxndG0uDQoNCj4gKwljaGlsZC0+ZGV2aWNl
X3R5cGUgJj0gfkRFVklDRV9UWVBFX0lOVEVSTkFMX0NPTk5FQ1RPUjsNCj4gK30NCj4gKw0KPiAg
c3RhdGljIGJvb2wgaXNfcG9ydF92YWxpZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwg
ZW51bSBwb3J0IHBvcnQpDQo+ICB7DQo+ICAJLyoNCj4gQEAgLTE5ODcsNiArMjAzMSw5IEBAIHN0
YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0K
PiAgCQkgICAgc3VwcG9ydHNfdHlwZWNfdXNiLCBzdXBwb3J0c190YnQsDQo+ICAJCSAgICBkZXZk
YXRhLT5kc2MgIT0gTlVMTCk7DQo+ICANCj4gKwlpZiAoaXNfZWRwKQ0KPiArCQlzYW5pdGl6ZV9k
dWFsX2VkcChkZXZkYXRhLCBwb3J0KTsNCj4gKw0KPiAgCWlmIChpc19kdmkpDQo+ICAJCXNhbml0
aXplX2RkY19waW4oZGV2ZGF0YSwgcG9ydCk7DQo+ICANCg0K
