Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80927322C0
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Jun 2019 10:53:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A47389842;
	Sun,  2 Jun 2019 08:53:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 691CF89801;
 Sun,  2 Jun 2019 08:53:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16764354-1500050 
 for multiple; Sun, 02 Jun 2019 09:53:21 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  2 Jun 2019 09:53:18 +0100
Message-Id: <20190602085318.25048-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ppgtt: Remove defunct test
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

aTkxNV9nZW1fZ3R0X2luZm8gaGFzIGJlZW4gcmVtb3ZlZCBhbmQgc28gZmxpbmstYW5kLWV4aXQt
dm1hLWxlYWsgaXMKZGVmdW5jdC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX3BwZ3R0LmMgfCA0MyAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9wcGd0dC5jIGIvdGVz
dHMvaTkxNS9nZW1fcHBndHQuYwppbmRleCBiOTA1ZWE1NTkuLjBkNDBhN2I3OCAxMDA2NDQKLS0t
IGEvdGVzdHMvaTkxNS9nZW1fcHBndHQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9wcGd0dC5jCkBA
IC0yODksNDYgKzI4OSw2IEBAIHN0YXRpYyB2b2lkIGZsaW5rX2FuZF9jbG9zZSh2b2lkKQogCWNs
b3NlKGZkMik7CiB9CiAKLXN0YXRpYyB2b2lkIGZsaW5rX2FuZF9leGl0KHZvaWQpCi17Ci0JdWlu
dDMyX3QgZmQsIGZkMiwgZmQzOwotCXVpbnQzMl90IGJvLCBmbGlua2VkX2JvLCBuYW1lOwotCWNo
YXIgbWF0Y2hbMjBdOwotCi0JZmQgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKLQlp
Z3RfcmVxdWlyZShnZW1fdXNlc19mdWxsX3BwZ3R0KGZkKSk7Ci0KLQlibyA9IGdlbV9jcmVhdGUo
ZmQsIDQwOTYpOwotCW5hbWUgPSBnZW1fZmxpbmsoZmQsIGJvKTsKLQlzbnByaW50ZihtYXRjaCwg
c2l6ZW9mKG1hdGNoKSwgIihuYW1lOiAldSkiLCBuYW1lKTsKLQotCWZkMiA9IGRybV9vcGVuX2Ry
aXZlcihEUklWRVJfSU5URUwpOwotCWZsaW5rZWRfYm8gPSBnZW1fb3BlbihmZDIsIG5hbWUpOwot
Ci0JLyogVmVyaWZ5IFZNQSBpcyBub3QgdGhlcmUgeWV0LiAqLwotCWlndF9hc3NlcnQoIWlndF9k
ZWJ1Z2ZzX3NlYXJjaChmZCwgImk5MTVfZ2VtX2d0dCIsIG1hdGNoKSk7Ci0KLQlleGVjX2FuZF9n
ZXRfb2Zmc2V0KGZkMiwgZmxpbmtlZF9ibyk7Ci0KLQkvKiBWZXJpZnkgVk1BIGhhcyBiZWVuIGNy
ZWF0ZWQuICovCi0JaWd0X2Fzc2VydChpZ3RfZGVidWdmc19zZWFyY2goZmQsICJpOTE1X2dlbV9n
dHQiLCBtYXRjaCkpOwotCi0JLyogQ2xvc2UgdGhlIGNvbnRleHQuICovCi0JY2xvc2UoZmQyKTsK
LQotCS8qIEV4ZWN1dGUgYSBkaWZmZXJlbnQgYW5kIHVucmVsYXRlZCAod3J0IG9iamVjdCBzaGFy
aW5nKSBjb250ZXh0IHRvCi0JICogZW5zdXJlIGVuZ2luZSBkcm9wcyBpdHMgbGFzdCBjb250ZXh0
IHJlZmVyZW5jZS4KLQkgKi8KLQlmZDMgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsK
LQlleGVjX2FuZF9nZXRfb2Zmc2V0KGZkMywgZ2VtX2NyZWF0ZShmZDMsIDQwOTYpKTsKLQljbG9z
ZShmZDMpOwotCi0JaWd0X2Ryb3BfY2FjaGVzX3NldChmZCwgRFJPUF9BQ1RJVkUgfCBEUk9QX1JF
VElSRSB8IERST1BfSURMRSk7Ci0JaWd0X2Fzc2VydCghaWd0X2RlYnVnZnNfc2VhcmNoKGZkLCAi
aTkxNV9nZW1fZ3R0IiwgbWF0Y2gpKTsKLQotCWNsb3NlKGZkKTsKLX0KLQogI2RlZmluZSBOX0NI
SUxEIDgKIGlndF9tYWluCiB7CkBAIC0zNjQsNyArMzI0LDQgQEAgaWd0X21haW4KIAogCWlndF9z
dWJ0ZXN0KCJmbGluay1hbmQtY2xvc2Utdm1hLWxlYWsiKQogCQlmbGlua19hbmRfY2xvc2UoKTsK
LQotCWlndF9zdWJ0ZXN0KCJmbGluay1hbmQtZXhpdC12bWEtbGVhayIpCi0JCWZsaW5rX2FuZF9l
eGl0KCk7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
