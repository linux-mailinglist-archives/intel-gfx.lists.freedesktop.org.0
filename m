Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A12A8FDD8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AF26E151;
	Fri, 16 Aug 2019 08:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F56E6E151
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:31:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18159233-1500050 
 for multiple; Fri, 16 Aug 2019 09:31:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 09:31:43 +0100
Message-Id: <20190816083143.23558-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use the associated uncore for the vm
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

V2Ugc3RvcmUgdGhlIGd0JnVuY29yZWUgdG8gdXNlIGluIHRoZSBhZGRyZXNzIHNwYWNlLCBzbyB1
c2UgaXQhCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IDIwOGJkMjUxNjNjNS4uYzNhYjRiZDkxODJlIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMTE5LDcgKzExOSw3IEBAIGk5MTVf
Z2V0X2dndHRfdm1hX3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKTsKIAogc3RhdGljIHZvaWQg
Z2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIHsKLQlzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUgPSAmZ2d0dC0+dm0uaTkxNS0+dW5jb3JlOworCXN0cnVjdCBp
bnRlbF91bmNvcmUgKnVuY29yZSA9IGdndHQtPnZtLmd0LT51bmNvcmU7CiAKIAkvKgogCSAqIE5v
dGUgdGhhdCBhcyBhbiB1bmNhY2hlZCBtbWlvIHdyaXRlLCB0aGlzIHdpbGwgZmx1c2ggdGhlCkBA
IC0xMzAsNyArMTMwLDcgQEAgc3RhdGljIHZvaWQgZ2VuNl9nZ3R0X2ludmFsaWRhdGUoc3RydWN0
IGk5MTVfZ2d0dCAqZ2d0dCkKIAogc3RhdGljIHZvaWQgZ3VjX2dndHRfaW52YWxpZGF0ZShzdHJ1
Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9ICZn
Z3R0LT52bS5pOTE1LT51bmNvcmU7CisJc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ2d0
dC0+dm0uZ3QtPnVuY29yZTsKIAogCWdlbjZfZ2d0dF9pbnZhbGlkYXRlKGdndHQpOwogCWludGVs
X3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIEdFTjhfR1RDUiwgR0VOOF9HVENSX0lOVkFMSURBVEUp
OwotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
