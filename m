Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B266C8E9
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 07:51:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B246E30D;
	Thu, 18 Jul 2019 05:51:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6385D6E30D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 05:51:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 22:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="179141456"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.120])
 by orsmga002.jf.intel.com with ESMTP; 17 Jul 2019 22:51:08 -0700
Date: Thu, 18 Jul 2019 11:17:03 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190718054703.GA6676@intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-22-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190713010940.17711-22-lucas.demarchi@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wNy0xMiBhdCAxODowOTozOSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+
IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IAo+
IFRpZ2VyIExhc2sgaGFzIGEgbmV3IHJlZ2lzdGVyIG9mZnNldCBmb3IgREM1IGFuZCBEQzYgcmVz
aWRlbmN5IGNvdW50ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyB8IDIxICsrKysrKysrKysrKystLS0tLS0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICB8ICAyICsrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+IGluZGV4IGExODQzZTNkZTZkNy4uNGIxMmI1NTg4ZGQ2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBAQCAtMjQ2NSw2ICsyNDY1LDcgQEAgc3RhdGljIGlu
dCBpOTE1X2RtY19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+ICAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUp
Owo+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIAlzdHJ1Y3QgaW50ZWxfY3NyICpjc3I7
Cj4gKwlpOTE1X3JlZ190IGRjNV9yZWcsIGRjNl9yZWcgPSB7fTsKPiAgCj4gIAlpZiAoIUhBU19D
U1IoZGV2X3ByaXYpKQo+ICAJCXJldHVybiAtRU5PREVWOwo+IEBAIC0yNDgyLDE1ICsyNDgzLDE5
IEBAIHN0YXRpYyBpbnQgaTkxNV9kbWNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVu
dXNlZCkKPiAgCXNlcV9wcmludGYobSwgInZlcnNpb246ICVkLiVkXG4iLCBDU1JfVkVSU0lPTl9N
QUpPUihjc3ItPnZlcnNpb24pLAo+ICAJCSAgIENTUl9WRVJTSU9OX01JTk9SKGNzci0+dmVyc2lv
bikpOwo+ICAKPiAtCWlmIChXQVJOX09OKElOVEVMX0dFTihkZXZfcHJpdikgPiAxMSkpCj4gLQkJ
Z290byBvdXQ7Cj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikgewo+ICsJCWRjNV9y
ZWcgPSBUR0xfQ1NSX0RDNV9SRVNfQ09VTlQ7Cj4gKwkJZGM2X3JlZyA9IFRHTF9DU1JfREM2X1JF
U19DT1VOVDsKPiArCX0gZWxzZSB7Cj4gKwkJZGM1X3JlZyA9IElTX0JST1hUT04oZGV2X3ByaXYp
ID8gQlhUX0NTUl9EQzNfREM1X0NPVU5UIDoKPiArCQkJCQkJIFNLTF9DU1JfREMzX0RDNV9DT1VO
VDsKPiArCQlpZiAoIUlTX0dFTjlfTFAoZGV2X3ByaXYpKQo+ICsJCQlkYzZfcmVnID0gU0tMX0NT
Ul9EQzVfREM2X0NPVU5UOwo+ICsJfQo+ICAKPiAtCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUg
Y291bnQ6ICVkXG4iLAo+IC0JCSAgIEk5MTVfUkVBRChJU19CUk9YVE9OKGRldl9wcml2KSA/IEJY
VF9DU1JfREMzX0RDNV9DT1VOVCA6Cj4gLQkJCQkJCSAgICBTS0xfQ1NSX0RDM19EQzVfQ09VTlQp
KTsKPiAtCWlmICghSVNfR0VOOV9MUChkZXZfcHJpdikpCj4gLQkJc2VxX3ByaW50ZihtLCAiREM1
IC0+IERDNiBjb3VudDogJWRcbiIsCj4gLQkJCSAgIEk5MTVfUkVBRChTS0xfQ1NSX0RDNV9EQzZf
Q09VTlQpKTsKPiArCXNlcV9wcmludGYobSwgIkRDMyAtPiBEQzUgY291bnQ6ICVkXG4iLCBJOTE1
X1JFQUQoZGM1X3JlZykpOwo+ICsJaWYgKGRjNl9yZWcucmVnKQo+ICsJCXNlcV9wcmludGYobSwg
IkRDNSAtPiBEQzYgY291bnQ6ICVkXG4iLCBJOTE1X1JFQUQoZGM2X3JlZykpOwo+ICAKPiAgb3V0
Ogo+ICAJc2VxX3ByaW50ZihtLCAicHJvZ3JhbSBiYXNlOiAweCUwOHhcbiIsIEk5MTVfUkVBRChD
U1JfUFJPR1JBTSgwKSkpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IDZjZmNkZjZi
YjFiYi4uNWUzNDM0Y2RkMWU4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTcy
NjksNiArNzI2OSw4IEBAIGVudW0gewo+ICAjZGVmaW5lIFNLTF9DU1JfREMzX0RDNV9DT1VOVAlf
TU1JTygweDgwMDMwKQo+ICAjZGVmaW5lIFNLTF9DU1JfREM1X0RDNl9DT1VOVAlfTU1JTygweDgw
MDJDKQo+ICAjZGVmaW5lIEJYVF9DU1JfREMzX0RDNV9DT1VOVAlfTU1JTygweDgwMDM4KQo+ICsj
ZGVmaW5lIFRHTF9DU1JfREM1X1JFU19DT1VOVAlfTU1JTygweDEwMTA4NCkKPiArI2RlZmluZSBU
R0xfQ1NSX0RDNl9SRVNfQ09VTlQJX01NSU8oMHgxMDEwODgpCkNTUiBtZW1vcnkgcmFuZ2VzIGZy
b20gMHg4MDAwMCB0aWxsIDB4OGZmZmYKVGhlc2UgRE1DX0RFQlVHIHJlZ2lzZXJzIGFyZSBub3Qg
YXJlIG5vdCBDU1IgcmVnaXN0ZXIuCkl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gcmVuYW1lIHRoZSBt
YWNyby4KPiAgCj4gIC8qIGludGVycnVwdHMgKi8KPiAgI2RlZmluZSBERV9NQVNURVJfSVJRX0NP
TlRST0wgICAoMSA8PCAzMSkKPiAtLSAKPiAyLjIxLjAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
