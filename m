Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC6A6D082
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 16:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36AD6E3DA;
	Thu, 18 Jul 2019 14:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2473C6E3DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 14:54:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17402280-1500050 
 for multiple; Thu, 18 Jul 2019 15:54:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 15:54:04 +0100
Message-Id: <20190718145407.21352-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Drop wmb() inside pread_gtt
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

SW5zaWRlIHByZWFkLCB3ZSBvbmx5IGV2ZXIgcmVhZCBmcm9tIHRoZSBHVFQgc28gdGhlIHNlcmlh
bGlzaW5nIHdtYigpCmluc3RydWN0aW9ucyBhcm91bmQgdGhlIEdHVFQgUFRFIHVwZGF0ZXMgYXJl
IHBvaW50bGVzcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgfCAzIC0tLQog
MSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKaW5k
ZXggYTIwN2I5MDkyNGU0Li5mZWQwYmM0MjFhNTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwpA
QCAtMzk1LDExICszOTUsOSBAQCBpOTE1X2dlbV9ndHRfcHJlYWQoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiwKIAkJdW5zaWduZWQgcGFnZV9sZW5ndGggPSBQQUdFX1NJWkUgLSBwYWdl
X29mZnNldDsKIAkJcGFnZV9sZW5ndGggPSByZW1haW4gPCBwYWdlX2xlbmd0aCA/IHJlbWFpbiA6
IHBhZ2VfbGVuZ3RoOwogCQlpZiAobm9kZS5hbGxvY2F0ZWQpIHsKLQkJCXdtYigpOwogCQkJZ2d0
dC0+dm0uaW5zZXJ0X3BhZ2UoJmdndHQtPnZtLAogCQkJCQkgICAgIGk5MTVfZ2VtX29iamVjdF9n
ZXRfZG1hX2FkZHJlc3Mob2JqLCBvZmZzZXQgPj4gUEFHRV9TSElGVCksCiAJCQkJCSAgICAgbm9k
ZS5zdGFydCwgSTkxNV9DQUNIRV9OT05FLCAwKTsKLQkJCXdtYigpOwogCQl9IGVsc2UgewogCQkJ
cGFnZV9iYXNlICs9IG9mZnNldCAmIFBBR0VfTUFTSzsKIAkJfQpAQCAtNDE5LDcgKzQxNyw2IEBA
IGk5MTVfZ2VtX2d0dF9wcmVhZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogb3V0
X3VucGluOgogCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCWlmIChub2Rl
LmFsbG9jYXRlZCkgewotCQl3bWIoKTsKIAkJZ2d0dC0+dm0uY2xlYXJfcmFuZ2UoJmdndHQtPnZt
LCBub2RlLnN0YXJ0LCBub2RlLnNpemUpOwogCQlyZW1vdmVfbWFwcGFibGVfbm9kZSgmbm9kZSk7
CiAJfSBlbHNlIHsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
