Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EE22F4CDC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 15:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13716E9F7;
	Wed, 13 Jan 2021 14:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D776E9F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 14:13:25 +0000 (UTC)
IronPort-SDR: OtG8qpueiCiZ+jvsPmHilp8Qn09ALRXHukTb9IjGy6goYJjZ0MQ5Mvxsb72+y9gNEt2WZWi+Og
 BNLIysC2l8Hw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="174699891"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="174699891"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 06:13:23 -0800
IronPort-SDR: BOI3yJRis8HHKypdfa6LEsk0Dm4lXwXpXgpchSfsy1DruesKRjk/ejeQ+PRiy4yxgZOMll2CO/
 uMyJAhRu9zqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="348825010"
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9])
 by orsmga003.jf.intel.com with ESMTP; 13 Jan 2021 06:13:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 irsmsx603.ger.corp.intel.com (163.33.146.9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 Jan 2021 14:13:21 +0000
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Wed, 13 Jan 2021 06:13:19 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: fix the uint*_t types that have crept
 in
Thread-Index: AQHW6bYT/JBiTnz7ik2QGvLbxzHiR6omH3cA
Date: Wed, 13 Jan 2021 14:13:19 +0000
Message-ID: <95209829c2f5259637b96f7dc3c6af75d60a8ad9.camel@intel.com>
References: <20210113141158.25513-1-jani.nikula@intel.com>
In-Reply-To: <20210113141158.25513-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <32DBA8462311724EB359F28098BA6709@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: fix the uint*_t types
 that have crept in
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

T24gV2VkLCAyMDIxLTAxLTEzIGF0IDE2OjExICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
QWx3YXlzIHByZWZlciB0aGUga2VybmVsIHR5cGVzIG92ZXIgc3RkaW50IHR5cGVzIGluIGk5MTUu
DQo+IA0KDQoNClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4NCg0KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4N
Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiBT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgICAgICB8
IDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCAg
ICAgICB8IDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCB8IDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jICAgICAgICAgICB8IDIgKy0NCj4gwqA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDAxODlkMzc5YTU1ZS4uZmMzMzM3ODU0NDY1IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBAQCAtMTk1NCw3ICsxOTU0LDcgQEAgaW50IGludGVsX21haW5fdG9fYXV4X3BsYW5lKGNvbnN0
IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLCBpbnQgbWFpbl9wbGFuZSkNCj4gwqANCj4gDQo+
IA0KPiANCj4gwqBib29sDQo+IMKgaW50ZWxfZm9ybWF0X2luZm9faXNfeXV2X3NlbWlwbGFuYXIo
Y29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqaW5mbywNCj4gLQkJCQkgICAgdWludDY0X3Qg
bW9kaWZpZXIpDQo+ICsJCQkJICAgIHU2NCBtb2RpZmllcikNCj4gwqB7DQo+IMKgCXJldHVybiBp
bmZvLT5pc195dXYgJiYNCj4gwqAJICAgICAgIGluZm8tPm51bV9wbGFuZXMgPT0gKGlzX2Njc19t
b2RpZmllcihtb2RpZmllcikgPyA0IDogMik7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+IGluZGV4IDdkZGJjMDBhMGY0MS4uZDZjM2ZhOTU0NGVm
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
aA0KPiBAQCAtNjQzLDcgKzY0Myw3IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9z
dGF0ZShzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLA0KPiDCoA0KPiANCj4gDQo+
IA0KPiDCoGJvb2wNCj4gwqBpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5hcihjb25z
dCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICppbmZvLA0KPiAtCQkJCSAgICB1aW50NjRfdCBtb2Rp
Zmllcik7DQo+ICsJCQkJICAgIHU2NCBtb2RpZmllcik7DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKg
aW50IGludGVsX3BsYW5lX2NvbXB1dGVfZ3R0KHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxh
bmVfc3RhdGUpOw0KPiDCoHUzMiBpbnRlbF9wbGFuZV9jb21wdXRlX2FsaWduZWRfb2Zmc2V0KGlu
dCAqeCwgaW50ICp5LA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiBpbmRleCAyNDc5MjEwMmJjZjYuLjU4NWJiMWVkZWEwNCAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gQEAgLTU0NSw3ICs1NDUsNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3Rh
dGUgew0KPiDCoAkJc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmI7DQo+IMKgDQo+IA0KPiANCj4g
DQo+IMKgCQl1MTYgYWxwaGE7DQo+IC0JCXVpbnQxNl90IHBpeGVsX2JsZW5kX21vZGU7DQo+ICsJ
CXUxNiBwaXhlbF9ibGVuZF9tb2RlOw0KPiDCoAkJdW5zaWduZWQgaW50IHJvdGF0aW9uOw0KPiDC
oAkJZW51bSBkcm1fY29sb3JfZW5jb2RpbmcgY29sb3JfZW5jb2Rpbmc7DQo+IMKgCQllbnVtIGRy
bV9jb2xvcl9yYW5nZSBjb2xvcl9yYW5nZTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jDQo+IGluZGV4IDMzMjAwYjVjZmFkMC4uNWZkNGZhNDgwNWVmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gQEAgLTY3Niw3ICs2
NzYsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9mYmNfaHdfdHJhY2tpbmdfY292ZXJzX3NjcmVlbihz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gwqB9DQo+IMKgDQo+IA0KPiANCj4gDQo+IMKgc3Rh
dGljIGJvb2wgdGlsaW5nX2lzX3ZhbGlkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwNCj4gLQkJCSAgICB1aW50NjRfdCBtb2RpZmllcikNCj4gKwkJCSAgICB1NjQgbW9kaWZpZXIp
DQo+IMKgew0KPiDCoAlzd2l0Y2ggKG1vZGlmaWVyKSB7DQo+IMKgCWNhc2UgRFJNX0ZPUk1BVF9N
T0RfTElORUFSOg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
