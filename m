Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A41D9BC96
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Aug 2019 10:38:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F8626E094;
	Sat, 24 Aug 2019 08:37:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A446E094
 for <intel-gfx@lists.freedesktop.org>; Sat, 24 Aug 2019 08:37:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18248713-1500050 
 for multiple; Sat, 24 Aug 2019 09:37:25 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 24 Aug 2019 09:37:24 +0100
Message-Id: <20190824083724.24557-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Add the usual batch vma
 managements to st_workarounds
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

VG8gcHJvcGVybHkgaGFuZGxlIGFzeW5jaHJvbm91cyBtaWdyYXRpb24gb2YgYmF0Y2ggb2JqZWN0
cywgd2UgbmVlZCB0bwpjb3VwbGUgdGhlIGZlbmNlcyBvbiB0aGUgaW5jb21pbmcgYmF0Y2ggaW50
byB0aGUgcmVxdWVzdCBhbmQgc2hvdWxkIG5vdAphc3N1bWUgdGhhdCB0aGV5IGFsd2F5cyBzdGFy
dCBpZGxlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyB8IDE2ICsrKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKaW5kZXggZDA2ZDY4YWMyYTNi
Li45OTlhOThmMDA0OTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rf
d29ya2Fyb3VuZHMuYwpAQCAtNTY1LDYgKzU2NSwxNCBAQCBzdGF0aWMgaW50IGNoZWNrX2RpcnR5
X3doaXRlbGlzdChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJCWdvdG8gZXJyX3Jl
cXVlc3Q7CiAJCX0KIAorCQlpOTE1X3ZtYV9sb2NrKGJhdGNoKTsKKwkJZXJyID0gaTkxNV9yZXF1
ZXN0X2F3YWl0X29iamVjdChycSwgYmF0Y2gtPm9iaiwgZmFsc2UpOworCQlpZiAoZXJyID09IDAp
CisJCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShiYXRjaCwgcnEsIDApOworCQlpOTE1
X3ZtYV91bmxvY2soYmF0Y2gpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfcmVxdWVzdDsKKwog
CQllcnIgPSBlbmdpbmUtPmVtaXRfYmJfc3RhcnQocnEsCiAJCQkJCSAgICBiYXRjaC0+bm9kZS5z
dGFydCwgUEFHRV9TSVpFLAogCQkJCQkgICAgMCk7CkBAIC04NTAsNiArODU4LDE0IEBAIHN0YXRp
YyBpbnQgc2NydWJfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgsCiAJCQlnb3RvIGVycl9yZXF1ZXN0OwogCX0KIAorCWk5MTVfdm1hX2xvY2soYmF0Y2gp
OworCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3QocnEsIGJhdGNoLT5vYmosIGZhbHNl
KTsKKwlpZiAoZXJyID09IDApCisJCWVyciA9IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKGJhdGNo
LCBycSwgMCk7CisJaTkxNV92bWFfdW5sb2NrKGJhdGNoKTsKKwlpZiAoZXJyKQorCQlnb3RvIGVy
cl9yZXF1ZXN0OworCiAJLyogUGVyZm9ybSB0aGUgd3JpdGVzIGZyb20gYW4gdW5wcml2aWxlZ2Vk
ICJ1c2VyIiBiYXRjaCAqLwogCWVyciA9IGVuZ2luZS0+ZW1pdF9iYl9zdGFydChycSwgYmF0Y2gt
Pm5vZGUuc3RhcnQsIDAsIDApOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
