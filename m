Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1208FCD3AB
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Oct 2019 18:50:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C00389DE1;
	Sun,  6 Oct 2019 16:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B34296E41D
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Oct 2019 16:50:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18742842-1500050 
 for multiple; Sun, 06 Oct 2019 17:50:04 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Oct 2019 17:49:54 +0100
Message-Id: <20191006165002.30312-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191006165002.30312-1-chris@chris-wilson.co.uk>
References: <20191006165002.30312-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/12] drm/i915/gt: Treat a busy timeline as
 'active' while waiting
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

SWYgd2UgY2Fubm90IGNsYWltIHRoZSB0aW1lbGluZS0+bXV0ZXggd2hpbGUgcHJlcGFyaW5nIGZv
ciBhIHdhaXQgb24gaXQsCndlIGhhdmUgdG8gc2tpcCB0aGUgdGltZWxpbmUuIEluIGRvaW5nIHNv
LCB0cmVhdCBpdCBhcyBhY3RpdmUgc28gdGhhdAp1bmRlciBhIGludGVsX2d0X3dhaXRfZm9yX2lk
bGUoKSBsb29wLCB3ZSByZXBlYXQgdGhlIHdhaXQgYWZ0ZXIKc2NoZWR1bGluZyBhd2F5LgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwppbmRleCBkNjllNzg0NzhlZWEuLmNhNjA2Yjc5ZmQ1ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCkBAIC0zNCw4
ICszNCwxMCBAQCBsb25nIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBp
bnRlbF9ndCAqZ3QsIGxvbmcgdGltZW91dCkKIAogCXNwaW5fbG9ja19pcnFzYXZlKCZ0aW1lbGlu
ZXMtPmxvY2ssIGZsYWdzKTsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5X3NhZmUodGwsIHRuLCAmdGlt
ZWxpbmVzLT5hY3RpdmVfbGlzdCwgbGluaykgewotCQlpZiAoIW11dGV4X3RyeWxvY2soJnRsLT5t
dXRleCkpCisJCWlmICghbXV0ZXhfdHJ5bG9jaygmdGwtPm11dGV4KSkgeworCQkJYWN0aXZlX2Nv
dW50Kys7IC8qIHJlcG9ydCBidXN5IHRvIGNhbGxlciwgdHJ5IGFnYWluPyAqLwogCQkJY29udGlu
dWU7CisJCX0KIAogCQlpbnRlbF90aW1lbGluZV9nZXQodGwpOwogCQlHRU1fQlVHX09OKCF0bC0+
YWN0aXZlX2NvdW50KTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
