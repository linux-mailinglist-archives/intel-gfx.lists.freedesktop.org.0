Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 064685581C
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 21:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4846E192;
	Tue, 25 Jun 2019 19:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63E56E204
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 19:49:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17022952-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 20:49:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 20:48:59 +0100
Message-Id: <20190625194859.28005-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gt: Add some debug tracing for context
 pinning
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

QWRkIHRoZSBjb250ZXh0IHBpbi91bnBpbiBldmVudHMgdG8gdGhlIHRyYWNlIGZvciBwb3N0LW1v
cnRlbSBkZWJ1Z2dpbmcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgICAg
fCAxMCArKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmMgfCAgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwppbmRleCA5MzhkZDAzMmI4MjAuLjExMTBmYzhm
NjU3YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwpAQCAtNTksNiAr
NTksMTAgQEAgaW50IF9faW50ZWxfY29udGV4dF9kb19waW4oc3RydWN0IGludGVsX2NvbnRleHQg
KmNlKQogCQlpZiAoZXJyKQogCQkJZ290byBlcnI7CiAKKwkJR0VNX1RSQUNFKCIlcyBjb250ZXh0
OiVsbHggcGluIHJpbmc6e2hlYWQ6JTA0eCwgdGFpbDolMDR4fVxuIiwKKwkJCSAgY2UtPmVuZ2lu
ZS0+bmFtZSwgY2UtPnJpbmctPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAorCQkJICBjZS0+cmlu
Zy0+aGVhZCwgY2UtPnJpbmctPnRhaWwpOworCiAJCWk5MTVfZ2VtX2NvbnRleHRfZ2V0KGNlLT5n
ZW1fY29udGV4dCk7IC8qIGZvciBjdHgtPnBwZ3R0ICovCiAKIAkJc21wX21iX19iZWZvcmVfYXRv
bWljKCk7IC8qIGZsdXNoIHBpbiBiZWZvcmUgaXQgaXMgdmlzaWJsZSAqLwpAQCAtODUsNiArODks
OSBAQCB2b2lkIGludGVsX2NvbnRleHRfdW5waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQog
CW11dGV4X2xvY2tfbmVzdGVkKCZjZS0+cGluX211dGV4LCBTSU5HTEVfREVQVEhfTkVTVElORyk7
CiAKIAlpZiAobGlrZWx5KGF0b21pY19kZWNfYW5kX3Rlc3QoJmNlLT5waW5fY291bnQpKSkgewor
CQlHRU1fVFJBQ0UoIiVzIGNvbnRleHQ6JWxseCByZXRpcmVcbiIsCisJCQkgIGNlLT5lbmdpbmUt
Pm5hbWUsIGNlLT5yaW5nLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCk7CisKIAkJY2UtPm9wcy0+
dW5waW4oY2UpOwogCiAJCWk5MTVfZ2VtX2NvbnRleHRfcHV0KGNlLT5nZW1fY29udGV4dCk7CkBA
IC0xMjcsNiArMTM0LDkgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9jb250ZXh0X3JldGlyZShzdHJ1
Y3QgaTkxNV9hY3RpdmUgKmFjdGl2ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UgPSBj
b250YWluZXJfb2YoYWN0aXZlLCB0eXBlb2YoKmNlKSwgYWN0aXZlKTsKIAorCUdFTV9UUkFDRSgi
JXMgY29udGV4dDolbGx4IHJldGlyZVxuIiwKKwkJICBjZS0+ZW5naW5lLT5uYW1lLCBjZS0+cmlu
Zy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQpOworCiAJaWYgKGNlLT5zdGF0ZSkKIAkJX19jb250
ZXh0X3VucGluX3N0YXRlKGNlLT5zdGF0ZSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3JpbmdidWZmZXIuYwppbmRleCBmMDk0NDA2ZGNjNTYuLjgxZjliMDQyMmU2YSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwpAQCAtMTE5Nyw2ICsxMTk3
LDcgQEAgaW50IGludGVsX3JpbmdfcGluKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQogCUdFTV9C
VUdfT04ocmluZy0+dmFkZHIpOwogCXJpbmctPnZhZGRyID0gYWRkcjsKIAorCUdFTV9UUkFDRSgi
cmluZzolbGx4IHBpblxuIiwgcmluZy0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQpOwogCXJldHVy
biAwOwogCiBlcnJfcmluZzoKQEAgLTEyMjMsNiArMTIyNCw4IEBAIHZvaWQgaW50ZWxfcmluZ191
bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKIAlpZiAoIWF0b21pY19kZWNfYW5kX3Rlc3Qo
JnJpbmctPnBpbl9jb3VudCkpCiAJCXJldHVybjsKIAorCUdFTV9UUkFDRSgicmluZzolbGx4IHVu
cGluXG4iLCByaW5nLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCk7CisKIAkvKiBEaXNjYXJkIGFu
eSB1bnVzZWQgYnl0ZXMgYmV5b25kIHRoYXQgc3VibWl0dGVkIHRvIGh3LiAqLwogCWludGVsX3Jp
bmdfcmVzZXQocmluZywgcmluZy0+dGFpbCk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
