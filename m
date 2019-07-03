Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D18C5E18B
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 12:00:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E74389097;
	Wed,  3 Jul 2019 10:00:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BE389097
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 10:00:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17111139-1500050 
 for multiple; Wed, 03 Jul 2019 11:00:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 11:00:36 +0100
Message-Id: <20190703100036.10740-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Flush the workqueue before draining
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

VHJ5aW5nIHRvIGRyYWluIGEgd29ya3F1ZXVlIHdoaWxlIHdlIG1heSBzdGlsbCBiZSBhZGRpbmcg
dG8gaXQgZnJvbQpiYWNrZ3JvdW5kIHRhc2tzIGlzLCBhY2NvcmRpbmcgdG8ga2VybmVsL3dvcmtx
dWV1ZS5jLCB2ZXJib3Rlbi4gU28sIGFkZAphIGZsdXNoX3dvcmtxdWV1ZSgpIGF0IHRoZSBzdGFy
dCBvZiBvdXIgY2xlYW51cCBwcm9jZWR1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAppbmRleCAwOWUwOWQyNmU2N2QuLjk3OWEzMDc2NGU5MSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5oCkBAIC0yNDczLDYgKzI0NzMsNyBAQCBzdGF0aWMgaW5saW5lIHZvaWQgaTkx
NV9nZW1fZHJhaW5fd29ya3F1ZXVlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCSAq
LwogCWludCBwYXNzID0gMzsKIAlkbyB7CisJCWZsdXNoX3dvcmtxdWV1ZShpOTE1LT53cSk7CiAJ
CXJjdV9iYXJyaWVyKCk7CiAJCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoaTkxNSk7CiAJ
fSB3aGlsZSAoLS1wYXNzKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
