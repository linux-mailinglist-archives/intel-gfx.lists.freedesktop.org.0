Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF0196AD3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 22:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698B36E881;
	Tue, 20 Aug 2019 20:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7348C6E881
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 20:43:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 13:43:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="183316350"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.29])
 by orsmga006.jf.intel.com with ESMTP; 20 Aug 2019 13:43:18 -0700
Date: Tue, 20 Aug 2019 13:43:18 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190820204318.e6mkcvfte6tm4ad2@ldmartin-desk1>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-32-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817093902.2171-32-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v2 31/40] rm/i915/tgl: Move GTCR register to
 cope with GAM MMIO address remap
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTcsIDIwMTkgYXQgMDI6Mzg6NTNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4K
Pgo+R0FNIHJlZ2lzdGVycyBsb2NhdGVkIGluIHRoZSAweDR4eHggcmFuZ2UgaGF2ZSBiZWVuIHJl
bG9jYXRlZCB0byAweEN4eHg7Cj50aGlzIGlzIHRvIG1ha2Ugc3BhY2UgZm9yIGdsb2JhbCBNT0NT
IHJlZ2lzdGVycy4KPgo+SFNEOiAzOTkzNzkKPkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxk
YW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+U2lnbmVkLW9mZi1ieTogTWljaGVsIFRo
aWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKSSBlbmRlZCB1cCByZW1vdmluZyB0
aGUgZmlyc3QgImQiIGluIHRoZSBjb21taXQgbWVzc2FnZS4gSSB3aWxsIGZpeCBpdAp1cCB3aGVu
IHN1Ym1pdHRpbmcgYWdhaW4uIE90aGVyIHRoYW4gdGhhdCwgbWF0Y2hlcyBzcGVjLgoKUmV2aWV3
ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKTHVjYXMg
RGUgTWFyY2hpCgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3Jl
Zy5oIHwgMSArCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAgIHwg
NyArKysrKystCj4gMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19yZWcuaAo+aW5kZXgg
ZWRmMTk0ZDIzYzZiLi43NzE5ZmFkZmU3ODUgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWNfcmVnLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19yZWcuaAo+QEAgLTgxLDYgKzgxLDcgQEAKPiAjZGVmaW5lICAgR1RfRE9P
UkJFTExfRU5BQkxFCQkgICgxPDwwKQo+Cj4gI2RlZmluZSBHRU44X0dUQ1IJCQlfTU1JTygweDQy
NzQpCj4rI2RlZmluZSBHRU4xMl9HVENSCQkJX01NSU8oMHhjZWU4KQo+ICNkZWZpbmUgICBHRU44
X0dUQ1JfSU5WQUxJREFURQkJICAoMTw8MCkKPgo+ICNkZWZpbmUgR1VDX0FSQVRfQzZESVMJCQlf
TU1JTygweEExNzgpCj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+aW5kZXggNmY2ZjA2
ODdkMGJiLi41Y2I5ODYwY2IwMmUgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
PkBAIC0xMzEsOSArMTMxLDE0IEBAIHN0YXRpYyB2b2lkIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHN0
cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShz
dHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+IHsKPiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3Jl
ID0gZ2d0dC0+dm0uZ3QtPnVuY29yZTsKPisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBnZ3R0LT52bS5pOTE1Owo+Cj4gCWdlbjZfZ2d0dF9pbnZhbGlkYXRlKGdndHQpOwo+LQlpbnRl
bF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRF
KTsKPisKPisJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMikKPisJCWludGVsX3VuY29yZV93cml0
ZV9mdyh1bmNvcmUsIEdFTjEyX0dUQ1IsIEdFTjhfR1RDUl9JTlZBTElEQVRFKTsKPisJZWxzZQo+
KwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VOOF9HVENSLCBHRU44X0dUQ1JfSU5W
QUxJREFURSk7Cj4gfQo+Cj4gc3RhdGljIHZvaWQgZ21jaF9nZ3R0X2ludmFsaWRhdGUoc3RydWN0
IGk5MTVfZ2d0dCAqZ2d0dCkKPi0tIAo+Mi4yMS4wCj4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
