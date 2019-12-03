Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DF210FB7B
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 11:13:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E2289DA5;
	Tue,  3 Dec 2019 10:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3C8789DA5
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 10:13:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19439182-1500050 
 for multiple; Tue, 03 Dec 2019 10:13:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 10:13:47 +0000
Message-Id: <20191203101347.2836057-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
References: <20191203101347.2836057-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Avoid parking the vma as we
 unbind
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
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bS5jIHwgMTYgKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwppbmRleCBmN2I1ZmUwZjU0
MjQuLmU1MzcxYTA3NmI4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCkBAIC0xNDEsMTggKzE0
MSwzMiBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAogCQkJCQkJICAgICAgIHN0cnVjdCBpOTE1X3ZtYSwKIAkJCQkJCSAgICAgICBv
YmpfbGluaykpKSB7CiAJCXN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtID0gdm1hLT52bTsK
KwkJYm9vbCBhd2FrZSA9IGZhbHNlOwogCi0JCXJldCA9IC1FQlVTWTsKKwkJcmV0ID0gLUVBR0FJ
TjsKIAkJaWYgKCFpOTE1X3ZtX3RyeW9wZW4odm0pKQogCQkJYnJlYWs7CiAKKwkJaWYgKGk5MTVf
dm1hX2lzX2Nsb3NlZCh2bWEpKSB7CisJCQlpZiAoIWludGVsX2d0X3BtX2dldF9pZl9hd2FrZSh2
bS0+Z3QpKSB7CisJCQkJc3Bpbl91bmxvY2soJm9iai0+dm1hLmxvY2spOworCQkJCWdvdG8gZXJy
X3ZtOworCQkJfQorCisJCQlhd2FrZSA9IHRydWU7CisJCX0KKwogCQlsaXN0X21vdmVfdGFpbCgm
dm1hLT5vYmpfbGluaywgJnN0aWxsX2luX2xpc3QpOwogCQlzcGluX3VubG9jaygmb2JqLT52bWEu
bG9jayk7CiAKKwkJcmV0ID0gLUVCVVNZOwogCQlpZiAoZmxhZ3MgJiBJOTE1X0dFTV9PQkpFQ1Rf
VU5CSU5EX0FDVElWRSB8fAogCQkgICAgIWk5MTVfdm1hX2lzX2FjdGl2ZSh2bWEpKQogCQkJcmV0
ID0gaTkxNV92bWFfdW5iaW5kKHZtYSk7CiAKKwkJaWYgKGF3YWtlKQorCQkJaW50ZWxfZ3RfcG1f
cHV0KHZtLT5ndCk7CitlcnJfdm06CiAJCWk5MTVfdm1fY2xvc2Uodm0pOwogCQlzcGluX2xvY2so
Jm9iai0+dm1hLmxvY2spOwogCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
