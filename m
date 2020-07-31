Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDD6234187
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 10:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8D36EA1B;
	Fri, 31 Jul 2020 08:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E1A6EA1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 08:50:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21990230-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 09:50:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 09:50:14 +0100
Message-Id: <20200731085015.32368-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200731085015.32368-1-chris@chris-wilson.co.uk>
References: <20200731085015.32368-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 6/7] drm/i915: Reduce locking around
 i915_active_acquire_preallocate_barrier()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

QXMgdGhlIGNvbnZlcnNpb24gYmV0d2VlbiBpZGxlLWJhcnJpZXIgYW5kIGZ1bGwgaTkxNV9hY3Rp
dmVfZmVuY2UgaXMKYWxyZWFkeSBzZXJpYWxpc2VkIGJ5IGV4cGxpY2l0IG1lbW9yeSBiYXJyaWVy
cywgd2UgY2FuIHJlZHVjZSB0aGUKc3BpbmxvY2sgaW4gaTkxNV9hY3RpdmVfYWNxdWlyZV9wcmVh
bGxvY2F0ZV9iYXJyaWVyKCkgZm9yIGZpbmRpbmcgYW4KaWRsZS1iYXJyaWVyIHRvIHJldXNlIHRv
IGFuIFJDVSByZWFkIGxvY2sgdG8gZW5zdXJlIHRoZSBmZW5jZSByZW1haW5zCnZhbGlkLCBvbmx5
IHRha2luZyB0aGUgc3BpbmxvY2sgZm9yIHRoZSB1cGRhdGUgb2YgdGhlIHJidHJlZSBpdHNlbGYu
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
UmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMTAgKysrKystLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCA3YjUxMDQ1Yzg0NjEuLjNlZTVlMDJjM2UxNyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC04MDcsNyArODA3LDYgQEAgc3RhdGlj
IHN0cnVjdCBhY3RpdmVfbm9kZSAqcmV1c2VfaWRsZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2
ZSAqcmVmLCB1NjQgaWR4KQogCWlmIChSQl9FTVBUWV9ST09UKCZyZWYtPnRyZWUpKQogCQlyZXR1
cm4gTlVMTDsKIAotCXNwaW5fbG9ja19pcnEoJnJlZi0+dHJlZV9sb2NrKTsKIAlHRU1fQlVHX09O
KGk5MTVfYWN0aXZlX2lzX2lkbGUocmVmKSk7CiAKIAkvKgpAQCAtODMzLDkgKzgzMiw5IEBAIHN0
YXRpYyBzdHJ1Y3QgYWN0aXZlX25vZGUgKnJldXNlX2lkbGVfYmFycmllcihzdHJ1Y3QgaTkxNV9h
Y3RpdmUgKnJlZiwgdTY0IGlkeCkKIAogCQlwcmV2ID0gcDsKIAkJaWYgKG5vZGUtPnRpbWVsaW5l
IDwgaWR4KQotCQkJcCA9IHAtPnJiX3JpZ2h0OworCQkJcCA9IFJFQURfT05DRShwLT5yYl9yaWdo
dCk7CiAJCWVsc2UKLQkJCXAgPSBwLT5yYl9sZWZ0OworCQkJcCA9IFJFQURfT05DRShwLT5yYl9s
ZWZ0KTsKIAl9CiAKIAkvKgpAQCAtODcyLDExICs4NzEsMTAgQEAgc3RhdGljIHN0cnVjdCBhY3Rp
dmVfbm9kZSAqcmV1c2VfaWRsZV9iYXJyaWVyKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmLCB1NjQg
aWR4KQogCQkJZ290byBtYXRjaDsKIAl9CiAKLQlzcGluX3VubG9ja19pcnEoJnJlZi0+dHJlZV9s
b2NrKTsKLQogCXJldHVybiBOVUxMOwogCiBtYXRjaDoKKwlzcGluX2xvY2tfaXJxKCZyZWYtPnRy
ZWVfbG9jayk7CiAJcmJfZXJhc2UocCwgJnJlZi0+dHJlZSk7IC8qIEhpZGUgZnJvbSB3YWl0cyBh
bmQgc2libGluZyBhbGxvY2F0aW9ucyAqLwogCWlmIChwID09ICZyZWYtPmNhY2hlLT5ub2RlKQog
CQlXUklURV9PTkNFKHJlZi0+Y2FjaGUsIE5VTEwpOwpAQCAtOTExLDcgKzkwOSw5IEBAIGludCBp
OTE1X2FjdGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZl
ICpyZWYsCiAJCXN0cnVjdCBsbGlzdF9ub2RlICpwcmV2ID0gZmlyc3Q7CiAJCXN0cnVjdCBhY3Rp
dmVfbm9kZSAqbm9kZTsKIAorCQlyY3VfcmVhZF9sb2NrKCk7CiAJCW5vZGUgPSByZXVzZV9pZGxl
X2JhcnJpZXIocmVmLCBpZHgpOworCQlyY3VfcmVhZF91bmxvY2soKTsKIAkJaWYgKCFub2RlKSB7
CiAJCQlub2RlID0ga21lbV9jYWNoZV9hbGxvYyhnbG9iYWwuc2xhYl9jYWNoZSwgR0ZQX0tFUk5F
TCk7CiAJCQlpZiAoIW5vZGUpIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
