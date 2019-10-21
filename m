Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBF9DF2DF
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 18:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 183FE6E17B;
	Mon, 21 Oct 2019 16:22:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7713D6E17B
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 16:22:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18915394-1500050 
 for multiple; Mon, 21 Oct 2019 17:21:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 17:21:46 +0100
Message-Id: <20191021162146.1686-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Use all physical engines
 for i915_active
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

aTkxNV9hY3RpdmUgbXVzdCB0cmFjayBvdmVyIGFueSBlbmdpbmUsIHNvIGV4cGFuZCB0aGUgc2Vs
ZnRlc3QgdG8KaXRlcmF0ZSBvdmVyIGFsbCB1YWJpIGVuZ2luZXMuCgpTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfYWN0aXZlLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfYWN0aXZlLmMKaW5kZXggMjY4MTkyYjU2MTNiLi45NjUxM2E3ZDQ3MzkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jCkBAIC03OSw3ICs3OSw2IEBA
IF9fbGl2ZV9hY3RpdmVfc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwogCXN0cnVjdCBpOTE1X3N3X2ZlbmNlICpzdWJt
aXQ7CiAJc3RydWN0IGxpdmVfYWN0aXZlICphY3RpdmU7Ci0JZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7CiAJdW5zaWduZWQgaW50IGNvdW50ID0gMDsKIAlpbnQgZXJyID0gMDsKIApAQCAtOTcsNyAr
OTYsNyBAQCBfX2xpdmVfYWN0aXZlX3NldHVwKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQogCWlmIChlcnIpCiAJCWdvdG8gb3V0OwogCi0JZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkx
NSwgaWQpIHsKKwlmb3JfZWFjaF91YWJpX2VuZ2luZShlbmdpbmUsIGk5MTUpIHsKIAkJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7CiAKIAkJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGVuZ2luZS0+
a2VybmVsX2NvbnRleHQpOwotLSAKMi4yNC4wLnJjMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
