Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD410FCBEA
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 18:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29BBA6EE54;
	Thu, 14 Nov 2019 17:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A71B6EE54
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 17:34:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 09:34:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="203354409"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 14 Nov 2019 09:34:10 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4F48E5C1DD9; Thu, 14 Nov 2019 19:33:58 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191112223600.30993-2-chris@chris-wilson.co.uk>
References: <20191112223600.30993-1-chris@chris-wilson.co.uk>
 <20191112223600.30993-2-chris@chris-wilson.co.uk>
Date: Thu, 14 Nov 2019 19:33:58 +0200
Message-ID: <87imnmxszd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/gt: Tidy up debug-warns for
 the mocs control table
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQXMgd2Ug
YWx3YXlzIHJ1biBuZXcgcGxhdGZvcm1zIHRocm91Z2ggQ0ksIHdlIG9ubHkgbmVlZCB0aGUgZGVi
dWcgY29kZQo+IGNvbXBpbGVkIGluIGR1cmluZyBDSSBydW5zLgo+Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTogTWlr
YSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCAzMCArKysrKysrKysrLS0tLS0tLS0t
LS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKPiBpbmRleCBkMmI0NDVk
NmMyNTguLmU2ZjNmMzZhMzk4OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMKPiBAQCAtMjkxLDQ0ICsyOTEsNDIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faTkxNV9t
b2NzX2VudHJ5IGljZWxha2VfbW9jc190YWJsZVtdID0gewo+ICBzdGF0aWMgYm9vbCBnZXRfbW9j
c19zZXR0aW5ncyhjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgCQkJICAg
ICAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgKnRhYmxlKQo+ICB7Cj4gLQlib29sIHJlc3Vs
dCA9IGZhbHNlOwo+IC0KPiAgCWlmIChJTlRFTF9HRU4oaTkxNSkgPj0gMTIpIHsKPiAgCQl0YWJs
ZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKHRpZ2VybGFrZV9tb2NzX3RhYmxlKTsKPiAgCQl0YWJsZS0+
dGFibGUgPSB0aWdlcmxha2VfbW9jc190YWJsZTsKPiAgCQl0YWJsZS0+bl9lbnRyaWVzID0gR0VO
MTFfTlVNX01PQ1NfRU5UUklFUzsKPiAtCQlyZXN1bHQgPSB0cnVlOwo+ICAJfSBlbHNlIGlmIChJ
U19HRU4oaTkxNSwgMTEpKSB7Cj4gIAkJdGFibGUtPnNpemUgID0gQVJSQVlfU0laRShpY2VsYWtl
X21vY3NfdGFibGUpOwo+ICAJCXRhYmxlLT50YWJsZSA9IGljZWxha2VfbW9jc190YWJsZTsKPiAg
CQl0YWJsZS0+bl9lbnRyaWVzID0gR0VOMTFfTlVNX01PQ1NfRU5UUklFUzsKPiAtCQlyZXN1bHQg
PSB0cnVlOwo+ICAJfSBlbHNlIGlmIChJU19HRU45X0JDKGk5MTUpIHx8IElTX0NBTk5PTkxBS0Uo
aTkxNSkpIHsKPiAgCQl0YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKHNreWxha2VfbW9jc190YWJs
ZSk7Cj4gIAkJdGFibGUtPm5fZW50cmllcyA9IEdFTjlfTlVNX01PQ1NfRU5UUklFUzsKPiAgCQl0
YWJsZS0+dGFibGUgPSBza3lsYWtlX21vY3NfdGFibGU7Cj4gLQkJcmVzdWx0ID0gdHJ1ZTsKPiAg
CX0gZWxzZSBpZiAoSVNfR0VOOV9MUChpOTE1KSkgewo+ICAJCXRhYmxlLT5zaXplICA9IEFSUkFZ
X1NJWkUoYnJveHRvbl9tb2NzX3RhYmxlKTsKPiAgCQl0YWJsZS0+bl9lbnRyaWVzID0gR0VOOV9O
VU1fTU9DU19FTlRSSUVTOwo+ICAJCXRhYmxlLT50YWJsZSA9IGJyb3h0b25fbW9jc190YWJsZTsK
PiAtCQlyZXN1bHQgPSB0cnVlOwo+ICAJfSBlbHNlIHsKPiAgCQlXQVJOX09OQ0UoSU5URUxfR0VO
KGk5MTUpID49IDksCj4gIAkJCSAgIlBsYXRmb3JtIHRoYXQgc2hvdWxkIGhhdmUgYSBNT0NTIHRh
YmxlIGRvZXMgbm90LlxuIik7Cj4gKwkJcmV0dXJuIGZhbHNlOwo+ICAJfQo+ICAKPiArCWlmIChH
RU1fREVCVUdfV0FSTl9PTih0YWJsZS0+c2l6ZSA+IHRhYmxlLT5uX2VudHJpZXMpKQo+ICsJCXJl
dHVybiBmYWxzZTsKPiArCj4gIAkvKiBXYURpc2FibGVTa2lwQ2FjaGluZzpza2wsYnh0LGtibCxn
bGsgKi8KPiAgCWlmIChJU19HRU4oaTkxNSwgOSkpIHsKPiAgCQlpbnQgaTsKPiAgCj4gIAkJZm9y
IChpID0gMDsgaSA8IHRhYmxlLT5zaXplOyBpKyspCj4gLQkJCWlmIChXQVJOX09OKHRhYmxlLT50
YWJsZVtpXS5sM2NjX3ZhbHVlICYKPiAtCQkJCSAgICAoTDNfRVNDKDEpIHwgTDNfU0NDKDB4Nykp
KSkKPiArCQkJaWYgKEdFTV9ERUJVR19XQVJOX09OKHRhYmxlLT50YWJsZVtpXS5sM2NjX3ZhbHVl
ICYKPiArCQkJCQkgICAgICAoTDNfRVNDKDEpIHwgTDNfU0NDKDB4NykpKSkKPiAgCQkJCXJldHVy
biBmYWxzZTsKPiAgCX0KPiAgCj4gLQlyZXR1cm4gcmVzdWx0Owo+ICsJcmV0dXJuIHRydWU7Cj4g
IH0KPiAgCj4gIHN0YXRpYyBpOTE1X3JlZ190IG1vY3NfcmVnaXN0ZXIoY29uc3Qgc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lLCBpbnQgaW5kZXgpCj4gQEAgLTM5Nyw5ICszOTUsNyBAQCBz
dGF0aWMgdTE2IGdldF9lbnRyeV9sM2NjKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxl
ICp0YWJsZSwKPiAgCXJldHVybiB0YWJsZS0+dGFibGVbSTkxNV9NT0NTX1BURV0ubDNjY192YWx1
ZTsKPiAgfQo+ICAKPiAtc3RhdGljIGlubGluZSB1MzIgbDNjY19jb21iaW5lKGNvbnN0IHN0cnVj
dCBkcm1faTkxNV9tb2NzX3RhYmxlICp0YWJsZSwKPiAtCQkJICAgICAgIHUxNiBsb3csCj4gLQkJ
CSAgICAgICB1MTYgaGlnaCkKPiArc3RhdGljIGlubGluZSB1MzIgbDNjY19jb21iaW5lKHUxNiBs
b3csIHUxNiBoaWdoKQo+ICB7Cj4gIAlyZXR1cm4gbG93IHwgKHUzMiloaWdoIDw8IDE2Owo+ICB9
Cj4gQEAgLTQxNyw3ICs0MTMsNyBAQCBzdGF0aWMgdm9pZCBpbml0X2wzY2NfdGFibGUoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAKPiAgCQlpbnRlbF91bmNvcmVfd3JpdGUodW5j
b3JlLAo+ICAJCQkJICAgR0VOOV9MTkNGQ01PQ1MoaSksCj4gLQkJCQkgICBsM2NjX2NvbWJpbmUo
dGFibGUsIGxvdywgaGlnaCkpOwo+ICsJCQkJICAgbDNjY19jb21iaW5lKGxvdywgaGlnaCkpOwo+
ICAJfQo+ICAKPiAgCS8qIE9kZCB0YWJsZSBzaXplIC0gMSBsZWZ0IG92ZXIgKi8KPiBAQCAtNDI2
LDcgKzQyMiw3IEBAIHN0YXRpYyB2b2lkIGluaXRfbDNjY190YWJsZShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsCj4gIAo+ICAJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsCj4gIAkJ
CQkgICBHRU45X0xOQ0ZDTU9DUyhpKSwKPiAtCQkJCSAgIGwzY2NfY29tYmluZSh0YWJsZSwgbG93
LCB1bnVzZWRfdmFsdWUpKTsKPiArCQkJCSAgIGwzY2NfY29tYmluZShsb3csIHVudXNlZF92YWx1
ZSkpOwo+ICAJCWkrKzsKPiAgCX0KPiAgCj4gQEAgLTQzNCw4ICs0MzAsNyBAQCBzdGF0aWMgdm9p
ZCBpbml0X2wzY2NfdGFibGUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAJZm9y
ICg7IGkgPCB0YWJsZS0+bl9lbnRyaWVzIC8gMjsgaSsrKQo+ICAJCWludGVsX3VuY29yZV93cml0
ZSh1bmNvcmUsCj4gIAkJCQkgICBHRU45X0xOQ0ZDTU9DUyhpKSwKPiAtCQkJCSAgIGwzY2NfY29t
YmluZSh0YWJsZSwgdW51c2VkX3ZhbHVlLAo+IC0JCQkJCQl1bnVzZWRfdmFsdWUpKTsKPiArCQkJ
CSAgIGwzY2NfY29tYmluZSh1bnVzZWRfdmFsdWUsIHVudXNlZF92YWx1ZSkpOwo+ICB9Cj4gIAo+
ICB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+IEBAIC00NzMsOSArNDY4LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2ds
b2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAJaWYgKCFnZXRfbW9jc19zZXR0aW5ncyhndC0+
aTkxNSwgJnRhYmxlKSkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JaWYgKEdFTV9ERUJVR19XQVJOX09O
KHRhYmxlLnNpemUgPiB0YWJsZS5uX2VudHJpZXMpKQo+IC0JCXJldHVybjsKPiAtCj4gIAlmb3Ig
KGluZGV4ID0gMDsgaW5kZXggPCB0YWJsZS5zaXplOyBpbmRleCsrKQo+ICAJCWludGVsX3VuY29y
ZV93cml0ZSh1bmNvcmUsCj4gIAkJCQkgICBHRU4xMl9HTE9CQUxfTU9DUyhpbmRleCksCj4gLS0g
Cj4gMi4yNC4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
