Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF28EE950
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 21:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD0A88ED6;
	Mon,  4 Nov 2019 20:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE4F88C4C;
 Mon,  4 Nov 2019 20:17:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19079795-1500050 
 for multiple; Mon, 04 Nov 2019 20:17:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Nov 2019 20:17:10 +0000
Message-Id: <20191104201710.3778-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Wait for both
 engines to complete before resubmitting
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

QXMgdGhlIHNjcmF0Y2ggYnVmIGlzIHNoYXJlZCBiZXR3ZWVuIHRoZSB0d28gcmVxdWVzdHMgb24g
Ym90aCBlbmdpbmVzLAp3ZSBuZWVkIHRvIHdhaXQgZm9yIGJvdGggdG8gZmluaXNoIHVzaW5nIHRo
ZSBidWZmZXIgYmVmb3JlIHdlIHJlc2V0IGl0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
dGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxh
bmNlci5jCmluZGV4IGU1MmY1ZGY5NS4uNzBjNDUyOWI0IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1
L2dlbV9leGVjX2JhbGFuY2VyLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5j
CkBAIC04NDAsNyArODQwLDcgQEAgc3RhdGljIHZvaWQgYm9uZGVkX3NsaWNlKGludCBpOTE1KQog
CQkJZ2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKIAkJCWNsb3NlKGViLnJzdmQyKTsKIAotCQkJZ2Vt
X3N5bmMoaTkxNSwgb2JqWzJdLmhhbmRsZSk7CisJCQlnZW1fc3luYyhpOTE1LCBvYmpbMF0uaGFu
ZGxlKTsKIAkJfQogCiAJCSpzdG9wID0gMTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
