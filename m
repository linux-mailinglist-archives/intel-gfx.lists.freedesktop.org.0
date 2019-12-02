Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3DA310F1A2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 21:43:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14DDF89DC5;
	Mon,  2 Dec 2019 20:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAB8489DC1
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 20:43:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19434100-1500050 
 for multiple; Mon, 02 Dec 2019 20:43:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Dec 2019 20:43:15 +0000
Message-Id: <20191202204316.2665847-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202204316.2665847-1-chris@chris-wilson.co.uk>
References: <20191202204316.2665847-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Ignore most failures during
 evict-vm
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

UmVtb3ZpbmcgYWxsIHZtYSBmcm9tIHRoZSBWTSBpcyBiZXN0IGVmZm9ydCAtLSB3ZSBvbmx5IHJl
bW92ZSBhbGwgdGhvc2UKcmVhZHkgdG8gYmUgcmVtb3ZlZCwgc28gZm9yZ2l2ZSBhbmQgVk1BIHRo
YXQgYmVjb21lcyBwaW5uZWQuIFdoaWxlCmZvcmdpdmluZyB0aG9zZSB0aGF0IGJlY29tZSBwaW5u
ZWQsIGFsc28gdGFrZSBhIHNlY29uZCBsb29rIGZvciBhbnkgdGhhdApiZWNhbWUgdW5waW5uZWQg
YXMgd2Ugd2FpdGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZXZpY3QuYyB8
IDM5ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2Vy
dGlvbnMoKyksIDE2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmlj
dC5jCmluZGV4IDdlNjJjMzEwMjkwZi4uMDY5N2JlZGViZWVmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ldmljdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTM1OSw5ICszNTksNyBAQCBpbnQgaTkxNV9nZW1fZXZpY3Rf
Zm9yX25vZGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCiAgKi8KIGludCBpOTE1X2dl
bV9ldmljdF92bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIHsKLQlzdHJ1Y3QgbGlz
dF9oZWFkIGV2aWN0aW9uX2xpc3Q7Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWEsICpuZXh0OwotCWlu
dCByZXQ7CisJaW50IHJldCA9IDA7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZ2bS0+bXV0ZXgp
OwogCXRyYWNlX2k5MTVfZ2VtX2V2aWN0X3ZtKHZtKTsKQEAgLTM3NywyMSArMzc1LDMwIEBAIGlu
dCBpOTE1X2dlbV9ldmljdF92bShzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAkJCXJl
dHVybiByZXQ7CiAJfQogCi0JSU5JVF9MSVNUX0hFQUQoJmV2aWN0aW9uX2xpc3QpOwotCWxpc3Rf
Zm9yX2VhY2hfZW50cnkodm1hLCAmdm0tPmJvdW5kX2xpc3QsIHZtX2xpbmspIHsKLQkJaWYgKGk5
MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKQotCQkJY29udGludWU7CisJZG8geworCQlzdHJ1Y3QgaTkx
NV92bWEgKnZtYSwgKnZuOworCQlMSVNUX0hFQUQoZXZpY3Rpb25fbGlzdCk7CiAKLQkJX19pOTE1
X3ZtYV9waW4odm1hKTsKLQkJbGlzdF9hZGQoJnZtYS0+ZXZpY3RfbGluaywgJmV2aWN0aW9uX2xp
c3QpOwotCX0KKwkJbGlzdF9mb3JfZWFjaF9lbnRyeSh2bWEsICZ2bS0+Ym91bmRfbGlzdCwgdm1f
bGluaykgeworCQkJaWYgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKQorCQkJCWNvbnRpbnVlOwor
CisJCQlfX2k5MTVfdm1hX3Bpbih2bWEpOworCQkJbGlzdF9hZGQoJnZtYS0+ZXZpY3RfbGluaywg
JmV2aWN0aW9uX2xpc3QpOworCQl9CisJCWlmIChsaXN0X2VtcHR5KCZldmljdGlvbl9saXN0KSkK
KwkJCWJyZWFrOworCisJCXJldCA9IDA7CisJCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZSh2bWEs
IHZuLCAmZXZpY3Rpb25fbGlzdCwgZXZpY3RfbGluaykgeworCQkJX19pOTE1X3ZtYV91bnBpbih2
bWEpOworCQkJaWYgKHJldCA9PSAwKQorCQkJCXJldCA9IF9faTkxNV92bWFfdW5iaW5kKHZtYSk7
CisJCQlpZiAocmV0ICE9IC1FSU5UUikgLyogIkdldCBtZSBvdXQgb2YgaGVyZSEiICovCisJCQkJ
cmV0ID0gMDsKKwkJfQorCX0gd2hpbGUgKHJldCA9PSAwKTsKIAotCXJldCA9IDA7Ci0JbGlzdF9m
b3JfZWFjaF9lbnRyeV9zYWZlKHZtYSwgbmV4dCwgJmV2aWN0aW9uX2xpc3QsIGV2aWN0X2xpbmsp
IHsKLQkJX19pOTE1X3ZtYV91bnBpbih2bWEpOwotCQlpZiAocmV0ID09IDApCi0JCQlyZXQgPSBf
X2k5MTVfdm1hX3VuYmluZCh2bWEpOwotCX0KIAlyZXR1cm4gcmV0OwogfQogCi0tIAoyLjI0LjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
