Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45234100BCD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 19:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67126E811;
	Mon, 18 Nov 2019 18:50:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E023B6E7CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 18:50:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19246420-1500050 
 for multiple; Mon, 18 Nov 2019 18:49:47 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Nov 2019 18:49:33 +0000
Message-Id: <20191118184943.2593048-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118184943.2593048-1-chris@chris-wilson.co.uk>
References: <20191118184943.2593048-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/18] drm/i915/gt: Only wait for register
 chipset flush if active
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

T25seSBzZXJpYWxpc2Ugd2l0aCB0aGUgY2hpcHNldCB1c2luZyBhbiBtbWlvIGlmIHRoZSBjaGlw
c2V0IGlzCmN1cnJlbnRseSBhY3RpdmUuIFdlIGV4cGVjdCB0aGF0IGFueSB3cml0ZXMgaW50byB0
aGUgY2hpcHNldCByYW5nZSB3aWxsCnNpbXBseSBiZSBmb3Jnb3R0ZW4gdW50aWwgaXQgd2FrZXMg
dXAuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0LmMKaW5kZXggYjVhOWI4N2U0ZWM5Li5jNGZkOGQ2NWI4YTMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3QuYwpAQCAtMzA0LDcgKzMwNCw3IEBAIHZvaWQgaW50ZWxfZ3RfZmx1
c2hfZ2d0dF93cml0ZXMoc3RydWN0IGludGVsX2d0ICpndCkKIAogCWludGVsX2d0X2NoaXBzZXRf
Zmx1c2goZ3QpOwogCi0Jd2l0aF9pbnRlbF9ydW50aW1lX3BtKHVuY29yZS0+cnBtLCB3YWtlcmVm
KSB7CisJd2l0aF9pbnRlbF9ydW50aW1lX3BtX2lmX2luX3VzZSh1bmNvcmUtPnJwbSwgd2FrZXJl
ZikgewogCQl1bnNpZ25lZCBsb25nIGZsYWdzOwogCiAJCXNwaW5fbG9ja19pcnFzYXZlKCZ1bmNv
cmUtPmxvY2ssIGZsYWdzKTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
