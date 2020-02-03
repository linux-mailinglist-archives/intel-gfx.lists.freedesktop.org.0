Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EB5150F31
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 19:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7B089DBD;
	Mon,  3 Feb 2020 18:16:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9089189DBD
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 18:16:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20103846-1500050 
 for multiple; Mon, 03 Feb 2020 18:16:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Feb 2020 18:16:25 +0000
Message-Id: <20200203181625.589118-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Ensure string fits within
 name[]
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

U2hyaW5rIHRoZSBzdHJuY3B5IGJvdW5kcyB0byBlbnN1cmUgdGhlIE5VTC10ZXJtaW5hdG9yIGNh
biBmaXQgd2l0aGluCnRoZSBlbWJlZGRlZCBhcnJheToKCkluIGZpbGUgaW5jbHVkZWQgZnJvbSBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjI0NzU6CmRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0LmM6IEluIGZ1bmN0aW9uIOKA
mG1vY2tfY29udGV4dOKAmToKZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2Nr
X2NvbnRleHQuYzo0MDozOiBlcnJvcjog4oCYc3RybmNweeKAmSBzcGVjaWZpZWQgYm91bmQgMjQg
ZXF1YWxzIGRlc3RpbmF0aW9uIHNpemUgWy1XZXJyb3I9c3RyaW5nb3AtdHJ1bmNhdGlvbl0KICAg
NDAgfCAgIHN0cm5jcHkoY3R4LT5uYW1lLCBuYW1lLCBzaXplb2YoY3R4LT5uYW1lKSk7CgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jIHwgMiArLQog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0LmMKaW5kZXggN2Jh
ZDhmZWQ0MjM4Li44MTc2NDI4OWNmMGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvbW9ja19jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9tb2NrX2NvbnRleHQuYwpAQCAtMzcsNyArMzcsNyBAQCBtb2NrX2NvbnRl
eHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJaWYgKG5hbWUpIHsKIAkJc3RydWN0
IGk5MTVfcHBndHQgKnBwZ3R0OwogCi0JCXN0cm5jcHkoY3R4LT5uYW1lLCBuYW1lLCBzaXplb2Yo
Y3R4LT5uYW1lKSk7CisJCXN0cm5jcHkoY3R4LT5uYW1lLCBuYW1lLCBzaXplb2YoY3R4LT5uYW1l
KSAtIDEpOwogCiAJCXBwZ3R0ID0gbW9ja19wcGd0dChpOTE1LCBuYW1lKTsKIAkJaWYgKCFwcGd0
dCkKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
