Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D739BBE12B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 17:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 003556EBE0;
	Wed, 25 Sep 2019 15:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B911D6EBE0
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:22:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18613886-1500050 
 for multiple; Wed, 25 Sep 2019 16:22:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 16:22:03 +0100
Message-Id: <20190925152203.26421-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925122510.27330-1-chris@chris-wilson.co.uk>
References: <20190925122510.27330-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Also disable rc6
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

U3RpbGwgc2VhcmNoaW5nIGZvciB0aGUgc3dlZXRzcG90IHRvIGxlYXZlIENJIGFsaXZlIGFzIHdl
IGZpZ3VyZSBvdXQgdGhlCnJvb3QgY2F1c2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgpBY2tlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyB8
IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNp
LmMKaW5kZXggZWE1M2RmZTJmYmEwLi4zYTdkYTEzMDUwNDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9w
Y2kuYwpAQCAtODA3LDYgKzgwNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNl
X2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJLmRpc3BsYXkuaGFzX21vZHVsYXJf
ZmlhID0gMSwKIAkuZW5naW5lX21hc2sgPQogCQlCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQo
VkVDUzApIHwgQklUKFZDUzApIHwgQklUKFZDUzIpLAorCS5oYXNfcmM2ID0gZmFsc2UsIC8qIFhY
WCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCiAJLmhhc19ycHMgPSBmYWxzZSwgLyogWFhYIGRp
c2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KIH07CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
