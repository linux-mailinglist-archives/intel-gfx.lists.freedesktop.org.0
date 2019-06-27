Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0713358188
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A7306E0D2;
	Thu, 27 Jun 2019 11:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D106E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:28:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17042906-1500050 
 for multiple; Thu, 27 Jun 2019 12:28:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 12:28:32 +0100
Message-Id: <20190627112834.15721-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627112834.15721-1-chris@chris-wilson.co.uk>
References: <20190627112834.15721-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/i915: Include the breadcrumb when
 asserting request completion
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgd2UgZXhwbG9kZSwgaW5jbHVkZSB0aGUgYnJlYWRjcnVtYiByZXN1bHRzIGluIHRoZSB0cmFj
ZSBmb3Igd2h5IHdlCmNob29zZSB0byBleHBsb2RlIG9uIHRoZSByZXF1ZXN0IGNvbXBsZXRpb24g
YXNzZXJ0aW9uIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCB8IDEyICsrKysrKysrKysrKwogMyBm
aWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggMmJjMjVlM2Y4M2U2Li5mZjhlYjNmYTNmYzYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMzgxLDcgKzEzODEsNyBAQCBzdGF0
aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQkg
KiBjb2hlcmVudCAodmlzaWJsZSBmcm9tIHRoZSBDUFUpIGJlZm9yZSB0aGUKIAkJCSAqIHVzZXIg
aW50ZXJydXB0IGFuZCBDU0IgaXMgcHJvY2Vzc2VkLgogCQkJICovCi0JCQlHRU1fQlVHX09OKCFp
OTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSk7CisJCQlhc3NlcnRfcmVxdWVzdF9jb21wbGV0ZShy
cSk7CiAJCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0KHJxKTsKIAogCQkJR0VNX0JVR19PTihleGVj
bGlzdHMtPmFjdGl2ZSAtIGV4ZWNsaXN0cy0+aW5mbGlnaHQgPgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlcXVlc3QuYwppbmRleCA1ZmY4N2M0YTBjZDUuLjViMWM2MzhkMzc1NCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTMyOSw3ICszMjksNyBAQCB2b2lkIGk5MTVfcmVxdWVz
dF9yZXRpcmVfdXB0byhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkJICBod3NwX3NlcW5vKHJx
KSk7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZycS0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
Ci0JR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpOworCWFzc2VydF9yZXF1
ZXN0X2NvbXBsZXRlKHJxKTsKIAogCWlmIChsaXN0X2VtcHR5KCZycS0+cmluZ19saW5rKSkKIAkJ
cmV0dXJuOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0Lmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAppbmRleCBiNThjZWVmOTJlMjAu
LmE0MTc5MTYzNzA3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1
ZXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKQEAgLTQzMiw0
ICs0MzIsMTYgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfcmVxdWVzdF9tYXJrX2NvbXBsZXRl
KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCiBib29sIGk5MTVfcmV0aXJlX3JlcXVlc3RzKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIAorc3RhdGljIGlubGluZSB2b2lkIGFzc2Vy
dF9yZXF1ZXN0X2NvbXBsZXRlKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQoreworCXUz
MiBod3NwID0gaHdzcF9zZXFubyhycSk7CisKKwlpZiAoaTkxNV9zZXFub19wYXNzZWQoaHdzcCwg
cnEtPmZlbmNlLnNlcW5vKSkKKwkJcmV0dXJuOworCisJR0VNX1RSQUNFKCJmZW5jZSAlbGx4OiVs
bHUgaW5jb21wbGV0ZSwgY3VycmVudCAldVxuIiwKKwkJICBycS0+ZmVuY2UuY29udGV4dCwgcnEt
PmZlbmNlLnNlcW5vLCBod3NwKTsKKwlHRU1fQlVHX09OKCFpOTE1X3NlcW5vX3Bhc3NlZChod3Nw
LCBycS0+ZmVuY2Uuc2Vxbm8pKTsKK30KKwogI2VuZGlmIC8qIEk5MTVfUkVRVUVTVF9IICovCi0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
