Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C34E9F2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 15:53:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 356A66E8BA;
	Fri, 21 Jun 2019 13:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506666E880
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 13:52:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16979944-1500050 
 for multiple; Fri, 21 Jun 2019 14:52:48 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 14:52:46 +0100
Message-Id: <20190621135246.20683-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Prevent dereference of engine before
 NULL check in error capture
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

ZHJpdmVycy9ncHUvZHJtL2k5MTUvL2k5MTVfZ3B1X2Vycm9yLmM6MTQxOCBnZW1fcmVjb3JkX3Jp
bmdzKCkgd2FybjogdmFyaWFibGUgZGVyZWZlcmVuY2VkIGJlZm9yZSBjaGVjayAnZW5naW5lJyAo
c2VlIGxpbmUgMTQxMykKClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwgMyArLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9ncHVfZXJyb3IuYwppbmRleCA1OWY1YjAyNjVlZTMuLjU0ODljZDg3OTMxNSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCkBAIC0xNDEwLDcgKzE0MTAsNiBA
QCBzdGF0aWMgdm9pZCBnZW1fcmVjb3JkX3JpbmdzKHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSAqZXJy
b3IpCiAJZm9yIChpID0gMDsgaSA8IEk5MTVfTlVNX0VOR0lORVM7IGkrKykgewogCQlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUgPSBpOTE1LT5lbmdpbmVbaV07CiAJCXN0cnVjdCBkcm1f
aTkxNV9lcnJvcl9lbmdpbmUgKmVlID0gJmVycm9yLT5lbmdpbmVbaV07Ci0JCXN0cnVjdCBpOTE1
X2dndHQgKmdndHQgPSBlbmdpbmUtPmd0LT5nZ3R0OwogCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
ZXF1ZXN0OwogCiAJCWVlLT5lbmdpbmVfaWQgPSAtMTsKQEAgLTE0MjgsNyArMTQyNyw3IEBAIHN0
YXRpYyB2b2lkIGdlbV9yZWNvcmRfcmluZ3Moc3RydWN0IGk5MTVfZ3B1X3N0YXRlICplcnJvcikK
IAkJCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSByZXF1ZXN0LT5nZW1fY29udGV4dDsK
IAkJCXN0cnVjdCBpbnRlbF9yaW5nICpyaW5nOwogCi0JCQllZS0+dm0gPSBjdHgtPnZtID86ICZn
Z3R0LT52bTsKKwkJCWVlLT52bSA9IGN0eC0+dm0gPzogJmVuZ2luZS0+Z3QtPmdndHQtPnZtOwog
CiAJCQlyZWNvcmRfY29udGV4dCgmZWUtPmNvbnRleHQsIGN0eCk7CiAKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
