Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E715FC1A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 18:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC16F6E391;
	Thu,  4 Jul 2019 16:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 981F26E391
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 16:53:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17132312-1500050 
 for multiple; Thu, 04 Jul 2019 17:53:19 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 17:53:17 +0100
Message-Id: <20190704165317.21060-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Drain the freedlists
 between exec passes
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

RHVyaW5nIHRoZSBjb250ZXh0IGV4ZWN1dGlvbiB0ZXN0cywgd2UgaXNzdWUgYSBsb3Qgb2Ygd29y
ayBhbmQgZGlzY2FyZCBhCmxvdCBvZiBvYmplY3RzIHdpdGhvdXQgcmVsZWFzaW5nIHRoZSBsb2Nr
IGFuZCBhbGxvd2luZyB0aGUgYmFja2dyb3VuZApyZWFwZXIgdG8gZnJlZSB0aG9zZSBvYmplY3Rz
LiBJbnNlcnQgYSBzbWFsbCBicmVhayBiZXR3ZWVuIGVhY2ggcGFzcyB0bwpmbHVzaCB0aGUgd29y
a2VyLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250
ZXh0LmMgfCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0
LmMKaW5kZXggYTIzYzZkZjliOWY0Li45MWQxM2YwMTkyNjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCkBAIC01NjIs
NiArNTYyLDggQEAgc3RhdGljIGludCBpZ3RfY3R4X2V4ZWModm9pZCAqYXJnKQogCQltb2NrX2Zp
bGVfZnJlZShpOTE1LCBmaWxlKTsKIAkJaWYgKGVycikKIAkJCXJldHVybiBlcnI7CisKKwkJaTkx
NV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsKIAl9CiAKIAlyZXR1cm4gMDsKQEAgLTY3
Miw2ICs2NzQsMTAgQEAgc3RhdGljIGludCBpZ3Rfc2hhcmVkX2N0eF9leGVjKHZvaWQgKmFyZykK
IAogCQkJZHcgKz0gcmVtOwogCQl9CisKKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKKwkJaTkxNV9nZW1fZHJhaW5fZnJlZWRfb2JqZWN0cyhpOTE1KTsKKwkJbXV0ZXhf
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJfQogb3V0X3Rlc3Q6CiAJaWYgKGlndF9s
aXZlX3Rlc3RfZW5kKCZ0KSkKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
