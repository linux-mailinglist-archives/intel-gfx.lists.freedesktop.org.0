Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5122E1E2984
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 20:02:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B1B6E22C;
	Tue, 26 May 2020 18:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D6F6E22C
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 May 2020 18:02:21 +0000 (UTC)
IronPort-SDR: 7ESUUKtMVwmHVEOcuH/zK9KWzSi6h5n3upzJr07ceiPGv3FH1t/n8gqqZKr4yyu2nw5fG8pPDQ
 apGW2DSP2RwA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 11:02:03 -0700
IronPort-SDR: axiP6Pcy4Q/Gdq/aDmSsNoJOr/7GyfqxIhEF+/8vcQKok+vnZD42cnGNU8jk0vi9p8teI+46GL
 xFAzDoTOMs9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="375774431"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga001.fm.intel.com with ESMTP; 26 May 2020 11:02:03 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 11:02:02 -0700
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.9]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.152]) with mapi id 14.03.0439.000;
 Tue, 26 May 2020 11:02:02 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 18/37] drm/i915/dg1: add support for the
 master unit interrupt
Thread-Index: AQHWLwgjcddb3WUIXU2o6XaQeKTtgqi7J3SA
Date: Tue, 26 May 2020 18:02:02 +0000
Message-ID: <a1de0417effb575544ada48f5c75c4850185a3b3.camel@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
 <20200521003803.18936-19-lucas.demarchi@intel.com>
In-Reply-To: <20200521003803.18936-19-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.73.147]
Content-ID: <BCE6C4A809920C42A9A22650C0090E86@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 18/37] drm/i915/dg1: add support for the
 master unit interrupt
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>,
 "fernando.pacheco@intel.com" <fernando.pacheco@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIwLTA1LTIwIGF0IDE3OjM3IC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6
DQo+IERHMSBoYXMgbWFzdGVyIHVuaXQgaW50ZXJydXB0IHJlZ2lzdGVyIHdoaWNoIGlzIHVzZWQg
dG8gaW5kaWNhdGUgdGhlDQo+IGNvcnJlY3Qgc291cmNlIG9mIGludGVycnVwdC4NCj4gDQoNClJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4N
Cg0KPiBDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVs
LmNvbT4NCj4gQ2M6IERhbmllbGUgU3B1cmlvIENlcmFvbG8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+DQo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pg0KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8ICA0
ICsrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgfCA1NiArKysrKysr
KysrKysrKysrKysrKysrKysrKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgfCAgNCArKysNCj4gIDMgZmlsZXMgY2hhbmdlZCwgNjEgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+IGluZGV4
IGJjYTAzNmFjNjYyMS4uNGUxM2Y3ZDdkYzVkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYw0KPiBAQCAtNDkyLDYgKzQ5MiwxMCBAQCBzdGF0aWMgaW50IGk5MTVfaW50ZXJy
dXB0X2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQ0KPiAgCQlzZXFfcHJpbnRm
KG0sICJQQ1UgaW50ZXJydXB0IGVuYWJsZTpcdCUwOHhcbiIsDQo+ICAJCQkgICBJOTE1X1JFQUQo
R0VOOF9QQ1VfSUVSKSk7DQo+ICAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
KSB7DQo+ICsJCWlmIChIQVNfTUFTVEVSX1VOSVRfSVJRKGRldl9wcml2KSkNCj4gKwkJCXNlcV9w
cmludGYobSwgIk1hc3RlciBVbml0IEludGVycnVwdCBDb250cm9sOiAgJTA4eFxuIiwNCj4gKwkJ
CQkgICBJOTE1X1JFQUQoREcxX01TVFJfVU5JVF9JTlRSKSk7DQo+ICsNCj4gIAkJc2VxX3ByaW50
ZihtLCAiTWFzdGVyIEludGVycnVwdCBDb250cm9sOiAgJTA4eFxuIiwNCj4gIAkJCSAgIEk5MTVf
UkVBRChHRU4xMV9HRlhfTVNUUl9JUlEpKTsNCj4gIA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMN
Cj4gaW5kZXggOTU5OTZkYjQ2OTM5Li4yZTk1MDM4N2MxNzkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYw0KPiBAQCAtMjU4Myw2ICsyNTgzLDQ2IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBn
ZW4xMV9pcnFfaGFuZGxlcihpbnQgaXJxLCB2b2lkICphcmcpDQo+ICAJCQkJICAgZ2VuMTFfbWFz
dGVyX2ludHJfZW5hYmxlKTsNCj4gIH0NCj4gIA0KPiArc3RhdGljIHUzMiBkZzFfbWFzdGVyX2lu
dHJfZGlzYWJsZV9hbmRfYWNrKHZvaWQgX19pb21lbSAqIGNvbnN0IHJlZ3MpDQo+ICt7DQo+ICsJ
dTMyIHZhbDsNCj4gKw0KPiArCS8qIEZpcnN0IGRpc2FibGUgaW50ZXJydXB0cyAqLw0KPiArCXJh
d19yZWdfd3JpdGUocmVncywgREcxX01TVFJfVU5JVF9JTlRSLCAwKTsNCj4gKw0KPiArCS8qIEdl
dCB0aGUgaW5kaWNhdGlvbiBsZXZlbHMgYW5kIGFjayB0aGUgbWFzdGVyIHVuaXQgKi8NCj4gKwl2
YWwgPSByYXdfcmVnX3JlYWQocmVncywgREcxX01TVFJfVU5JVF9JTlRSKTsNCj4gKwlpZiAodW5s
aWtlbHkoIXZhbCkpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJcmF3X3JlZ193cml0ZShyZWdz
LCBERzFfTVNUUl9VTklUX0lOVFIsIHZhbCk7DQo+ICsNCj4gKwkvKg0KPiArCSAqIE5vdyB3aXRo
IG1hc3RlciBkaXNhYmxlZCwgZ2V0IGEgc2FtcGxlIG9mIGxldmVsIGluZGljYXRpb25zDQo+ICsJ
ICogZm9yIHRoaXMgaW50ZXJydXB0IGFuZCBhY2sgdGhlbSByaWdodCBhd2F5IC0gd2Uga2VlcCBH
RU4xMV9NQVNURVJfSVJRDQo+ICsJICogb3V0IGFzIHRoaXMgYml0IGRvZXNuJ3QgZXhpc3QgYW55
bW9yZSBmb3IgREcxDQo+ICsJICovDQo+ICsJdmFsID0gcmF3X3JlZ19yZWFkKHJlZ3MsIEdFTjEx
X0dGWF9NU1RSX0lSUSkgJiB+R0VOMTFfTUFTVEVSX0lSUTsNCj4gKwlpZiAodW5saWtlbHkoIXZh
bCkpDQo+ICsJCXJldHVybiAwOw0KPiArDQo+ICsJcmF3X3JlZ193cml0ZShyZWdzLCBHRU4xMV9H
RlhfTVNUUl9JUlEsIHZhbCk7DQo+ICsNCj4gKwlyZXR1cm4gdmFsOw0KPiArfQ0KPiArDQo+ICtz
dGF0aWMgaW5saW5lIHZvaWQgZGcxX21hc3Rlcl9pbnRyX2VuYWJsZSh2b2lkIF9faW9tZW0gKiBj
b25zdCByZWdzKQ0KPiArew0KPiArCXJhd19yZWdfd3JpdGUocmVncywgREcxX01TVFJfVU5JVF9J
TlRSLCBERzFfTVNUUl9JUlEpOw0KPiArfQ0KPiArDQo+ICtzdGF0aWMgaXJxcmV0dXJuX3QgZGcx
X2lycV9oYW5kbGVyKGludCBpcnEsIHZvaWQgKmFyZykNCj4gK3sNCj4gKwlyZXR1cm4gX19nZW4x
MV9pcnFfaGFuZGxlcihhcmcsDQo+ICsJCQkJICAgZGcxX21hc3Rlcl9pbnRyX2Rpc2FibGVfYW5k
X2FjaywNCj4gKwkJCQkgICBkZzFfbWFzdGVyX2ludHJfZW5hYmxlKTsNCj4gK30NCj4gKw0KPiAg
LyogQ2FsbGVkIGZyb20gZHJtIGdlbmVyaWMgY29kZSwgcGFzc2VkICdjcnRjJyB3aGljaA0KPiAg
ICogd2UgdXNlIGFzIGEgcGlwZSBpbmRleA0KPiAgICovDQo+IEBAIC0yOTE3LDcgKzI5NTcsMTAg
QEAgc3RhdGljIHZvaWQgZ2VuMTFfaXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZGV2X3By
aXYtPnVuY29yZTsNCj4gIA0KPiAtCWdlbjExX21hc3Rlcl9pbnRyX2Rpc2FibGUoZGV2X3ByaXYt
PnVuY29yZS5yZWdzKTsNCj4gKwlpZiAoSEFTX01BU1RFUl9VTklUX0lSUShkZXZfcHJpdikpDQo+
ICsJCWRnMV9tYXN0ZXJfaW50cl9kaXNhYmxlX2FuZF9hY2soZGV2X3ByaXYtPnVuY29yZS5yZWdz
KTsNCj4gKwllbHNlDQo+ICsJCWdlbjExX21hc3Rlcl9pbnRyX2Rpc2FibGUoZGV2X3ByaXYtPnVu
Y29yZS5yZWdzKTsNCj4gIA0KPiAgCWdlbjExX2d0X2lycV9yZXNldCgmZGV2X3ByaXYtPmd0KTsN
Cj4gIAlnZW4xMV9kaXNwbGF5X2lycV9yZXNldChkZXZfcHJpdik7DQo+IEBAIC0zNTExLDggKzM1
NTQsMTMgQEAgc3RhdGljIHZvaWQgZ2VuMTFfaXJxX3Bvc3RpbnN0YWxsKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikNCj4gIA0KPiAgCUk5MTVfV1JJVEUoR0VOMTFfRElTUExBWV9J
TlRfQ1RMLCBHRU4xMV9ESVNQTEFZX0lSUV9FTkFCTEUpOw0KPiAgDQo+IC0JZ2VuMTFfbWFzdGVy
X2ludHJfZW5hYmxlKHVuY29yZS0+cmVncyk7DQo+IC0JUE9TVElOR19SRUFEKEdFTjExX0dGWF9N
U1RSX0lSUSk7DQo+ICsJaWYgKEhBU19NQVNURVJfVU5JVF9JUlEoZGV2X3ByaXYpKSB7DQo+ICsJ
CWRnMV9tYXN0ZXJfaW50cl9lbmFibGUodW5jb3JlLT5yZWdzKTsNCj4gKwkJUE9TVElOR19SRUFE
KERHMV9NU1RSX1VOSVRfSU5UUik7DQo+ICsJfSBlbHNlIHsNCj4gKwkJZ2VuMTFfbWFzdGVyX2lu
dHJfZW5hYmxlKHVuY29yZS0+cmVncyk7DQo+ICsJCVBPU1RJTkdfUkVBRChHRU4xMV9HRlhfTVNU
Ul9JUlEpOw0KPiArCX0NCj4gIH0NCj4gIA0KPiAgc3RhdGljIHZvaWQgY2hlcnJ5dmlld19pcnFf
cG9zdGluc3RhbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiBAQCAtNDAz
Nyw2ICs0MDg1LDggQEAgc3RhdGljIGlycV9oYW5kbGVyX3QgaW50ZWxfaXJxX2hhbmRsZXIoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQ0KPiAgCQllbHNlDQo+ICAJCQlyZXR1cm4g
aTh4eF9pcnFfaGFuZGxlcjsNCj4gIAl9IGVsc2Ugew0KPiArCQlpZiAoSEFTX01BU1RFUl9VTklU
X0lSUShkZXZfcHJpdikpDQo+ICsJCQlyZXR1cm4gZGcxX2lycV9oYW5kbGVyOw0KPiAgCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkNCj4gIAkJCXJldHVybiBnZW4xMV9pcnFfaGFuZGxl
cjsNCj4gIAkJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA4KQ0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gaW5kZXggOTVlOTAzYzAxYjJiLi5jMWZkZTQzODY3ZGMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBAQCAtNzY1MSw2ICs3NjUxLDEwIEBAIGVudW0gew0K
PiAgI2RlZmluZSAgR0VOMTFfR1RfRFcxX0lSUQkJKDEgPDwgMSkNCj4gICNkZWZpbmUgIEdFTjEx
X0dUX0RXMF9JUlEJCSgxIDw8IDApDQo+ICANCj4gKyNkZWZpbmUgREcxX01TVFJfVU5JVF9JTlRS
CQlfTU1JTygweDE5MDAwOCkNCj4gKyNkZWZpbmUgIERHMV9NU1RSX0lSUQkJCSgxIDw8IDMxKQ0K
PiArI2RlZmluZSAgREcxX01TVFJfVU5JVCh1KQkJKDEgPDwgKHUpKQ0KPiArDQo+ICAjZGVmaW5l
IEdFTjExX0RJU1BMQVlfSU5UX0NUTAkJX01NSU8oMHg0NDIwMCkNCj4gICNkZWZpbmUgIEdFTjEx
X0RJU1BMQVlfSVJRX0VOQUJMRQkoMSA8PCAzMSkNCj4gICNkZWZpbmUgIEdFTjExX0FVRElPX0NP
REVDX0lSUQkJKDEgPDwgMjQpDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
