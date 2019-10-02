Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C34C871A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 13:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670DF6E940;
	Wed,  2 Oct 2019 11:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A87F6E933
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 11:20:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18692042-1500050 
 for multiple; Wed, 02 Oct 2019 12:20:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Oct 2019 12:19:57 +0100
Message-Id: <20191002112000.12280-27-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112000.12280-1-chris@chris-wilson.co.uk>
References: <20191002112000.12280-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/30] drm/i915: Drop struct_mutex from suspend
 state save/restore
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

c3RydWN0X211dGV4IHByb3ZpZGVzIG5vIHNlcmlhbGlzYXRpb24gb2YgdGhlIHJlZ2lzdGVycyBh
bmQgZGF0YQpzdHJ1Y3R1cmVzIGJlaW5nIHNhdmVkIGFuZCByZXN0b3JlZCBhY3Jvc3Mgc3VzcGVu
ZC9yZXN1bWUuIEl0IGlzCmNvbXBsZXRlbHkgc3VwZXJmbHVvdXMgaGVyZS4KClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYyB8IDggLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3Vz
cGVuZC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKaW5kZXggMmIyMDg2
ZGVmMGYxLi44ODEyY2RkOTAwN2YgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc3VzcGVuZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jCkBA
IC02Niw4ICs2Niw2IEBAIGludCBpOTE1X3NhdmVfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2
OwogCWludCBpOwogCi0JbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwot
CiAJaTkxNV9zYXZlX2Rpc3BsYXkoZGV2X3ByaXYpOwogCiAJaWYgKElTX0dFTihkZXZfcHJpdiwg
NCkpCkBAIC0xMDEsOCArOTksNiBAQCBpbnQgaTkxNV9zYXZlX3N0YXRlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIAkJCWRldl9wcml2LT5yZWdmaWxlLnNhdmVTV0YzW2ldID0g
STkxNV9SRUFEKFNXRjMoaSkpOwogCX0KIAotCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwotCiAJcmV0dXJuIDA7CiB9CiAKQEAgLTExMSw4ICsxMDcsNiBAQCBpbnQg
aTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlz
dHJ1Y3QgcGNpX2RldiAqcGRldiA9IGRldl9wcml2LT5kcm0ucGRldjsKIAlpbnQgaTsKIAotCW11
dGV4X2xvY2soJmRldl9wcml2LT5kcm0uc3RydWN0X211dGV4KTsKLQogCWlmIChJU19HRU4oZGV2
X3ByaXYsIDQpKQogCQlwY2lfd3JpdGVfY29uZmlnX3dvcmQocGRldiwgR0NER01CVVMsCiAJCQkJ
ICAgICAgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZUdDREdNQlVTKTsKQEAgLTE0Niw4ICsxNDAsNiBA
QCBpbnQgaTkxNV9yZXN0b3JlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAkJCUk5MTVfV1JJVEUoU1dGMyhpKSwgZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZVNXRjNbaV0p
OwogCX0KIAotCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRybS5zdHJ1Y3RfbXV0ZXgpOwotCiAJ
aW50ZWxfZ21idXNfcmVzZXQoZGV2X3ByaXYpOwogCiAJcmV0dXJuIDA7Ci0tIAoyLjIzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
