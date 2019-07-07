Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF79461592
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 18:41:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F1789A92;
	Sun,  7 Jul 2019 16:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE4A089A92
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Jul 2019 16:40:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17162221-1500050 
 for multiple; Sun, 07 Jul 2019 17:40:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  7 Jul 2019 17:40:50 +0100
Message-Id: <20190707164050.4342-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix assert_forcewake_active
 consideration of timer
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

VGhlIHRpbWVyIG9ubHkgcnVucyBpZiB0aGVyZSBhcmUgbm8gYWN0aXZlIHVzZXJzIG9mIHRoZSBm
d19kb21haW4KcmVtYWluLCB0aGF0IGlzIGlmIHRoZSBjdXJyZW50IHZhbHVlIG9mIGRvbWFpbi0+
YWN0aXZlIGlzICpmYWxzZSouCkZpeCB0aGUgbG9naWNhbCBpbnZlcnNpb24gaW4gdGhlIGFzc2Vy
dCEKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KU3RvcCBmbGlwLWZsb3BwaW5nIGxvbmcgZW5vdWdoIHRvIHRlbGwgbWUgaXMgdGhlIGxh
c3QgZml4IHJlcXVpcmVkIQotQ2hyaXMKLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91
bmNvcmUuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwppbmRleCA1ZjAzNjdmZDMyMDAu
LjA1Zjg2YmNlYWY4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKQEAgLTc2NCw3
ICs3NjQsOCBAQCB2b2lkIGFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUsCiAJCXVuc2lnbmVkIGludCBhY3R1YWwgPSBSRUFEX09OQ0UoZG9tYWluLT53
YWtlX2NvdW50KTsKIAkJdW5zaWduZWQgaW50IGV4cGVjdCA9IDE7CiAKLQkJaWYgKGhydGltZXJf
YWN0aXZlKCZkb21haW4tPnRpbWVyKSAmJiBSRUFEX09OQ0UoZG9tYWluLT5hY3RpdmUpKQorCQlp
ZiAoaHJ0aW1lcl9hY3RpdmUoJmRvbWFpbi0+dGltZXIpICYmCisJCSAgICAhUkVBRF9PTkNFKGRv
bWFpbi0+YWN0aXZlKSkKIAkJCWV4cGVjdCsrOyAvKiBwZW5kaW5nIGF1dG9tYXRpYyByZWxlYXNl
ICovCiAKIAkJaWYgKFdBUk4oYWN0dWFsIDwgZXhwZWN0LAotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
