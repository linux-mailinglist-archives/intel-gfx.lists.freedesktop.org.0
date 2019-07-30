Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 839287A993
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6B06E505;
	Tue, 30 Jul 2019 13:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AB126E50C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:30:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17730647-1500050 
 for multiple; Tue, 30 Jul 2019 14:30:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 14:30:30 +0100
Message-Id: <20190730133035.1977-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730133035.1977-1-chris@chris-wilson.co.uk>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/17] drm/i915: Use intel_engine_lookup_user
 for probing HAS_BSD etc
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

VXNlIHRoZSBzYW1lIG1lY2hhbmlzbSB0byBkZXRlcm1pbmUgaWYgYSBiYWNrZW5kIGVuZ2luZSBl
eGlzdHMgZm9yIGEKdWFiaSBtYXBwaW5nIGFzIHVzZWQgaW50ZXJuYWxseS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxMiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
aW5kZXggMjU0ZDE5ZDliMTI3Li5jMDc1ZWQwNWJkZDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
YwpAQCAtMzcyLDE2ICszNzIsMjAgQEAgc3RhdGljIGludCBpOTE1X2dldHBhcmFtX2lvY3RsKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCXZhbHVlID0gZGV2X3ByaXYtPm92
ZXJsYXkgPyAxIDogMDsKIAkJYnJlYWs7CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19CU0Q6Ci0JCXZh
bHVlID0gISFkZXZfcHJpdi0+ZW5naW5lW1ZDUzBdOworCQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5l
X2xvb2t1cF91c2VyKGRldl9wcml2LAorCQkJCQkJICAgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8s
IDApOwogCQlicmVhazsKIAljYXNlIEk5MTVfUEFSQU1fSEFTX0JMVDoKLQkJdmFsdWUgPSAhIWRl
dl9wcml2LT5lbmdpbmVbQkNTMF07CisJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3Vz
ZXIoZGV2X3ByaXYsCisJCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19DT1BZLCAwKTsKIAkJYnJl
YWs7CiAJY2FzZSBJOTE1X1BBUkFNX0hBU19WRUJPWDoKLQkJdmFsdWUgPSAhIWRldl9wcml2LT5l
bmdpbmVbVkVDUzBdOworCQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRldl9w
cml2LAorCQkJCQkJICAgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRSwgMCk7CiAJCWJy
ZWFrOwogCWNhc2UgSTkxNV9QQVJBTV9IQVNfQlNEMjoKLQkJdmFsdWUgPSAhIWRldl9wcml2LT5l
bmdpbmVbVkNTMV07CisJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3By
aXYsCisJCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMSk7CiAJCWJyZWFrOwogCWNh
c2UgSTkxNV9QQVJBTV9IQVNfTExDOgogCQl2YWx1ZSA9IEhBU19MTEMoZGV2X3ByaXYpOwotLSAK
Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
