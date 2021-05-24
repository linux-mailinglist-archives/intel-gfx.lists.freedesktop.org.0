Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8161138F528
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C91826E110;
	Mon, 24 May 2021 21:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F20816E110
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:49:17 +0000 (UTC)
IronPort-SDR: feG8WtRV1w25eUHhuCnkMVn635mDOOGlhsjR1iDcT7BZdPMfJfCv9NUTUNP4rV2j4qs3Hiqtm6
 adgvsG2AJK3w==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="223200894"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="223200894"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:49:15 -0700
IronPort-SDR: m+gUkJu2IGuh1nBP3Zzf6/CTolnq7/b29luZr34QxPEPFYwOINvJW/1cM3jlvimHK4ijolb9VP
 MDDdkfDD81nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="413760846"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 24 May 2021 14:49:15 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 14:49:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 24 May 2021 14:49:14 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2242.008;
 Mon, 24 May 2021 14:49:14 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/7] drm/i915/dmc: Move struct intel_dmc to
 intel_dmc.h
Thread-Index: AQHXUNNY9dNCpUrK1UakiPDqc0+6dKrzoeeA
Date: Mon, 24 May 2021 21:49:14 +0000
Message-ID: <626b6de59d4c63b00af05bd1503100f5932014ce.camel@intel.com>
References: <20210524193032.3015-1-anusha.srivatsa@intel.com>
 <20210524193032.3015-4-anusha.srivatsa@intel.com>
In-Reply-To: <20210524193032.3015-4-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <B6A459906B987C48B228DD4F37EB6B20@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/dmc: Move struct intel_dmc to
 intel_dmc.h
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

T24gTW9uLCAyMDIxLTA1LTI0IGF0IDEyOjMwIC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IE1vdmUgc3RydWN0IGludGVsX2RtYyBmcm9tIGk5MTVfZHJ2LmggdG8gaW50ZWxfZG1jLmgu
DQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4NCg0KPiANCj4gdjI6IEFkZCBpbmNsdWRlcyBhbG9uZyB3aXRoIG1vdmluZyB0aGUgc3Ry
dWN0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0
c2FAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmggfCAyMSArKysrKysrKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAxOCArLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmgNCj4gaW5kZXggNjQ4MTZmNGE3MWI2
Li40YzIyZjU2N2I2MWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZG1jLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kbWMuaA0KPiBAQCAtNiwxMiArNiwzMyBAQA0KPiAgI2lmbmRlZiBfX0lOVEVMX0RNQ19IX18N
Cj4gICNkZWZpbmUgX19JTlRFTF9ETUNfSF9fDQo+ICANCj4gKyNpbmNsdWRlICJpOTE1X3JlZy5o
Ig0KPiArI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCINCj4gKyNpbmNsdWRlIDxsaW51eC93b3Jr
cXVldWUuaD4NCj4gKw0KPiAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7DQo+ICANCj4gICNkZWZp
bmUgRE1DX1ZFUlNJT04obWFqb3IsIG1pbm9yKQkoKG1ham9yKSA8PCAxNiB8IChtaW5vcikpDQo+
ICAjZGVmaW5lIERNQ19WRVJTSU9OX01BSk9SKHZlcnNpb24pCSgodmVyc2lvbikgPj4gMTYpDQo+
ICAjZGVmaW5lIERNQ19WRVJTSU9OX01JTk9SKHZlcnNpb24pCSgodmVyc2lvbikgJiAweGZmZmYp
DQo+ICANCj4gK3N0cnVjdCBpbnRlbF9kbWMgew0KPiArCXN0cnVjdCB3b3JrX3N0cnVjdCB3b3Jr
Ow0KPiArCWNvbnN0IGNoYXIgKmZ3X3BhdGg7DQo+ICsJdTMyIHJlcXVpcmVkX3ZlcnNpb247DQo+
ICsJdTMyIG1heF9md19zaXplOyAvKiBieXRlcyAqLw0KPiArCXUzMiAqZG1jX3BheWxvYWQ7DQo+
ICsJdTMyIGRtY19md19zaXplOyAvKiBkd29yZHMgKi8NCj4gKwl1MzIgdmVyc2lvbjsNCj4gKwl1
MzIgbW1pb19jb3VudDsNCj4gKwlpOTE1X3JlZ190IG1taW9hZGRyWzIwXTsNCj4gKwl1MzIgbW1p
b2RhdGFbMjBdOw0KPiArCXUzMiBkY19zdGF0ZTsNCj4gKwl1MzIgdGFyZ2V0X2RjX3N0YXRlOw0K
PiArCXUzMiBhbGxvd2VkX2RjX21hc2s7DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+
ICt9Ow0KPiArDQo+ICB2b2lkIGludGVsX2RtY191Y29kZV9pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KTsNCj4gIHZvaWQgaW50ZWxfZG1jX2xvYWRfcHJvZ3JhbShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+ICB2b2lkIGludGVsX2RtY191Y29kZV9maW5pKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+IGlu
ZGV4IDljYjAyNjE4YmExNS4uYjU5NjI3NjhhMWYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgNCj4gQEAgLTY3LDYgKzY3LDcgQEANCj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Jp
b3MuaCINCj4gICNpbmNsdWRlICJkaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCINCj4gICNpbmNsdWRl
ICJkaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCINCj4gKyNpbmNsdWRlICJkaXNwbGF5L2lu
dGVsX2RtYy5oIg0KPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCINCj4gICNp
bmNsdWRlICJkaXNwbGF5L2ludGVsX2RzYi5oIg0KPiAgI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxf
ZnJvbnRidWZmZXIuaCINCj4gQEAgLTMyOCwyMyArMzI5LDYgQEAgc3RydWN0IGRybV9pOTE1X2Rp
c3BsYXlfZnVuY3Mgew0KPiAgCXZvaWQgKCpyZWFkX2x1dHMpKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKTsNCj4gIH07DQo+ICANCj4gLXN0cnVjdCBpbnRlbF9kbWMgew0KPiAt
CXN0cnVjdCB3b3JrX3N0cnVjdCB3b3JrOw0KPiAtCWNvbnN0IGNoYXIgKmZ3X3BhdGg7DQo+IC0J
dTMyIHJlcXVpcmVkX3ZlcnNpb247DQo+IC0JdTMyIG1heF9md19zaXplOyAvKiBieXRlcyAqLw0K
PiAtCXUzMiAqZG1jX3BheWxvYWQ7DQo+IC0JdTMyIGRtY19md19zaXplOyAvKiBkd29yZHMgKi8N
Cj4gLQl1MzIgdmVyc2lvbjsNCj4gLQl1MzIgbW1pb19jb3VudDsNCj4gLQlpOTE1X3JlZ190IG1t
aW9hZGRyWzIwXTsNCj4gLQl1MzIgbW1pb2RhdGFbMjBdOw0KPiAtCXUzMiBkY19zdGF0ZTsNCj4g
LQl1MzIgdGFyZ2V0X2RjX3N0YXRlOw0KPiAtCXUzMiBhbGxvd2VkX2RjX21hc2s7DQo+IC0JaW50
ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+IC19Ow0KPiAtDQo+ICBlbnVtIGk5MTVfY2FjaGVfbGV2
ZWwgew0KPiAgCUk5MTVfQ0FDSEVfTk9ORSA9IDAsDQo+ICAJSTkxNV9DQUNIRV9MTEMsIC8qIGFs
c28gdXNlZCBmb3Igc25vb3BhYmxlIG1lbW9yeSBvbiBub24tTExDICovDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
