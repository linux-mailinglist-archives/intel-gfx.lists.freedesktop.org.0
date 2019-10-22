Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EF9E0E40
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 00:34:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F6896E916;
	Tue, 22 Oct 2019 22:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFC36E916
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 22:34:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18930824-1500050 
 for multiple; Tue, 22 Oct 2019 23:33:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 23:33:16 +0100
Message-Id: <20191022223316.12662-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Release ctx->engine_mutex
 after iteration
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

QSBsb2NrIG9uY2UgdGFrZW4gbXVzdCBiZSByZWxlYXNlZCBhZ2Fpbi4KCkZpeGVzOiBjMzFjOWU4
MmVlOGEgKCJkcm0vaTkxNS9zZWxmdGVzdHM6IFRlYWNoIHN3aXRjaF90b19jb250ZXh0KCkgdG8g
dXNlIHRoZSBjb250ZXh0IikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CkNj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMgfCAxMCArKysrKysrLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKaW5kZXggODRlN2NhNzc4YjdiLi42ZDIyNTY3YWQ2MjAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jCkBAIC0xOSwxOCAr
MTksMjIgQEAgc3RhdGljIGludCBzd2l0Y2hfdG9fY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4KQogewogCXN0cnVjdCBpOTE1X2dlbV9lbmdpbmVzX2l0ZXIgaXQ7CiAJc3RydWN0
IGludGVsX2NvbnRleHQgKmNlOworCWludCBlcnIgPSAwOwogCiAJZm9yX2VhY2hfZ2VtX2VuZ2lu
ZShjZSwgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2luZXMoY3R4KSwgaXQpIHsKIAkJc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnE7CiAKIAkJcnEgPSBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0
KGNlKTsKLQkJaWYgKElTX0VSUihycSkpCi0JCQlyZXR1cm4gUFRSX0VSUihycSk7CisJCWlmIChJ
U19FUlIocnEpKSB7CisJCQllcnIgPSBQVFJfRVJSKHJxKTsKKwkJCWJyZWFrOworCQl9CiAKIAkJ
aTkxNV9yZXF1ZXN0X2FkZChycSk7CiAJfQorCWk5MTVfZ2VtX2NvbnRleHRfdW5sb2NrX2VuZ2lu
ZXMoY3R4KTsKIAotCXJldHVybiAwOworCXJldHVybiBlcnI7CiB9CiAKIHN0YXRpYyB2b2lkIHRy
YXNoX3N0b2xlbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKLS0gCjIuMjQuMC5yYzAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
