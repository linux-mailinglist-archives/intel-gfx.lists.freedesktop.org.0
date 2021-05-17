Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2392E383AB0
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 19:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC276E994;
	Mon, 17 May 2021 17:04:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952386E994
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 17:04:13 +0000 (UTC)
IronPort-SDR: Fwr0YFIbqmHbG/DkSB3t+MJZNLq6EksmPmZ3GAzsdZCRLYAT38W8z0er7apgXU3VImqQ5e0Y/v
 9vtgBKU5cI2Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="261748134"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="261748134"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 10:03:56 -0700
IronPort-SDR: OGp6Iq1xCGpeoVdmkmNDsuB79RhVJH4FGj/AFfDGdt/aNfgCjH3kiBNwxlQIcmsNkTmaEW1yY+
 9rm7IFoshwEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="626577039"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 17 May 2021 10:03:56 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:03:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 17 May 2021 10:03:55 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 17 May 2021 10:03:55 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 17/23] drm/i915/display: Add PSR interrupt error check
 function
Thread-Index: AQHXSTfk2G4U88vM10a1tiM+UmgVCKroYQwA
Date: Mon, 17 May 2021 17:03:54 +0000
Message-ID: <8c4257c09e5023b130f5f36ee20a31cb79c3f122.camel@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-18-matthew.d.roper@intel.com>
In-Reply-To: <20210515031035.2561658-18-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <9EB86EB92CDB8146B43329221C573C61@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 17/23] drm/i915/display: Add PSR
 interrupt error check function
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDIxLTA1LTE0IGF0IDIwOjEwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBG
cm9tOiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+DQo+IA0KPiBJ
biBvcmRlciB0byByZXVzZSBjb2RlIG9mIFBTUiBpbnRlcnJ1cHQgZXJyb3IgY2hlY2sgb24gb3Ro
ZXIgUFNSIGZ1bmN0aW9ucywNCj4gaXQgYWRkcyBwc3JfaW50ZXJydXB0X2Vycm9yX2NoZWNrKCkg
ZnVuY3Rpb24uDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KPiANCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4t
Z3llb25nLm11bkBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyB8IDQ3ICsrKysrKysrKysrKysrKy0tLS0tLS0tLQ0KPiAgMSBmaWxl
IGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGNjODUwODNkY2QyOC4u
NGE2M2QxMDg3NmNlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTEwMjksMjcgKzEwMjksMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Vu
YWJsZV9zb3VyY2Uoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAkJCSAgICAgSUdOT1JF
X1BTUjJfSFdfVFJBQ0tJTkcgOiAwKTsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHZvaWQgaW50ZWxf
cHNyX2VuYWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gLQkJCQkgICAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IC0JCQkJICAgIGNv
bnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQ0KPiArc3RhdGljIGJv
b2wgcHNyX2ludGVycnVwdF9lcnJvcl9jaGVjayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAgew0KPiAtCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGln
X3BvcnQoaW50ZWxfZHApOw0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAtCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
ID0gJmRpZ19wb3J0LT5iYXNlOw0KPiAgCXUzMiB2YWw7DQo+ICANCj4gLQlkcm1fV0FSTl9PTigm
ZGV2X3ByaXYtPmRybSwgaW50ZWxfZHAtPnBzci5lbmFibGVkKTsNCj4gLQ0KPiAtCWludGVsX2Rw
LT5wc3IucHNyMl9lbmFibGVkID0gY3J0Y19zdGF0ZS0+aGFzX3BzcjI7DQo+IC0JaW50ZWxfZHAt
PnBzci5idXN5X2Zyb250YnVmZmVyX2JpdHMgPSAwOw0KPiAtCWludGVsX2RwLT5wc3IucGlwZSA9
IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZTsNCj4gLQlpbnRlbF9k
cC0+cHNyLnRyYW5zY29kZXIgPSBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gLQkvKiBE
QzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0IDYgaWRsZSBmcmFtZXMgKi8NCj4gLQl2YWwgPSB1c2Vj
c190b19qaWZmaWVzKGludGVsX2dldF9mcmFtZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7DQo+
IC0JaW50ZWxfZHAtPnBzci5kYzNjb19leGl0X2RlbGF5ID0gdmFsOw0KPiAtCWludGVsX2RwLT5w
c3IuZGMzY29fZXhpdGxpbmUgPSBjcnRjX3N0YXRlLT5kYzNjb19leGl0bGluZTsNCj4gLQlpbnRl
bF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5lbmFibGVfcHNy
Ml9zZWxfZmV0Y2g7DQo+IC0NCj4gIAkvKg0KPiAgCSAqIElmIGEgUFNSIGVycm9yIGhhcHBlbmVk
IGFuZCB0aGUgZHJpdmVyIGlzIHJlbG9hZGVkLCB0aGUgRURQX1BTUl9JSVINCj4gIAkgKiB3aWxs
IHN0aWxsIGtlZXAgdGhlIGVycm9yIHNldCBldmVuIGFmdGVyIHRoZSByZXNldCBkb25lIGluIHRo
ZQ0KPiBAQCAtMTA3MCw5ICsxMDU0LDM2IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVf
bG9ja2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCWludGVsX2RwLT5wc3Iuc2lu
a19ub3RfcmVsaWFibGUgPSB0cnVlOw0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwN
Cj4gIAkJCSAgICAiUFNSIGludGVycnVwdGlvbiBlcnJvciBzZXQsIG5vdCBlbmFibGluZyBQU1Jc
biIpOw0KPiAtCQlyZXR1cm47DQo+ICsJCXJldHVybiBmYWxzZTsNCj4gIAl9DQo+ICANCj4gKwly
ZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiArc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9s
b2NrZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gKwkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBk
cm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0YXRlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOw0KPiArCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0K
PiArCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19wb3J0LT5iYXNlOw0KPiAr
CXUzMiB2YWw7DQo+ICsNCj4gKwlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaW50ZWxfZHAt
PnBzci5lbmFibGVkKTsNCj4gKw0KPiArCWludGVsX2RwLT5wc3IucHNyMl9lbmFibGVkID0gY3J0
Y19zdGF0ZS0+aGFzX3BzcjI7DQo+ICsJaW50ZWxfZHAtPnBzci5idXN5X2Zyb250YnVmZmVyX2Jp
dHMgPSAwOw0KPiArCWludGVsX2RwLT5wc3IucGlwZSA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+dWFwaS5jcnRjKS0+cGlwZTsNCj4gKwlpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXIgPSBjcnRj
X3N0YXRlLT5jcHVfdHJhbnNjb2RlcjsNCj4gKwkvKiBEQzUvREM2IHJlcXVpcmVzIGF0IGxlYXN0
IDYgaWRsZSBmcmFtZXMgKi8NCj4gKwl2YWwgPSB1c2Vjc190b19qaWZmaWVzKGludGVsX2dldF9m
cmFtZV90aW1lX3VzKGNydGNfc3RhdGUpICogNik7DQo+ICsJaW50ZWxfZHAtPnBzci5kYzNjb19l
eGl0X2RlbGF5ID0gdmFsOw0KPiArCWludGVsX2RwLT5wc3IuZGMzY29fZXhpdGxpbmUgPSBjcnRj
X3N0YXRlLT5kYzNjb19leGl0bGluZTsNCj4gKwlpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2ZldGNo
X2VuYWJsZWQgPSBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2g7DQo+ICsNCj4gKwlp
ZiAoIXBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hlY2soaW50ZWxfZHApKQ0KPiArCQlyZXR1cm47DQo+
ICsNCj4gIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkVuYWJsaW5nIFBTUiVzXG4iLA0K
PiAgCQkgICAgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQgPyAiMiIgOiAiMSIpOw0KPiAgCWlu
dGVsX2RwX2NvbXB1dGVfcHNyX3ZzY19zZHAoaW50ZWxfZHAsIGNydGNfc3RhdGUsIGNvbm5fc3Rh
dGUsDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
