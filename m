Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0213F29976
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 15:54:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08F96E111;
	Fri, 24 May 2019 13:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268606E111;
 Fri, 24 May 2019 13:54:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16669533-1500050 
 for multiple; Fri, 24 May 2019 14:54:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2019 14:54:34 +0100
Message-Id: <20190524135434.31965-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_busy: Fix typo killing snb!
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hlY2sgdGhlIHJpZ2h0IGVuZ2luZSB0byBzZWUgaWYgaXQgaXMgdGhlIG9uZSB0aGF0IGV4cGxv
ZGVzIQoKRml4ZXM6IDg4MzE4YjA3NzFmOSAoInRlc3QvaTkxNTogZ2VtX2J1c3k6IHVzZSB0aGUg
Z2VtX2VuZ2luZV90b3BvbG9neSBsaWJyYXJ5IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGlu
dGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0t
LQogdGVzdHMvaTkxNS9nZW1fYnVzeS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fYnVzeS5j
IGIvdGVzdHMvaTkxNS9nZW1fYnVzeS5jCmluZGV4IGYzZWJiMzdhMy4uYTU1MzU4NzA4IDEwMDY0
NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9idXN5LmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fYnVzeS5j
CkBAIC0yNTYsNyArMjU2LDcgQEAgc3RhdGljIHZvaWQgb25lKGludCBmZCwgY29uc3Qgc3RydWN0
IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplLCB1bnNpZ25lZCB0ZXN0X2YKIAkJCSAgICBlMi0+
aW5zdGFuY2UgPT0gZS0+aW5zdGFuY2UpCiAJCQkJY29udGludWU7CiAKLQkJCWlmICghZ2VtX2Ns
YXNzX2Nhbl9zdG9yZV9kd29yZChmZCwgZS0+Y2xhc3MpKQorCQkJaWYgKCFnZW1fY2xhc3NfY2Fu
X3N0b3JlX2R3b3JkKGZkLCBlMi0+Y2xhc3MpKQogCQkJCWNvbnRpbnVlOwogCiAJCQlpZ3RfZGVi
dWcoIlRlc3RpbmcgJXMgaW4gcGFyYWxsZWxcbiIsIGUyLT5uYW1lKTsKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
