Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095391E76
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 09:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2FA6E0CC;
	Mon, 19 Aug 2019 07:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB9B6E0BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 07:58:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18185098-1500050 
 for multiple; Mon, 19 Aug 2019 08:58:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 08:58:22 +0100
Message-Id: <20190819075835.20065-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190819075835.20065-1-chris@chris-wilson.co.uk>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/18] drm/i915: i915_active.retire() is optional
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

Q2hlY2sgdGhhdCBpOTE1X2FjdGl2ZS5yZXRpcmUoKSBleGlzdHMgYmVmb3JlIGNhbGxpbmcuCgpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgNiArKysrLS0KIDEgZmlsZSBj
aGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfYWN0aXZlLmMKaW5kZXggZGY2MTY0NTkxNzAyLi40OGUxNmFkOTNiYmQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtMTQyLDEyICsxNDIsMTQgQEAgX19hY3RpdmVfcmV0aXJl
KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCWlmICghcmV0aXJlKQogCQlyZXR1cm47CiAKLQly
ZWYtPnJldGlyZShyZWYpOwotCiAJcmJ0cmVlX3Bvc3RvcmRlcl9mb3JfZWFjaF9lbnRyeV9zYWZl
KGl0LCBuLCAmcm9vdCwgbm9kZSkgewogCQlHRU1fQlVHX09OKGk5MTVfYWN0aXZlX3JlcXVlc3Rf
aXNzZXQoJml0LT5iYXNlKSk7CiAJCWttZW1fY2FjaGVfZnJlZShnbG9iYWwuc2xhYl9jYWNoZSwg
aXQpOwogCX0KKworCS8qIEFmdGVyIHRoZSBmaW5hbCByZXRpcmUsIHRoZSBlbnRpcmUgc3RydWN0
IG1heSBiZSBmcmVlZCAqLworCWlmIChyZWYtPnJldGlyZSkKKwkJcmVmLT5yZXRpcmUocmVmKTsK
IH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
