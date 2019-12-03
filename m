Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F1511018A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:50:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0348E6E839;
	Tue,  3 Dec 2019 15:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93BEE6E839
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:50:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19444847-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Dec 2019 15:50:30 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 15:50:32 +0000
Message-Id: <20191203155032.3137263-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/gem: Avoid parking the vma as we unbind
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

SW4gb3JkZXIgdG8gYXZvaWQga2VlcGluZyBhIHJlZmVyZW5jZSBvbiB0aGUgaTkxNV92bWEgKHdo
aWNoIGlzIGxvbmcKb3ZlcmR1ZSEpIHdlIGhhdmUgdG8gY29vcmRpbmF0ZSBhbGwgdGhlIHBvc3Np
YmxlIGxpZmV0aW1lcyBhbmQgb25seSB1c2UKdGhlIHZtYSB3aGlsZSB3ZSBrbm93IGl0IGlzIGFs
aXZlLiBJbiB0aGlzIGVwaXNvZGUsIHdlIGFyZSByZW1pbmRlZCB0aGF0CndoaWxlIGlkbGUsIHRo
ZSBjbG9zZWQgdm1hIGFyZSBkZXN0cm95ZWQuIFNvIGlmIHRoZSBHVCBpZGxlcyB3aGlsZSB3ZSBh
cmUKd29ya2luZyB3aXRoIHRoZSB2bWEsIHRoZSB2bWEgaXRzZWxmIGJlY29tZXMgaW52YWxpZC4K
CkZpcnN0IGNsYXNzIGk5MTVfdm1hIGhlcmUgd2UgY29tZSwgYnV0IGluIHRoZSBtZWFudGltZSBr
ZWVwIHBpbGluZyBvbgp0aGUgc3RyYXcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhl
dy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIHwg
MTYgKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBiZmRjOGE5ZjgyZjguLjQ2
NmNhMjc1YTg2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xNDEsMTggKzE0MSwzMiBA
QCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqLAogCQkJCQkJICAgICAgIHN0cnVjdCBpOTE1X3ZtYSwKIAkJCQkJCSAgICAgICBvYmpfbGlu
aykpKSB7CiAJCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gdm1hLT52bTsKKwkJYm9v
bCBhd2FrZSA9IGZhbHNlOwogCi0JCXJldCA9IC1FQlVTWTsKKwkJcmV0ID0gLUVBR0FJTjsKIAkJ
aWYgKCFpOTE1X3ZtX3RyeW9wZW4odm0pKQogCQkJYnJlYWs7CiAKKwkJaWYgKGludGVsX2d0X3Bt
X2dldF9pZl9hd2FrZSh2bS0+Z3QpKSB7CisJCQlhd2FrZSA9IHRydWU7CisJCX0gZWxzZSB7CisJ
CQlpZiAoaTkxNV92bWFfaXNfY2xvc2VkKHZtYSkpIHsKKwkJCQlzcGluX3VubG9jaygmb2JqLT52
bWEubG9jayk7CisJCQkJZ290byBlcnJfdm07CisJCQl9CisJCX0KKwogCQlsaXN0X21vdmVfdGFp
bCgmdm1hLT5vYmpfbGluaywgJnN0aWxsX2luX2xpc3QpOwogCQlzcGluX3VubG9jaygmb2JqLT52
bWEubG9jayk7CiAKKwkJcmV0ID0gLUVCVVNZOwogCQlpZiAoZmxhZ3MgJiBJOTE1X0dFTV9PQkpF
Q1RfVU5CSU5EX0FDVElWRSB8fAogCQkgICAgIWk5MTVfdm1hX2lzX2FjdGl2ZSh2bWEpKQogCQkJ
cmV0ID0gaTkxNV92bWFfdW5iaW5kKHZtYSk7CiAKKwkJaWYgKGF3YWtlKQorCQkJaW50ZWxfZ3Rf
cG1fcHV0KHZtLT5ndCk7CitlcnJfdm06CiAJCWk5MTVfdm1fY2xvc2Uodm0pOwogCQlzcGluX2xv
Y2soJm9iai0+dm1hLmxvY2spOwogCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
