Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C553F5F6C8
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 12:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 075DD6E2EF;
	Thu,  4 Jul 2019 10:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1773F6E2EF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 10:43:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17126644-1500050 
 for multiple; Thu, 04 Jul 2019 11:43:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jul 2019 11:43:45 +0100
Message-Id: <20190704104345.6603-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gtt: Handle double alloc failures
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

TWF0dGhldyBwb2ludGVkIG91dCB0aGF0IHdlIGNvdWxkIGZhY2UgYSBkb3VibGUgZmFpbHVyZSB3
aXRoIGNvbmN1cnJlbnQKYWxsb2NhdGlvbnMvZnJlZXMsIGFuZCBzbyB0aGUgYXNzdW1wdGlvbiB0
aGF0IHRoZSBsb2NhbCB2YXIgYWxsb2Mgd2FzCk5VTEwgd2FzIGZyYXVnaHQgd2l0aCBkYW5nZXIu
IFJhdGhlciB0aGFuIGNvbXBsaWNhdGUgdGhlIGVycm9yIHBhdGhzIHRvbwptdWNoIHRvIGFkZCBh
IHNlY29uZCBsb2NhbCBmb3IgYSBzZWNvbmQgZnJlZSwganVzdCBkbyB0aGUgc2Vjb25kIGZyZWUK
ZWFybGllciBvbiB0aGUgdW53aW5kIHBhdGguCgpSZXBvcnRlZC1ieTogTWF0dGhldyBBdWxkIDxt
YXR0aGV3LndpbGxpYW0uYXVsZEBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3Lndp
bGxpYW0uYXVsZEBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCAxMDY1NzUzZTg2ZmIuLjk3NTZmMWI2NzBl
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTE0ODQsNiArMTQ4NCwxMCBA
QCBzdGF0aWMgaW50IGdlbjhfcHBndHRfYWxsb2NfcGRwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3Bh
Y2UgKnZtLAogCWdvdG8gb3V0OwogCiB1bndpbmRfcGQ6CisJaWYgKGFsbG9jKSB7CisJCWZyZWVf
cGQodm0sIGFsbG9jKTsKKwkJYWxsb2MgPSBOVUxMOworCX0KIAlzcGluX2xvY2soJnBkcC0+bG9j
ayk7CiAJaWYgKGF0b21pY19kZWNfYW5kX3Rlc3QoJnBkLT51c2VkKSkgewogCQlnZW44X3BwZ3R0
X3NldF9wZHBlKHBkcCwgdm0tPnNjcmF0Y2hfcGQsIHBkcGUpOwpAQCAtMTU1Niw2ICsxNTYwLDEw
IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9hbGxvY180bHZsKHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtLAogCWdvdG8gb3V0OwogCiB1bndpbmRfcGRwOgorCWlmIChhbGxvYykgeworCQlm
cmVlX3BkKHZtLCBhbGxvYyk7CisJCWFsbG9jID0gTlVMTDsKKwl9CiAJc3Bpbl9sb2NrKCZwbWw0
LT5sb2NrKTsKIAlpZiAoYXRvbWljX2RlY19hbmRfdGVzdCgmcGRwLT51c2VkKSkgewogCQlnZW44
X3BwZ3R0X3NldF9wbWw0ZShwbWw0LCB2bS0+c2NyYXRjaF9wZHAsIHBtbDRlKTsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
