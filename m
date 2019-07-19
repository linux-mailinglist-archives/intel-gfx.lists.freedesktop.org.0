Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D286E849
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 17:58:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 716596E84E;
	Fri, 19 Jul 2019 15:58:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E53926E84E
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 15:58:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 08:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="173537127"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga006.jf.intel.com with ESMTP; 19 Jul 2019 08:58:37 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 19 Jul 2019 08:58:38 -0700
Received: from orsmsx114.amr.corp.intel.com ([169.254.8.237]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.240]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 08:58:37 -0700
From: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 21/22] drm/i915/tgl: Add and use new DC5
 and DC6 residency counter registers
Thread-Index: AQHVORe0ApAy7dQVz06K5h10Q3ukWqbQW5yAgAI9vAA=
Date: Fri, 19 Jul 2019 15:58:37 +0000
Message-ID: <a471953aa15d3cef55224210d9ab2112083fe238.camel@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-22-lucas.demarchi@intel.com>
 <20190718054703.GA6676@intel.com>
In-Reply-To: <20190718054703.GA6676@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.10.98]
Content-ID: <1B385D6E5A4DD643BDC423858C9DDAC8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 21/22] drm/i915/tgl: Add and use new DC5 and
 DC6 residency counter registers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA3LTE4IGF0IDExOjE3ICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAxOS0wNy0xMiBhdCAxODowOTozOSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3Rl
Og0KPiA+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiA+IA0KPiA+IFRpZ2VyIExhc2sgaGFzIGEgbmV3IHJlZ2lzdGVyIG9mZnNldCBmb3IgREM1
IGFuZCBEQzYgcmVzaWRlbmN5DQo+ID4gY291bnRlcnMuDQpuaXQ6IFRpZ2VyIExha2UNCj4gPiAN
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMgfCAyMSArKysrKysrKysrKysrLS0tLS0tLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCAgICAgfCAgMiArKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGlu
c2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYw0KPiA+IGluZGV4IGExODQzZTNkZTZkNy4uNGIxMmI1NTg4ZGQ2IDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jDQo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMNCj4gPiBAQCAtMjQ2NSw2
ICsyNDY1LDcgQEAgc3RhdGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwN
Cj4gPiB2b2lkICp1bnVzZWQpDQo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7DQo+ID4gIAlpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZjsNCj4gPiAgCXN0cnVjdCBpbnRlbF9jc3IgKmNzcjsNCj4gPiArCWk5MTVfcmVnX3QgZGM1
X3JlZywgZGM2X3JlZyA9IHt9Ow0KPiA+ICANCj4gPiAgCWlmICghSEFTX0NTUihkZXZfcHJpdikp
DQo+ID4gIAkJcmV0dXJuIC1FTk9ERVY7DQo+ID4gQEAgLTI0ODIsMTUgKzI0ODMsMTkgQEAgc3Rh
dGljIGludCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZQ0KPiA+ICptLCB2b2lkICp1bnVz
ZWQpDQo+ID4gIAlzZXFfcHJpbnRmKG0sICJ2ZXJzaW9uOiAlZC4lZFxuIiwgQ1NSX1ZFUlNJT05f
TUFKT1IoY3NyLQ0KPiA+ID52ZXJzaW9uKSwNCj4gPiAgCQkgICBDU1JfVkVSU0lPTl9NSU5PUihj
c3ItPnZlcnNpb24pKTsNCj4gPiAgDQo+ID4gLQlpZiAoV0FSTl9PTihJTlRFTF9HRU4oZGV2X3By
aXYpID4gMTEpKQ0KPiA+IC0JCWdvdG8gb3V0Ow0KPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTIpIHsNCj4gPiArCQlkYzVfcmVnID0gVEdMX0NTUl9EQzVfUkVTX0NPVU5UOw0KPiA+
ICsJCWRjNl9yZWcgPSBUR0xfQ1NSX0RDNl9SRVNfQ09VTlQ7DQo+ID4gKwl9IGVsc2Ugew0KPiA+
ICsJCWRjNV9yZWcgPSBJU19CUk9YVE9OKGRldl9wcml2KSA/IEJYVF9DU1JfREMzX0RDNV9DT1VO
VA0KPiA+IDoNCj4gPiArCQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VOVDsNCj4gPiArCQlpZiAo
IUlTX0dFTjlfTFAoZGV2X3ByaXYpKQ0KPiA+ICsJCQlkYzZfcmVnID0gU0tMX0NTUl9EQzVfREM2
X0NPVU5UOw0KPiA+ICsJfQ0KPiA+ICANCj4gPiAtCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUg
Y291bnQ6ICVkXG4iLA0KPiA+IC0JCSAgIEk5MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/
DQo+ID4gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoNCj4gPiAtCQkJCQkJICAgIFNLTF9DU1JfREMz
X0RDNV9DT1UNCj4gPiBOVCkpOw0KPiA+IC0JaWYgKCFJU19HRU45X0xQKGRldl9wcml2KSkNCj4g
PiAtCQlzZXFfcHJpbnRmKG0sICJEQzUgLT4gREM2IGNvdW50OiAlZFxuIiwNCj4gPiAtCQkJICAg
STkxNV9SRUFEKFNLTF9DU1JfREM1X0RDNl9DT1VOVCkpOw0KPiA+ICsJc2VxX3ByaW50ZihtLCAi
REMzIC0+IERDNSBjb3VudDogJWRcbiIsIEk5MTVfUkVBRChkYzVfcmVnKSk7DQo+ID4gKwlpZiAo
ZGM2X3JlZy5yZWcpDQo+ID4gKwkJc2VxX3ByaW50ZihtLCAiREM1IC0+IERDNiBjb3VudDogJWRc
biIsDQo+ID4gSTkxNV9SRUFEKGRjNl9yZWcpKTsNCj4gPiAgDQo+ID4gIG91dDoNCj4gPiAgCXNl
cV9wcmludGYobSwgInByb2dyYW0gYmFzZTogMHglMDh4XG4iLA0KPiA+IEk5MTVfUkVBRChDU1Jf
UFJPR1JBTSgwKSkpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gaW5kZXgg
NmNmY2RmNmJiMWJiLi41ZTM0MzRjZGQxZTggMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gPiBAQCAtNzI2OSw2ICs3MjY5LDggQEAgZW51bSB7DQo+ID4gICNkZWZpbmUgU0tM
X0NTUl9EQzNfREM1X0NPVU5UCV9NTUlPKDB4ODAwMzApDQo+ID4gICNkZWZpbmUgU0tMX0NTUl9E
QzVfREM2X0NPVU5UCV9NTUlPKDB4ODAwMkMpDQo+ID4gICNkZWZpbmUgQlhUX0NTUl9EQzNfREM1
X0NPVU5UCV9NTUlPKDB4ODAwMzgpDQo+ID4gKyNkZWZpbmUgVEdMX0NTUl9EQzVfUkVTX0NPVU5U
CV9NTUlPKDB4MTAxMDg0KQ0KPiA+ICsjZGVmaW5lIFRHTF9DU1JfREM2X1JFU19DT1VOVAlfTU1J
TygweDEwMTA4OCkNCj4gDQo+IENTUiBtZW1vcnkgcmFuZ2VzIGZyb20gMHg4MDAwMCB0aWxsIDB4
OGZmZmYNCj4gVGhlc2UgRE1DX0RFQlVHIHJlZ2lzZXJzIGFyZSBub3QgYXJlIG5vdCBDU1IgcmVn
aXN0ZXIuDQo+IEl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcmVuYW1lIHRoZSBtYWNyby4NCj4gPiAg
DQo+ID4gIC8qIGludGVycnVwdHMgKi8NCj4gPiAgI2RlZmluZSBERV9NQVNURVJfSVJRX0NPTlRS
T0wgICAoMSA8PCAzMSkNCj4gPiAtLSANCj4gPiAyLjIxLjANCj4gPiANCj4gPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiA+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QNCj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCj4gDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
