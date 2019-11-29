Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 164B510D7CA
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 16:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273856E0CC;
	Fri, 29 Nov 2019 15:19:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BD016E0CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 15:19:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19395008-1500050 
 for multiple; Fri, 29 Nov 2019 15:18:46 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 15:18:45 +0000
Message-Id: <20191129151845.1092933-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Take timeline->mutex to walk
 list-of-requests
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhvdWdoIHRoZSBjb250ZXh0IGlzIGNsb3NlZCBhbmQgc28gbm8gbW9yZSByZXF1ZXN0cyBjYW4g
YmUgYWRkZWQgdG8gdGhlCnRpbWVsaW5lLCByZXRpcmVtZW50IGNhbiBzdGlsbCBiZSByZW1vdmlu
ZyByZXF1ZXN0cy4gSXQgY2FuIGV2ZW4gYmUKcmVtb3ZpbmcgdGhlIHZlcnkgcmVxdWVzdCB3ZSBh
cmUgaW5zcGVjdGluZyBhbmQgc28gY2F1c2UgdXMgdG8gd2FuZGVyCmludG8gZGVhZCBsaW5rcy4K
ClNlcmlhbGlzZSB3aXRoIHRoZSByZXRpcmVtZW50IGJ5IHRha2luZyB0aGUgdGltZWxpbmUtPm11
dGV4IHVzZWQgZm9yCmd1YXJkaW5nIHRoZSB0aW1lbGluZS0+cmVxdWVzdHMgbGlzdC4KCkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTI0MDQK
Rml4ZXM6IDRhMzE3NDE1MjE0NyAoImRybS9pOTE1L2dlbTogUmVmaW5lIG9jY3VwYW5jeSB0ZXN0
IGluIGtpbGxfY29udGV4dCgpIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+
CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFo
dGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRleCBhMTc5ZTE3MGM5MzYuLjlmMWRjOTZiMTBhNiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCkBAIC00MDMs
NyArNDAzLDcgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmFjdGl2ZV9lbmdpbmUo
c3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWlmICghY2UtPnRpbWVsaW5lKQogCQlyZXR1cm4g
TlVMTDsKIAotCXJjdV9yZWFkX2xvY2soKTsKKwltdXRleF9sb2NrKCZjZS0+dGltZWxpbmUtPm11
dGV4KTsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3JldmVyc2UocnEsICZjZS0+dGltZWxpbmUtPnJl
cXVlc3RzLCBsaW5rKSB7CiAJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKIAkJCWJy
ZWFrOwpAQCAtNDEzLDcgKzQxMyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICph
Y3RpdmVfZW5naW5lKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAkJaWYgKGVuZ2luZSkKIAkJ
CWJyZWFrOwogCX0KLQlyY3VfcmVhZF91bmxvY2soKTsKKwltdXRleF91bmxvY2soJmNlLT50aW1l
bGluZS0+bXV0ZXgpOwogCiAJcmV0dXJuIGVuZ2luZTsKIH0KLS0gCjIuMjQuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
