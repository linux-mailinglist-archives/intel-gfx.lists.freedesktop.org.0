Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40548EA3E0
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 20:14:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0756B6ED04;
	Wed, 30 Oct 2019 19:13:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B2806ED02
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 19:13:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19024352-1500050 
 for multiple; Wed, 30 Oct 2019 19:13:29 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Oct 2019 19:13:27 +0000
Message-Id: <20191030191327.8729-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Split detaching and removing the vma
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gb3JkZXIgdG8ga2VlcCB0aGUgYXNzZXJ0X2JpbmRfY291bnQoKSB2YWxpZCwgd2UgbmVlZCB0
byBob2xkIHRoZSB2bWEKcGFnZSByZWZlcmVuY2UgdW50aWwgYWZ0ZXIgd2UgZHJvcCB0aGUgYmlu
ZCBjb3VudC4gSG93ZXZlciwgd2UgbXVzdCBhbHNvCmtlZXAgdGhlIGRybV9tbV9yZW1vdmVfbm9k
ZSgpIGFzIHRoZSBsYXN0IGFjdGlvbiBvZiBpOTE1X3ZtYV91bmJpbmQoKSBzbwp0aGF0IGl0IHNl
cmlhbGlzZXMgd2l0aCB0aGUgdW5sb2NrZWQgY2hlY2sgaW5zaWRlIGk5MTVfdm1hX2Rlc3Ryb3ko
KS4gU28Kd2UgbmVlZCB0byBzcGxpdCB1cCBpOTE1X3ZtYV9yZW1vdmUoKSBzbyB0aGF0IHdlIG9y
ZGVyIHRoZSBkZXRhY2gsIGRyb3AKcGFnZXMgYW5kIHJlbW92ZSBhcyByZXF1aXJlZCBkdXJpbmcg
dW5iaW5kLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMjA2NwpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgMzcgKysrKysrKysrKysrKysrLS0t
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMjAgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKaW5kZXggZDczM2JjZjI2MmYwLi5lNTUx
MmYyNmUyMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwpAQCAtNzAwLDQxICs3MDAsMzUgQEAg
aTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6ZSwgdTY0IGFsaWdu
bWVudCwgdTY0IGZsYWdzKQogCUdFTV9CVUdfT04oIWRybV9tbV9ub2RlX2FsbG9jYXRlZCgmdm1h
LT5ub2RlKSk7CiAJR0VNX0JVR19PTighaTkxNV9nZW1fdmFsaWRfZ3R0X3NwYWNlKHZtYSwgY29s
b3IpKTsKIAotCWxpc3RfYWRkX3RhaWwoJnZtYS0+dm1fbGluaywgJnZtYS0+dm0tPmJvdW5kX2xp
c3QpOwotCiAJaWYgKHZtYS0+b2JqKSB7Ci0JCWF0b21pY19pbmMoJnZtYS0+b2JqLT5iaW5kX2Nv
dW50KTsKLQkJYXNzZXJ0X2JpbmRfY291bnQodm1hLT5vYmopOworCQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7CisKKwkJYXRvbWljX2luYygmb2JqLT5iaW5kX2Nv
dW50KTsKKwkJYXNzZXJ0X2JpbmRfY291bnQob2JqKTsKIAl9CisJbGlzdF9hZGRfdGFpbCgmdm1h
LT52bV9saW5rLCAmdm1hLT52bS0+Ym91bmRfbGlzdCk7CiAKIAlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHZvaWQKLWk5MTVfdm1hX3JlbW92ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKK2k5MTVfdm1h
X2RldGFjaChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKIAlHRU1fQlVHX09OKCFkcm1fbW1fbm9k
ZV9hbGxvY2F0ZWQoJnZtYS0+bm9kZSkpOwogCUdFTV9CVUdfT04oaTkxNV92bWFfaXNfYm91bmQo
dm1hLCBJOTE1X1ZNQV9HTE9CQUxfQklORCB8IEk5MTVfVk1BX0xPQ0FMX0JJTkQpKTsKIAotCWxp
c3RfZGVsKCZ2bWEtPnZtX2xpbmspOwotCiAJLyoKLQkgKiBTaW5jZSB0aGUgdW5ib3VuZCBsaXN0
IGlzIGdsb2JhbCwgb25seSBtb3ZlIHRvIHRoYXQgbGlzdCBpZgotCSAqIG5vIG1vcmUgVk1BcyBl
eGlzdC4KKwkgKiBBbmQgZmluYWxseSBub3cgdGhlIG9iamVjdCBpcyBjb21wbGV0ZWx5IGRlY291
cGxlZCBmcm9tIHRoaXMKKwkgKiB2bWEsIHdlIGNhbiBkcm9wIGl0cyBob2xkIG9uIHRoZSBiYWNr
aW5nIHN0b3JhZ2UgYW5kIGFsbG93CisJICogaXQgdG8gYmUgcmVhcGVkIGJ5IHRoZSBzaHJpbmtl
ci4KIAkgKi8KKwlsaXN0X2RlbCgmdm1hLT52bV9saW5rKTsKIAlpZiAodm1hLT5vYmopIHsKIAkJ
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IHZtYS0+b2JqOwogCi0JCS8qCi0JCSAq
IEFuZCBmaW5hbGx5IG5vdyB0aGUgb2JqZWN0IGlzIGNvbXBsZXRlbHkgZGVjb3VwbGVkIGZyb20g
dGhpcwotCQkgKiB2bWEsIHdlIGNhbiBkcm9wIGl0cyBob2xkIG9uIHRoZSBiYWNraW5nIHN0b3Jh
Z2UgYW5kIGFsbG93Ci0JCSAqIGl0IHRvIGJlIHJlYXBlZCBieSB0aGUgc2hyaW5rZXIuCi0JCSAq
LwotCQlhdG9taWNfZGVjKCZvYmotPmJpbmRfY291bnQpOwogCQlhc3NlcnRfYmluZF9jb3VudChv
YmopOworCQlhdG9taWNfZGVjKCZvYmotPmJpbmRfY291bnQpOwogCX0KLQotCWRybV9tbV9yZW1v
dmVfbm9kZSgmdm1hLT5ub2RlKTsKIH0KIAogc3RhdGljIGJvb2wgdHJ5X3FhZF9waW4oc3RydWN0
IGk5MTVfdm1hICp2bWEsIHVuc2lnbmVkIGludCBmbGFncykKQEAgLTkyOSw4ICs5MjMsMTAgQEAg
aW50IGk5MTVfdm1hX3BpbihzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBhbGln
bm1lbnQsIHU2NCBmbGFncykKIAlHRU1fQlVHX09OKGk5MTVfdm1hX21pc3BsYWNlZCh2bWEsIHNp
emUsIGFsaWdubWVudCwgZmxhZ3MpKTsKIAogZXJyX3JlbW92ZToKLQlpZiAoIWk5MTVfdm1hX2lz
X2JvdW5kKHZtYSwgSTkxNV9WTUFfQklORF9NQVNLKSkKLQkJaTkxNV92bWFfcmVtb3ZlKHZtYSk7
CisJaWYgKCFpOTE1X3ZtYV9pc19ib3VuZCh2bWEsIEk5MTVfVk1BX0JJTkRfTUFTSykpIHsKKwkJ
aTkxNV92bWFfZGV0YWNoKHZtYSk7CisJCWRybV9tbV9yZW1vdmVfbm9kZSgmdm1hLT5ub2RlKTsK
Kwl9CiBlcnJfYWN0aXZlOgogCWk5MTVfYWN0aXZlX3JlbGVhc2UoJnZtYS0+YWN0aXZlKTsKIGVy
cl91bmxvY2s6CkBAIC0xMTg3LDkgKzExODMsMTAgQEAgaW50IF9faTkxNV92bWFfdW5iaW5kKHN0
cnVjdCBpOTE1X3ZtYSAqdm1hKQogCX0KIAlhdG9taWNfYW5kKH4oSTkxNV9WTUFfQklORF9NQVNL
IHwgSTkxNV9WTUFfRVJST1IpLCAmdm1hLT5mbGFncyk7CiAKKwlpOTE1X3ZtYV9kZXRhY2godm1h
KTsKIAl2bWFfdW5iaW5kX3BhZ2VzKHZtYSk7Ci0JaTkxNV92bWFfcmVtb3ZlKHZtYSk7CiAKKwlk
cm1fbW1fcmVtb3ZlX25vZGUoJnZtYS0+bm9kZSk7IC8qIHBhaXJzIHdpdGggaTkxNV92bWFfZGVz
dHJveSgpICovCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjQuMC5yYzEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
