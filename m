Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A7D7614B0
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 12:49:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11E5389AC0;
	Sun,  7 Jul 2019 10:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ADA89AC0
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 10:49:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jul 2019 03:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,462,1557212400"; d="scan'208";a="192018939"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.68.212])
 ([10.252.68.212])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jul 2019 03:49:24 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-6-lucas.demarchi@intel.com>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <47bacf47-07ad-3764-a2ea-9a32d8922a88@intel.com>
Date: Sun, 7 Jul 2019 16:19:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190625175437.14840-6-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/28] drm/i915/tgl: Introduce Tiger Lake PCH
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9va3MgZ29vZCB0byBtZSwgdGhlcmUgaW4gb25lIG1pbm9yIGNvbW1lbnQuCgpPbiA2LzI1LzIw
MTkgMTE6MjQgUE0sIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPiBGcm9tOiBSYWRoYWtyaXNobmEg
U3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+IAo+IEFkZCB0aGUgZW51
bSBhZGRpdGlvbnMgdG8gVEdQLgo+IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBp
bnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogRGF2aWQgV2VpbmVoYWxsIDxkYXZpZC53ZWluZWhhbGxAaW50ZWwuY29t
Pgo+IENjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCA0ICsrKysK
PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAzICsrKwo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRl
eCA5NmI3YmJjNTgxNTUuLjRjMjZjN2Y2NjJhZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
Ywo+IEBAIC0yMjQsNiArMjI0LDEwIEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCj4gICAJCURSTV9ERUJV
R19LTVMoIkZvdW5kIE11bGUgQ3JlZWsgQ2FueW9uIFBDSFxuIik7Cj4gICAJCVdBUk5fT04oIUlT
X0VMS0hBUlRMQUtFKGRldl9wcml2KSk7Cj4gICAJCXJldHVybiBQQ0hfTUNDOwo+ICsJY2FzZSBJ
TlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFOgo+ICsJCURSTV9ERUJVR19LTVMoIkZvdW5kIFRp
Z2VyIExha2UgTFAgUENIXG4iKTsKPiArCQlXQVJOX09OKCFJU19USUdFUkxBS0UoZGV2X3ByaXYp
KTsKPiArCQlyZXR1cm4gUENIX1RHUDsKPiAgIAlkZWZhdWx0Ogo+ICAgCQlyZXR1cm4gUENIX05P
TkU7Cj4gICAJfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDhkMDEwNmI4OWYyNC4u
YTc3YzYzYTBkNDhhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTUzNiw2ICs1
MzYsNyBAQCBlbnVtIGludGVsX3BjaCB7Cj4gICAJUENIX0NOUCwgICAgICAgIC8qIENhbm5vbi9D
b21ldCBMYWtlIFBDSCAqLwo+ICAgCVBDSF9JQ1AsCS8qIEljZSBMYWtlIFBDSCAqLwo+ICAgCVBD
SF9NQ0MsICAgICAgICAvKiBNdWxlIENyZWVrIENhbnlvbiBQQ0ggKi8KPiArCVBDSF9UR1AsCS8q
IFRpZ2VyIExha2UgUENIICovCj4gICB9Owo+ICAgCj4gICAjZGVmaW5lIFFVSVJLX0xWRFNfU1ND
X0RJU0FCTEUgKDE8PDEpCj4gQEAgLTIzMjUsNiArMjMyNiw3IEBAIElTX1NVQlBMQVRGT1JNKGNv
bnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgI2RlZmluZSBJTlRFTF9QQ0hf
SUNQX0RFVklDRV9JRF9UWVBFCQkweDM0ODAKPiAgICNkZWZpbmUgSU5URUxfUENIX01DQ19ERVZJ
Q0VfSURfVFlQRQkJMHg0QjAwCj4gICAjZGVmaW5lIElOVEVMX1BDSF9NQ0MyX0RFVklDRV9JRF9U
WVBFCQkweDM4ODAKPiArI2RlZmluZSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9JRF9UWVBFCQkweEEw
ODAKPiAgICNkZWZpbmUgSU5URUxfUENIX1AyWF9ERVZJQ0VfSURfVFlQRQkJMHg3MTAwCj4gICAj
ZGVmaW5lIElOVEVMX1BDSF9QM1hfREVWSUNFX0lEX1RZUEUJCTB4NzAwMAo+ICAgI2RlZmluZSBJ
TlRFTF9QQ0hfUUVNVV9ERVZJQ0VfSURfVFlQRQkJMHgyOTAwIC8qIHFlbXUgcTM1IGhhcyAyOTE4
ICovCj4gQEAgLTIzMzIsNiArMjMzNCw3IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgI2RlZmluZSBJTlRFTF9QQ0hfVFlQRShkZXZfcHJp
dikgKChkZXZfcHJpdiktPnBjaF90eXBlKQo+ICAgI2RlZmluZSBJTlRFTF9QQ0hfSUQoZGV2X3By
aXYpICgoZGV2X3ByaXYpLT5wY2hfaWQpCj4gICAjZGVmaW5lIEhBU19QQ0hfTUNDKGRldl9wcml2
KSAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID09IFBDSF9NQ0MpCj4gKyNkZWZpbmUgSEFTX1BD
SF9UR1AoZGV2X3ByaXYpIChJTlRFTF9QQ0hfVFlQRShkZXZfcHJpdikgPT0gUENIX1RHUClUaGlz
IG1hY3JvIGNvdWxkIGJlIGRlZmluZWQgYmVmb3JlIEhBU19QQ0hfTUNDIHRvIGZvbGxvdyB0aGUg
b3JkZXIgaW4gCndoaWNoIGludGVsX3BjaCBlbnVtIGFyZSBkZWZpbmVkLgo+ICAgI2RlZmluZSBI
QVNfUENIX0lDUChkZXZfcHJpdikgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfSUNQ
KQo+ICAgI2RlZmluZSBIQVNfUENIX0NOUChkZXZfcHJpdikgKElOVEVMX1BDSF9UWVBFKGRldl9w
cml2KSA9PSBQQ0hfQ05QKQo+ICAgI2RlZmluZSBIQVNfUENIX1NQVChkZXZfcHJpdikgKElOVEVM
X1BDSF9UWVBFKGRldl9wcml2KSA9PSBQQ0hfU1BUKQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
