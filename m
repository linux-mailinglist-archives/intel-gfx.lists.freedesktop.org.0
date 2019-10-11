Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F00D4880
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 21:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D1636E441;
	Fri, 11 Oct 2019 19:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286DE6E441
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 19:36:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18808854-1500050 
 for multiple; Fri, 11 Oct 2019 20:36:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 20:36:20 +0100
Message-Id: <20191011193620.14026-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Serialise write to scratch
 with its vma binding
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

QWRkIHRoZSBtaXNzaW5nIHNlcmlhbGlzYXRpb24gb24gdGhlIHJlcXVlc3QgZm9yIGEgd3JpdGUg
aW50byBhIHZtYSB0bwp3YWl0IHVudGlsIHRoYXQgdm1hIGlzIGJvdW5kIGJlZm9yZSBiZWluZyBl
eGVjdXRlZCBieSB0aGUgR1BVLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyB8
IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYwppbmRleCAxMDQ4YmU2NDZj
MzUuLmRjMTFmN2FkNTBhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2Vs
ZnRlc3Rfd29ya2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jCkBAIC03ODYsNiArNzg2LDE0IEBAIHN0YXRpYyBpbnQgcmVhZF93aGl0
ZWxpc3RlZF9yZWdpc3RlcnMoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKIAlpZiAoSVNf
RVJSKHJxKSkKIAkJcmV0dXJuIFBUUl9FUlIocnEpOwogCisJaTkxNV92bWFfbG9jayhyZXN1bHRz
KTsKKwllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCByZXN1bHRzLT5vYmosIHRy
dWUpOworCWlmIChlcnIgPT0gMCkKKwkJZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUocmVz
dWx0cywgcnEsIEVYRUNfT0JKRUNUX1dSSVRFKTsKKwlpOTE1X3ZtYV91bmxvY2socmVzdWx0cyk7
CisJaWYgKGVycikKKwkJZ290byBlcnJfcmVxOworCiAJc3JtID0gTUlfU1RPUkVfUkVHSVNURVJf
TUVNOwogCWlmIChJTlRFTF9HRU4oY3R4LT5pOTE1KSA+PSA4KQogCQlzcm0rKzsKLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
