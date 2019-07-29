Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4FB78BC1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 14:27:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48CFB89DFE;
	Mon, 29 Jul 2019 12:27:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E81FE89DE5;
 Mon, 29 Jul 2019 12:27:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17699523-1500050 
 for multiple; Mon, 29 Jul 2019 13:27:29 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 13:27:27 +0100
Message-Id: <20190729122727.28049-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Break early for small rings
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

SWYgdGhlIHNoYXJlZCBsZWdhY3kgcmluZ2J1ZmZlciBpcyB0b28gc21hbGwgdG8gZml0IDY0IG5l
dyBjb250ZXh0cywgaXQKd2lsbCBoYW5nIGFuZCByZXBvcnQgLUVJTyBiZWZvcmUgd2UgYXJlIGV4
cGVjdGluZyBpdC4gQWNjb21tb2RhdGUgdGhpcwplaW8gYXMgaXQgcGFydCBvZiB0aGUgQUJJIHdl
IGFyZSB0ZXN0aW5nLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCA4ICsrKysrKy0tCiAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L3Rlc3RzL2k5MTUvZ2VtX2Vpby5jIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKaW5kZXggNGQ3MzYy
ZDhmLi5kY2JjZWZhOTcgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCisrKyBiL3Rl
c3RzL2k5MTUvZ2VtX2Vpby5jCkBAIC01NTksNiArNTU5LDcgQEAgc3RhdGljIHZvaWQgdGVzdF9p
bmZsaWdodF9jb250ZXh0cyhpbnQgZmQsIHVuc2lnbmVkIGludCB3YWl0KQogCQljb25zdCB1aW50
MzJfdCBiYmUgPSBNSV9CQVRDSF9CVUZGRVJfRU5EOwogCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4
ZWNfb2JqZWN0MiBvYmpbMl07CiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgZXhl
Y2J1ZjsKKwkJdW5zaWduZWQgaW50IGNvdW50OwogCQlpZ3Rfc3Bpbl90ICpoYW5nOwogCQl1aW50
MzJfdCBjdHhbNjRdOwogCQlpbnQgZmVuY2VbNjRdOwpAQCAtNTg3LDE2ICs1ODgsMTkgQEAgc3Rh
dGljIHZvaWQgdGVzdF9pbmZsaWdodF9jb250ZXh0cyhpbnQgZmQsIHVuc2lnbmVkIGludCB3YWl0
KQogCQlleGVjYnVmLmJ1ZmZlcl9jb3VudCA9IDI7CiAJCWV4ZWNidWYuZmxhZ3MgPSBlbmdpbmUg
fCBJOTE1X0VYRUNfRkVOQ0VfT1VUOwogCisJCWNvdW50ID0gMDsKIAkJZm9yICh1bnNpZ25lZCBp
bnQgbiA9IDA7IG4gPCBBUlJBWV9TSVpFKGZlbmNlKTsgbisrKSB7CiAJCQlleGVjYnVmLnJzdmQx
ID0gY3R4W25dOwotCQkJZ2VtX2V4ZWNidWZfd3IoZmQsICZleGVjYnVmKTsKKwkJCWlmIChfX2dl
bV9leGVjYnVmX3dyKGZkLCAmZXhlY2J1ZikpCisJCQkJYnJlYWs7IC8qIHNtYWxsIHNoYXJlZCBy
aW5nICovCiAJCQlmZW5jZVtuXSA9IGV4ZWNidWYucnN2ZDIgPj4gMzI7CiAJCQlpZ3RfYXNzZXJ0
KGZlbmNlW25dICE9IC0xKTsKKwkJCWNvdW50Kys7CiAJCX0KIAogCQljaGVja193YWl0KGZkLCBv
YmpbMV0uaGFuZGxlLCB3YWl0LCBOVUxMKTsKIAotCQlmb3IgKHVuc2lnbmVkIGludCBuID0gMDsg
biA8IEFSUkFZX1NJWkUoZmVuY2UpOyBuKyspIHsKKwkJZm9yICh1bnNpZ25lZCBpbnQgbiA9IDA7
IG4gPCBjb3VudDsgbisrKSB7CiAJCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVzKGZl
bmNlW25dKSwgLUVJTyk7CiAJCQljbG9zZShmZW5jZVtuXSk7CiAJCX0KLS0gCjIuMjIuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
