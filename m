Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C24CF433D02
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 19:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A095589D1D;
	Tue, 19 Oct 2021 17:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E631489D1D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 17:08:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="226038956"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="226038956"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 10:07:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="443975620"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 19 Oct 2021 10:07:41 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 10:07:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 19 Oct 2021 22:37:37 +0530
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.012;
 Tue, 19 Oct 2021 10:07:35 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>
Thread-Topic: [PATCH] Revert "drm/i915/bios: gracefully disable dual eDP for
 now"
Thread-Index: AQHXxN6RQxnP7VKbVEGYA4ily3w3BKvbBPUA
Date: Tue, 19 Oct 2021 17:07:34 +0000
Message-ID: <4757b40e1af80c28d4456e9ed1f9dd05a177f1f0.camel@intel.com>
References: <20211019114334.24643-1-jani.nikula@intel.com>
In-Reply-To: <20211019114334.24643-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="utf-8"
Content-ID: <A6F8B07DD581FF489E82435A61C7035C@intel.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/bios: gracefully disable
 dual eDP for now"
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

T24gVHVlLCAyMDIxLTEwLTE5IGF0IDE0OjQzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhpcyByZXZlcnRzIGNvbW1pdCAwNTczNGNhMmE4Zjc2YzllYjM4OTBiM2M5ZGZjMzQ2N2YwMzEw
NWMxLg0KPiANCj4gSXQncyBub3QgZ3JhY2VmdWwsIGluc3RlYWQgaXQgbGVhZHMgdG8gYm9vdCB0
aW1lIHdhcm5pbmcgc3BsYXRzIGluIHRoZQ0KPiBjYXNlIGl0IGlzIHN1cHBvc2VkIHRvIGhhbmRs
ZSBncmFjZWZ1bGx5LiBBcHBhcmVudGx5IHRoZSBCSU9TL0dPUA0KPiBlbmFibGluZyB0aGUgcG9y
dCB3ZSBlbmQgdXAgc2tpcHBpbmcgbGVhZHMgdG8gc3RhdGUgcmVhZG91dA0KPiBwcm9ibGVtcy4g
QmFjayB0byB0aGUgZHJhd2luZyBib2FyZC4NCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBSZWZlcmVuY2VzOiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18yMTI1NS9iYXQt
YWRscC00L2Jvb3QwLnR4dA0KPiBGaXhlczogMDU3MzRjYTJhOGY3ICgiZHJtL2k5MTUvYmlvczog
Z3JhY2VmdWxseSBkaXNhYmxlIGR1YWwgZURQIGZvciBub3ciKQ0KPiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
fCA0NyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQ3IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMN
Cj4gaW5kZXggYjk5OTA3YzY1NmJiLi5mOTc3NmNhODVkZTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IEBAIC0xOTMwLDUwICsxOTMwLDYgQEAg
c3RhdGljIGludCBfaW50ZWxfYmlvc19tYXhfdG1kc19jbG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGEgKmRldmQNCj4gIAl9DQo+ICB9DQo+ICANCj4gLXN0YXRpYyBlbnVt
IHBvcnQgZ2V0X2VkcF9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiAtew0K
PiAtCWNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YTsNCj4gLQll
bnVtIHBvcnQgcG9ydDsNCj4gLQ0KPiAtCWZvcl9lYWNoX3BvcnQocG9ydCkgew0KPiAtCQlkZXZk
YXRhID0gaTkxNS0+dmJ0LnBvcnRzW3BvcnRdOw0KPiAtDQo+IC0JCWlmIChkZXZkYXRhICYmIGlu
dGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19lZHAoZGV2ZGF0YSkpDQo+IC0JCQlyZXR1cm4gcG9y
dDsNCj4gLQl9DQo+IC0NCj4gLQlyZXR1cm4gUE9SVF9OT05FOw0KPiAtfQ0KPiAtDQo+IC0vKg0K
PiAtICogRklYTUU6IFRoZSBwb3dlciBzZXF1ZW5jZXIgYW5kIGJhY2tsaWdodCBjb2RlIGN1cnJl
bnRseSBkbyBub3Qgc3VwcG9ydCBtb3JlDQo+IC0gKiB0aGFuIG9uZSBzZXQgcmVnaXN0ZXJzLCBh
dCBsZWFzdCBub3Qgb24gYW55dGhpbmcgb3RoZXIgdGhhbiBWTFYvQ0hWLiBJdCB3aWxsDQo+IC0g
KiBjbG9iYmVyIHRoZSByZWdpc3RlcnMuIEFzIGEgdGVtcG9yYXJ5IHdvcmthcm91bmQsIGdyYWNl
ZnVsbHkgcHJldmVudCBtb3JlDQo+IC0gKiB0aGFuIG9uZSBlRFAgZnJvbSBiZWluZyByZWdpc3Rl
cmVkLg0KPiAtICovDQo+IC1zdGF0aWMgdm9pZCBzYW5pdGl6ZV9kdWFsX2VkcChzdHJ1Y3QgaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEsDQo+IC0JCQkgICAgICBlbnVtIHBvcnQgcG9y
dCkNCj4gLXsNCj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRldmRhdGEtPmk5
MTU7DQo+IC0Jc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxkID0gJmRldmRhdGEtPmNo
aWxkOw0KPiAtCWVudW0gcG9ydCBwOw0KPiAtDQo+IC0JLyogQ0hWIG1pZ2h0IG5vdCBjbG9iYmVy
IFBQUyByZWdpc3RlcnMuICovDQo+IC0JaWYgKElTX0NIRVJSWVZJRVcoaTkxNSkpDQo+IC0JCXJl
dHVybjsNCj4gLQ0KPiAtCXAgPSBnZXRfZWRwX3BvcnQoaTkxNSk7DQo+IC0JaWYgKHAgPT0gUE9S
VF9OT05FKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAi
Ym90aCBwb3J0cyAlYyBhbmQgJWMgY29uZmlndXJlZCBhcyBlRFAsICINCj4gLQkJICAgICJkaXNh
YmxpbmcgcG9ydCAlYyBlRFBcbiIsIHBvcnRfbmFtZShwKSwgcG9ydF9uYW1lKHBvcnQpLA0KPiAt
CQkgICAgcG9ydF9uYW1lKHBvcnQpKTsNCj4gLQ0KPiAtCWNoaWxkLT5kZXZpY2VfdHlwZSAmPSB+
REVWSUNFX1RZUEVfRElTUExBWVBPUlRfT1VUUFVUOw0KPiAtCWNoaWxkLT5kZXZpY2VfdHlwZSAm
PSB+REVWSUNFX1RZUEVfSU5URVJOQUxfQ09OTkVDVE9SOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMg
Ym9vbCBpc19wb3J0X3ZhbGlkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBlbnVtIHBv
cnQgcG9ydCkNCj4gIHsNCj4gIAkvKg0KPiBAQCAtMjAzMSw5ICsxOTg3LDYgQEAgc3RhdGljIHZv
aWQgcGFyc2VfZGRpX3BvcnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICAJCSAg
ICBzdXBwb3J0c190eXBlY191c2IsIHN1cHBvcnRzX3RidCwNCj4gIAkJICAgIGRldmRhdGEtPmRz
YyAhPSBOVUxMKTsNCj4gIA0KPiAtCWlmIChpc19lZHApDQo+IC0JCXNhbml0aXplX2R1YWxfZWRw
KGRldmRhdGEsIHBvcnQpOw0KPiAtDQo+ICAJaWYgKGlzX2R2aSkNCj4gIAkJc2FuaXRpemVfZGRj
X3BpbihkZXZkYXRhLCBwb3J0KTsNCj4gIA0KDQo=
