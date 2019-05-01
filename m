Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316B71079A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028CD8934F;
	Wed,  1 May 2019 11:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA4C89104
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 11:45:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16415734-1500050 
 for multiple; Wed, 01 May 2019 12:45:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 May 2019 12:45:31 +0100
Message-Id: <20190501114541.10077-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190501114541.10077-1-chris@chris-wilson.co.uk>
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/14] drm/i915: Leave engine parking to the
 engines
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

RHJvcCB0aGUgY2hlY2sgaW4gR0VNIHBhcmtpbmcgdGhhdCB0aGUgZW5naW5lcyB3ZXJlIGFscmVh
ZHkgcGFya2VkLiBUaGUKaW50ZW50aW9uIGhlcmUgd2FzIHRoYXQgYmVmb3JlIHdlIGRyb3BwZWQg
dGhlIEdUIHdha2VyZWYsIHdlIHdlcmUgc3VyZQp0aGF0IG5vIG1vcmUgaW50ZXJydXB0cyBjb3Vs
ZCBiZSByYWlzZWQgLS0gaG93ZXZlciwgd2UgaGF2ZSBhbHJlYWR5CmRyb3BwZWQgdGhlIHdha2Vy
ZWYgYnkgdGhpcyBwb2ludCBhbmQgdGhlIHdhcm5pbmcgaXMgbm8gbG9uZ2VyIHZhbGlkLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYyB8IDE4ICstLS0tLS0tLS0tLS0tLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxNyBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fcG0uYwppbmRleCAzYjZlOGQ1YmU4ZTEuLjQ5YjBjZTU5NGYyMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCkBAIC0xNywyNCArMTcsOCBAQCBzdGF0aWMg
dm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJbG9j
a2RlcF9hc3NlcnRfaGVsZCgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKLQlmb3JfZWFjaF9l
bmdpbmUoZW5naW5lLCBpOTE1LCBpZCkgewotCQkvKgotCQkgKiBXZSBhcmUgY29tbWl0dGVkIG5v
dyB0byBwYXJraW5nIHRoZSBlbmdpbmVzLCBtYWtlIHN1cmUgdGhlcmUKLQkJICogd2lsbCBiZSBu
byBtb3JlIGludGVycnVwdHMgYXJyaXZpbmcgbGF0ZXIgYW5kIHRoZSBlbmdpbmVzCi0JCSAqIGFy
ZSB0cnVseSBpZGxlLgotCQkgKi8KLQkJaWYgKHdhaXRfZm9yKGludGVsX2VuZ2luZV9pc19pZGxl
KGVuZ2luZSksIDEwKSkgewotCQkJc3RydWN0IGRybV9wcmludGVyIHAgPSBkcm1fZGVidWdfcHJp
bnRlcihfX2Z1bmNfXyk7Ci0KLQkJCWRldl9lcnIoaTkxNS0+ZHJtLmRldiwKLQkJCQkiJXMgaXMg
bm90IGlkbGUgYmVmb3JlIHBhcmtpbmdcbiIsCi0JCQkJZW5naW5lLT5uYW1lKTsKLQkJCWludGVs
X2VuZ2luZV9kdW1wKGVuZ2luZSwgJnAsIE5VTEwpOwotCQl9Ci0JCXRhc2tsZXRfa2lsbCgmZW5n
aW5lLT5leGVjbGlzdHMudGFza2xldCk7Ci0KKwlmb3JfZWFjaF9lbmdpbmUoZW5naW5lLCBpOTE1
LCBpZCkKIAkJaTkxNV9nZW1fYmF0Y2hfcG9vbF9maW5pKCZlbmdpbmUtPmJhdGNoX3Bvb2wpOwot
CX0KIAogCWk5MTVfdGltZWxpbmVzX3BhcmsoaTkxNSk7CiAJaTkxNV92bWFfcGFya2VkKGk5MTUp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
