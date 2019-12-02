Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F210ED38
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 17:33:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD39D6E249;
	Mon,  2 Dec 2019 16:33:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3993C6E249
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 16:33:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19430730-1500050 
 for multiple; Mon, 02 Dec 2019 16:33:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 16:33:33 +0000
Message-Id: <20191202163334.2628526-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Specialise i915_active.work lock
 classes
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

U2ltaWxhciB0byBmb3IgaTkxNV9hY3RpdmUubXV0ZXgsIHdlIHJlcXVpcmUgZWFjaCBjbGFzcyBv
ZiBpOTE1X2FjdGl2ZQp0byBoYXZlIGRpc3RpbmN0IGxvY2tkZXAgY2hhaW5zIGFzIHNvbWUsIGJ1
dCBieSBubyBtZWFucyBhbGwsCmk5MTVfYWN0aXZlIGFyZSB1c2VkIHdpdGhpbiB0aGUgc2hyaW5r
ZXIgYW5kIHNvIGhhdmUgbXVjaCBtb3JlIHNldmVyZQp1c2FnZSBjb25zdHJhaW50cy4gQnkgdXNp
bmcgYSBsb2NrY2xhc3MgbG9jYWwgdG8gaTkxNV9hY3RpdmVfaW5pdCgpIGFsbAppOTE1X2FjdGl2
ZSB3b3JrZXJzIGhhdmUgdGhlIHNhbWUgbG9jayBjbGFzcywgYW5kIHdlIG1heSBnZW5lcmF0ZSBm
YWxzZQpwb3NpdGl2ZXMgd2hlbiB3YWl0aW5nIGZvciB0aGUgaTkxNV9hY3RpdmUuIElmIHdlIHB1
c2ggdGhlIGxvY2tjbGFzcwppbnRvIHRoZSBjYWxsZXIsIGVhY2ggY2xhc3Mgb2YgaTkxNV9hY3Rp
dmUgd2lsbCBoYXZlIGRpc3RpbmN0IGxvY2tkZXAKY2hhaW5zLgoKU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYyB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Fj
dGl2ZS5oIHwgMiArKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCA0NzkxOTVlY2JjNmMuLjc1NTNhY2M1YWExNiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC0yOTgsNiArMjk4LDkgQEAgdm9pZCBfX2k5
MTVfYWN0aXZlX2luaXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYsCiAJX19tdXRleF9pbml0KCZy
ZWYtPm11dGV4LCAiaTkxNV9hY3RpdmUiLCBrZXkpOwogCV9faTkxNV9hY3RpdmVfZmVuY2VfaW5p
dCgmcmVmLT5leGNsLCBOVUxMLCBleGNsX3JldGlyZSk7CiAJSU5JVF9XT1JLKCZyZWYtPndvcmss
IGFjdGl2ZV93b3JrKTsKKyNpZiBJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKQorCWxvY2tkZXBf
aW5pdF9tYXAoJnJlZi0+d29yay5sb2NrZGVwX21hcCwgImk5MTVfYWN0aXZlLndvcmsiLCBrZXks
IDApOworI2VuZGlmCiB9CiAKIHN0YXRpYyBib29sIF9fX19hY3RpdmVfZGVsX2JhcnJpZXIoc3Ry
dWN0IGk5MTVfYWN0aXZlICpyZWYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2FjdGl2ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaAppbmRleCAz
MjA4Y2MyZThjMWEuLjZlODYzMzAxNzM3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9hY3RpdmUuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5o
CkBAIC0xNTMsNiArMTUzLDggQEAgdm9pZCBfX2k5MTVfYWN0aXZlX2luaXQoc3RydWN0IGk5MTVf
YWN0aXZlICpyZWYsCiAJCQlpbnQgKCphY3RpdmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKSwK
IAkJCXZvaWQgKCpyZXRpcmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKSwKIAkJCXN0cnVjdCBs
b2NrX2NsYXNzX2tleSAqa2V5KTsKKworLyogU3BlY2lhbGlzZSBlYWNoIGNsYXNzIG9mIGk5MTVf
YWN0aXZlIHRvIGF2b2lkIGltcG9zc2libGUgbG9ja2RlcCBjeWNsZXMuICovCiAjZGVmaW5lIGk5
MTVfYWN0aXZlX2luaXQocmVmLCBhY3RpdmUsIHJldGlyZSkgZG8gewkJXAogCXN0YXRpYyBzdHJ1
Y3QgbG9ja19jbGFzc19rZXkgX19rZXk7CQkJCVwKIAkJCQkJCQkJCVwKLS0gCjIuMjQuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
