Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE3D37567
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 15:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EDB89260;
	Thu,  6 Jun 2019 13:39:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58E189260
 for <Intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 13:39:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 06:39:24 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga004.jf.intel.com with ESMTP; 06 Jun 2019 06:39:24 -0700
Date: Thu, 6 Jun 2019 06:39:55 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190606133955.GC3452@intel.com>
References: <20190606093639.9372-1-tvrtko.ursulin@linux.intel.com>
 <20190606093639.9372-22-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606093639.9372-22-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 21/21] drm/i915: Unexport
 i915_gem_init/fini_aliasing_ppgtt
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMDYsIDIwMTkgYXQgMTA6MzY6MzlBTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBUaGVzZSB0d28gYXJlIG9ubHkgdXNlZCBmcm9tIHdpdGhpbiBpOTE1X2dlbV9ndHQuYyBh
bmQgY2FuIHRyaXZpYWxseSBiZQo+IG1hZGUgc3RhdGljLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUm9k
cmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCA4ICsrKystLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5oIHwgMyAtLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
PiBpbmRleCBkOTY3YTRlOWNlYjAuLmJkN2EwNzhmNGI0OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gQEAgLTI4MzQsNyArMjgzNCw3IEBAIHN0YXRpYyB2b2lkIGk5MTVf
Z3R0X2NvbG9yX2FkanVzdChjb25zdCBzdHJ1Y3QgZHJtX21tX25vZGUgKm5vZGUsCj4gIAkJKmVu
ZCAtPSBJOTE1X0dUVF9QQUdFX1NJWkU7Cj4gIH0KPiAgCj4gLWludCBpOTE1X2dlbV9pbml0X2Fs
aWFzaW5nX3BwZ3R0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICtzdGF0aWMgaW50
IGluaXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsK
PiAgCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKPiAgCXN0cnVjdCBpOTE1
X2h3X3BwZ3R0ICpwcGd0dDsKPiBAQCAtMjg3NCw3ICsyODc0LDcgQEAgaW50IGk5MTVfZ2VtX2lu
aXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlyZXR1
cm4gZXJyOwo+ICB9Cj4gIAo+IC12b2lkIGk5MTVfZ2VtX2ZpbmlfYWxpYXNpbmdfcHBndHQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gK3N0YXRpYyB2b2lkIGZpbmlfYWxpYXNpbmdf
cHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAgCXN0cnVjdCBpOTE1
X2dndHQgKmdndHQgPSAmaTkxNS0+Z2d0dDsKPiAgCXN0cnVjdCBpOTE1X2h3X3BwZ3R0ICpwcGd0
dDsKPiBAQCAtMjk0Miw3ICsyOTQyLDcgQEAgaW50IGk5MTVfZ2VtX2luaXRfZ2d0dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlnZ3R0LT52bS5jbGVhcl9yYW5nZSgmZ2d0
dC0+dm0sIGdndHQtPnZtLnRvdGFsIC0gUEFHRV9TSVpFLCBQQUdFX1NJWkUpOwo+ICAKPiAgCWlm
IChJTlRFTF9QUEdUVChkZXZfcHJpdikgPT0gSU5URUxfUFBHVFRfQUxJQVNJTkcpIHsKPiAtCQly
ZXQgPSBpOTE1X2dlbV9pbml0X2FsaWFzaW5nX3BwZ3R0KGRldl9wcml2KTsKPiArCQlyZXQgPSBp
bml0X2FsaWFzaW5nX3BwZ3R0KGRldl9wcml2KTsKPiAgCQlpZiAocmV0KQo+ICAJCQlnb3RvIGVy
cl9hcHBndHQ7Cj4gIAl9Cj4gQEAgLTI5NjksNyArMjk2OSw3IEBAIHZvaWQgaTkxNV9nZ3R0X2Ns
ZWFudXBfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJZ2d0dC0+dm0u
Y2xvc2VkID0gdHJ1ZTsKPiAgCj4gIAltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9t
dXRleCk7Cj4gLQlpOTE1X2dlbV9maW5pX2FsaWFzaW5nX3BwZ3R0KGRldl9wcml2KTsKPiArCWZp
bmlfYWxpYXNpbmdfcHBndHQoZGV2X3ByaXYpOwo+ICAKPiAgCWxpc3RfZm9yX2VhY2hfZW50cnlf
c2FmZSh2bWEsIHZuLCAmZ2d0dC0+dm0uYm91bmRfbGlzdCwgdm1fbGluaykKPiAgCQlXQVJOX09O
KGk5MTVfdm1hX3VuYmluZCh2bWEpKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAo+
IGluZGV4IDgwNzAzMTYyYzk5YS4uNjg5M2FlMDE1ZGNlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmgKPiBAQCAtNjE3LDkgKzYxNyw2IEBAIGNvbnN0IHN0cnVjdCBpbnRlbF9w
cGF0X2VudHJ5ICoKPiAgaW50ZWxfcHBhdF9nZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHU4IHZhbHVlKTsKPiAgdm9pZCBpbnRlbF9wcGF0X3B1dChjb25zdCBzdHJ1Y3QgaW50ZWxf
cHBhdF9lbnRyeSAqZW50cnkpOwo+ICAKPiAtaW50IGk5MTVfZ2VtX2luaXRfYWxpYXNpbmdfcHBn
dHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+IC12b2lkIGk5MTVfZ2VtX2Zpbmlf
YWxpYXNpbmdfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+IC0KPiAgaW50
IGk5MTVfZ2d0dF9wcm9iZV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+
ICBpbnQgaTkxNV9nZ3R0X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KTsKPiAgaW50IGk5MTVfZ2d0dF9lbmFibGVfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KTsKPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
