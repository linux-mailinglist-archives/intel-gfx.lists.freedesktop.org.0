Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A4D6520A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 08:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091B689EA9;
	Thu, 11 Jul 2019 06:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B28E89EA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 06:52:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17214652-1500050 
 for multiple; Thu, 11 Jul 2019 07:52:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 07:52:14 +0100
Message-Id: <20190711065215.4004-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190711065215.4004-1-chris@chris-wilson.co.uk>
References: <20190711065215.4004-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/18] drm/i915: Markup expected timeline locks
 for i915_active
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

QXMgZXZlcnkgaTkxNV9hY3RpdmVfcmVxdWVzdCBzaG91bGQgYmUgc2VyaWFsaXNlZCBieSBhIGRl
ZGljYXRlZCBsb2NrLAppOTE1X2FjdGl2ZSBjb25zaXN0cyBvZiBhIHRyZWUgb2YgbG9ja3M7IG9u
ZSBmb3IgZWFjaCBub2RlLiBNYXJrdXAgdXAKdGhlIGk5MTVfYWN0aXZlX3JlcXVlc3Qgd2l0aCB3
aGF0IGxvY2sgaXMgc3VwcG9zZWQgdG8gYmUgZ3VhcmRpbmcgaXQgc28KdGhhdCB3ZSBjYW4gdmVy
aWZ5IHRoYXQgdGhlIHNlcmlhbGlzZWQgdXBkYXRlZCBhcmUgaW5kZWVkIHNlcmlhbGlzZWQuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYyAgfCAgMiArLQog
Li4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jICAgIHwgIDIgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgICB8ICAyICstCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgICAgICAgfCAgMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaCAgIHwgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgICAgICB8ICA3ICsrKy0tLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3RpbWVsaW5lLmMgICB8ICA0ICsrKysKIC4uLi9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RzL21vY2tfdGltZWxpbmUuYyB8ICAyICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAgICAgICAgfCAyMCArKysrKysrKysrKysr
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oICAgICAgICAgICAgfCAx
MiArKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMuaCAg
ICAgIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAg
ICAgfCAgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUu
YyAgfCAgMyArLS0KIDEzIGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDIyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
b3ZlcmxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMK
aW5kZXggMWExNWZhMzQyMDVjLi5kNWUwNmI0NjM1NjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfb3ZlcmxheS5jCkBAIC0yMzAsNyArMjMwLDcgQEAgYWxsb2NfcmVx
dWVzdChzdHJ1Y3QgaW50ZWxfb3ZlcmxheSAqb3ZlcmxheSwgdm9pZCAoKmZuKShzdHJ1Y3QgaW50
ZWxfb3ZlcmxheSAqKSkKIAlpZiAoSVNfRVJSKHJxKSkKIAkJcmV0dXJuIHJxOwogCi0JZXJyID0g
aTkxNV9hY3RpdmVfcmVmKCZvdmVybGF5LT5sYXN0X2ZsaXAsIHJxLT5mZW5jZS5jb250ZXh0LCBy
cSk7CisJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZvdmVybGF5LT5sYXN0X2ZsaXAsIHJxLT50aW1l
bGluZSwgcnEpOwogCWlmIChlcnIpIHsKIAkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CiAJCXJldHVy
biBFUlJfUFRSKGVycik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Ns
aWVudF9ibHQuYwppbmRleCA2ZjUzN2U4ZTRkZWEuLjExOWQyNGFiYTM2MiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCkBAIC0xOTcsNyArMTk3
LDcgQEAgc3RhdGljIHZvaWQgY2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAq
d29yaykKIAkgKiBrZWVwIHRyYWNrIG9mIHRoZSBHUFUgYWN0aXZpdHkgd2l0aGluIHRoaXMgdm1h
L3JlcXVlc3QsIGFuZAogCSAqIHByb3BhZ2F0ZSB0aGUgc2lnbmFsIGZyb20gdGhlIHJlcXVlc3Qg
dG8gdy0+ZG1hLgogCSAqLwotCWVyciA9IGk5MTVfYWN0aXZlX3JlZigmdm1hLT5hY3RpdmUsIHJx
LT5mZW5jZS5jb250ZXh0LCBycSk7CisJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZ2bWEtPmFjdGl2
ZSwgcnEtPnRpbWVsaW5lLCBycSk7CiAJaWYgKGVycikKIAkJZ290byBvdXRfcmVxdWVzdDsKIApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggNjAwMDE3
NzQ3MmVlLi45ZDRiYTY5Mjg4ODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2NvbnRleHQuYwpAQCAtOTU2LDcgKzk1Niw3IEBAIHN0YXRpYyBpbnQgY29udGV4dF9iYXJy
aWVyX3Rhc2soc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAkJaWYgKGVtaXQpCiAJCQll
cnIgPSBlbWl0KHJxLCBkYXRhKTsKIAkJaWYgKGVyciA9PSAwKQotCQkJZXJyID0gaTkxNV9hY3Rp
dmVfcmVmKCZjYi0+YmFzZSwgcnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKKwkJCWVyciA9IGk5MTVf
YWN0aXZlX3JlZigmY2ItPmJhc2UsIHJxLT50aW1lbGluZSwgcnEpOwogCiAJCWk5MTVfcmVxdWVz
dF9hZGQocnEpOwogCQlpZiAoZXJyKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5jCmluZGV4IGIwYTZiYzg5Y2VmMi4uMTQwNjBmNDZiZmFlIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dC5jCkBAIC0yNzEsNyArMjcxLDcgQEAgaW50IGludGVsX2NvbnRl
eHRfcHJlcGFyZV9yZW1vdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCiAJICog
d29yZHMgdHJhbnNmZXIgdGhlIHBpbm5lZCBjZSBvYmplY3QgdG8gdHJhY2tlZCBhY3RpdmUgcmVx
dWVzdC4KIAkgKi8KIAlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX2lzX2lkbGUoJmNlLT5hY3RpdmUp
KTsKLQllcnIgPSBpOTE1X2FjdGl2ZV9yZWYoJmNlLT5hY3RpdmUsIHJxLT5mZW5jZS5jb250ZXh0
LCBycSk7CisJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZjZS0+YWN0aXZlLCBycS0+dGltZWxpbmUs
IHJxKTsKIAogdW5sb2NrOgogCWlmIChycS0+dGltZWxpbmUgIT0gdGwpCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bvb2wuaAppbmRleCBmN2EwYTY2MGMxYzkuLjhkMDY5
ZWZkOTQ1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3Bvb2wuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG9vbC5o
CkBAIC0xOCw3ICsxOCw3IEBAIHN0YXRpYyBpbmxpbmUgaW50CiBpbnRlbF9lbmdpbmVfcG9vbF9t
YXJrX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX3Bvb2xfbm9kZSAqbm9kZSwKIAkJCSAgICAg
IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewotCXJldHVybiBpOTE1X2FjdGl2ZV9yZWYoJm5v
ZGUtPmFjdGl2ZSwgcnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKKwlyZXR1cm4gaTkxNV9hY3RpdmVf
cmVmKCZub2RlLT5hY3RpdmUsIHJxLT50aW1lbGluZSwgcnEpOwogfQogCiBzdGF0aWMgaW5saW5l
IHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCmluZGV4IDdiNDc2
Y2Q1NWRhYy4uZGEwODFhMDVhNDkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF90aW1lbGluZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Rp
bWVsaW5lLmMKQEAgLTI1NCw3ICsyNTQsNyBAQCBpbnQgaW50ZWxfdGltZWxpbmVfaW5pdChzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lLAogCiAJbXV0ZXhfaW5pdCgmdGltZWxpbmUtPm11
dGV4KTsKIAotCUlOSVRfQUNUSVZFX1JFUVVFU1QoJnRpbWVsaW5lLT5sYXN0X3JlcXVlc3QpOwor
CUlOSVRfQUNUSVZFX1JFUVVFU1QoJnRpbWVsaW5lLT5sYXN0X3JlcXVlc3QsICZ0aW1lbGluZS0+
bXV0ZXgpOwogCUlOSVRfTElTVF9IRUFEKCZ0aW1lbGluZS0+cmVxdWVzdHMpOwogCiAJaTkxNV9z
eW5jbWFwX2luaXQoJnRpbWVsaW5lLT5zeW5jKTsKQEAgLTQzNiw4ICs0MzYsNyBAQCBfX2ludGVs
X3RpbWVsaW5lX2dldF9zZXFubyhzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsLAogCSAqIGZyZWUg
aXQgYWZ0ZXIgdGhlIGN1cnJlbnQgcmVxdWVzdCBpcyByZXRpcmVkLCB3aGljaCBlbnN1cmVzIHRo
YXQKIAkgKiBhbGwgd3JpdGVzIGludG8gdGhlIGNhY2hlbGluZSBmcm9tIHByZXZpb3VzIHJlcXVl
c3RzIGFyZSBjb21wbGV0ZS4KIAkgKi8KLQllcnIgPSBpOTE1X2FjdGl2ZV9yZWYoJnRsLT5od3Nw
X2NhY2hlbGluZS0+YWN0aXZlLAotCQkJICAgICAgdGwtPmZlbmNlX2NvbnRleHQsIHJxKTsKKwll
cnIgPSBpOTE1X2FjdGl2ZV9yZWYoJnRsLT5od3NwX2NhY2hlbGluZS0+YWN0aXZlLCB0bCwgcnEp
OwogCWlmIChlcnIpCiAJCWdvdG8gZXJyX2NhY2hlbGluZTsKIApAQCAtNDg4LDcgKzQ4Nyw3IEBA
IGludCBpbnRlbF90aW1lbGluZV9nZXRfc2Vxbm8oc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCwK
IHN0YXRpYyBpbnQgY2FjaGVsaW5lX3JlZihzdHJ1Y3QgaW50ZWxfdGltZWxpbmVfY2FjaGVsaW5l
ICpjbCwKIAkJCSBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKLQlyZXR1cm4gaTkxNV9hY3Rp
dmVfcmVmKCZjbC0+YWN0aXZlLCBycS0+ZmVuY2UuY29udGV4dCwgcnEpOworCXJldHVybiBpOTE1
X2FjdGl2ZV9yZWYoJmNsLT5hY3RpdmUsIHJxLT50aW1lbGluZSwgcnEpOwogfQogCiBpbnQgaW50
ZWxfdGltZWxpbmVfcmVhZF9od3NwKHN0cnVjdCBpOTE1X3JlcXVlc3QgKmZyb20sCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfdGltZWxpbmUuYwppbmRleCA5ZjMxMDAxMzU1OTAu
LjRkNzJjZWY1MDZhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfdGltZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1l
bGluZS5jCkBAIC02ODgsNyArNjg4LDkgQEAgc3RhdGljIGludCBsaXZlX2h3c3Bfd3JhcCh2b2lk
ICphcmcpCiAKIAkJdGwtPnNlcW5vID0gLTR1OwogCisJCW11dGV4X2xvY2tfbmVzdGVkKCZ0bC0+
bXV0ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKIAkJZXJyID0gaW50ZWxfdGltZWxpbmVfZ2V0
X3NlcW5vKHRsLCBycSwgJnNlcW5vWzBdKTsKKwkJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgpOwog
CQlpZiAoZXJyKSB7CiAJCQlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKIAkJCWdvdG8gb3V0OwpAQCAt
NzAzLDcgKzcwNSw5IEBAIHN0YXRpYyBpbnQgbGl2ZV9od3NwX3dyYXAodm9pZCAqYXJnKQogCQl9
CiAJCWh3c3Bfc2Vxbm9bMF0gPSB0bC0+aHdzcF9zZXFubzsKIAorCQltdXRleF9sb2NrX25lc3Rl
ZCgmdGwtPm11dGV4LCBTSU5HTEVfREVQVEhfTkVTVElORyk7CiAJCWVyciA9IGludGVsX3RpbWVs
aW5lX2dldF9zZXFubyh0bCwgcnEsICZzZXFub1sxXSk7CisJCW11dGV4X3VubG9jaygmdGwtPm11
dGV4KTsKIAkJaWYgKGVycikgewogCQkJaTkxNV9yZXF1ZXN0X2FkZChycSk7CiAJCQlnb3RvIG91
dDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0cy9tb2NrX3Rp
bWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdHMvbW9ja190aW1lbGlu
ZS5jCmluZGV4IDVjNTQ5MjA1ODI4YS4uNTk4MTcwZWZjYWY2IDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdHMvbW9ja190aW1lbGluZS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0cy9tb2NrX3RpbWVsaW5lLmMKQEAgLTE1LDcgKzE1LDcg
QEAgdm9pZCBtb2NrX3RpbWVsaW5lX2luaXQoc3RydWN0IGludGVsX3RpbWVsaW5lICp0aW1lbGlu
ZSwgdTY0IGNvbnRleHQpCiAKIAltdXRleF9pbml0KCZ0aW1lbGluZS0+bXV0ZXgpOwogCi0JSU5J
VF9BQ1RJVkVfUkVRVUVTVCgmdGltZWxpbmUtPmxhc3RfcmVxdWVzdCk7CisJSU5JVF9BQ1RJVkVf
UkVRVUVTVCgmdGltZWxpbmUtPmxhc3RfcmVxdWVzdCwgJnRpbWVsaW5lLT5tdXRleCk7CiAJSU5J
VF9MSVNUX0hFQUQoJnRpbWVsaW5lLT5yZXF1ZXN0cyk7CiAKIAlpOTE1X3N5bmNtYXBfaW5pdCgm
dGltZWxpbmUtPnN5bmMpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9h
Y3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggMTNmMzA0
YTI5ZmM4Li5hYjMxM2M5MzFhYmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAt
MTMxLDEwICsxMzEsMTEgQEAgbm9kZV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3Qg
KmJhc2UsIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogfQogCiBzdGF0aWMgc3RydWN0IGk5MTVf
YWN0aXZlX3JlcXVlc3QgKgotYWN0aXZlX2luc3RhbmNlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVm
LCB1NjQgaWR4KQorYWN0aXZlX2luc3RhbmNlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLCBzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewogCXN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZSwgKnBy
ZWFsbG9jOwogCXN0cnVjdCByYl9ub2RlICoqcCwgKnBhcmVudDsKKwl1NjQgaWR4ID0gdGwtPmZl
bmNlX2NvbnRleHQ7CiAKIAkvKgogCSAqIFdlIHRyYWNrIHRoZSBtb3N0IHJlY2VudGx5IHVzZWQg
dGltZWxpbmUgdG8gc2tpcCBhIHJidHJlZSBzZWFyY2gKQEAgLTE3Myw3ICsxNzQsNyBAQCBhY3Rp
dmVfaW5zdGFuY2Uoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsIHU2NCBpZHgpCiAJfQogCiAJbm9k
ZSA9IHByZWFsbG9jOwotCWk5MTVfYWN0aXZlX3JlcXVlc3RfaW5pdCgmbm9kZS0+YmFzZSwgTlVM
TCwgbm9kZV9yZXRpcmUpOworCWk5MTVfYWN0aXZlX3JlcXVlc3RfaW5pdCgmbm9kZS0+YmFzZSwg
JnRsLT5tdXRleCwgTlVMTCwgbm9kZV9yZXRpcmUpOwogCW5vZGUtPnJlZiA9IHJlZjsKIAlub2Rl
LT50aW1lbGluZSA9IGlkeDsKIApAQCAtMjA2LDE4ICsyMDcsMjAgQEAgdm9pZCBfX2k5MTVfYWN0
aXZlX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiB9CiAKIGludCBpOTE1X2Fj
dGl2ZV9yZWYoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCi0JCSAgICB1NjQgdGltZWxpbmUsCisJ
CSAgICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsLAogCQkgICAgc3RydWN0IGk5MTVfcmVxdWVz
dCAqcnEpCiB7CiAJc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgKmFjdGl2ZTsKIAlpbnQgZXJy
OwogCisJbG9ja2RlcF9hc3NlcnRfaGVsZCgmdGwtPm11dGV4KTsKKwogCS8qIFByZXZlbnQgcmVh
cGluZyBpbiBjYXNlIHdlIG1hbGxvYy93YWl0IHdoaWxlIGJ1aWxkaW5nIHRoZSB0cmVlICovCiAJ
ZXJyID0gaTkxNV9hY3RpdmVfYWNxdWlyZShyZWYpOwogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7
CiAKLQlhY3RpdmUgPSBhY3RpdmVfaW5zdGFuY2UocmVmLCB0aW1lbGluZSk7CisJYWN0aXZlID0g
YWN0aXZlX2luc3RhbmNlKHJlZiwgdGwpOwogCWlmICghYWN0aXZlKSB7CiAJCWVyciA9IC1FTk9N
RU07CiAJCWdvdG8gb3V0OwpAQCAtMzUzLDYgKzM1Niw3IEBAIGludCBpOTE1X2FjdGl2ZV9hY3F1
aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCiAJR0VNX0JV
R19PTighZW5naW5lLT5tYXNrKTsKIAlmb3JfZWFjaF9lbmdpbmVfbWFza2VkKGVuZ2luZSwgaTkx
NSwgZW5naW5lLT5tYXNrLCB0bXApIHsKIAkJc3RydWN0IGludGVsX2NvbnRleHQgKmtjdHggPSBl
bmdpbmUtPmtlcm5lbF9jb250ZXh0OworCQlzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsID0ga2N0
eC0+cmluZy0+dGltZWxpbmU7CiAJCXN0cnVjdCBhY3RpdmVfbm9kZSAqbm9kZTsKIAogCQlub2Rl
ID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xhYl9jYWNoZSwgR0ZQX0tFUk5FTCk7CkBAIC0z
NjEsOSArMzY1LDkgQEAgaW50IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmll
cihzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwKIAkJCWdvdG8gdW53aW5kOwogCQl9CiAKLQkJaTkx
NV9hY3RpdmVfcmVxdWVzdF9pbml0KCZub2RlLT5iYXNlLAorCQlpOTE1X2FjdGl2ZV9yZXF1ZXN0
X2luaXQoJm5vZGUtPmJhc2UsICZ0bC0+bXV0ZXgsCiAJCQkJCSAodm9pZCAqKWVuZ2luZSwgbm9k
ZV9yZXRpcmUpOwotCQlub2RlLT50aW1lbGluZSA9IGtjdHgtPnJpbmctPnRpbWVsaW5lLT5mZW5j
ZV9jb250ZXh0OworCQlub2RlLT50aW1lbGluZSA9IHRsLT5mZW5jZV9jb250ZXh0OwogCQlub2Rl
LT5yZWYgPSByZWY7CiAJCWF0b21pY19pbmMoJnJlZi0+Y291bnQpOwogCkBAIC00NDEsNiArNDQ1
LDEwIEBAIGludCBpOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldChzdHJ1Y3QgaTkxNV9hY3RpdmVfcmVx
dWVzdCAqYWN0aXZlLAogewogCWludCBlcnI7CiAKKyNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1f
STkxNV9ERUJVR19HRU0pCisJbG9ja2RlcF9hc3NlcnRfaGVsZChhY3RpdmUtPmxvY2spOworI2Vu
ZGlmCisKIAkvKiBNdXN0IG1haW50YWluIG9yZGVyaW5nIHdydCBwcmV2aW91cyBhY3RpdmUgcmVx
dWVzdHMgKi8KIAllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfYWN0aXZlX3JlcXVlc3QocnEsIGFj
dGl2ZSk7CiAJaWYgKGVycikKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
YWN0aXZlLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCmluZGV4IDkxMWE4
MzM4MDA3YS4uMTY0YzJiMDc0Y2ZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmgKQEAg
LTU4LDE1ICs1OCwyMCBAQCB2b2lkIGk5MTVfYWN0aXZlX3JldGlyZV9ub29wKHN0cnVjdCBpOTE1
X2FjdGl2ZV9yZXF1ZXN0ICphY3RpdmUsCiAgKi8KIHN0YXRpYyBpbmxpbmUgdm9pZAogaTkxNV9h
Y3RpdmVfcmVxdWVzdF9pbml0KHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0ICphY3RpdmUsCisJ
CQkgc3RydWN0IG11dGV4ICpsb2NrLAogCQkJIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAogCQkJ
IGk5MTVfYWN0aXZlX3JldGlyZV9mbiByZXRpcmUpCiB7CiAJUkNVX0lOSVRfUE9JTlRFUihhY3Rp
dmUtPnJlcXVlc3QsIHJxKTsKIAlJTklUX0xJU1RfSEVBRCgmYWN0aXZlLT5saW5rKTsKIAlhY3Rp
dmUtPnJldGlyZSA9IHJldGlyZSA/OiBpOTE1X2FjdGl2ZV9yZXRpcmVfbm9vcDsKKyNpZiBJU19F
TkFCTEVEKENPTkZJR19EUk1fSTkxNV9ERUJVR19HRU0pCisJYWN0aXZlLT5sb2NrID0gbG9jazsK
KyNlbmRpZgogfQogCi0jZGVmaW5lIElOSVRfQUNUSVZFX1JFUVVFU1QobmFtZSkgaTkxNV9hY3Rp
dmVfcmVxdWVzdF9pbml0KChuYW1lKSwgTlVMTCwgTlVMTCkKKyNkZWZpbmUgSU5JVF9BQ1RJVkVf
UkVRVUVTVChuYW1lLCBsb2NrKSBcCisJaTkxNV9hY3RpdmVfcmVxdWVzdF9pbml0KChuYW1lKSwg
KGxvY2spLCBOVUxMLCBOVUxMKQogCiAvKioKICAqIGk5MTVfYWN0aXZlX3JlcXVlc3Rfc2V0IC0g
dXBkYXRlcyB0aGUgdHJhY2tlciB0byB3YXRjaCB0aGUgY3VycmVudCByZXF1ZXN0CkBAIC04MSw2
ICs4Niw5IEBAIHN0YXRpYyBpbmxpbmUgdm9pZAogX19pOTE1X2FjdGl2ZV9yZXF1ZXN0X3NldChz
dHJ1Y3QgaTkxNV9hY3RpdmVfcmVxdWVzdCAqYWN0aXZlLAogCQkJICBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpyZXF1ZXN0KQogeworI2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX0dF
TSkKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKGFjdGl2ZS0+bG9jayk7CisjZW5kaWYKIAlsaXN0X21v
dmUoJmFjdGl2ZS0+bGluaywgJnJlcXVlc3QtPmFjdGl2ZV9saXN0KTsKIAlyY3VfYXNzaWduX3Bv
aW50ZXIoYWN0aXZlLT5yZXF1ZXN0LCByZXF1ZXN0KTsKIH0KQEAgLTM2Miw3ICszNzAsNyBAQCB2
b2lkIF9faTkxNV9hY3RpdmVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIH0g
d2hpbGUgKDApCiAKIGludCBpOTE1X2FjdGl2ZV9yZWYoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYs
Ci0JCSAgICB1NjQgdGltZWxpbmUsCisJCSAgICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsLAog
CQkgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpOwogCiBpbnQgaTkxNV9hY3RpdmVfd2FpdChz
dHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZik7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVf
dHlwZXMuaAppbmRleCA1YjBhMzAyNGNlMjQuLjQzMTFjMmZhYjZlNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oCkBAIC0yNCw2ICsyNCw5IEBAIHN0cnVjdCBpOTE1
X2FjdGl2ZV9yZXF1ZXN0IHsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0IF9fcmN1ICpyZXF1ZXN0Owog
CXN0cnVjdCBsaXN0X2hlYWQgbGluazsKIAlpOTE1X2FjdGl2ZV9yZXRpcmVfZm4gcmV0aXJlOwor
I2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0RFQlVHX0dFTSkKKwlzdHJ1Y3QgbXV0ZXgg
KmxvY2s7CisjZW5kaWYKIH07CiAKIHN0cnVjdCBhY3RpdmVfbm9kZTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3ZtYS5jCmluZGV4IDQwZmQwOGFiNDdkYy4uNjhiOTFmZTc1YWYxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdm1hLmMKQEAgLTkxOSw3ICs5MTksNyBAQCBpbnQgaTkxNV92bWFfbW92ZV90b19hY3RpdmUo
c3RydWN0IGk5MTVfdm1hICp2bWEsCiAJICogYWRkIHRoZSBhY3RpdmUgcmVmZXJlbmNlIGZpcnN0
IGFuZCBxdWV1ZSBmb3IgaXQgdG8gYmUgZHJvcHBlZAogCSAqICpsYXN0Ki4KIAkgKi8KLQllcnIg
PSBpOTE1X2FjdGl2ZV9yZWYoJnZtYS0+YWN0aXZlLCBycS0+ZmVuY2UuY29udGV4dCwgcnEpOwor
CWVyciA9IGk5MTVfYWN0aXZlX3JlZigmdm1hLT5hY3RpdmUsIHJxLT50aW1lbGluZSwgcnEpOwog
CWlmICh1bmxpa2VseShlcnIpKQogCQlyZXR1cm4gZXJyOwogCkBAIC05MjksNyArOTI5LDcgQEAg
aW50IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCiAJCWlm
IChpbnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRlKG9iai0+ZnJvbnRidWZmZXIsIE9SSUdJTl9D
UykpCiAJCQlpOTE1X2FjdGl2ZV9yZWYoJm9iai0+ZnJvbnRidWZmZXItPndyaXRlLAotCQkJCQly
cS0+ZmVuY2UuY29udGV4dCwKKwkJCQkJcnEtPnRpbWVsaW5lLAogCQkJCQlycSk7CiAKIAkJb2Jq
LT5yZWFkX2RvbWFpbnMgPSAwOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkx
NV9hY3RpdmUuYwppbmRleCA4NGZjZTM3OWMwZGUuLjI5NjAzYzUxNzNjNCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMKQEAgLTEwOSw4ICsxMDksNyBA
QCBfX2xpdmVfYWN0aXZlX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQkJ
CQkJICAgICAgIHN1Ym1pdCwKIAkJCQkJCSAgICAgICBHRlBfS0VSTkVMKTsKIAkJaWYgKGVyciA+
PSAwKQotCQkJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZhY3RpdmUtPmJhc2UsCi0JCQkJCSAgICAg
IHJxLT5mZW5jZS5jb250ZXh0LCBycSk7CisJCQllcnIgPSBpOTE1X2FjdGl2ZV9yZWYoJmFjdGl2
ZS0+YmFzZSwgcnEtPnRpbWVsaW5lLCBycSk7CiAJCWk5MTVfcmVxdWVzdF9hZGQocnEpOwogCQlp
ZiAoZXJyKSB7CiAJCQlwcl9lcnIoIkZhaWxlZCB0byB0cmFjayBhY3RpdmUgcmVmIVxuIik7Ci0t
IAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
