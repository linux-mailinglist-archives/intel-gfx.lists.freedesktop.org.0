Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C174F84C
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Jun 2019 23:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B672F89DC1;
	Sat, 22 Jun 2019 21:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8DA89DBA
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Jun 2019 21:21:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16991521-1500050 
 for multiple; Sat, 22 Jun 2019 22:20:57 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 22 Jun 2019 22:20:47 +0100
Message-Id: <20190622212055.25782-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190622212055.25782-1-chris@chris-wilson.co.uk>
References: <20190622212055.25782-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/execlists: Convert recursive
 defer_request() into an iteractive
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

QXMgdGhpcyBlbmdpbmUgb3ducyB0aGUgbG9jayBhcm91bmQgcnEtPnNjaGVkLmxpbmsgKGZvciB0
aG9zZSB3YWl0ZXJzCnN1Ym1pdHRlZCB0byB0aGlzIGVuZ2luZSksIHdlIGNhbiB1c2UgdGhhdCBs
aW5rIGFzIGFuIGVsZW1lbnQgaW4gYSBsb2NhbApsaXN0LiBXZSBjYW4gdGh1cyByZXBsYWNlIHRo
ZSByZWN1cnNpdmUgYWxnb3JpdGhtIHdpdGggYW4gaXRlcmF0aXZlIHdhbGsKb3ZlciB0aGUgb3Jk
ZXJlZCBsaXN0IG9mIHdhaXRlcnMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYyB8IDQ5ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
MjQgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwppbmRleCBlZmNjYzMxODg3ZGUuLmY4M2JjZjAxOTFkNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTgzNywxMCArODM3LDkgQEAgbGFzdF9hY3RpdmUoY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKIAlyZXR1cm4gKmxhc3Q7
CiB9CiAKLXN0YXRpYyB2b2lkCi1kZWZlcl9yZXF1ZXN0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKiBj
b25zdCBycSwgc3RydWN0IGxpc3RfaGVhZCAqIGNvbnN0IHBsKQorc3RhdGljIHZvaWQgZGVmZXJf
cmVxdWVzdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGxpc3RfaGVhZCAqIGNvbnN0
IHBsKQogewotCXN0cnVjdCBpOTE1X2RlcGVuZGVuY3kgKnA7CisJTElTVF9IRUFEKGxpc3QpOwog
CiAJLyoKIAkgKiBXZSB3YW50IHRvIG1vdmUgdGhlIGludGVycnVwdGVkIHJlcXVlc3QgdG8gdGhl
IGJhY2sgb2YKQEAgLTg0OSwzNCArODQ4LDM0IEBAIGRlZmVyX3JlcXVlc3Qoc3RydWN0IGk5MTVf
cmVxdWVzdCAqIGNvbnN0IHJxLCBzdHJ1Y3QgbGlzdF9oZWFkICogY29uc3QgcGwpCiAJICogZmxp
Z2h0IGFuZCB3ZXJlIHdhaXRpbmcgZm9yIHRoZSBpbnRlcnJ1cHRlZCByZXF1ZXN0IHRvCiAJICog
YmUgcnVuIGFmdGVyIGl0IGFnYWluLgogCSAqLwotCWxpc3RfbW92ZV90YWlsKCZycS0+c2NoZWQu
bGluaywgcGwpOworCWRvIHsKKwkJc3RydWN0IGk5MTVfZGVwZW5kZW5jeSAqcDsKIAotCWxpc3Rf
Zm9yX2VhY2hfZW50cnkocCwgJnJxLT5zY2hlZC53YWl0ZXJzX2xpc3QsIHdhaXRfbGluaykgewot
CQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp3ID0KLQkJCWNvbnRhaW5lcl9vZihwLT53YWl0ZXIsIHR5
cGVvZigqdyksIHNjaGVkKTsKKwkJbGlzdF9tb3ZlX3RhaWwoJnJxLT5zY2hlZC5saW5rLCBwbCk7
CiAKLQkJLyogTGVhdmUgc2VtYXBob3JlcyBzcGlubmluZyBvbiB0aGUgb3RoZXIgZW5naW5lcyAq
LwotCQlpZiAody0+ZW5naW5lICE9IHJxLT5lbmdpbmUpCi0JCQljb250aW51ZTsKKwkJbGlzdF9m
b3JfZWFjaF9lbnRyeShwLCAmcnEtPnNjaGVkLndhaXRlcnNfbGlzdCwgd2FpdF9saW5rKSB7CisJ
CQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICp3ID0KKwkJCQljb250YWluZXJfb2YocC0+d2FpdGVyLCB0
eXBlb2YoKncpLCBzY2hlZCk7CiAKLQkJLyogTm8gd2FpdGVyIHNob3VsZCBzdGFydCBiZWZvcmUg
dGhlIGFjdGl2ZSByZXF1ZXN0IGNvbXBsZXRlZCAqLwotCQlHRU1fQlVHX09OKGk5MTVfcmVxdWVz
dF9zdGFydGVkKHcpKTsKKwkJCS8qIExlYXZlIHNlbWFwaG9yZXMgc3Bpbm5pbmcgb24gdGhlIG90
aGVyIGVuZ2luZXMgKi8KKwkJCWlmICh3LT5lbmdpbmUgIT0gcnEtPmVuZ2luZSkKKwkJCQljb250
aW51ZTsKIAotCQlHRU1fQlVHX09OKHJxX3ByaW8odykgPiBycV9wcmlvKHJxKSk7Ci0JCWlmIChy
cV9wcmlvKHcpIDwgcnFfcHJpbyhycSkpCi0JCQljb250aW51ZTsKKwkJCS8qIE5vIHdhaXRlciBz
aG91bGQgc3RhcnQgYmVmb3JlIGl0cyBzaWduYWxlciAqLworCQkJR0VNX0JVR19PTihpOTE1X3Jl
cXVlc3Rfc3RhcnRlZCh3KSk7CisKKwkJCUdFTV9CVUdfT04ocnFfcHJpbyh3KSA+IHJxX3ByaW8o
cnEpKTsKKwkJCWlmIChycV9wcmlvKHcpIDwgcnFfcHJpbyhycSkpCisJCQkJY29udGludWU7CiAK
LQkJaWYgKGxpc3RfZW1wdHkoJnctPnNjaGVkLmxpbmspKQotCQkJY29udGludWU7IC8qIE5vdCB5
ZXQgc3VibWl0dGVkOyB1bnJlYWR5ICovCisJCQlpZiAobGlzdF9lbXB0eSgmdy0+c2NoZWQubGlu
aykpCisJCQkJY29udGludWU7IC8qIE5vdCB5ZXQgc3VibWl0dGVkOyB1bnJlYWR5ICovCiAKLQkJ
LyoKLQkJICogVGhpcyBzaG91bGQgYmUgdmVyeSBzaGFsbG93IGFzIGl0IGlzIGxpbWl0ZWQgYnkg
dGhlCi0JCSAqIG51bWJlciBvZiByZXF1ZXN0cyB0aGF0IGNhbiBmaXQgaW4gYSByaW5nICg8NjQp
IGFuZAotCQkgKiB0aGUgbnVtYmVyIG9mIGNvbnRleHRzIHRoYXQgY2FuIGJlIGluIGZsaWdodCBv
biB0aGlzCi0JCSAqIGVuZ2luZS4KLQkJICovCi0JCWRlZmVyX3JlcXVlc3QodywgcGwpOwotCX0K
KwkJCWxpc3RfbW92ZV90YWlsKCZ3LT5zY2hlZC5saW5rLCAmbGlzdCk7CisJCX0KKworCQlycSA9
IGxpc3RfZmlyc3RfZW50cnlfb3JfbnVsbCgmbGlzdCwgdHlwZW9mKCpycSksIHNjaGVkLmxpbmsp
OworCX0gd2hpbGUgKHJxKTsKIH0KIAogc3RhdGljIHZvaWQgZGVmZXJfYWN0aXZlKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
