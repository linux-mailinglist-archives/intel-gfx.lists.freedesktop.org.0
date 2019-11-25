Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15987108E2D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 13:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E7B589CA8;
	Mon, 25 Nov 2019 12:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06D789CA8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 12:49:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19329781-1500050 
 for multiple; Mon, 25 Nov 2019 12:49:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2019 12:48:56 +0000
Message-Id: <20191125124856.1761176-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Move mock_vma to the heap
 to reduce stack_frame
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

QW4gaTkxNV92bWEgc3RydWN0IG9uIHRoZSBzdGFjayBtYXkgcHVzaCB0aGUgZnJhbWUgb3ZlciB0
aGUgbGltaXQsIGlmCnNldCBjb25zZXJ2YXRpdmVseSwgc28gbW92ZSBpdCB0byB0aGUgaGVhcC4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYyB8IDE5ICsrKysrKysrKysrKy0tLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYwppbmRleCBkOTRk
YjQ4N2M0ZGQuLmY3YWEwMDM2ZDkwMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbV9ndHQuYwpAQCAtMjEyLDEwICsyMTIsMTIgQEAgc3RhdGljIGludCBsb3ds
ZXZlbF9ob2xlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJIHVuc2lnbmVkIGxv
bmcgZW5kX3RpbWUpCiB7CiAJSTkxNV9STkRfU1RBVEUoc2VlZF9wcm5nKTsKKwlzdHJ1Y3QgaTkx
NV92bWEgKm1vY2tfdm1hOwogCXVuc2lnbmVkIGludCBzaXplOwotCXN0cnVjdCBpOTE1X3ZtYSBt
b2NrX3ZtYTsKIAotCW1lbXNldCgmbW9ja192bWEsIDAsIHNpemVvZihzdHJ1Y3QgaTkxNV92bWEp
KTsKKwltb2NrX3ZtYSA9IGt6YWxsb2Moc2l6ZW9mKCptb2NrX3ZtYSksIEdGUF9LRVJORUwpOwor
CWlmICghbW9ja192bWEpCisJCXJldHVybiAtRU5PTUVNOwogCiAJLyogS2VlcCBjcmVhdGluZyBs
YXJnZXIgb2JqZWN0cyB1bnRpbCBvbmUgY2Fubm90IGZpdCBpbnRvIHRoZSBob2xlICovCiAJZm9y
IChzaXplID0gMTI7IChob2xlX2VuZCAtIGhvbGVfc3RhcnQpID4+IHNpemU7IHNpemUrKykgewpA
QCAtMjM5LDggKzI0MSwxMCBAQCBzdGF0aWMgaW50IGxvd2xldmVsX2hvbGUoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCiAJCQlpZiAob3JkZXIpCiAJCQkJYnJlYWs7CiAJCX0gd2hpbGUg
KGNvdW50ID4+PSAxKTsKLQkJaWYgKCFjb3VudCkKKwkJaWYgKCFjb3VudCkgeworCQkJa2ZyZWUo
bW9ja192bWEpOwogCQkJcmV0dXJuIC1FTk9NRU07CisJCX0KIAkJR0VNX0JVR19PTighb3JkZXIp
OwogCiAJCUdFTV9CVUdfT04oY291bnQgKiBCSVRfVUxMKHNpemUpID4gdm0tPnRvdGFsKTsKQEAg
LTI4MywxMiArMjg3LDEyIEBAIHN0YXRpYyBpbnQgbG93bGV2ZWxfaG9sZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCSAgICB2bS0+YWxsb2NhdGVfdmFfcmFuZ2Uodm0sIGFkZHIs
IEJJVF9VTEwoc2l6ZSkpKQogCQkJCWJyZWFrOwogCi0JCQltb2NrX3ZtYS5wYWdlcyA9IG9iai0+
bW0ucGFnZXM7Ci0JCQltb2NrX3ZtYS5ub2RlLnNpemUgPSBCSVRfVUxMKHNpemUpOwotCQkJbW9j
a192bWEubm9kZS5zdGFydCA9IGFkZHI7CisJCQltb2NrX3ZtYS0+cGFnZXMgPSBvYmotPm1tLnBh
Z2VzOworCQkJbW9ja192bWEtPm5vZGUuc2l6ZSA9IEJJVF9VTEwoc2l6ZSk7CisJCQltb2NrX3Zt
YS0+bm9kZS5zdGFydCA9IGFkZHI7CiAKIAkJCXdpdGhfaW50ZWxfcnVudGltZV9wbSgmaTkxNS0+
cnVudGltZV9wbSwgd2FrZXJlZikKLQkJCQl2bS0+aW5zZXJ0X2VudHJpZXModm0sICZtb2NrX3Zt
YSwKKwkJCQl2bS0+aW5zZXJ0X2VudHJpZXModm0sIG1vY2tfdm1hLAogCQkJCQkJICAgSTkxNV9D
QUNIRV9OT05FLCAwKTsKIAkJfQogCQljb3VudCA9IG47CkBAIC0zMTEsNiArMzE1LDcgQEAgc3Rh
dGljIGludCBsb3dsZXZlbF9ob2xlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQlj
bGVhbnVwX2ZyZWVkX29iamVjdHMoaTkxNSk7CiAJfQogCisJa2ZyZWUobW9ja192bWEpOwogCXJl
dHVybiAwOwogfQogCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
