Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E67E0E3DF1
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 23:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF50A6E7C1;
	Thu, 24 Oct 2019 21:05:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7586E7C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 21:05:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 14:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="201601533"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 24 Oct 2019 14:05:44 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 24 Oct 2019 14:05:44 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.25]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.114]) with mapi id 14.03.0439.000;
 Thu, 24 Oct 2019 14:05:44 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/tgl: Handle AUX interrupts for TC ports
Thread-Index: AQHVipCiyQWNuJkmTkG3X9ukkgISAadqvc4A
Date: Thu, 24 Oct 2019 21:05:43 +0000
Message-ID: <bc09cbb3a080efd9609b6a8565358c7b7fa25866.camel@intel.com>
References: <20191024172506.16454-1-matthew.d.roper@intel.com>
 <20191024173023.22113-1-matthew.d.roper@intel.com>
In-Reply-To: <20191024173023.22113-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.9.135]
Content-ID: <7C8844FA34EA224583FFF01DC075BC9F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Handle AUX interrupts for
 TC ports
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTEwLTI0IGF0IDEwOjMwIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
ZSdyZSBjdXJyZW50bHkgb25seSBwcm9jZXNzaW5nIEFVWCBpbnRlcnJ1cHRzIG9uIHRoZSBjb21i
byBwb3J0czsNCj4gbWFrZQ0KPiBzdXJlIHdlIGhhbmRsZSB0aGUgVEMgcG9ydHMgYXMgd2VsbC4N
Cj4gDQo+IHYyOiBEcm9wIHN0YWxlIGNvbW1lbnQNCg0KUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KDQo+IA0KPiBGaXhlczogZjY2Mzc2
OWE1ZWVmICgiZHJtL2k5MTUvdGdsOiBpbml0aWFsaXplIFRDIGFuZCBUQlQgcG9ydHMiKQ0KPiBD
YzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1i
eTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgMTAgKysrKysrKystLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaCB8ICA2ICsrKysrKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAx
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jDQo+IGluZGV4IGEwNDhjNzlhNmE1NS4uMmU2NzczNGE2ZDJhIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfaXJxLmMNCj4gQEAgLTI1NzUsMTAgKzI1NzUsMTYgQEAgc3RhdGljIHUzMiBn
ZW44X2RlX3BvcnRfYXV4X21hc2soc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQ0KPiAgCXUzMiBtYXNrOw0KPiAgDQo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIp
DQo+IC0JCS8qIFRPRE86IEFkZCBBVVggZW50cmllcyBmb3IgVVNCQyAqLw0KPiAgCQlyZXR1cm4g
VEdMX0RFX1BPUlRfQVVYX0RESUEgfA0KPiAgCQkJVEdMX0RFX1BPUlRfQVVYX0RESUIgfA0KPiAt
CQkJVEdMX0RFX1BPUlRfQVVYX0RESUM7DQo+ICsJCQlUR0xfREVfUE9SVF9BVVhfRERJQyB8DQo+
ICsJCQlUR0xfREVfUE9SVF9BVVhfVVNCQzEgfA0KPiArCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkMy
IHwNCj4gKwkJCVRHTF9ERV9QT1JUX0FVWF9VU0JDMyB8DQo+ICsJCQlUR0xfREVfUE9SVF9BVVhf
VVNCQzQgfA0KPiArCQkJVEdMX0RFX1BPUlRfQVVYX1VTQkM1IHwNCj4gKwkJCVRHTF9ERV9QT1JU
X0FVWF9VU0JDNjsNCj4gKw0KPiAgDQo+ICAJbWFzayA9IEdFTjhfQVVYX0NIQU5ORUxfQTsNCj4g
IAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5KQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gaW5kZXggMDdjZjY3ZDQyNzM1Li5hN2JhODEwMGYxM2UgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaA0KPiBAQCAtNzQzNiw2ICs3NDM2LDEyIEBAIGVudW0gew0KPiAgI2RlZmlu
ZSAgR0VOOF9QT1JUX0RQX0FfSE9UUExVRwkJKDEgPDwgMykNCj4gICNkZWZpbmUgIEJYVF9ERV9Q
T1JUX0dNQlVTCQkoMSA8PCAxKQ0KPiAgI2RlZmluZSAgR0VOOF9BVVhfQ0hBTk5FTF9BCQkoMSA8
PCAwKQ0KPiArI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVYX1VTQkM2CQkoMSA8PCAxMykNCj4gKyNk
ZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDNQkJKDEgPDwgMTIpDQo+ICsjZGVmaW5lICBUR0xf
REVfUE9SVF9BVVhfVVNCQzQJCSgxIDw8IDExKQ0KPiArI2RlZmluZSAgVEdMX0RFX1BPUlRfQVVY
X1VTQkMzCQkoMSA8PCAxMCkNCj4gKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDMgkJKDEg
PDwgOSkNCj4gKyNkZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9VU0JDMQkJKDEgPDwgOCkNCj4gICNk
ZWZpbmUgIFRHTF9ERV9QT1JUX0FVWF9ERElDCQkoMSA8PCAyKQ0KPiAgI2RlZmluZSAgVEdMX0RF
X1BPUlRfQVVYX0RESUIJCSgxIDw8IDEpDQo+ICAjZGVmaW5lICBUR0xfREVfUE9SVF9BVVhfRERJ
QQkJKDEgPDwgMCkNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
