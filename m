Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3923763C8C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 22:11:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268E289F41;
	Tue,  9 Jul 2019 20:10:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E2289F41
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 20:10:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 13:10:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,471,1557212400"; d="scan'208";a="167514212"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jul 2019 13:10:57 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 13:10:57 -0700
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.206]) by
 fmsmsx123.amr.corp.intel.com ([169.254.7.171]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 13:10:57 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH v2 23/25] drm/i915/tgl: skip setting PORT_CL_DW12_* on
 initialization
Thread-Index: AQHVNeNG6bRLg5UMQkGHL5GUjwZ686bDLmaA
Date: Tue, 9 Jul 2019 20:10:56 +0000
Message-ID: <a1701b31aa40dc4b3572a3347fd2e2a16f3a9500.camel@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
 <20190708231629.9296-24-lucas.demarchi@intel.com>
In-Reply-To: <20190708231629.9296-24-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.4]
Content-ID: <DE441043B5951B499FB30D1E57072B80@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 23/25] drm/i915/tgl: skip setting
 PORT_CL_DW12_* on initialization
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA3LTA4IGF0IDE2OjE2IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IEFjY29yZGluZyB0byB0aGUgc3BlYyB3aGVuIGluaXRpYWxpemluZyB0aGUgZGlzcGxheSBp
biBUR0wgd2Ugc2hvdWxkDQo+IG5vdA0KPiBzZXQgUE9SVF9DTF9EVzEyIGZvciB0aGUgQXV4IGNo
YW5uZWwgb2YgdGhlIGNvbWJvIFBIWXMuIFdlIHdpbGwgcmUtDQo+IHVzZSB0aGUNCj4gcG93ZXIg
d2VsbCBob29rcyBmcm9tIElDTCBzbyBqdXN0IGNoZWNrIGZvciBJU19USUdFUkxBS0UoKSBpbnNp
ZGUgaXQuDQoNCg0KQlNwZWM6IDQzMDENCkl0IHRvb2sgbWUgYSB3aGlsZSB0byBmaW5kIGl0IDpQ
DQoNCg0KPiANCj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMg
fCAxMiArKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiBpbmRleCBiZTNkNGQxZWVjZTIuLmYwNDBhNzQz
NDlkZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMNCj4gQEAgLTQ1OCw4ICs0NTgsMTAgQEAgaWNsX2NvbWJvX3BoeV9h
dXhfcG93ZXJfd2VsbF9lbmFibGUoc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LA0KPiAgCXZhbCA9IEk5MTVfUkVBRChyZWdzLT5kcml2ZXIpOw0KPiAgCUk5MTVfV1JJVEUocmVn
cy0+ZHJpdmVyLCB2YWwgfCBIU1dfUFdSX1dFTExfQ1RMX1JFUShwd19pZHgpKTsNCj4gIA0KPiAt
CXZhbCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9DTF9EVzEyKHBvcnQpKTsNCj4gLQlJOTE1X1dSSVRF
KElDTF9QT1JUX0NMX0RXMTIocG9ydCksIHZhbCB8IElDTF9MQU5FX0VOQUJMRV9BVVgpOw0KPiAr
CWlmICghSVNfVElHRVJMQUtFKGRldl9wcml2KSkgew0KDQpZb3UgcHJvYmFibHkgd2FudCB0byBj
aGFuZ2UgdGhpcyB0byBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKSBvcg0Kc29tZXRoaW5n
IGxpa2UgdG8gY2FycnkgdGhpcyBjaGFuZ2UgdG8gZnV0dXJlIHBsYXRmb3Jtcy4NCg0KV2l0aCB0
aGF0Og0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+DQoNCj4gKwkJdmFsID0gSTkxNV9SRUFEKElDTF9QT1JUX0NMX0RXMTIocG9ydCkp
Ow0KPiArCQlJOTE1X1dSSVRFKElDTF9QT1JUX0NMX0RXMTIocG9ydCksIHZhbCB8DQo+IElDTF9M
QU5FX0VOQUJMRV9BVVgpOw0KPiArCX0NCj4gIA0KPiAgCWhzd193YWl0X2Zvcl9wb3dlcl93ZWxs
X2VuYWJsZShkZXZfcHJpdiwgcG93ZXJfd2VsbCk7DQo+ICANCj4gQEAgLTQ4Niw4ICs0ODgsMTAg
QEAgaWNsX2NvbWJvX3BoeV9hdXhfcG93ZXJfd2VsbF9kaXNhYmxlKHN0cnVjdA0KPiBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwNCj4gIAllbnVtIHBvcnQgcG9ydCA9IElDTF9BVVhfUFdfVE9f
UE9SVChwd19pZHgpOw0KPiAgCXUzMiB2YWw7DQo+ICANCj4gLQl2YWwgPSBJOTE1X1JFQUQoSUNM
X1BPUlRfQ0xfRFcxMihwb3J0KSk7DQo+IC0JSTkxNV9XUklURShJQ0xfUE9SVF9DTF9EVzEyKHBv
cnQpLCB2YWwgJiB+SUNMX0xBTkVfRU5BQkxFX0FVWCk7DQo+ICsJaWYgKCFJU19USUdFUkxBS0Uo
ZGV2X3ByaXYpKSB7DQo+ICsJCXZhbCA9IEk5MTVfUkVBRChJQ0xfUE9SVF9DTF9EVzEyKHBvcnQp
KTsNCj4gKwkJSTkxNV9XUklURShJQ0xfUE9SVF9DTF9EVzEyKHBvcnQpLCB2YWwgJg0KPiB+SUNM
X0xBTkVfRU5BQkxFX0FVWCk7DQo+ICsJfQ0KPiAgDQo+ICAJdmFsID0gSTkxNV9SRUFEKHJlZ3Mt
PmRyaXZlcik7DQo+ICAJSTkxNV9XUklURShyZWdzLT5kcml2ZXIsIHZhbCAmIH5IU1dfUFdSX1dF
TExfQ1RMX1JFUShwd19pZHgpKTsNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
