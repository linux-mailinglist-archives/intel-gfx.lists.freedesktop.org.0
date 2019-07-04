Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8575FDAB
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 22:05:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB2F6E3E3;
	Thu,  4 Jul 2019 20:05:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 964C46E3E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 20:05:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17134019-1500050 
 for multiple; Thu, 04 Jul 2019 21:04:56 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 21:04:53 +0100
Message-Id: <20190704200455.14870-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/overlay: Stash the kernel context
 on initialisation
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

U2ltcGxpZnkgcnVudGltZSByZXF1ZXN0IGNyZWF0aW9uIGJ5IHN0b3JpbmcgdGhlIGNvbnRleHQg
d2UgbmVlZCB0byB1c2UKZHVyaW5nIGluaXRpYWxpc2F0aW9uLiBUaGlzIGFsbG93cyB1cyB0byBy
ZW1vdmUgb25lIG1vcmUgaGFyZGNvZGVkCmVuZ2luZSBsb29rdXAuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYyB8IDEwICsrKysrKystLS0KIDEgZmlsZSBj
aGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX292ZXJsYXkuYwppbmRleCAyMTMzOWI3ZjZhM2UuLjA3OTI5
NzI2Yjc4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9v
dmVybGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5
LmMKQEAgLTE3NSw2ICsxNzUsNyBAQCBzdHJ1Y3Qgb3ZlcmxheV9yZWdpc3RlcnMgewogCiBzdHJ1
Y3QgaW50ZWxfb3ZlcmxheSB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTU7CisJc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNvbnRleHQ7CiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJ
c3RydWN0IGk5MTVfdm1hICp2bWE7CiAJc3RydWN0IGk5MTVfdm1hICpvbGRfdm1hOwpAQCAtMjM5
LDkgKzI0MCw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfb3ZlcmxheV9kb193YWl0X3JlcXVlc3Qoc3Ry
dWN0IGludGVsX292ZXJsYXkgKm92ZXJsYXksCiAKIHN0YXRpYyBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICphbGxvY19yZXF1ZXN0KHN0cnVjdCBpbnRlbF9vdmVybGF5ICpvdmVybGF5KQogewotCXN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSA9IG92ZXJsYXktPmk5MTUtPmVuZ2luZVtSQ1MwXTsK
LQotCXJldHVybiBpOTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwor
CXJldHVybiBpOTE1X3JlcXVlc3RfY3JlYXRlKG92ZXJsYXktPmNvbnRleHQpOwogfQogCiAvKiBv
dmVybGF5IG5lZWRzIHRvIGJlIGRpc2FibGUgaW4gT0NNRCByZWcgKi8KQEAgLTEzNTksMTEgKzEz
NTgsMTYgQEAgdm9pZCBpbnRlbF9vdmVybGF5X3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKIAlpZiAoIUhBU19PVkVSTEFZKGRldl9wcml2KSkKIAkJcmV0dXJuOwogCisJ
aWYgKCFIQVNfRU5HSU5FKGRldl9wcml2LCBSQ1MwKSkKKwkJcmV0dXJuOworCiAJb3ZlcmxheSA9
IGt6YWxsb2Moc2l6ZW9mKCpvdmVybGF5KSwgR0ZQX0tFUk5FTCk7CiAJaWYgKCFvdmVybGF5KQog
CQlyZXR1cm47CiAKIAlvdmVybGF5LT5pOTE1ID0gZGV2X3ByaXY7CisJb3ZlcmxheS0+Y29udGV4
dCA9IGRldl9wcml2LT5lbmdpbmVbUkNTMF0tPmtlcm5lbF9jb250ZXh0OworCUdFTV9CVUdfT04o
IW92ZXJsYXktPmNvbnRleHQpOwogCiAJb3ZlcmxheS0+Y29sb3Jfa2V5ID0gMHgwMTAxZmU7CiAJ
b3ZlcmxheS0+Y29sb3Jfa2V5X2VuYWJsZWQgPSB0cnVlOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
