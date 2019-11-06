Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 471AFF1A5B
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 16:48:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11766EDAE;
	Wed,  6 Nov 2019 15:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E5D6EDAE
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 15:48:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19104017-1500050 
 for multiple; Wed, 06 Nov 2019 15:48:12 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 15:48:08 +0000
Message-Id: <20191106154810.5843-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Handle i915_active_fence_set()
 with the same fence
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

SWYgdGhlIGNhbGxlciB3YW50cyB0byBvdmVyd3JpdGUgdGhlIGN1cnJlbnRseSB0cmFja2VkIGZl
bmNlLCB3aXRoCml0c2VsZiwgYXMgZmFyIGFzIHRoZSB0cmFja2luZyBpcyBjb25jZXJuZWQgaXQg
aXMgYSBuby1vcCwgc28gc2ltcGx5CmFsbG93IGl0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZl
LmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggMjA3MzgzZGRhODRkLi5jZGU5
ODQ3NDRmMjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtNzU5LDcgKzc1OSw5
IEBAIF9faTkxNV9hY3RpdmVfZmVuY2Vfc2V0KHN0cnVjdCBpOTE1X2FjdGl2ZV9mZW5jZSAqYWN0
aXZlLAogCiAJcHJldiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoYWN0aXZlLT5mZW5jZSwg
YWN0aXZlX2lzX2hlbGQoYWN0aXZlKSk7CiAJaWYgKHByZXYpIHsKLQkJR0VNX0JVR19PTihwcmV2
ID09IGZlbmNlKTsKKwkJaWYgKHVubGlrZWx5KHByZXYgPT0gZmVuY2UpKQorCQkJZ290byB1bmxv
Y2s7CisKIAkJc3Bpbl9sb2NrX25lc3RlZChwcmV2LT5sb2NrLCBTSU5HTEVfREVQVEhfTkVTVElO
Ryk7CiAJCV9fbGlzdF9kZWxfZW50cnkoJmFjdGl2ZS0+Y2Iubm9kZSk7CiAJCXNwaW5fdW5sb2Nr
KHByZXYtPmxvY2spOyAvKiBzZXJpYWxpc2Ugd2l0aCBwcmV2LT5jYl9saXN0ICovCkBAIC03ODEs
NiArNzgzLDcgQEAgX19pOTE1X2FjdGl2ZV9mZW5jZV9zZXQoc3RydWN0IGk5MTVfYWN0aXZlX2Zl
bmNlICphY3RpdmUsCiAJcmN1X2Fzc2lnbl9wb2ludGVyKGFjdGl2ZS0+ZmVuY2UsIGZlbmNlKTsK
IAlsaXN0X2FkZF90YWlsKCZhY3RpdmUtPmNiLm5vZGUsICZmZW5jZS0+Y2JfbGlzdCk7CiAKK3Vu
bG9jazoKIAlzcGluX3VubG9ja19pcnFyZXN0b3JlKGZlbmNlLT5sb2NrLCBmbGFncyk7CiAKIAly
ZXR1cm4gcHJldjsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
