Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F2ECC97A
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 12:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0A956E222;
	Sat,  5 Oct 2019 10:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F16F6E21D;
 Sat,  5 Oct 2019 10:56:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18733192-1500050 
 for multiple; Sat, 05 Oct 2019 11:55:59 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  5 Oct 2019 11:55:56 +0100
Message-Id: <20191005105556.12832-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191005105556.12832-1-chris@chris-wilson.co.uk>
References: <20191005105556.12832-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_softpin: Replace constant
 loop with timeout
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

UmF0aGVyIHRoYW4gZG8gYSBmaXhlZCBhbW91bnQgb2Ygd29yayB0aGF0IHRha2VzICpmb3JldmVy
KiwgcnVuIGZvciBhCmZpeGVkIGFtb3VudCBvZiB0aW1lLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fc29m
dHBpbi5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fc29mdHBpbi5jIGIvdGVzdHMv
aTkxNS9nZW1fc29mdHBpbi5jCmluZGV4IGMyOTA5N2FkMy4uMDMyMDU2YzA4IDEwMDY0NAotLS0g
YS90ZXN0cy9pOTE1L2dlbV9zb2Z0cGluLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fc29mdHBpbi5j
CkBAIC0xMDIsMTQgKzEwMiwxNCBAQCBzdGF0aWMgdm9pZCB0ZXN0X3NvZnRwaW4oaW50IGZkKQog
CXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmplY3QyIG9iamVjdDsKIAl1aW50NjRfdCBvZmZz
ZXQsIGVuZDsKIAl1aW50MzJfdCBsYXN0X2hhbmRsZTsKLQlpbnQgbG9vcDsKKwl1bnNpZ25lZCBs
b25nIGNvdW50ID0gMDsKIAogCWxhc3RfaGFuZGxlID0gZ2VtX2NyZWF0ZShmZCwgc2l6ZSk7CiAK
IAltZW1zZXQoJmV4ZWNidWYsIDAsIHNpemVvZihleGVjYnVmKSk7CiAJZXhlY2J1Zi5idWZmZXJz
X3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2JqZWN0KTsKIAlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9
IDE7Ci0JZm9yIChsb29wID0gMDsgbG9vcCA8IDEwMjQ7IGxvb3ArKykgeworCWlndF91bnRpbF90
aW1lb3V0KDMwKSB7CiAJCW1lbXNldCgmb2JqZWN0LCAwLCBzaXplb2Yob2JqZWN0KSk7CiAJCW9i
amVjdC5oYW5kbGUgPSBnZW1fY3JlYXRlKGZkLCAyKnNpemUpOwogCQlnZW1fd3JpdGUoZmQsIG9i
amVjdC5oYW5kbGUsIDAsICZiYmUsIHNpemVvZihiYmUpKTsKQEAgLTEzNCw3ICsxMzQsOSBAQCBz
dGF0aWMgdm9pZCB0ZXN0X3NvZnRwaW4oaW50IGZkKQogCQl9CiAKIAkJbGFzdF9oYW5kbGUgPSBv
YmplY3QuaGFuZGxlOworCQljb3VudCsrOwogCX0KKwlpZ3RfaW5mbygiQ29tcGxldGQgJWx1IGN5
Y2xlc1xuIiwgY291bnQpOwogfQogCiBzdGF0aWMgdm9pZCB0ZXN0X292ZXJsYXAoaW50IGZkKQot
LSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
