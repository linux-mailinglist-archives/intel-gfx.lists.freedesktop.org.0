Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EA5A21D1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 19:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECBC16E142;
	Thu, 29 Aug 2019 17:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392AC6E142
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 17:09:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18307772-1500050 
 for multiple; Thu, 29 Aug 2019 18:08:50 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 18:08:48 +0100
Message-Id: <20190829170848.969-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: cond_resched() within the
 longer buddy tests
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

TGV0IHRoZSBzY2hlZHVsZXIgaGF2ZSBhIGJyZWF0aGVyIGluIGJldHdlZW4gcGFzc2VzIG9mIHRo
ZSBsb25nZXIgYnVkZHkKdGVzdHMuIEltcG9ydGFudCBpZiB3ZSBhcmUgcnVubmluZyB1bmRlciBr
YXNhbiBldGMgYW5kIHRoaXMgdGFrZXMgZmFyCmxvbmdlciB0aGFuIHVzdWFsIQoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfYnVkZHkuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2J1ZGR5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCmlu
ZGV4IDIzZjc4NGVhZTFlNy4uMWI4NTZiYWU2N2I1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9idWRkeS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X2J1ZGR5LmMKQEAgLTM3NSw2ICszNzUsOCBAQCBzdGF0aWMgaW50IGln
dF9idWRkeV9hbGxvY19zbW9rZSh2b2lkICphcmcpCiAKIAkJaWYgKGVycikKIAkJCWJyZWFrOwor
CisJCWNvbmRfcmVzY2hlZCgpOwogCX0KIAogCWlmIChlcnIgPT0gLUVOT01FTSkKQEAgLTY4Nyw2
ICs2ODksOCBAQCBzdGF0aWMgaW50IGlndF9idWRkeV9hbGxvY19yYW5nZSh2b2lkICphcmcpCiAJ
CXJlbSAtPSBzaXplOwogCQlpZiAoIXJlbSkKIAkJCWJyZWFrOworCisJCWNvbmRfcmVzY2hlZCgp
OwogCX0KIAogCWlmIChlcnIgPT0gLUVOT01FTSkKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
