Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B77A134D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24BC96E03E;
	Thu, 29 Aug 2019 08:12:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B450789FA0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299894-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:48 +0100
Message-Id: <20190829081150.10271-35-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 34/36] drm/i915: Drop struct_mutex from suspend
 state save/restore
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

c3RydWN0X211dGV4IHByb3ZpZGVzIG5vIHNlcmlhbGlzYXRpb24gb2YgdGhlIHJlZ2lzdGVycyBh
bmQgZGF0YQpzdHJ1Y3R1cmVzIGJlaW5nIHNhdmVkIGFuZCByZXN0b3JlZCBhY3Jvc3Mgc3VzcGVu
ZC9yZXN1bWUuIEl0IGlzCmNvbXBsZXRlbHkgc3VwZXJmbHVvdXMgaGVyZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgOCAtLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9z
dXNwZW5kLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwppbmRleCA4NTA4
YTAxYWQ4YjkuLjFiYmZkOGZkNTEyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zdXNwZW5kLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMK
QEAgLTY1LDggKzY1LDYgQEAgaW50IGk5MTVfc2F2ZV9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiAJc3RydWN0IHBjaV9kZXYgKnBkZXYgPSBkZXZfcHJpdi0+ZHJtLnBk
ZXY7CiAJaW50IGk7CiAKLQltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7
Ci0KIAlpOTE1X3NhdmVfZGlzcGxheShkZXZfcHJpdik7CiAKIAlpZiAoSVNfR0VOKGRldl9wcml2
LCA0KSkKQEAgLTEwMCw4ICs5OCw2IEBAIGludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkJZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZVNXRjNbaV0g
PSBJOTE1X1JFQUQoU1dGMyhpKSk7CiAJfQogCi0JbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHJt
LnN0cnVjdF9tdXRleCk7Ci0KIAlyZXR1cm4gMDsKIH0KIApAQCAtMTEwLDggKzEwNiw2IEBAIGlu
dCBpOTE1X3Jlc3RvcmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQog
CXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2OwogCWludCBpOwogCi0J
bXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwotCiAJaWYgKElTX0dFTihk
ZXZfcHJpdiwgNCkpCiAJCXBjaV93cml0ZV9jb25maWdfd29yZChwZGV2LCBHQ0RHTUJVUywKIAkJ
CQkgICAgICBkZXZfcHJpdi0+cmVnZmlsZS5zYXZlR0NER01CVVMpOwpAQCAtMTQ1LDggKzEzOSw2
IEBAIGludCBpOTE1X3Jlc3RvcmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogCQkJSTkxNV9XUklURShTV0YzKGkpLCBkZXZfcHJpdi0+cmVnZmlsZS5zYXZlU1dGM1tp
XSk7CiAJfQogCi0JbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0K
IAlpbnRlbF9nbWJ1c19yZXNldChkZXZfcHJpdik7CiAKIAlyZXR1cm4gMDsKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
