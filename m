Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6571AD3A3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 02:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1EF6E156;
	Fri, 17 Apr 2020 00:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A776E156
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 00:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20927416-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 01:29:43 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 01:29:40 +0100
Message-Id: <20200417002942.4394-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417002942.4394-1-chris@chris-wilson.co.uk>
References: <20200417002942.4394-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/5] drm/i915/gt: Use the RPM config register to
 determine clk frequencies
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

Rm9yIG1hbnkgY29uZmlndXJhdGlvbiBkZXRhaWxzIHdpdGhpbiBSQzYgYW5kIFJQUyB3ZSBhcmUg
cHJvZ3JhbW1pbmcKaW50ZXJ2YWxzIGZvciB0aGUgaW50ZXJuYWwgY2xvY2tzLiBGcm9tIGdlbjEx
LCB0aGVzZSBjbG9ja3MgYXJlCmNvbmZpZ3VyYXRpb24gdmlhIHRoZSBSUE1fQ09ORklHIGFuZCBz
byBmb3IgY29udmVuaWVuY2UsIHdlIHdvdWxkIGxpa2UKdG8gY29udmVydCB0by9mcm9tIG1vcmUg
bmF0dXJhbCB1bml0cyAobnMpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvZGVidWdmc19ndF9wbS5jICAgICAgIHwgMjcgKysrKy0tLQogLi4uL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9jbG9ja191dGlscy5jICAgIHwgNzggKysrKysrKysrKysrKysrKysr
KwogLi4uL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9jbG9ja191dGlscy5oICAgIHwgMjEgKysr
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jICAgICAgICAgICB8IDQwICsr
KysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jwcy5jICAgICAgICB8
ICA3ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAgICAgfCAz
NCArKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAg
IHwgMjUgLS0tLS0tCiA4IGZpbGVzIGNoYW5nZWQsIDE2NyBpbnNlcnRpb25zKCspLCA2NiBkZWxl
dGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9jbG9ja191dGlscy5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfY2xvY2tfdXRpbHMuaAoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKaW5kZXggNDRj
NTA2YjdlMTE3Li44ZjZmYjkzNjBmYmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCkBAIC05MSw2ICs5
MSw3IEBAIGd0LXkgKz0gXAogCWd0L2ludGVsX2dndHQubyBcCiAJZ3QvaW50ZWxfZ2d0dF9mZW5j
aW5nLm8gXAogCWd0L2ludGVsX2d0Lm8gXAorCWd0L2ludGVsX2d0X2Nsb2NrX3V0aWxzLm8gXAog
CWd0L2ludGVsX2d0X2lycS5vIFwKIAlndC9pbnRlbF9ndF9wbS5vIFwKIAlndC9pbnRlbF9ndF9w
bV9pcnEubyBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0
X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0X3BtLmMKaW5kZXggYWFi
MzBkOTA4MDcyLi5kNGUzYjRjMGM0OGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2RlYnVnZnNfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2Zz
X2d0X3BtLmMKQEAgLTEwLDYgKzEwLDcgQEAKICNpbmNsdWRlICJkZWJ1Z2ZzX2d0X3BtLmgiCiAj
aW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9ndC5oIgorI2luY2x1ZGUgImlu
dGVsX2d0X2Nsb2NrX3V0aWxzLmgiCiAjaW5jbHVkZSAiaW50ZWxfbGxjLmgiCiAjaW5jbHVkZSAi
aW50ZWxfcmM2LmgiCiAjaW5jbHVkZSAiaW50ZWxfcnBzLmgiCkBAIC0zOTQsMjEgKzM5NSwyMyBA
QCBzdGF0aWMgaW50IGZyZXF1ZW5jeV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51
c2VkKQogCQlzZXFfcHJpbnRmKG0sICJSUERFQ0xJTUlUOiAweCUwOHhcbiIsIHJwZGVjbGltaXQp
OwogCQlzZXFfcHJpbnRmKG0sICJSUE5TV1JFUTogJWRNSHpcbiIsIHJlcWYpOwogCQlzZXFfcHJp
bnRmKG0sICJDQUdGOiAlZE1IelxuIiwgY2FnZik7Ci0JCXNlcV9wcmludGYobSwgIlJQIENVUiBV
UCBFSTogJWQgKCVkdXMpXG4iLAotCQkJICAgcnB1cGVpLCBHVF9QTV9JTlRFUlZBTF9UT19VUyhp
OTE1LCBycHVwZWkpKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIFVQOiAlZCAoJWR1cylcbiIs
Ci0JCQkgICBycGN1cnVwLCBHVF9QTV9JTlRFUlZBTF9UT19VUyhpOTE1LCBycGN1cnVwKSk7Ci0J
CXNlcV9wcmludGYobSwgIlJQIFBSRVYgVVA6ICVkICglZHVzKVxuIiwKLQkJCSAgIHJwcHJldnVw
LCBHVF9QTV9JTlRFUlZBTF9UT19VUyhpOTE1LCBycHByZXZ1cCkpOworCQlzZXFfcHJpbnRmKG0s
ICJSUCBDVVIgVVAgRUk6ICVkICglZG5zKVxuIiwKKwkJCSAgIHJwdXBlaSwgaW50ZWxfZ3RfcG1f
aW50ZXJ2YWxfdG9fbnMoZ3QsIHJwdXBlaSkpOworCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVA6
ICVkICglZG5zKVxuIiwKKwkJCSAgIHJwY3VydXAsIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25z
KGd0LCBycGN1cnVwKSk7CisJCXNlcV9wcmludGYobSwgIlJQIFBSRVYgVVA6ICVkICglZG5zKVxu
IiwKKwkJCSAgIHJwcHJldnVwLCBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhndCwgcnBwcmV2
dXApKTsKIAkJc2VxX3ByaW50ZihtLCAiVXAgdGhyZXNob2xkOiAlZCUlXG4iLAogCQkJICAgcnBz
LT5wb3dlci51cF90aHJlc2hvbGQpOwogCi0JCXNlcV9wcmludGYobSwgIlJQIENVUiBET1dOIEVJ
OiAlZCAoJWR1cylcbiIsCi0JCQkgICBycGRvd25laSwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkx
NSwgcnBkb3duZWkpKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIERPV046ICVkICglZHVzKVxu
IiwKLQkJCSAgIHJwY3VyZG93biwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkxNSwgcnBjdXJkb3du
KSk7Ci0JCXNlcV9wcmludGYobSwgIlJQIFBSRVYgRE9XTjogJWQgKCVkdXMpXG4iLAotCQkJICAg
cnBwcmV2ZG93biwgR1RfUE1fSU5URVJWQUxfVE9fVVMoaTkxNSwgcnBwcmV2ZG93bikpOworCQlz
ZXFfcHJpbnRmKG0sICJSUCBDVVIgRE9XTiBFSTogJWQgKCVkbnMpXG4iLAorCQkJICAgcnBkb3du
ZWksIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKGd0LCBycGRvd25laSkpOworCQlzZXFfcHJp
bnRmKG0sICJSUCBDVVIgRE9XTjogJWQgKCVkbnMpXG4iLAorCQkJICAgcnBjdXJkb3duLAorCQkJ
ICAgaW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMoZ3QsIHJwY3VyZG93bikpOworCQlzZXFfcHJp
bnRmKG0sICJSUCBQUkVWIERPV046ICVkICglZG5zKVxuIiwKKwkJCSAgIHJwcHJldmRvd24sCisJ
CQkgICBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhndCwgcnBwcmV2ZG93bikpOwogCQlzZXFf
cHJpbnRmKG0sICJEb3duIHRocmVzaG9sZDogJWQlJVxuIiwKIAkJCSAgIHJwcy0+cG93ZXIuZG93
bl90aHJlc2hvbGQpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndF9jbG9ja191dGlscy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xv
Y2tfdXRpbHMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmU2M2U0
MDBlZTFjNQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2d0X2Nsb2NrX3V0aWxzLmMKQEAgLTAsMCArMSw3OCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisg
Ki8KKworI2luY2x1ZGUgImk5MTVfZHJ2LmgiCisjaW5jbHVkZSAiaW50ZWxfZ3QuaCIKKyNpbmNs
dWRlICJpbnRlbF9ndF9jbG9ja191dGlscy5oIgorCisjZGVmaW5lIE1IWl8xOV8yIDE5MjAwMDAw
IC8qIDE5LjJNSHosIDUyLjA4M25zICovCisjZGVmaW5lIE1IWl8yNCAyNDAwMDAwMCAvKiAyNE1I
eiwgODMuMzMzbnMgKi8KKyNkZWZpbmUgTUhaXzI1IDI1MDAwMDAwIC8qIDI1TUh6LCA4MG5zICov
CisKK3UzMiBpbnRlbF9ndF9jbG9ja19mcmVxdWVuY3koc3RydWN0IGludGVsX2d0ICpndCkKK3sK
KwlpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA+PSAxMSkgeworCQl1MzIgY29uZmlnOworCisJCWNv
bmZpZyA9IGludGVsX3VuY29yZV9yZWFkKGd0LT51bmNvcmUsIFJQTV9DT05GSUcwKTsKKwkJY29u
ZmlnICY9IEdFTjExX1JQTV9DT05GSUcwX0NSWVNUQUxfQ0xPQ0tfRlJFUV9NQVNLOworCQljb25m
aWcgPj49IEdFTjExX1JQTV9DT05GSUcwX0NSWVNUQUxfQ0xPQ0tfRlJFUV9TSElGVDsKKworCQlz
d2l0Y2ggKGNvbmZpZykgeworCQljYXNlIDA6IHJldHVybiBNSFpfMjQ7CisJCWNhc2UgMToKKwkJ
Y2FzZSAyOiByZXR1cm4gTUhaXzE5XzI7CisJCWRlZmF1bHQ6CisJCWNhc2UgMzogcmV0dXJuIE1I
Wl8yNTsKKwkJfQorCX0gZWxzZSBpZiAoSU5URUxfR0VOKGd0LT5pOTE1KSA+PSA5KSB7CisJCWlm
IChJU19HRU45X0xQKGd0LT5pOTE1KSkKKwkJCXJldHVybiBNSFpfMTlfMjsKKwkJZWxzZQorCQkJ
cmV0dXJuIE1IWl8yNDsKKwl9IGVsc2UgeworCQlyZXR1cm4gTUhaXzI1OworCX0KK30KKworc3Rh
dGljIHU2NCBkaXZfdTY0X3JvdW5kdXAodTY0IG5vbSwgdTMyIGRlbikKK3sKKwlyZXR1cm4gZGl2
X3U2NChub20gKyBkZW4gLSAxLCBkZW4pOworfQorCit1MzIgaW50ZWxfZ3RfY2xvY2tfaW50ZXJ2
YWxfdG9fbnMoc3RydWN0IGludGVsX2d0ICpndCwgdTMyIGNvdW50KQoreworCXJldHVybiBkaXZf
dTY0X3JvdW5kdXAobXVsX3UzMl91MzIoY291bnQsIDEwMDAgKiAxMDAwICogMTAwMCksCisJCQkg
ICAgICAgaW50ZWxfZ3RfY2xvY2tfZnJlcXVlbmN5KGd0KSk7Cit9CisKK3UzMiBpbnRlbF9ndF9w
bV9pbnRlcnZhbF90b19ucyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1MzIgY291bnQpCit7CisJcmV0
dXJuIGludGVsX2d0X2Nsb2NrX2ludGVydmFsX3RvX25zKGd0LCAxNiAqIGNvdW50KTsKK30KKwor
dTMyIGludGVsX2d0X25zX3RvX2Nsb2NrX2ludGVydmFsKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHUz
MiBucykKK3sKKwlyZXR1cm4gZGl2X3U2NF9yb3VuZHVwKG11bF91MzJfdTMyKGludGVsX2d0X2Ns
b2NrX2ZyZXF1ZW5jeShndCksIG5zKSwKKwkJCSAgICAgICAxMDAwICogMTAwMCAqIDEwMDApOwor
fQorCit1MzIgaW50ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2YWwoc3RydWN0IGludGVsX2d0ICpndCwg
dTMyIG5zKQoreworCXUzMiB2YWw7CisKKwkvKgorCSAqIE1ha2UgdGhlc2UgYSBtdWx0aXBsZSBv
ZiBtYWdpYyAyNSB0byBhdm9pZCBTTkIgKGVnLiBEZWxsIFhQUworCSAqIDgzMDApIGZyZWV6aW5n
IHVwIGFyb3VuZCBHUFUgaGFuZ3MuIExvb2tzIGFzIGlmIGV2ZW4KKwkgKiBzY2hlZHVsaW5nL3Rp
bWVyIGludGVycnVwdHMgc3RhcnQgbWlzYmVoYXZpbmcgaWYgdGhlIFJQUworCSAqIEVJL3RocmVz
aG9sZHMgYXJlICJiYWQiLCBsZWFkaW5nIHRvIGEgdmVyeSBzbHVnZ2lzaCBvciBldmVuCisJICog
ZnJvemVuIG1hY2hpbmUuCisJICovCisJdmFsID0gRElWX1JPVU5EX1VQKGludGVsX2d0X25zX3Rv
X2Nsb2NrX2ludGVydmFsKGd0LCBucyksIDE2KTsKKwlpZiAoSVNfR0VOKGd0LT5pOTE1LCA2KSkK
KwkJdmFsID0gcm91bmR1cCh2YWwsIDI1KTsKKworCXJldHVybiB2YWw7Cit9CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9jbG9ja191dGlscy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xvY2tfdXRpbHMuaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmY5NzcyYmQ2N2IwYgotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2Nsb2NrX3V0aWxzLmgKQEAgLTAsMCAr
MSwyMSBAQAorLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVCAqLworLyoKKyAqIENvcHly
aWdodCDCqSAyMDIwIEludGVsIENvcnBvcmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0lOVEVMX0dU
X0NMT0NLX1VUSUxTX0hfXworI2RlZmluZSBfX0lOVEVMX0dUX0NMT0NLX1VUSUxTX0hfXworCisj
aW5jbHVkZSA8bGludXgvdHlwZXMuaD4KKworc3RydWN0IGludGVsX2d0OworCit1MzIgaW50ZWxf
Z3RfY2xvY2tfZnJlcXVlbmN5KHN0cnVjdCBpbnRlbF9ndCAqZ3QpOworCit1MzIgaW50ZWxfZ3Rf
Y2xvY2tfaW50ZXJ2YWxfdG9fbnMoc3RydWN0IGludGVsX2d0ICpndCwgdTMyIGNvdW50KTsKK3Uz
MiBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1MzIgY291
bnQpOworCit1MzIgaW50ZWxfZ3RfbnNfdG9fY2xvY2tfaW50ZXJ2YWwoc3RydWN0IGludGVsX2d0
ICpndCwgdTMyIG5zKTsKK3UzMiBpbnRlbF9ndF9uc190b19wbV9pbnRlcnZhbChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0LCB1MzIgbnMpOworCisjZW5kaWYgLyogX19JTlRFTF9HVF9DTE9DS19VVElMU19I
X18gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMKaW5kZXggNDIyNzVlMjVlYTFiLi5i
YjAzOGFjNDQ2ZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jw
cy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCkBAIC04LDYgKzgs
NyBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9ndC5oIgorI2lu
Y2x1ZGUgImludGVsX2d0X2Nsb2NrX3V0aWxzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfaXJxLmgi
CiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG1faXJxLmgiCiAjaW5jbHVkZSAiaW50ZWxfcnBzLmgiCkBA
IC01MzUsOCArNTM2LDggQEAgc3RhdGljIHUzMiBycHNfbGltaXRzKHN0cnVjdCBpbnRlbF9ycHMg
KnJwcywgdTggdmFsKQogCiBzdGF0aWMgdm9pZCBycHNfc2V0X3Bvd2VyKHN0cnVjdCBpbnRlbF9y
cHMgKnJwcywgaW50IG5ld19wb3dlcikKIHsKLQlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUg
PSBycHNfdG9fdW5jb3JlKHJwcyk7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBy
cHNfdG9faTkxNShycHMpOworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBycHNfdG9fZ3QocnBzKTsK
KwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCXUzMiB0aHJlc2hv
bGRfdXAgPSAwLCB0aHJlc2hvbGRfZG93biA9IDA7IC8qIGluICUgKi8KIAl1MzIgZWlfdXAgPSAw
LCBlaV9kb3duID0gMDsKIApAQCAtNTgxLDIzICs1ODIsMjUgQEAgc3RhdGljIHZvaWQgcnBzX3Nl
dF9wb3dlcihzdHJ1Y3QgaW50ZWxfcnBzICpycHMsIGludCBuZXdfcG93ZXIpCiAJLyogV2hlbiBi
eXQgY2FuIHN1cnZpdmUgd2l0aG91dCBzeXN0ZW0gaGFuZyB3aXRoIGR5bmFtaWMKIAkgKiBzdyBm
cmVxIGFkanVzdG1lbnRzLCB0aGlzIHJlc3RyaWN0aW9uIGNhbiBiZSBsaWZ0ZWQuCiAJICovCi0J
aWYgKElTX1ZBTExFWVZJRVcoaTkxNSkpCisJaWYgKElTX1ZBTExFWVZJRVcoZ3QtPmk5MTUpKQog
CQlnb3RvIHNraXBfaHdfd3JpdGU7CiAKLQlHVF9UUkFDRShycHNfdG9fZ3QocnBzKSwKKwlHVF9U
UkFDRShndCwKIAkJICJjaGFuZ2luZyBwb3dlciBtb2RlIFslZF0sIHVwICVkJSUgQCAlZHVzLCBk
b3duICVkJSUgQCAlZHVzXG4iLAogCQkgbmV3X3Bvd2VyLCB0aHJlc2hvbGRfdXAsIGVpX3VwLCB0
aHJlc2hvbGRfZG93biwgZWlfZG93bik7CiAKLQlzZXQodW5jb3JlLCBHRU42X1JQX1VQX0VJLCBH
VF9JTlRFUlZBTF9GUk9NX1VTKGk5MTUsIGVpX3VwKSk7CisJc2V0KHVuY29yZSwgR0VONl9SUF9V
UF9FSSwKKwkgICAgaW50ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2YWwoZ3QsIGVpX3VwICogMTAwMCkp
OwogCXNldCh1bmNvcmUsIEdFTjZfUlBfVVBfVEhSRVNIT0xELAotCSAgICBHVF9JTlRFUlZBTF9G
Uk9NX1VTKGk5MTUsIGVpX3VwICogdGhyZXNob2xkX3VwIC8gMTAwKSk7CisJICAgIGludGVsX2d0
X25zX3RvX3BtX2ludGVydmFsKGd0LCBlaV91cCAqIHRocmVzaG9sZF91cCAqIDEwKSk7CiAKLQlz
ZXQodW5jb3JlLCBHRU42X1JQX0RPV05fRUksIEdUX0lOVEVSVkFMX0ZST01fVVMoaTkxNSwgZWlf
ZG93bikpOworCXNldCh1bmNvcmUsIEdFTjZfUlBfRE9XTl9FSSwKKwkgICAgaW50ZWxfZ3RfbnNf
dG9fcG1faW50ZXJ2YWwoZ3QsIGVpX2Rvd24gKiAxMDAwKSk7CiAJc2V0KHVuY29yZSwgR0VONl9S
UF9ET1dOX1RIUkVTSE9MRCwKLQkgICAgR1RfSU5URVJWQUxfRlJPTV9VUyhpOTE1LCBlaV9kb3du
ICogdGhyZXNob2xkX2Rvd24gLyAxMDApKTsKKwkgICAgaW50ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2
YWwoZ3QsIGVpX2Rvd24gKiB0aHJlc2hvbGRfZG93biAqIDEwKSk7CiAKIAlzZXQodW5jb3JlLCBH
RU42X1JQX0NPTlRST0wsCi0JICAgIChJTlRFTF9HRU4oaTkxNSkgPiA5ID8gMCA6IEdFTjZfUlBf
TUVESUFfVFVSQk8pIHwKKwkgICAgKElOVEVMX0dFTihndC0+aTkxNSkgPiA5ID8gMCA6IEdFTjZf
UlBfTUVESUFfVFVSQk8pIHwKIAkgICAgR0VONl9SUF9NRURJQV9IV19OT1JNQUxfTU9ERSB8CiAJ
ICAgIEdFTjZfUlBfTUVESUFfSVNfR0ZYIHwKIAkgICAgR0VONl9SUF9FTkFCTEUgfApAQCAtOTM0
LDE3ICs5MzcsMTcgQEAgc3RhdGljIGJvb2wgcnBzX3Jlc2V0KHN0cnVjdCBpbnRlbF9ycHMgKnJw
cykKIC8qIFNlZSB0aGUgR2VuOV9HVF9QTV9Qcm9ncmFtbWluZ19HdWlkZSBkb2MgZm9yIHRoZSBi
ZWxvdyAqLwogc3RhdGljIGJvb2wgZ2VuOV9ycHNfZW5hYmxlKHN0cnVjdCBpbnRlbF9ycHMgKnJw
cykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHJwc190b19pOTE1KHJwcyk7
Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gcnBzX3RvX3VuY29yZShycHMpOworCXN0
cnVjdCBpbnRlbF9ndCAqZ3QgPSBycHNfdG9fZ3QocnBzKTsKKwlzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCiAJLyogUHJvZ3JhbSBkZWZhdWx0cyBhbmQgdGhyZXNo
b2xkcyBmb3IgUlBTICovCi0JaWYgKElTX0dFTihpOTE1LCA5KSkKKwlpZiAoSVNfR0VOKGd0LT5p
OTE1LCA5KSkKIAkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgR0VONl9SQ19WSURFT19G
UkVRLAogCQkJCSAgICAgIEdFTjlfRlJFUVVFTkNZKHJwcy0+cnAxX2ZyZXEpKTsKIAogCS8qIDEg
c2Vjb25kIHRpbWVvdXQgKi8KIAlpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3JlLCBHRU42X1JQ
X0RPV05fVElNRU9VVCwKLQkJCSAgICAgIEdUX0lOVEVSVkFMX0ZST01fVVMoaTkxNSwgMTAwMDAw
MCkpOworCQkJICAgICAgaW50ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2YWwoZ3QsIDEwMDAwMDApKTsK
IAogCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIEdFTjZfUlBfSURMRV9IWVNURVJTSVMs
IDB4YSk7CiAKQEAgLTEyMjEsNiArMTIyNCwxMyBAQCB2b2lkIGludGVsX3Jwc19lbmFibGUoc3Ry
dWN0IGludGVsX3JwcyAqcnBzKQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gcnBz
X3RvX2k5MTUocnBzKTsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBycHNfdG9fdW5j
b3JlKHJwcyk7CiAKKwlpZiAoIUhBU19SUFMoaTkxNSkpCisJCXJldHVybjsKKworCUdUX1RSQUNF
KHJwc190b19ndChycHMpLAorCQkgIlVzaW5nIGNsayBmcmVxdWVuY3k6ICVka0h6XG4iLAorCQkg
aW50ZWxfZ3RfY2xvY2tfZnJlcXVlbmN5KHJwc190b19ndChycHMpKSAvIDEwMDApOworCiAJaW50
ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAlpZiAoSVNf
Q0hFUlJZVklFVyhpOTE1KSkKIAkJcnBzLT5lbmFibGVkID0gY2h2X3Jwc19lbmFibGUocnBzKTsK
QEAgLTE3NTcsNyArMTc2Nyw3IEBAIHN0YXRpYyB1MzIgcmVhZF9jYWdmKHN0cnVjdCBpbnRlbF9y
cHMgKnJwcykKIAkJZnJlcSA9IHZsdl9wdW5pdF9yZWFkKGk5MTUsIFBVTklUX1JFR19HUFVfRlJF
UV9TVFMpOwogCQl2bHZfcHVuaXRfcHV0KGk5MTUpOwogCX0gZWxzZSB7Ci0JCWZyZXEgPSBpbnRl
bF91bmNvcmVfcmVhZChycHNfdG9fZ3QocnBzKS0+dW5jb3JlLCBHRU42X1JQU1RBVDEpOworCQlm
cmVxID0gaW50ZWxfdW5jb3JlX3JlYWQocnBzX3RvX3VuY29yZShycHMpLCBHRU42X1JQU1RBVDEp
OwogCX0KIAogCXJldHVybiBpbnRlbF9ycHNfZ2V0X2NhZ2YocnBzLCBmcmVxKTsKQEAgLTE3NjUs
NyArMTc3NSw3IEBAIHN0YXRpYyB1MzIgcmVhZF9jYWdmKHN0cnVjdCBpbnRlbF9ycHMgKnJwcykK
IAogdTMyIGludGVsX3Jwc19yZWFkX2FjdHVhbF9mcmVxdWVuY3koc3RydWN0IGludGVsX3JwcyAq
cnBzKQogewotCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0gPSBycHNfdG9fZ3QocnBzKS0+
dW5jb3JlLT5ycG07CisJc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSA9IHJwc190b191bmNv
cmUocnBzKS0+cnBtOwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCXUzMiBmcmVxID0gMDsK
IApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuYwppbmRleCAxOTlkNjA4YWE3NjMu
LjgzY2M0ZDFmYzVkZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfcnBzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMKQEAg
LTQsNiArNCw3IEBACiAgKi8KIAogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgorI2luY2x1
ZGUgImludGVsX2d0X2Nsb2NrX3V0aWxzLmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3RfcG0uaCIKICNp
bmNsdWRlICJpbnRlbF9yYzYuaCIKICNpbmNsdWRlICJzZWxmdGVzdF9ycHMuaCIKQEAgLTgyLDcg
KzgzLDggQEAgc3RhdGljIGludCBfX3Jwc191cF9pbnRlcnJ1cHQoc3RydWN0IGludGVsX3JwcyAq
cnBzLAogCX0KIAogCXRpbWVvdXQgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIEdFTjZfUlBf
VVBfRUkpOwotCXRpbWVvdXQgPSBHVF9QTV9JTlRFUlZBTF9UT19VUyhlbmdpbmUtPmk5MTUsIHRp
bWVvdXQpOworCXRpbWVvdXQgPSBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhlbmdpbmUtPmd0
LCB0aW1lb3V0KTsKKwl0aW1lb3V0IC89IDEwMDA7CiAKIAlzbGVlcF9mb3JfZWkocnBzLCB0aW1l
b3V0KTsKIAlHRU1fQlVHX09OKGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocnEpKTsKQEAgLTEzMyw3
ICsxMzUsOCBAQCBzdGF0aWMgaW50IF9fcnBzX2Rvd25faW50ZXJydXB0KHN0cnVjdCBpbnRlbF9y
cHMgKnJwcywKIAl9CiAKIAl0aW1lb3V0ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBHRU42
X1JQX0RPV05fRUkpOwotCXRpbWVvdXQgPSBHVF9QTV9JTlRFUlZBTF9UT19VUyhlbmdpbmUtPmk5
MTUsIHRpbWVvdXQpOworCXRpbWVvdXQgPSBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhlbmdp
bmUtPmd0LCB0aW1lb3V0KTsKKwl0aW1lb3V0IC89IDEwMDA7CiAKIAlzbGVlcF9mb3JfZWkocnBz
LCB0aW1lb3V0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCBhYTM1YTU5
ZjFjN2QuLmUzYzVmZjI1YzgwNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAg
LTMyLDYgKzMyLDcgQEAKICNpbmNsdWRlIDxkcm0vZHJtX2RlYnVnZnMuaD4KIAogI2luY2x1ZGUg
ImdlbS9pOTE1X2dlbV9jb250ZXh0LmgiCisjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfY2xvY2tfdXRp
bHMuaCIKICNpbmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0
X3JlcXVlc3RzLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIKQEAgLTkyNiwyMSArOTI3
LDMwIEBAIHN0YXRpYyBpbnQgaTkxNV9mcmVxdWVuY3lfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHZvaWQgKnVudXNlZCkKIAkJc2VxX3ByaW50ZihtLCAiUlBERUNMSU1JVDogMHglMDh4XG4iLCBy
cGRlY2xpbWl0KTsKIAkJc2VxX3ByaW50ZihtLCAiUlBOU1dSRVE6ICVkTUh6XG4iLCByZXFmKTsK
IAkJc2VxX3ByaW50ZihtLCAiQ0FHRjogJWRNSHpcbiIsIGNhZ2YpOwotCQlzZXFfcHJpbnRmKG0s
ICJSUCBDVVIgVVAgRUk6ICVkICglZHVzKVxuIiwKLQkJCSAgIHJwdXBlaSwgR1RfUE1fSU5URVJW
QUxfVE9fVVMoZGV2X3ByaXYsIHJwdXBlaSkpOwotCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVA6
ICVkICglZHVzKVxuIiwKLQkJCSAgIHJwY3VydXAsIEdUX1BNX0lOVEVSVkFMX1RPX1VTKGRldl9w
cml2LCBycGN1cnVwKSk7Ci0JCXNlcV9wcmludGYobSwgIlJQIFBSRVYgVVA6ICVkICglZHVzKVxu
IiwKLQkJCSAgIHJwcHJldnVwLCBHVF9QTV9JTlRFUlZBTF9UT19VUyhkZXZfcHJpdiwgcnBwcmV2
dXApKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIFVQIEVJOiAlZCAoJWRucylcbiIsCisJCQkg
ICBycHVwZWksCisJCQkgICBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucygmZGV2X3ByaXYtPmd0
LCBycHVwZWkpKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIFVQOiAlZCAoJWR1bilcbiIsCisJ
CQkgICBycGN1cnVwLAorCQkJICAgaW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMoJmRldl9wcml2
LT5ndCwgcnBjdXJ1cCkpOworCQlzZXFfcHJpbnRmKG0sICJSUCBQUkVWIFVQOiAlZCAoJWRucylc
biIsCisJCQkgICBycHByZXZ1cCwKKwkJCSAgIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKCZk
ZXZfcHJpdi0+Z3QsIHJwcHJldnVwKSk7CiAJCXNlcV9wcmludGYobSwgIlVwIHRocmVzaG9sZDog
JWQlJVxuIiwKIAkJCSAgIHJwcy0+cG93ZXIudXBfdGhyZXNob2xkKTsKIAotCQlzZXFfcHJpbnRm
KG0sICJSUCBDVVIgRE9XTiBFSTogJWQgKCVkdXMpXG4iLAotCQkJICAgcnBkb3duZWksIEdUX1BN
X0lOVEVSVkFMX1RPX1VTKGRldl9wcml2LCBycGRvd25laSkpOwotCQlzZXFfcHJpbnRmKG0sICJS
UCBDVVIgRE9XTjogJWQgKCVkdXMpXG4iLAotCQkJICAgcnBjdXJkb3duLCBHVF9QTV9JTlRFUlZB
TF9UT19VUyhkZXZfcHJpdiwgcnBjdXJkb3duKSk7Ci0JCXNlcV9wcmludGYobSwgIlJQIFBSRVYg
RE9XTjogJWQgKCVkdXMpXG4iLAotCQkJICAgcnBwcmV2ZG93biwgR1RfUE1fSU5URVJWQUxfVE9f
VVMoZGV2X3ByaXYsIHJwcHJldmRvd24pKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIERPV04g
RUk6ICVkICglZG5zKVxuIiwKKwkJCSAgIHJwZG93bmVpLAorCQkJICAgaW50ZWxfZ3RfcG1faW50
ZXJ2YWxfdG9fbnMoJmRldl9wcml2LT5ndCwKKwkJCQkJCSAgICAgIHJwZG93bmVpKSk7CisJCXNl
cV9wcmludGYobSwgIlJQIENVUiBET1dOOiAlZCAoJWRucylcbiIsCisJCQkgICBycGN1cmRvd24s
CisJCQkgICBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucygmZGV2X3ByaXYtPmd0LAorCQkJCQkJ
ICAgICAgcnBjdXJkb3duKSk7CisJCXNlcV9wcmludGYobSwgIlJQIFBSRVYgRE9XTjogJWQgKCVk
bnMpXG4iLAorCQkJICAgcnBwcmV2ZG93biwKKwkJCSAgIGludGVsX2d0X3BtX2ludGVydmFsX3Rv
X25zKCZkZXZfcHJpdi0+Z3QsCisJCQkJCQkgICAgICBycHByZXZkb3duKSk7CiAJCXNlcV9wcmlu
dGYobSwgIkRvd24gdGhyZXNob2xkOiAlZCUlXG4iLAogCQkJICAgcnBzLT5wb3dlci5kb3duX3Ro
cmVzaG9sZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGVkZGEzZjI5YzhhYS4uY2Uy
ODI3OGY0ZTc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQwMTQsMzEgKzQwMTQsNiBA
QCBzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykK
ICNkZWZpbmUgR0VONl9SUF9TVEFURV9DQVAJX01NSU8oTUNIQkFSX01JUlJPUl9CQVNFX1NOQiAr
IDB4NTk5OCkKICNkZWZpbmUgQlhUX1JQX1NUQVRFX0NBUCAgICAgICAgX01NSU8oMHgxMzgxNzAp
CiAKLS8qCi0gKiBNYWtlIHRoZXNlIGEgbXVsdGlwbGUgb2YgbWFnaWMgMjUgdG8gYXZvaWQgU05C
IChlZy4gRGVsbCBYUFMKLSAqIDgzMDApIGZyZWV6aW5nIHVwIGFyb3VuZCBHUFUgaGFuZ3MuIExv
b2tzIGFzIGlmIGV2ZW4KLSAqIHNjaGVkdWxpbmcvdGltZXIgaW50ZXJydXB0cyBzdGFydCBtaXNi
ZWhhdmluZyBpZiB0aGUgUlBTCi0gKiBFSS90aHJlc2hvbGRzIGFyZSAiYmFkIiwgbGVhZGluZyB0
byBhIHZlcnkgc2x1Z2dpc2ggb3IgZXZlbgotICogZnJvemVuIG1hY2hpbmUuCi0gKi8KLSNkZWZp
bmUgSU5URVJWQUxfMV8yOF9VUyh1cykJcm91bmR1cCgoKHVzKSAqIDEwMCkgPj4gNywgMjUpCi0j
ZGVmaW5lIElOVEVSVkFMXzFfMzNfVVModXMpCSgoKHVzKSAqIDMpICAgPj4gMikKLSNkZWZpbmUg
SU5URVJWQUxfMF84MzNfVVModXMpCSgoKHVzKSAqIDYpIC8gNSkKLSNkZWZpbmUgR1RfSU5URVJW
QUxfRlJPTV9VUyhkZXZfcHJpdiwgdXMpIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgPyBcCi0J
CQkJKElTX0dFTjlfTFAoZGV2X3ByaXYpID8gXAotCQkJCUlOVEVSVkFMXzBfODMzX1VTKHVzKSA6
IFwKLQkJCQlJTlRFUlZBTF8xXzMzX1VTKHVzKSkgOiBcCi0JCQkJSU5URVJWQUxfMV8yOF9VUyh1
cykpCi0KLSNkZWZpbmUgSU5URVJWQUxfMV8yOF9UT19VUyhpbnRlcnZhbCkgICgoKGludGVydmFs
KSA8PCA3KSAvIDEwMCkKLSNkZWZpbmUgSU5URVJWQUxfMV8zM19UT19VUyhpbnRlcnZhbCkgICgo
KGludGVydmFsKSA8PCAyKSAvIDMpCi0jZGVmaW5lIElOVEVSVkFMXzBfODMzX1RPX1VTKGludGVy
dmFsKSAoKChpbnRlcnZhbCkgKiA1KSAgLyA2KQotI2RlZmluZSBHVF9QTV9JTlRFUlZBTF9UT19V
UyhkZXZfcHJpdiwgaW50ZXJ2YWwpIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkgPyBcCi0gICAg
ICAgICAgICAgICAgICAgICAgICAgICAoSVNfR0VOOV9MUChkZXZfcHJpdikgPyBcCi0gICAgICAg
ICAgICAgICAgICAgICAgICAgICBJTlRFUlZBTF8wXzgzM19UT19VUyhpbnRlcnZhbCkgOiBcCi0g
ICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFUlZBTF8xXzMzX1RPX1VTKGludGVydmFsKSkg
OiBcCi0gICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFUlZBTF8xXzI4X1RPX1VTKGludGVy
dmFsKSkKLQogLyoKICAqIExvZ2ljYWwgQ29udGV4dCByZWdzCiAgKi8KLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
