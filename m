Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F269288A2D
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 11:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B307689AEB;
	Sat, 10 Aug 2019 09:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B06D89AEB
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Aug 2019 09:03:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17951197-1500050 
 for multiple; Sat, 10 Aug 2019 10:03:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Aug 2019 10:03:28 +0100
Message-Id: <20190810090329.6966-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Remove unused
 debugfs/i915_emon_status
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

QmVmb3JlIHdlIHN0YXJ0IHVwb24gb3VyIGdyZWF0IEdUIGludGVycnVwdCByZWZhY3RvciwgdGhy
b3cgb3V0IHRoZQpjcnVmdCEgSW4gdGhpcyBjYXNlLCBpdCBpcyBhbiB1bmxvdmVkIGRlYnVnZnMg
c2hvd2luZyB0aGUgY3VycmVudCBpcHMKc3RhdHVzLCBhIGZhaXJseSBtZWFuaW5nbGVzcyBidW5j
aCBvZiBudW1iZXJzIHRoYXQgd2UgYXJlIG5vdCBjaGVja2luZy4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQW5kaSBTaHl0aSA8YW5k
aS5zaHl0aUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgfCAyNSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjUgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2Zz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwppbmRleCAzZDljZDk3ZTE1
MjYuLmI2MTZiYTBlMGRhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTE0
NDIsMzAgKzE0NDIsNiBAQCBzdGF0aWMgaW50IGk5MTVfc3Jfc3RhdHVzKHN0cnVjdCBzZXFfZmls
ZSAqbSwgdm9pZCAqdW51c2VkKQogCXJldHVybiAwOwogfQogCi1zdGF0aWMgaW50IGk5MTVfZW1v
bl9zdGF0dXMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCi17Ci0Jc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Ci0JaW50ZWxf
d2FrZXJlZl90IHdha2VyZWY7Ci0KLQlpZiAoIUlTX0dFTihpOTE1LCA1KSkKLQkJcmV0dXJuIC1F
Tk9ERVY7Ci0KLQl3aXRoX2ludGVsX3J1bnRpbWVfcG0oJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2Vy
ZWYpIHsKLQkJdW5zaWduZWQgbG9uZyB0ZW1wLCBjaGlwc2V0LCBnZng7Ci0KLQkJdGVtcCA9IGk5
MTVfbWNoX3ZhbChpOTE1KTsKLQkJY2hpcHNldCA9IGk5MTVfY2hpcHNldF92YWwoaTkxNSk7Ci0J
CWdmeCA9IGk5MTVfZ2Z4X3ZhbChpOTE1KTsKLQotCQlzZXFfcHJpbnRmKG0sICJHTUNIIHRlbXA6
ICVsZFxuIiwgdGVtcCk7Ci0JCXNlcV9wcmludGYobSwgIkNoaXBzZXQgcG93ZXI6ICVsZFxuIiwg
Y2hpcHNldCk7Ci0JCXNlcV9wcmludGYobSwgIkdGWCBwb3dlcjogJWxkXG4iLCBnZngpOwotCQlz
ZXFfcHJpbnRmKG0sICJUb3RhbCBwb3dlcjogJWxkXG4iLCBjaGlwc2V0ICsgZ2Z4KTsKLQl9Ci0K
LQlyZXR1cm4gMDsKLX0KLQogc3RhdGljIGludCBpOTE1X3JpbmdfZnJlcV90YWJsZShzdHJ1Y3Qg
c2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7CkBAIC00MzQ5LDcgKzQzMjUsNiBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pbmZvX2xpc3QgaTkxNV9kZWJ1Z2ZzX2xpc3RbXSA9
IHsKIAl7Imk5MTVfZnJlcXVlbmN5X2luZm8iLCBpOTE1X2ZyZXF1ZW5jeV9pbmZvLCAwfSwKIAl7
Imk5MTVfaGFuZ2NoZWNrX2luZm8iLCBpOTE1X2hhbmdjaGVja19pbmZvLCAwfSwKIAl7Imk5MTVf
ZHJwY19pbmZvIiwgaTkxNV9kcnBjX2luZm8sIDB9LAotCXsiaTkxNV9lbW9uX3N0YXR1cyIsIGk5
MTVfZW1vbl9zdGF0dXMsIDB9LAogCXsiaTkxNV9yaW5nX2ZyZXFfdGFibGUiLCBpOTE1X3Jpbmdf
ZnJlcV90YWJsZSwgMH0sCiAJeyJpOTE1X2Zyb250YnVmZmVyX3RyYWNraW5nIiwgaTkxNV9mcm9u
dGJ1ZmZlcl90cmFja2luZywgMH0sCiAJeyJpOTE1X2ZiY19zdGF0dXMiLCBpOTE1X2ZiY19zdGF0
dXMsIDB9LAotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
