Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BCE113037
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 17:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B45D6E931;
	Wed,  4 Dec 2019 16:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EFDA6E931
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 16:45:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19459638-1500050 
 for multiple; Wed, 04 Dec 2019 16:45:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 16:45:27 +0000
Message-Id: <20191204164527.3872783-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Hold the obj->vma.lock while
 walking the vma.list
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

UmVtZW1iZXIgdG8gdGFrZSB0aGUgbG9jayBiZWZvcmUgd2Fsa2luZyB0aGUgb2JqLT52bWEubGlz
dCBzbyB0aGF0IHRoZQpub2RlcyBkbyBub3QgY2hhbmdlIGJlbmVhdGggdXMhIEUuZy4sCgppOTE1
X2dlbV9vYmplY3RfYnVtcF9pbmFjdGl2ZV9nZ3R0OiBpOTE1X2dlbV9vYmplY3RfYnVtcF9pbmFj
dGl2ZV9nZ3R0OjM4NyBHRU1fQlVHX09OKHZtYS0+dm0gIT0gJmk5MTUtPmdndHQudm0pCgpDbG9z
ZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzY5MQpT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fZG9tYWluLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWlu
LmMKaW5kZXggZjIwNjQ5NTA2MjJiLi44MDhlYjMyN2EyOWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKQEAgLTM3OSw4ICszNzksMTEgQEAgc3RhdGljIHZv
aWQgaTkxNV9nZW1fb2JqZWN0X2J1bXBfaW5hY3RpdmVfZ2d0dChzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwogCiAJR0VNX0JVR19PTighaTkx
NV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSk7CisJaWYgKCFhdG9taWNfcmVhZCgm
b2JqLT5iaW5kX2NvdW50KSkKKwkJcmV0dXJuOwogCiAJbXV0ZXhfbG9jaygmaTkxNS0+Z2d0dC52
bS5tdXRleCk7CisJc3Bpbl9sb2NrKCZvYmotPnZtYS5sb2NrKTsKIAlmb3JfZWFjaF9nZ3R0X3Zt
YSh2bWEsIG9iaikgewogCQlpZiAoIWRybV9tbV9ub2RlX2FsbG9jYXRlZCgmdm1hLT5ub2RlKSkK
IAkJCWNvbnRpbnVlOwpAQCAtMzg4LDYgKzM5MSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZ2VtX29i
amVjdF9idW1wX2luYWN0aXZlX2dndHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikK
IAkJR0VNX0JVR19PTih2bWEtPnZtICE9ICZpOTE1LT5nZ3R0LnZtKTsKIAkJbGlzdF9tb3ZlX3Rh
aWwoJnZtYS0+dm1fbGluaywgJnZtYS0+dm0tPmJvdW5kX2xpc3QpOwogCX0KKwlzcGluX3VubG9j
aygmb2JqLT52bWEubG9jayk7CiAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5nZ3R0LnZtLm11dGV4KTsK
IAogCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7Ci0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
