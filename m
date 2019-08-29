Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40377A1351
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F3689FF6;
	Thu, 29 Aug 2019 08:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCECE6E043
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:12:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299883-1500050 
 for multiple; Thu, 29 Aug 2019 09:11:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:38 +0100
Message-Id: <20190829081150.10271-25-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829081150.10271-1-chris@chris-wilson.co.uk>
References: <20190829081150.10271-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/36] drm/i915: Only enqueue already completed
 requests
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

SWYgd2UgYXJlIGFza2VkIHRvIHN1Ym1pdCBhIGNvbXBsZXRlZCByZXF1ZXN0LCBqdXN0IG1vdmUg
aXQgb250byB0aGUKYWN0aXZlLWxpc3Qgd2l0aG91dCBtb2RpZnlpbmcgaXQncyBwYXlsb2FkLiBJ
ZiB3ZSB0cnkgdG8gZW1pdCB0aGUKbW9kaWZpZWQgcGF5bG9hZCBvZiBhIGNvbXBsZXRlZCByZXF1
ZXN0LCB3ZSByaXNrIHJhY2luZyB3aXRoIHRoZQpyaW5nLT5oZWFkIHVwZGF0ZSBkdXJpbmcgcmV0
aXJlbWVudCB3aGljaCBtYXkgYWR2YW5jZSB0aGUgaGVhZCBwYXN0IG91cgpicmVhZGNydW1iIGFu
ZCBzbyB3ZSBnZW5lcmF0ZSBhIHdhcm5pbmcgZm9yIHRoZSBlbWlzc2lvbiBiZWluZyBiZWhpbmQK
dGhlIFJJTkdfSEVBRC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jIHwg
MTUgKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVz
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKaW5kZXggMmQyMGVjMjEx
Y2IyLi40ZGUzNjNjYjQ5NGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCkBAIC0z
NDEsNiArMzQxLDkgQEAgdm9pZCBfX2k5MTVfcmVxdWVzdF9zdWJtaXQoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcmVxdWVzdCkKIAlHRU1fQlVHX09OKCFpcnFzX2Rpc2FibGVkKCkpOwogCWxvY2tkZXBf
YXNzZXJ0X2hlbGQoJmVuZ2luZS0+YWN0aXZlLmxvY2spOwogCisJaWYgKGk5MTVfcmVxdWVzdF9j
b21wbGV0ZWQocmVxdWVzdCkpCisJCWdvdG8geGZlcjsKKwogCWlmIChpOTE1X2dlbV9jb250ZXh0
X2lzX2Jhbm5lZChyZXF1ZXN0LT5nZW1fY29udGV4dCkpCiAJCWk5MTVfcmVxdWVzdF9za2lwKHJl
cXVlc3QsIC1FSU8pOwogCkBAIC0zNjQsNyArMzY3LDEyIEBAIHZvaWQgX19pOTE1X3JlcXVlc3Rf
c3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJICAgIGk5MTVfc3dfZmVuY2Vf
c2lnbmFsZWQoJnJlcXVlc3QtPnNlbWFwaG9yZSkpCiAJCWVuZ2luZS0+c2F0dXJhdGVkIHw9IHJl
cXVlc3QtPnNjaGVkLnNlbWFwaG9yZXM7CiAKLQkvKiBXZSBtYXkgYmUgcmVjdXJzaW5nIGZyb20g
dGhlIHNpZ25hbCBjYWxsYmFjayBvZiBhbm90aGVyIGk5MTUgZmVuY2UgKi8KKwllbmdpbmUtPmVt
aXRfZmluaV9icmVhZGNydW1iKHJlcXVlc3QsCisJCQkJICAgICByZXF1ZXN0LT5yaW5nLT52YWRk
ciArIHJlcXVlc3QtPnBvc3RmaXgpOworCisJZW5naW5lLT5zZXJpYWwrKzsKKworeGZlcjoJLyog
V2UgbWF5IGJlIHJlY3Vyc2luZyBmcm9tIHRoZSBzaWduYWwgY2FsbGJhY2sgb2YgYW5vdGhlciBp
OTE1IGZlbmNlICovCiAJc3Bpbl9sb2NrX25lc3RlZCgmcmVxdWVzdC0+bG9jaywgU0lOR0xFX0RF
UFRIX05FU1RJTkcpOwogCiAJbGlzdF9tb3ZlX3RhaWwoJnJlcXVlc3QtPnNjaGVkLmxpbmssICZl
bmdpbmUtPmFjdGl2ZS5yZXF1ZXN0cyk7CkBAIC0zODEsMTEgKzM4OSw2IEBAIHZvaWQgX19pOTE1
X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAKIAlzcGluX3Vu
bG9jaygmcmVxdWVzdC0+bG9jayk7CiAKLQllbmdpbmUtPmVtaXRfZmluaV9icmVhZGNydW1iKHJl
cXVlc3QsCi0JCQkJICAgICByZXF1ZXN0LT5yaW5nLT52YWRkciArIHJlcXVlc3QtPnBvc3RmaXgp
OwotCi0JZW5naW5lLT5zZXJpYWwrKzsKLQogCXRyYWNlX2k5MTVfcmVxdWVzdF9leGVjdXRlKHJl
cXVlc3QpOwogfQogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
