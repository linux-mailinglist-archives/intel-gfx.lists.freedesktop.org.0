Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B12C8728
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9386E94B;
	Wed,  2 Oct 2019 11:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 683016E945
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:22:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692028-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:08 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:43 +0100
Message-Id: <20191002112000.12280-13-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/30] drm/i915/gem: Retire directly for
 mmap-offset shrinking
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm93IHRoYXQgd2UgY2FuIHJldGlyZSB3aXRob3V0IHRha2luZyBzdHJ1Y3RfbXV0ZXgsIHdlIGNh
biBkbyBzbyB0bwpoYW5kbGUgc2hyaW5raW5nIHRoZSBtbWFwLW9mZnNldCBzcGFjZSBhZnRlciBh
biBhbGxvY2F0aW9uIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDE3ICsrKysrLS0tLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCA0MThkMGQyYjVm
YTkuLjQ1YmJkMjJjMTRmMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1h
bi5jCkBAIC00MzEsMTkgKzQzMSwxMiBAQCBzdGF0aWMgaW50IGNyZWF0ZV9tbWFwX29mZnNldChz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCQlyZXR1cm4gMDsKIAogCS8qIEF0dGVt
cHQgdG8gcmVhcCBzb21lIG1tYXAgc3BhY2UgZnJvbSBkZWFkIG9iamVjdHMgKi8KLQlkbyB7Ci0J
CWVyciA9IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoaTkxNSwgTUFYX1NDSEVEVUxFX1RJTUVPVVQp
OwotCQlpZiAoZXJyKQotCQkJYnJlYWs7CisJZXJyID0gaTkxNV9yZXRpcmVfcmVxdWVzdHNfdGlt
ZW91dChpOTE1LCBNQVhfU0NIRURVTEVfVElNRU9VVCk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVy
cjsKIAotCQlpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwotCQllcnIgPSBkcm1f
Z2VtX2NyZWF0ZV9tbWFwX29mZnNldCgmb2JqLT5iYXNlKTsKLQkJaWYgKCFlcnIpCi0JCQlicmVh
azsKLQotCX0gd2hpbGUgKGZsdXNoX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3Jr
KSk7Ci0KLQlyZXR1cm4gZXJyOworCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoaTkxNSk7
CisJcmV0dXJuIGRybV9nZW1fY3JlYXRlX21tYXBfb2Zmc2V0KCZvYmotPmJhc2UpOwogfQogCiBp
bnQKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
