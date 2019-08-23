Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818509A45F
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 02:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F8C6EB8D;
	Fri, 23 Aug 2019 00:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24BAC6EB8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 00:44:27 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 17:44:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="173318045"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.29])
 by orsmga008.jf.intel.com with ESMTP; 22 Aug 2019 17:44:26 -0700
Date: Thu, 22 Aug 2019 17:44:25 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Message-ID: <20190823004425.wwbchsmpgwsco4lg@ldmartin-desk1>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-32-lucas.demarchi@intel.com>
 <87wof52uts.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wof52uts.fsf@gaia.fi.intel.com>
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
Cc: Michel Thierry <michel.thierry@intel.com>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDQ6Mjg6MTVQTSArMDMwMCwgTWlrYSBLdW9wcGFsYSB3
cm90ZToKPkx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cml0ZXM6
Cj4KPj4gRnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPj4K
Pj4gR0FNIHJlZ2lzdGVycyBsb2NhdGVkIGluIHRoZSAweDR4eHggcmFuZ2UgaGF2ZSBiZWVuIHJl
bG9jYXRlZCB0byAweEN4eHg7Cj4+IHRoaXMgaXMgdG8gbWFrZSBzcGFjZSBmb3IgZ2xvYmFsIE1P
Q1MgcmVnaXN0ZXJzLgo+Pgo+PiBIU0Q6IDM5OTM3OQo+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNw
dXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTog
TWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1i
eTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX3JlZy5oIHwgMSArCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICAgfCA3ICsrKysrKy0KPj4gIDIg
ZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfcmVnLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfcmVnLmgKPj4gaW5kZXggZWRmMTk0ZDIz
YzZiLi43NzE5ZmFkZmU3ODUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX2d1Y19yZWcuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF9ndWNfcmVnLmgKPj4gQEAgLTgxLDYgKzgxLDcgQEAKPj4gICNkZWZpbmUgICBHVF9ET09S
QkVMTF9FTkFCTEUJCSAgKDE8PDApCj4+Cj4+ICAjZGVmaW5lIEdFTjhfR1RDUgkJCV9NTUlPKDB4
NDI3NCkKPj4gKyNkZWZpbmUgR0VOMTJfR1RDUgkJCV9NTUlPKDB4Y2VlOCkKPgo+VGhpcyBuYW1p
bmcgaXMgYSBiaXQgb2ZmLiBUaGUgcmVnaXN0ZXIgaXMgbm90IGNhbGxlZAo+dGhlIHNhbWUgZXZl
biB0aG8gaXQgc2VlbXMgdG8gc2VydmUgdGhlIHNhbWUgcHVycG9zZS4KPldlIHVzdWFsbHkgdHJ5
IHRvIGZvbGxvdyB0aGUgYnNwZWMgbmFtaW5nIGhlcmUKPmZvciBlYXNpZXIKPgo+QnV0IGFzIHRo
aXMgaXMgY29udGFpbmVkIGluIGd1Y19yZWcuaCBJIGRvIG5vdAo+aW5zaXN0LiBCdXQgcGxlYXNl
IGNvbnNpZGVyIGNoYW5naW5nIGl0Lgo+Cj5XaXRoIG9yIHdpdGhvdXQgcmVnIG5hbWUgY2hhbmdl
ZCB0byBiZSBHVUNfVExCX0lOVl9DUiwKCndlbGwuLi4gSW4gZ2VuZXJhbCB3aGF0IEkgc2VlIGlz
IHRoYXQgd2Ugc3RpY2sgdG8gdGhlIHJlZ2lzdGVyIG5hbWUgb24KdGhlIGZpcnN0IHBsYXRmb3Jt
LiBBbnl3YXksIEkgd2lsbCBjaGFuZ2UgaXQuCgo+UmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEg
PG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgoKdGhhbmtzCkx1Y2FzIERlIE1hcmNoaQoK
Pgo+PiAgI2RlZmluZSAgIEdFTjhfR1RDUl9JTlZBTElEQVRFCQkgICgxPDwwKQo+Pgo+PiAgI2Rl
ZmluZSBHVUNfQVJBVF9DNkRJUwkJCV9NTUlPKDB4QTE3OCkKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmMKPj4gaW5kZXggNmY2ZjA2ODdkMGJiLi41Y2I5ODYwY2IwMmUgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+IEBAIC0xMzEsOSArMTMxLDE0IEBAIHN0
YXRpYyB2b2lkIGdlbjZfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQpCj4+
ICBzdGF0aWMgdm9pZCBndWNfZ2d0dF9pbnZhbGlkYXRlKHN0cnVjdCBpOTE1X2dndHQgKmdndHQp
Cj4+ICB7Cj4+ICAJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ2d0dC0+dm0uZ3QtPnVu
Y29yZTsKPj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGdndHQtPnZtLmk5MTU7
Cj4+Cj4+ICAJZ2VuNl9nZ3R0X2ludmFsaWRhdGUoZ2d0dCk7Cj4+IC0JaW50ZWxfdW5jb3JlX3dy
aXRlX2Z3KHVuY29yZSwgR0VOOF9HVENSLCBHRU44X0dUQ1JfSU5WQUxJREFURSk7Cj4+ICsKPj4g
KwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDEyKQo+PiArCQlpbnRlbF91bmNvcmVfd3JpdGVfZnco
dW5jb3JlLCBHRU4xMl9HVENSLCBHRU44X0dUQ1JfSU5WQUxJREFURSk7Cj4+ICsJZWxzZQo+PiAr
CQlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU44X0dUQ1IsIEdFTjhfR1RDUl9JTlZB
TElEQVRFKTsKPj4gIH0KPj4KPj4gIHN0YXRpYyB2b2lkIGdtY2hfZ2d0dF9pbnZhbGlkYXRlKHN0
cnVjdCBpOTE1X2dndHQgKmdndHQpCj4+IC0tCj4+IDIuMjEuMAo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBs
aXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
