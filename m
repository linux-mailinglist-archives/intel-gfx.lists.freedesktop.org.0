Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A214260595
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 13:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C3256E0C1;
	Fri,  5 Jul 2019 11:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C89C76E48C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 11:50:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17142083-1500050 
 for multiple; Fri, 05 Jul 2019 12:50:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 12:50:12 +0100
Message-Id: <20190705115012.19737-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Pull assert_forcewake_active()
 underneath the lock
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

TWFrZSBubyBhc3N1bXB0aW9uIHRoYXQgc29tZXRoaW5nIGluIHRoZSBiYWNrZ3JvdW5kIGlzIG5v
dCBhY3F1aXJpbmcgdGhlCmZ3X2RvbWFpbiAtLSBidXQgd2Ugc3RpbGwgZG8gbm90IHRyYWNrIG93
bmVyIHNvIGFzc3VtZSB0aGF0IGFueSBhY3RpdmUKZG9tYWluIGlzIGludGVuZGVkIGJ5IHRoZSBj
YWxsZXIuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDQgKysrKwog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMKaW5kZXggYmI5ZTBkYTMwZTk0Li41ZjAzNjdmZDMyMDAgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VuY29yZS5jCkBAIC03NDcsNiArNzQ3LDggQEAgdm9pZCBhc3NlcnRfZm9yY2V3YWtl
c19hY3RpdmUoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLAogCWlmICghdW5jb3JlLT5mdW5j
cy5mb3JjZV93YWtlX2dldCkKIAkJcmV0dXJuOwogCisJc3Bpbl9sb2NrX2lycSgmdW5jb3JlLT5s
b2NrKTsKKwogCWFzc2VydF9ycG1fd2FrZWxvY2tfaGVsZCh1bmNvcmUtPnJwbSk7CiAKIAlmd19k
b21haW5zICY9IHVuY29yZS0+ZndfZG9tYWluczsKQEAgLTc3MCw2ICs3NzIsOCBAQCB2b2lkIGFz
c2VydF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCiAJCQkg
ZG9tYWluLT5pZCwgYWN0dWFsKSkKIAkJCWJyZWFrOwogCX0KKworCXNwaW5fdW5sb2NrX2lycSgm
dW5jb3JlLT5sb2NrKTsKIH0KIAogLyogV2UgZ2l2ZSBmYXN0IHBhdGhzIGZvciB0aGUgcmVhbGx5
IGNvb2wgcmVnaXN0ZXJzICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
