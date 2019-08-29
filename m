Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA30A1AC2
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 15:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9C1489740;
	Thu, 29 Aug 2019 13:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF91789740;
 Thu, 29 Aug 2019 13:05:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18304446-1500050 
 for multiple; Thu, 29 Aug 2019 14:05:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:05:22 +0100
Message-Id: <20190829130525.28555-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/4] igt/kms_flip_tiling: Check GEM
 availability before use
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgdXNlIHRoZSBHUFUgdG8gY29udmVydCBiZXR3ZWVuIHRpbGluZyBmb3JtYXRzLCBpbmRpcmVj
dGx5IHZpYSB0aGUKY2FsbCB0byBpZ3RfY3JlYXRlX3BhdHRlcm5fZmIuIFNvIGJlZm9yZSB3ZSB0
cnkgYW5kIGV4ZWN1dGUgY29tbWFuZHMgb24KdGhlIEdQVSwgd2Ugc2hvdWxkIGNoZWNrIHRoYXQg
dGhlIEdQVSBpcyBhdmFpbGFibGUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9rbXNfZmxpcF90aWxpbmcuYyB8IDEgKwog
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMva21zX2Zs
aXBfdGlsaW5nLmMgYi90ZXN0cy9rbXNfZmxpcF90aWxpbmcuYwppbmRleCA1ODJhZjUzY2QuLjM2
NTU4MTMyYSAxMDA2NDQKLS0tIGEvdGVzdHMva21zX2ZsaXBfdGlsaW5nLmMKKysrIGIvdGVzdHMv
a21zX2ZsaXBfdGlsaW5nLmMKQEAgLTE1NSw2ICsxNTUsNyBAQCBpZ3RfbWFpbgogCWlndF9maXh0
dXJlIHsKIAkJZGF0YS5kcm1fZmQgPSBkcm1fb3Blbl9kcml2ZXJfbWFzdGVyKERSSVZFUl9JTlRF
TCk7CiAJCWRhdGEuZ2VuID0gaW50ZWxfZ2VuKGludGVsX2dldF9kcm1fZGV2aWQoZGF0YS5kcm1f
ZmQpKTsKKwkJaWd0X3JlcXVpcmVfZ2VtKGRhdGEuZHJtX2ZkKTsKIAogCQlrbXN0ZXN0X3NldF92
dF9ncmFwaGljc19tb2RlKCk7CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
