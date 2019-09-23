Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4310BB189
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B772B6E303;
	Mon, 23 Sep 2019 09:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03E6B6E303
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 09:40:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18584114-1500050 
 for multiple; Mon, 23 Sep 2019 10:40:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 10:40:04 +0100
Message-Id: <20190923094004.15324-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Drop redundant
 list_del_init(&rq->sched.link)
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

U2luY2UgYW1hbGdhbWF0aW5nIHRoZSBxdWV1ZWQgYW5kIGFjdGl2ZSBsaXN0cyBpbiBjb21taXQg
NDIyZDdkZjRmMDkwCigiZHJtL2k5MTU6IFJlcGxhY2UgZW5naW5lLT50aW1lbGluZSB3aXRoIGEg
cGxhaW4gbGlzdCIpLCBwZXJmb3JtaW5nIGEKaTkxNV9yZXF1ZXN0X3N1Ym1pdCgpIHdpbGwgcmVt
b3ZlIHRoZSByZXF1ZXN0IGZyb20gdGhlIGV4ZWNsaXN0cwpwcmlvcml0eSBxdWV1ZS4KClJlZmVy
ZW5jZXM6IDQyMmQ3ZGY0ZjA5MCAoImRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUg
d2l0aCBhIHBsYWluIGxpc3QiKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxIC0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YwppbmRleCAxYTJiNzExNTdmMDguLjgxZjE2YjhlYTBkMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLmMKQEAgLTI1MTQsNyArMjUxNCw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19j
YW5jZWxfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQlpbnQgaTsK
IAogCQlwcmlvbGlzdF9mb3JfZWFjaF9yZXF1ZXN0X2NvbnN1bWUocnEsIHJuLCBwLCBpKSB7Ci0J
CQlsaXN0X2RlbF9pbml0KCZycS0+c2NoZWQubGluayk7CiAJCQlfX2k5MTVfcmVxdWVzdF9zdWJt
aXQocnEpOwogCQkJZG1hX2ZlbmNlX3NldF9lcnJvcigmcnEtPmZlbmNlLCAtRUlPKTsKIAkJCWk5
MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRlKHJxKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
