Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E32F0053
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 15:53:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D772F6E0C2;
	Tue,  5 Nov 2019 14:53:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75AD46E0C2
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 14:53:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19090224-1500050 
 for multiple; Tue, 05 Nov 2019 14:53:07 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Nov 2019 14:53:05 +0000
Message-Id: <20191105145305.14314-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Early rejection of no-aperture
 map_ggtt
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

SWYgdGhlIGRldmljZSBkb2VzIG5vdCBoYXZlIGFuIGFwZXJ0dXJlIHRocm91Z2ggd2hpY2ggd2Ug
Y2FuIGluZGlyZWN0bHkKYWNjZXNzIGFuZCBkZXRpbGUgdGhlIGJ1ZmZlcnMsIHNpbXBseSByZWpl
Y3QgdGhlIGlvY3RsLiBMYXRlciB3ZSBjYW4KZXh0ZW5kIHRoZSBpb2N0bCB0byBzdXBwb3J0IGRp
ZmZlcmVudCBtb2RlcywgYnV0IGFzIGFuIGV4dGVuc2lvbiB0aGUKdXNlciBtdXN0IG9wdCBpbiBh
bmQgZXhwbGljaXRseSBjb250cm9sIHRoZSBtbWFwIHR5cGUgKHZpegpNTUFQX09GRlNFVF9JT0NU
TCkuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KQ2M6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0
aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRl
eCBlMzAwMjg0OTg0NGIuLmQ2MDk3MzYwM2NjMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jCkBAIC00NTAsNiArNDUwLDkgQEAgaTkxNV9nZW1fbW1hcF9ndHQoc3Ry
dWN0IGRybV9maWxlICpmaWxlLAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJ
aW50IHJldDsKIAorCWlmICghaTkxNV9nZ3R0X2hhc19hcGVydHVyZSgmdG9faTkxNShkZXYpLT5n
Z3R0KSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAlvYmogPSBpOTE1X2dlbV9vYmplY3RfbG9va3Vw
KGZpbGUsIGhhbmRsZSk7CiAJaWYgKCFvYmopCiAJCXJldHVybiAtRU5PRU5UOwotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
