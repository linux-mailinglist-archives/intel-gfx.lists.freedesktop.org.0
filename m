Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F204A4E19
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:03:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEBAC89AC2;
	Mon,  2 Sep 2019 04:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F2989AA6
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 04:03:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339006-1500050 
 for multiple; Mon, 02 Sep 2019 05:03:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:02:43 +0100
Message-Id: <20190902040303.14195-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/21] drm/i915: Restrict the aliasing-ppgtt to
 the size of the ggtt
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

VGhlIGFsaWFzaW5nLXBwZ3R0IGlzIG5vdCBhbGxvd2VkIHRvIGJlIHNtYWxsZXIgdGhhbiB0aGUg
Z2d0dCwgbm9yCnNob3VsZCB3ZSBhZHZlcnRpc2UgaXQgYXMgYmVpbmcgYW55IGJpZ2dlciwgb3Ig
ZWxzZSB3ZSBtYXkgZ2V0IHN1ZWQgZm9yCmZhbHNlIGFkdmVydGlzZW1lbnQuCgpUZXN0Y2FzZTog
aWd0L2dlbV9leGVjX2JpZwpGaXhlczogMGI3MThiYTFlODg0ICgiZHJtL2k5MTUvZ3R0OiBEb3du
Z3JhZGUgQ2hlcnJ5dmlldyBiYWNrIHRvIGFsaWFzaW5nLXBwZ3R0IikKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYXR0aGV3IEF1bGQg
PG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgfCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBlZTUxZmQxYTYyMDcuLjkwNmRjNmZmZjM4MyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKQEAgLTI1OTcsNiArMjU5Nyw4IEBAIHN0
YXRpYyBpbnQgaW5pdF9hbGlhc2luZ19wcGd0dChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCUdF
TV9CVUdfT04oZ2d0dC0+dm0udm1hX29wcy51bmJpbmRfdm1hICE9IGdndHRfdW5iaW5kX3ZtYSk7
CiAJZ2d0dC0+dm0udm1hX29wcy51bmJpbmRfdm1hID0gYWxpYXNpbmdfZ3R0X3VuYmluZF92bWE7
CiAKKwlwcGd0dC0+dm0udG90YWwgPSBnZ3R0LT52bS50b3RhbDsKKwogCXJldHVybiAwOwogCiBl
cnJfcHBndHQ6Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
