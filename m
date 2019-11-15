Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD17FD69D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 07:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8060E6E044;
	Fri, 15 Nov 2019 06:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10A86E044
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 06:57:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 22:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,307,1569308400"; d="scan'208";a="195303861"
Received: from irsmsx105.ger.corp.intel.com ([163.33.3.28])
 by orsmga007.jf.intel.com with ESMTP; 14 Nov 2019 22:57:06 -0800
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.185]) by
 irsmsx105.ger.corp.intel.com ([169.254.7.210]) with mapi id 14.03.0439.000;
 Fri, 15 Nov 2019 06:57:05 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Jesse Barnes <jsbarnes@google.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 1/2] drm/i915/vbt: Parse panel options
 separately from timing data
Thread-Index: AQHVmw4AxvkH2iTfI0mliFsMv0J0eaeLWosAgABzDhA=
Date: Fri, 15 Nov 2019 06:57:04 +0000
Message-ID: <43D4F724E12AB6478FC1572B3FBE89D0769D4066@IRSMSX106.ger.corp.intel.com>
References: <20191114170810.14829-1-matthew.d.roper@intel.com>
 <20191114170810.14829-2-matthew.d.roper@intel.com>
 <CAJmaN=k_Swc4KSf_cCV5_yqvdjz5SxTUKGX1V-7SnfJRVnMFtw@mail.gmail.com>
In-Reply-To: <CAJmaN=k_Swc4KSf_cCV5_yqvdjz5SxTUKGX1V-7SnfJRVnMFtw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/vbt: Parse panel options
 separately from timing data
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SEksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmVz
c2UNCj4gQmFybmVzDQo+IFNlbnQ6IHBlcmphbnRhaSAxNS4gbWFycmFza3V1dGEgMjAxOSAyLjA1
DQo+IFRvOiBSb3BlciwgTWF0dGhldyBEIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiBD
YzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjQgMS8y
XSBkcm0vaTkxNS92YnQ6IFBhcnNlIHBhbmVsIG9wdGlvbnMNCj4gc2VwYXJhdGVseSBmcm9tIHRp
bWluZyBkYXRhDQo+IA0KPiBMR1RNLg0KPiANCj4gUmV2aWV3ZWQtYnk6IEplc3NlIEJhcm5lcyA8
anNiYXJuZXNAZ29vZ2xlLmNvbT4NClRoYW5rcyBKZXNzZSDwn5iJIA0KPiANCj4gT24gVGh1LCBO
b3YgMTQsIDIwMTkgYXQgOTowNyBBTSBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPg0KPiB3cm90ZToNCj4gPg0KPiA+IE5ld2VyIFZCVCB2ZXJzaW9ucyB3aWxsIGFkZCBhbiBh
bHRlcm5hdGUgd2F5IHRvIHJlYWQgcGFuZWwgRFREDQo+ID4gaW5mb3JtYXRpb24sIHNvIGxldCdz
IHNwbGl0IHBhcnNpbmcgb2YgdGhlIGdlbmVyYWwgcGFuZWwgaW5mb3JtYXRpb24NCj4gPiBmcm9t
IHRoZSB0aW1pbmcgZGF0YSBpbiBwcmVwYXJhdGlvbi4NCj4gPg0KPiA+IENjOiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMjcNCj4gPiArKysrKysrKysrKysrKystLS0t
LS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Jpb3MuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMNCj4gPiBpbmRleCA2ZDdiMWE4M2NiMDcuLmQxM2NlMGI3ZGI4YiAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ID4gQEAgLTIwOCwxNyAr
MjA4LDEyIEBAIGdldF9sdmRzX2ZwX3RpbWluZyhjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRi
LA0KPiA+ICAgICAgICAgcmV0dXJuIChjb25zdCBzdHJ1Y3QgbHZkc19mcF90aW1pbmcgKikoKGNv
bnN0IHU4ICopYmRiICsgb2ZzKTsNCj4gPiB9DQo+ID4NCj4gPiAtLyogVHJ5IHRvIGZpbmQgaW50
ZWdyYXRlZCBwYW5lbCBkYXRhICovDQo+ID4gKy8qIFBhcnNlIGdlbmVyYWwgcGFuZWwgb3B0aW9u
cyAqLw0KPiA+ICBzdGF0aWMgdm9pZA0KPiA+IC1wYXJzZV9sZnBfcGFuZWxfZGF0YShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgY29u
c3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikNCj4gPiArcGFyc2VfcGFuZWxfb3B0aW9ucyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gKyAgICAgICAgICAgICAgICAgICBj
b25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiKQ0KPiA+ICB7DQo+ID4gICAgICAgICBjb25zdCBz
dHJ1Y3QgYmRiX2x2ZHNfb3B0aW9ucyAqbHZkc19vcHRpb25zOw0KPiA+IC0gICAgICAgY29uc3Qg
c3RydWN0IGJkYl9sdmRzX2xmcF9kYXRhICpsdmRzX2xmcF9kYXRhOw0KPiA+IC0gICAgICAgY29u
c3Qgc3RydWN0IGJkYl9sdmRzX2xmcF9kYXRhX3B0cnMgKmx2ZHNfbGZwX2RhdGFfcHRyczsNCj4g
PiAtICAgICAgIGNvbnN0IHN0cnVjdCBsdmRzX2R2b190aW1pbmcgKnBhbmVsX2R2b190aW1pbmc7
DQo+ID4gLSAgICAgICBjb25zdCBzdHJ1Y3QgbHZkc19mcF90aW1pbmcgKmZwX3RpbWluZzsNCj4g
PiAtICAgICAgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwYW5lbF9maXhlZF9tb2RlOw0KPiA+
ICAgICAgICAgaW50IHBhbmVsX3R5cGU7DQo+ID4gICAgICAgICBpbnQgZHJyc19tb2RlOw0KPiA+
ICAgICAgICAgaW50IHJldDsNCj4gPiBAQCAtMjY3LDYgKzI2MiwxOSBAQCBwYXJzZV9sZnBfcGFu
ZWxfZGF0YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQ0KPiAqZGV2X3ByaXYsDQo+ID4gICAgICAg
ICAgICAgICAgIERSTV9ERUJVR19LTVMoIkRSUlMgbm90IHN1cHBvcnRlZCAoVkJUIGlucHV0KVxu
Iik7DQo+ID4gICAgICAgICAgICAgICAgIGJyZWFrOw0KPiA+ICAgICAgICAgfQ0KPiA+ICt9DQo+
ID4gKw0KPiA+ICsvKiBUcnkgdG8gZmluZCBpbnRlZ3JhdGVkIHBhbmVsIHRpbWluZyBkYXRhICov
IHN0YXRpYyB2b2lkDQo+ID4gK3BhcnNlX2xmcF9wYW5lbF9kdGQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LA0KPiA+ICsgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGJk
Yl9oZWFkZXIgKmJkYikgew0KPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IGJkYl9sdmRzX2xmcF9k
YXRhICpsdmRzX2xmcF9kYXRhOw0KPiA+ICsgICAgICAgY29uc3Qgc3RydWN0IGJkYl9sdmRzX2xm
cF9kYXRhX3B0cnMgKmx2ZHNfbGZwX2RhdGFfcHRyczsNCj4gPiArICAgICAgIGNvbnN0IHN0cnVj
dCBsdmRzX2R2b190aW1pbmcgKnBhbmVsX2R2b190aW1pbmc7DQo+ID4gKyAgICAgICBjb25zdCBz
dHJ1Y3QgbHZkc19mcF90aW1pbmcgKmZwX3RpbWluZzsNCj4gPiArICAgICAgIHN0cnVjdCBkcm1f
ZGlzcGxheV9tb2RlICpwYW5lbF9maXhlZF9tb2RlOw0KPiA+ICsgICAgICAgaW50IHBhbmVsX3R5
cGUgPSBkZXZfcHJpdi0+dmJ0LnBhbmVsX3R5cGU7DQo+ID4NCj4gPiAgICAgICAgIGx2ZHNfbGZw
X2RhdGEgPSBmaW5kX3NlY3Rpb24oYmRiLCBCREJfTFZEU19MRlBfREFUQSk7DQo+ID4gICAgICAg
ICBpZiAoIWx2ZHNfbGZwX2RhdGEpDQo+ID4gQEAgLTE4NjgsNyArMTg3Niw4IEBAIHZvaWQgaW50
ZWxfYmlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdikNCj4gPiAg
ICAgICAgIC8qIEdyYWIgdXNlZnVsIGdlbmVyYWwgZGVmaW5pdGlvbnMgKi8NCj4gPiAgICAgICAg
IHBhcnNlX2dlbmVyYWxfZmVhdHVyZXMoZGV2X3ByaXYsIGJkYik7DQo+ID4gICAgICAgICBwYXJz
ZV9nZW5lcmFsX2RlZmluaXRpb25zKGRldl9wcml2LCBiZGIpOw0KPiA+IC0gICAgICAgcGFyc2Vf
bGZwX3BhbmVsX2RhdGEoZGV2X3ByaXYsIGJkYik7DQo+ID4gKyAgICAgICBwYXJzZV9wYW5lbF9v
cHRpb25zKGRldl9wcml2LCBiZGIpOw0KPiA+ICsgICAgICAgcGFyc2VfbGZwX3BhbmVsX2R0ZChk
ZXZfcHJpdiwgYmRiKTsNCj4gPiAgICAgICAgIHBhcnNlX2xmcF9iYWNrbGlnaHQoZGV2X3ByaXYs
IGJkYik7DQo+ID4gICAgICAgICBwYXJzZV9zZHZvX3BhbmVsX2RhdGEoZGV2X3ByaXYsIGJkYik7
DQo+ID4gICAgICAgICBwYXJzZV9kcml2ZXJfZmVhdHVyZXMoZGV2X3ByaXYsIGJkYik7DQo+ID4g
LS0NCj4gPiAyLjIxLjANCj4gPg0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdA0KPiA+IEludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
