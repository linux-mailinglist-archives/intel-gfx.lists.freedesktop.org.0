Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC3E10CE38
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 19:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686726E872;
	Thu, 28 Nov 2019 18:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E88F6E0D3;
 Thu, 28 Nov 2019 18:04:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19380455-1500050 
 for multiple; Thu, 28 Nov 2019 18:04:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 18:04:14 +0000
Message-Id: <20191128180414.44846-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] overlay: Believe in 0MHz
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHZydGtvIHByb3Bvc2VkIHJlcG9ydGluZyAwTUh6IHdoZW4gaWRsZSwgYnV0IHRoZSBvdmVybGF5
IGRpZG4ndCBiZWxpZXZlCnRoYXQgd291bGQgYmUgcG9zc2libGUgYW5kIHN0cmlwcGVkIGZyb20g
aXRzIGdyYXBocyEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIG92ZXJsYXkvb3ZlcmxheS5jIHwgOSArKystLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvb3Zl
cmxheS9vdmVybGF5LmMgYi9vdmVybGF5L292ZXJsYXkuYwppbmRleCBkZDRmY2EyOWUuLjc3MzAy
MTgxYyAxMDA2NDQKLS0tIGEvb3ZlcmxheS9vdmVybGF5LmMKKysrIGIvb3ZlcmxheS9vdmVybGF5
LmMKQEAgLTU5OSwxMCArNTk5LDggQEAgc3RhdGljIHZvaWQgc2hvd19ncHVfZnJlcShzdHJ1Y3Qg
b3ZlcmxheV9jb250ZXh0ICpjdHgsIHN0cnVjdCBvdmVybGF5X2dwdV9mcmVxICoKIAl9CiAKIAlp
ZiAoaGFzX2ZyZXEpIHsKLQkJaWYgKGdmLT5ncHVfZnJlcS5jdXJyZW50KQotCQkJY2hhcnRfYWRk
X3NhbXBsZSgmZ2YtPmN1cnJlbnQsIGdmLT5ncHVfZnJlcS5jdXJyZW50KTsKLQkJaWYgKGdmLT5n
cHVfZnJlcS5yZXF1ZXN0KQotCQkJY2hhcnRfYWRkX3NhbXBsZSgmZ2YtPnJlcXVlc3QsIGdmLT5n
cHVfZnJlcS5yZXF1ZXN0KTsKKwkJY2hhcnRfYWRkX3NhbXBsZSgmZ2YtPmN1cnJlbnQsIGdmLT5n
cHVfZnJlcS5jdXJyZW50KTsKKwkJY2hhcnRfYWRkX3NhbXBsZSgmZ2YtPnJlcXVlc3QsIGdmLT5n
cHVfZnJlcS5yZXF1ZXN0KTsKIAogCQljaGFydF9kcmF3KCZnZi0+cmVxdWVzdCwgY3R4LT5jcik7
CiAJCWNoYXJ0X2RyYXcoJmdmLT5jdXJyZW50LCBjdHgtPmNyKTsKQEAgLTY0Nyw5ICs2NDUsOCBA
QCBzdGF0aWMgdm9pZCBzaG93X2dwdV9mcmVxKHN0cnVjdCBvdmVybGF5X2NvbnRleHQgKmN0eCwg
c3RydWN0IG92ZXJsYXlfZ3B1X2ZyZXEgKgogCQljYWlyb190ZXh0X2V4dGVudHNfdCBleHRlbnRz
OwogCiAJCWxlbiA9IHNwcmludGYoYnVmLCAiRnJlcXVlbmN5OiAlZE1IeiIsIGdmLT5ncHVfZnJl
cS5jdXJyZW50KTsKLQkJaWYgKGdmLT5ncHVfZnJlcS5yZXF1ZXN0KQogCQljYWlyb19zZXRfc291
cmNlX3JnYmEoY3R4LT5jciwgMSwgMSwgMSwgMSk7Ci0JCQlzcHJpbnRmKGJ1ZiArIGxlbiwgIiAo
cmVxdWVzdGVkICVkTUh6KSIsIGdmLT5ncHVfZnJlcS5yZXF1ZXN0KTsKKwkJc3ByaW50ZihidWYg
KyBsZW4sICIgKHJlcXVlc3RlZCAlZE1IeikiLCBnZi0+Z3B1X2ZyZXEucmVxdWVzdCk7CiAJCWNh
aXJvX21vdmVfdG8oY3R4LT5jciwgUEFELCB5KTsKIAkJY2Fpcm9fc2hvd190ZXh0KGN0eC0+Y3Is
IGJ1Zik7CiAJCXkgKz0gMTI7Ci0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
