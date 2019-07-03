Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 211685E408
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 14:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47CA589838;
	Wed,  3 Jul 2019 12:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4DD289838
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 12:32:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17113796-1500050 
 for multiple; Wed, 03 Jul 2019 13:32:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 13:32:36 +0100
Message-Id: <20190703123236.30907-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Defer the free for alloc error
 paths
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgd2UgaGl0IGFuIGVycm9yIHdoaWxlIGFsbG9jYXRpbmcgdGhlIHBhZ2UgdGFibGVzLCB3ZSBo
YXZlIHRvIHVud2luZAp0aGUgaW5jb21wbGV0ZSB1cGRhdGVzLCBhbmQgd2lzaCB0byBmcmVlIHRo
ZSB1bnVzZWQgcGQuIEhvd2V2ZXIsIHdlIGFyZQpub3QgYWxsb3dlZCB0byBiZSBob2RpbmcgdGhl
IHNwaW5sb2NrIGF0IHRoYXQgcG9pbnQsIGFuZCBzbyBtdXN0IHVzZSB0aGUKbGF0ZXIgZnJlZSB0
byBkZWZlciBpdCB1bnRpbCBhZnRlciB3ZSBkcm9wIHRoZSBsb2NrLgoKRml4ZXM6IDFkMWI1NDkw
YjkxYyAoImRybS9pOTE1L2d0dDogUmVwbGFjZSBzdHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbiBm
b3IgYWxsb2NhdGlvbiIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCA2ICsrKystLQogMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCmluZGV4IDllNzYzNDdlMDM5ZS4uMTA2NTc1M2U4NmZiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwpAQCAtMTQ4OSw3ICsxNDg5LDggQEAgc3RhdGljIGludCBnZW44X3BwZ3R0
X2FsbG9jX3BkcChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKIAkJZ2VuOF9wcGd0dF9z
ZXRfcGRwZShwZHAsIHZtLT5zY3JhdGNoX3BkLCBwZHBlKTsKIAkJR0VNX0JVR19PTighYXRvbWlj
X3JlYWQoJnBkcC0+dXNlZCkpOwogCQlhdG9taWNfZGVjKCZwZHAtPnVzZWQpOwotCQlmcmVlX3Bk
KHZtLCBwZCk7CisJCUdFTV9CVUdfT04oYWxsb2MpOworCQlhbGxvYyA9IHBkOyAvKiBkZWZlciB0
aGUgZnJlZSB0byBhZnRlciB0aGUgbG9jayAqLwogCX0KIAlzcGluX3VubG9jaygmcGRwLT5sb2Nr
KTsKIHVud2luZDoKQEAgLTE1NTgsNyArMTU1OSw4IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9h
bGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtLAogCXNwaW5fbG9jaygmcG1s
NC0+bG9jayk7CiAJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnBkcC0+dXNlZCkpIHsKIAkJZ2Vu
OF9wcGd0dF9zZXRfcG1sNGUocG1sNCwgdm0tPnNjcmF0Y2hfcGRwLCBwbWw0ZSk7Ci0JCWZyZWVf
cGQodm0sIHBkcCk7CisJCUdFTV9CVUdfT04oYWxsb2MpOworCQlhbGxvYyA9IHBkcDsgLyogZGVm
ZXIgdGhlIGZyZWUgdW50aWwgYWZ0ZXIgdGhlIGxvY2sgKi8KIAl9CiAJc3Bpbl91bmxvY2soJnBt
bDQtPmxvY2spOwogdW53aW5kOgotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
