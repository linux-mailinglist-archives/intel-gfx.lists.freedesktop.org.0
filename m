Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221BE61C41
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 11:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9394989A9A;
	Mon,  8 Jul 2019 09:17:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C16789A9A;
 Mon,  8 Jul 2019 09:17:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17165262-1500050 
 for multiple; Mon, 08 Jul 2019 10:17:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 10:17:16 +0100
Message-Id: <20190708091716.12252-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Push the forced reset
 telltales to kmsg
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

TGVhdmUgYSBmZXcgbW9yZSBicmVhZGNydW1icyBpbiB0aGUgZG1lc2cgbG9nIHRvIHRyeSBhbmQg
c3BvdCB3aGVyZSB0aGUKZGVsYXkgb2NjdXJzLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCAz
ICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKaW5k
ZXggZGM3YWZiMGZkLi40ZDczNjJkOGYgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2Vpby5j
CisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCkBAIC03MSwxMCArNzEsMTEgQEAgc3RhdGljIHZv
aWQgdHJpZ2dlcl9yZXNldChpbnQgZmQpCiAKIAlpZ3RfbnNlY19lbGFwc2VkKCZ0cyk7CiAKKwlp
Z3Rfa21zZyhLTVNHX0RFQlVHICJGb3JjaW5nIEdQVSByZXNldFxuIik7CiAJaWd0X2ZvcmNlX2dw
dV9yZXNldChmZCk7CiAKIAkvKiBBbmQganVzdCBjaGVjayB0aGUgZ3B1IGlzIGluZGVlZCBydW5u
aW5nIGFnYWluICovCi0JaWd0X2RlYnVnKCJDaGVja2luZyB0aGF0IHRoZSBHUFUgcmVjb3ZlcmVk
XG4iKTsKKwlpZ3Rfa21zZyhLTVNHX0RFQlVHICJDaGVja2luZyB0aGF0IHRoZSBHUFUgcmVjb3Zl
cmVkXG4iKTsKIAlnZW1fdGVzdF9lbmdpbmUoZmQsIEFMTF9FTkdJTkVTKTsKIAlpZ3RfZHJvcF9j
YWNoZXNfc2V0KGZkLCBEUk9QX0FDVElWRSk7CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
