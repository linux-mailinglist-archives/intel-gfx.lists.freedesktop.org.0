Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3C335A9D3
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Apr 2021 03:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C10E6EC6B;
	Sat, 10 Apr 2021 01:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7806EC6B
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Apr 2021 01:09:30 +0000 (UTC)
IronPort-SDR: KnllWfDNEhKg3JOaw/RSVppnF/ZvV/WNENh8ljCeStHjeWE67aACBvgBa83iu5tdiN2HumAiAz
 3+t5hPl1J/yw==
X-IronPort-AV: E=McAfee;i="6000,8403,9949"; a="173348906"
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="173348906"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2021 18:09:30 -0700
IronPort-SDR: wTY7FlsFB+Se0RqPID6hTvhPhwAwz0WtqpPg3XTbmM1Lt+GgzZ9j159YFWnexARayUYtnWH2JF
 CCiblZ/TFEag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,210,1613462400"; d="scan'208";a="422959934"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 09 Apr 2021 18:09:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 9 Apr 2021 18:09:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 9 Apr 2021 18:09:29 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.2106.013;
 Fri, 9 Apr 2021 18:09:28 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 02/12] drm/i915: add macros for graphics and
 media versions
Thread-Index: AQHXLDMQxcLc1/jWeU6J99Ysg8o4NKqtafqA
Date: Sat, 10 Apr 2021 01:09:28 +0000
Message-ID: <00524b6fad502e1282f9e2139089b944f25098b1.camel@intel.com>
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
 <20210408045227.985408-3-lucas.demarchi@intel.com>
In-Reply-To: <20210408045227.985408-3-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <A8EC5C459A73D943A272085F23336F64@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915: add macros for graphics and
 media versions
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

T24gV2VkLCAyMDIxLTA0LTA3IGF0IDIxOjUyIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IExpa2UgaXQgd2FzIGRvbmUgaW4NCj4gY29tbWl0IDAxZWIxNWM5MTY1ZSAoImRybS9pOTE1
OiBBZGQgRElTUExBWV9WRVIoKSBhbmQgcmVsYXRlZCBtYWNyb3MiKQ0KPiBhZGQgdGhlIGNvcnJl
c3BvbmRlbnQgbWFjcm9zIGZvciBncmFwaGljcyBhbmQgbWVkaWEuIEdvaW5nIGZvcndhcmQgd2UN
Cj4gd2lsbCBwcmVmZXIgY2hlY2tpbmcgdGhlIHZlcnNpb25zIGZvciB0aGUgc3BlY2lmaWMgSVBz
IChncmFwaGljcywgbWVkaWENCj4gYW5kIGRpc3BsYXkpIHJhdGhlciB0aGFuIGdyb3VwaW5nIGV2
ZXJ5dGhpbmcgdW5kZXIgYSAiZ2VuIiB2ZXJzaW9uLg0KPiANCj4gRm9yIGNvbnNpc3RlbmN5IGFu
ZCB0byBtYWtlIHRoZSBtYWludGVuYW5jZSBlYXNpZXIsIGl0J2QgYmUgcHJlZmVycmVkDQo+IG5v
dCB0byBtaXggdGhlICpHRU4qIG1hY3JvcyB3aXRoIHRoZSBuZXcgb25lcy4gRm9yIG9sZGVyIHBs
YXRmb3JtcyB3ZQ0KPiBjYW4gc2ltcGx5IGNvbnNpZGVyIHRoYXQgdGhlIHByZXZpb3VzICJnZW4i
IG51bWJlciB3aWxsIGV4dGVuZCB0byBhbGwNCj4gMyBJUHMuIFRoZW4gd2UgY2FuIHN0YXJ0IHJl
cGxhY2luZyBpdHMgdXNlIGluIHRoZSBkcml2ZXIuIFJpZ2h0IG5vdyB0aGlzDQo+IHJlcGxhY2Vt
ZW50IGlzIG5vdCBkb25lIGFuZCBvbmx5IHRoZSBpbmZyYXN0cnVjdHVyZSBpcyBwdXQgaW4gcGxh
Y2UuDQo+IFdlIGFsc28gbGVhdmUgZ2VuIGFuZCBnZW5fbWFzayBpbnNpZGUgc3RydWN0IGludGVs
X2RldmljZV9pbmZvIHdoaWxlDQo+IGl0J3Mgc3RpbGwgYmVpbmcgdXNlZCB0aHJvdWdob3V0IHRo
ZSBjb2RlLg0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+DQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgIHwgMTcgKysrKysrKysrKysrKysrKy0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jICAgICAgICAgIHwgIDcgKysrKysrLQ0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggfCAgMyArKysNCj4gwqAzIGZpbGVzIGNo
YW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmgNCj4gaW5kZXggOGM2MmJiMmFiZDMxLi45N2NiZDAxOWYyZTkgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaA0KPiBAQCAtMTIzNCw5ICsxMjM0LDI0IEBAIHN0YXRpYyBp
bmxpbmUgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKnBkZXZfdG9faTkxNShzdHJ1Y3QgcGNpX2Rl
diAqcGRldikNCj4gwqAjZGVmaW5lIFJVTlRJTUVfSU5GTyhkZXZfcHJpdikJKCYoZGV2X3ByaXYp
LT5fX3J1bnRpbWUpDQo+IMKgI2RlZmluZSBEUklWRVJfQ0FQUyhkZXZfcHJpdikJKCYoZGV2X3By
aXYpLT5jYXBzKQ0KPiDCoA0KPiANCj4gDQo+IA0KPiAtI2RlZmluZSBJTlRFTF9HRU4oZGV2X3By
aXYpCShJTlRFTF9JTkZPKGRldl9wcml2KS0+Z2VuKQ0KPiDCoCNkZWZpbmUgSU5URUxfREVWSUQo
ZGV2X3ByaXYpCShSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5kZXZpY2VfaWQpDQo+IMKgDQo+IA0K
PiANCj4gDQo+ICsvKg0KPiArICogRGVwcmVjYXRlZDogdGhpcyB3aWxsIGJlIHJlcGxhY2VkIGJ5
IGluZGl2aWR1YWwgSVAgY2hlY2tzOg0KPiArICogR1JBUEhJQ1NfVkVSKCksIE1FRElBX1ZFUiBh
bmQgRElTUExBWV9WRVIoKQ0KPiArICovDQo+ICsjZGVmaW5lIElOVEVMX0dFTihkZXZfcHJpdikJ
CShJTlRFTF9JTkZPKGRldl9wcml2KS0+Z2VuKQ0KPiArDQo+ICsjZGVmaW5lIEdSQVBISUNTX1ZF
UihpOTE1KQkJKElOVEVMX0lORk8oaTkxNSktPmdyYXBoaWNzX3ZlcikNCj4gKyNkZWZpbmUgSVNf
R1JBUEhJQ1NfUkFOR0UoaTkxNSwgZnJvbSwgdW50aWwpIFwNCj4gKwkoR1JBUEhJQ1NfVkVSKGk5
MTUpID49IChmcm9tKSAmJiBHUkFQSElDU19WRVIoaTkxNSkgPD0gKHVudGlsKSkNCj4gKyNkZWZp
bmUgSVNfR1JBUEhJQ1NfVkVSKGk5MTUsIHYpCShHUkFQSElDU19WRVIoaTkxNSkgPT0gKHYpKQ0K
PiArDQo+ICsjZGVmaW5lIE1FRElBX1ZFUihpOTE1KQkJCShJTlRFTF9JTkZPKGk5MTUpLT5tZWRp
YV92ZXIpDQo+ICsjZGVmaW5lIElTX01FRElBX1JBTkdFKGk5MTUsIGZyb20sIHVudGlsKSBcDQo+
ICsJKE1FRElBX1ZFUihpOTE1KSA+PSAoZnJvbSkgJiYgTUVESUFfVkVSKGk5MTUpIDw9ICh1bnRp
bCkpDQo+ICsjZGVmaW5lIElTX01FRElBX1ZFUihpOTE1LCB2KQkJKE1FRElBX1ZFUihpOTE1KSA9
PSAodikpDQo+ICsNCj4gwqAjZGVmaW5lIERJU1BMQVlfVkVSKGk5MTUpCShJTlRFTF9JTkZPKGk5
MTUpLT5kaXNwbGF5LnZlcikNCj4gwqAjZGVmaW5lIElTX0RJU1BMQVlfUkFOR0UoaTkxNSwgZnJv
bSwgdW50aWwpIFwNCj4gwqAJKERJU1BMQVlfVkVSKGk5MTUpID49IChmcm9tKSAmJiBESVNQTEFZ
X1ZFUihpOTE1KSA8PSAodW50aWwpKQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMNCj4gaW5kZXgg
Y2U1Y2JlYWYwMzZkLi45N2FiNzMyNzYzMzQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2ku
Yw0KPiBAQCAtMzYsNyArMzYsMTIgQEANCj4gwqAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIg0K
PiDCoA0KPiANCj4gDQo+IA0KPiDCoCNkZWZpbmUgUExBVEZPUk0oeCkgLnBsYXRmb3JtID0gKHgp
DQo+IC0jZGVmaW5lIEdFTih4KSAuZ2VuID0gKHgpLCAuZ2VuX21hc2sgPSBCSVQoKHgpIC0gMSks
IC5kaXNwbGF5LnZlciA9ICh4KQ0KPiArI2RlZmluZSBHRU4oeCkgXA0KPiArCS5nZW5fbWFzayA9
IEJJVCgoeCkgLSAxKSwgXA0KPiArCS5nZW4gPSAoeCksIFwNCj4gKwkuZ3JhcGhpY3NfdmVyID0g
KHgpLCBcDQo+ICsJLm1lZGlhX3ZlciA9ICh4KSwgXA0KPiArCS5kaXNwbGF5LnZlciA9ICh4KQ0K
PiDCoA0KPiANCj4gDQo+IA0KPiDCoCNkZWZpbmUgSTg0NV9QSVBFX09GRlNFVFMgXA0KPiDCoAku
cGlwZV9vZmZzZXRzID0geyBcDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9kZXZpY2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uaA0KPiBpbmRleCBiMTZjNzU5MjdhMTIuLjQwNTg4M2E4Y2M4NCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oDQo+IEBAIC0xNjIsNiArMTYyLDkgQEAg
ZW51bSBpbnRlbF9wcGd0dF90eXBlIHsNCj4gwqBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gew0K
PiDCoAl1MTYgZ2VuX21hc2s7DQo+IMKgDQo+IA0KPiANCj4gDQo+ICsJdTggZ3JhcGhpY3NfdmVy
Ow0KPiArCXU4IG1lZGlhX3ZlcjsNCj4gKw0KPiDCoAl1OCBnZW47DQo+IMKgCXU4IGd0OyAvKiBH
VCBudW1iZXIsIDAgaWYgdW5kZWZpbmVkICovDQo+IMKgCWludGVsX2VuZ2luZV9tYXNrX3QgcGxh
dGZvcm1fZW5naW5lX21hc2s7IC8qIEVuZ2luZXMgc3VwcG9ydGVkIGJ5IHRoZSBIVyAqLw0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
