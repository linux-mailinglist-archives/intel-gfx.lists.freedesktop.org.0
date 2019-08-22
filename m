Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EF399624
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:17:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049776EB4F;
	Thu, 22 Aug 2019 14:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE286E4E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:17:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 06:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="180385333"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 22 Aug 2019 06:29:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EA13D5C1FF3; Thu, 22 Aug 2019 16:28:15 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190817093902.2171-32-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-32-lucas.demarchi@intel.com>
Date: Thu, 22 Aug 2019 16:28:15 +0300
Message-ID: <87wof52uts.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+IHdyaXRlczoKCj4gRnJv
bTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPgo+IEdBTSByZWdp
c3RlcnMgbG9jYXRlZCBpbiB0aGUgMHg0eHh4IHJhbmdlIGhhdmUgYmVlbiByZWxvY2F0ZWQgdG8g
MHhDeHh4Owo+IHRoaXMgaXMgdG8gbWFrZSBzcGFjZSBmb3IgZ2xvYmFsIE1PQ1MgcmVnaXN0ZXJz
Lgo+Cj4gSFNEOiAzOTkzNzkKPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8
bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9ndWNfcmVnLmggfCAxICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMgICAgICAgIHwgNyArKysrKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX3JlZy5oCj4gaW5kZXggZWRmMTk0ZDIzYzZiLi43NzE5ZmFkZmU3ODUgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3JlZy5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3JlZy5oCj4gQEAgLTgxLDYg
KzgxLDcgQEAKPiAgI2RlZmluZSAgIEdUX0RPT1JCRUxMX0VOQUJMRQkJICAoMTw8MCkKPiAgCj4g
ICNkZWZpbmUgR0VOOF9HVENSCQkJX01NSU8oMHg0Mjc0KQo+ICsjZGVmaW5lIEdFTjEyX0dUQ1IJ
CQlfTU1JTygweGNlZTgpCgpUaGlzIG5hbWluZyBpcyBhIGJpdCBvZmYuIFRoZSByZWdpc3RlciBp
cyBub3QgY2FsbGVkCnRoZSBzYW1lIGV2ZW4gdGhvIGl0IHNlZW1zIHRvIHNlcnZlIHRoZSBzYW1l
IHB1cnBvc2UuCldlIHVzdWFsbHkgdHJ5IHRvIGZvbGxvdyB0aGUgYnNwZWMgbmFtaW5nIGhlcmUK
Zm9yIGVhc2llcgoKQnV0IGFzIHRoaXMgaXMgY29udGFpbmVkIGluIGd1Y19yZWcuaCBJIGRvIG5v
dAppbnNpc3QuIEJ1dCBwbGVhc2UgY29uc2lkZXIgY2hhbmdpbmcgaXQuCgpXaXRoIG9yIHdpdGhv
dXQgcmVnIG5hbWUgY2hhbmdlZCB0byBiZSBHVUNfVExCX0lOVl9DUiwKUmV2aWV3ZWQtYnk6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKPiAgI2RlZmluZSAg
IEdFTjhfR1RDUl9JTlZBTElEQVRFCQkgICgxPDwwKQo+Cj4gICNkZWZpbmUgR1VDX0FSQVRfQzZE
SVMJCQlfTU1JTygweEExNzgpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBpbmRl
eCA2ZjZmMDY4N2QwYmIuLjVjYjk4NjBjYjAyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2d0dC5jCj4gQEAgLTEzMSw5ICsxMzEsMTQgQEAgc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2lu
dmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPiAgc3RhdGljIHZvaWQgZ3VjX2dndHRf
aW52YWxpZGF0ZShzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxf
dW5jb3JlICp1bmNvcmUgPSBnZ3R0LT52bS5ndC0+dW5jb3JlOwo+ICsJc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUgPSBnZ3R0LT52bS5pOTE1Owo+ICAKPiAgCWdlbjZfZ2d0dF9pbnZhbGlk
YXRlKGdndHQpOwo+IC0JaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VOOF9HVENSLCBH
RU44X0dUQ1JfSU5WQUxJREFURSk7Cj4gKwo+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA+PSAxMikK
PiArCQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU4xMl9HVENSLCBHRU44X0dUQ1Jf
SU5WQUxJREFURSk7Cj4gKwllbHNlCj4gKwkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwg
R0VOOF9HVENSLCBHRU44X0dUQ1JfSU5WQUxJREFURSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lk
IGdtY2hfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4gLS0gCj4gMi4y
MS4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
