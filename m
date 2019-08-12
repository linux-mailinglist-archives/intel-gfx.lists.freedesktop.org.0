Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE0E8A042
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:58:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7BF6E528;
	Mon, 12 Aug 2019 13:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F1586E029
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 13:58:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17969917-1500050 
 for multiple; Mon, 12 Aug 2019 14:39:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 14:39:00 +0100
Message-Id: <20190812133915.18824-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190812133915.18824-1-chris@chris-wilson.co.uk>
References: <20190812133915.18824-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/18] drm/i915/gt: Save/restore interrupts
 around breadcrumb disable
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

U3RvcCBhc3N1bWluZyB3ZSBvbmx5IGdldCBjYWxsZWQgd2l0aCBpcnFzLW9uIGZvciBkaXNhcm1p
bmcgdGhlCmJyZWFkY3J1bWJzLCBhbmQgZG8gYSBmdWxsIHNhdmUvcmVzdG9yZSBzcGluX2xvY2tf
aXJxLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyB8IDUg
KysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKaW5kZXggZTFiYmM5
YjQyOGNkLi45MGRiNDFkMTczZGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2JyZWFkY3J1bWJzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
YnJlYWRjcnVtYnMuYwpAQCAtNjcsMTQgKzY3LDE1IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfYnJl
YWRjcnVtYnNfZGlzYXJtX2lycShzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIpCiB2b2lkIGlu
dGVsX2VuZ2luZV9kaXNhcm1fYnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogewogCXN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYiA9ICZlbmdpbmUtPmJyZWFkY3J1
bWJzOworCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKIAlpZiAoIWItPmlycV9hcm1lZCkKIAkJcmV0
dXJuOwogCi0Jc3Bpbl9sb2NrX2lycSgmYi0+aXJxX2xvY2spOworCXNwaW5fbG9ja19pcnFzYXZl
KCZiLT5pcnFfbG9jaywgZmxhZ3MpOwogCWlmIChiLT5pcnFfYXJtZWQpCiAJCV9faW50ZWxfYnJl
YWRjcnVtYnNfZGlzYXJtX2lycShiKTsKLQlzcGluX3VubG9ja19pcnEoJmItPmlycV9sb2NrKTsK
KwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZiLT5pcnFfbG9jaywgZmxhZ3MpOwogfQogCiBzdGF0
aWMgaW5saW5lIGJvb2wgX19yZXF1ZXN0X2NvbXBsZXRlZChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSkKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
