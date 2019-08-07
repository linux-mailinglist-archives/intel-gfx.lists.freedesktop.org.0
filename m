Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 818C284ABF
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 13:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FE5B6E6B3;
	Wed,  7 Aug 2019 11:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80A5D6E6B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 11:38:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17917061-1500050 
 for multiple; Wed, 07 Aug 2019 12:38:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 12:38:27 +0100
Message-Id: <20190807113827.28127-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include the DRIVER_DATE in the error
 state
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

Rm9yIGZvcmtsaWZ0ZWQgZnJhbmtlbmtlcm5lbHMsIHRoZSByZXBvcnRlZCBrZXJuZWwgdmVyc2lv
biBoYXMgbm8KYmVhcmluZyBvbiB0aGUgYWN0dWFsIGRyaXZlciB2ZXJzaW9uLiBJbmNsdWRlIG91
ciBvd24gZHJpdmVyIGRhdGUgdGhhdAppcyB1cGRhdGVkIGV2ZXJ5IHRpbWUgd2UgdGFnIGRybS1p
bnRlbC1uZXh0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyB8IDEg
KwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMKaW5kZXggOWVlZTk5YmRjNTE0Li43OGY0MzFkNTI3Y2UgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwpAQCAtNjg3LDYgKzY4Nyw3IEBAIHN0YXRpYyB2b2lk
IF9fZXJyX3ByaW50X3RvX3NnbChzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICptLAog
CQkgICBpbml0X3V0c25hbWUoKS0+cmVsZWFzZSwKIAkJICAgaW5pdF91dHNuYW1lKCktPm1hY2hp
bmUpOwogCXRzID0ga3RpbWVfdG9fdGltZXNwZWM2NChlcnJvci0+dGltZSk7CisJZXJyX3ByaW50
ZihtLCAiRHJpdmVyOiAlc1xuIiwgRFJJVkVSX0RBVEUpOwogCWVycl9wcmludGYobSwgIlRpbWU6
ICVsbGQgcyAlbGQgdXNcbiIsCiAJCSAgIChzNjQpdHMudHZfc2VjLCB0cy50dl9uc2VjIC8gTlNF
Q19QRVJfVVNFQyk7CiAJdHMgPSBrdGltZV90b190aW1lc3BlYzY0KGVycm9yLT5ib290dGltZSk7
Ci0tIAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
