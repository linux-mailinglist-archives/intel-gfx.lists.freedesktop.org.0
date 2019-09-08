Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEEEACFA9
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 18:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9951B8925F;
	Sun,  8 Sep 2019 16:19:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 230C78925F;
 Sun,  8 Sep 2019 16:19:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18418168-1500050 
 for multiple; Sun, 08 Sep 2019 17:19:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Sun,  8 Sep 2019 17:19:50 +0100
Message-Id: <20190908161950.7913-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] tests/debugfs_test: Use O_NONBLOCK
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugd2UgYXJlIGp1c3QgcmVhZGluZyBmcm9tIGVhY2ggZGVidWdmcyBmaWxlLCBhbnkgdGhh
dCByZXF1aXJlcwppbml0aWFsIHNldHVwIG1heSBub3QgYmUgZnVsbHkgc2V0dXAgb3IgYmUgbGVm
dCBpbiBhIHN0YXRlIHRoYXQgcmVzdWx0cwppbiB0aGUgZmlsZSAqZXhwZWN0ZWRseSogd2FpdGlu
Zy4gVXNlIE9fTk9OQkxPQ0sgdG8gYXZvaWQgd2FpdHMgb24KZXh0ZXJuYWwgZXZlbnRzIGFzIHdl
IGFyZSBqdXN0IHBlZWtpbmcgZm9yIGEgdHJpdmlhbCBjaGVjayB0aGF0IHRoZQpmaWxlcyBkbyBu
b3QgZXhwbG9kZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIHRlc3RzL2RlYnVnZnNfdGVzdC5jIHwgMiArLQogMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvZGVi
dWdmc190ZXN0LmMgYi90ZXN0cy9kZWJ1Z2ZzX3Rlc3QuYwppbmRleCA2ZDE3NTdjNTAuLmY4ZGQ4
NTFjOSAxMDA2NDQKLS0tIGEvdGVzdHMvZGVidWdmc190ZXN0LmMKKysrIGIvdGVzdHMvZGVidWdm
c190ZXN0LmMKQEAgLTY1LDcgKzY1LDcgQEAgc3RhdGljIHZvaWQgcmVhZF9hbmRfZGlzY2FyZF9z
eXNmc19lbnRyaWVzKGludCBwYXRoX2ZkLCBpbnQgaW5kZW50KQogCQkJaWd0X2RlYnVnKCIlc1Jl
YWRpbmcgZmlsZSBcIiVzXCJcbiIsIHRhYnMsIGRpcmVudC0+ZF9uYW1lKTsKIAkJCWlndF9zZXRf
dGltZW91dCg1LCAicmVhZGluZyBzeXNmcyBlbnRyeSIpOwogCi0JCQlzdWJfZmQgPSBvcGVuYXQo
cGF0aF9mZCwgZGlyZW50LT5kX25hbWUsIE9fUkRPTkxZKTsKKwkJCXN1Yl9mZCA9IG9wZW5hdChw
YXRoX2ZkLCBkaXJlbnQtPmRfbmFtZSwgT19SRE9OTFkgfCBPX05PTkJMT0NLKTsKIAkJCWlmIChz
dWJfZmQgPT0gLTEpIHsKIAkJCQlpZ3RfZGVidWcoIiVzQ291bGQgbm90IG9wZW4gZmlsZSBcIiVz
XCIgd2l0aCBlcnJvcjogJW1cbiIsCiAJCQkJCSAgdGFicywgZGlyZW50LT5kX25hbWUpOwotLSAK
Mi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
