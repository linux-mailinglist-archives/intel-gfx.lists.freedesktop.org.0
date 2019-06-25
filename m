Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 740B955249
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 16:42:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BBE6E130;
	Tue, 25 Jun 2019 14:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8BB66E130
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 14:42:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17019466-1500050 
 for multiple; Tue, 25 Jun 2019 15:42:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 15:42:32 +0100
Message-Id: <20190625144232.11753-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625130128.11009-18-chris@chris-wilson.co.uk>
References: <20190625130128.11009-18-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Include the breadcrumb when asserting
 request completion
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

QXMgd2UgZXhwbG9kZSwgaW5jbHVkZSB0aGUgYnJlYWRjcnVtYiByZXN1bHRzIGluIHRoZSB0cmFj
ZSBmb3Igd2h5IHdlCmNob29zZSB0byBleHBsb2RlIG9uIHRoZSByZXF1ZXN0IGNvbXBsZXRpb24g
YXNzZXJ0aW9uIGZhaWx1cmUuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KLS0tClVuZG8gdGhlIGxvZ2ljYWwgaW52ZXJzaW9uIGJ5IGFkZGlu
ZyB0aGUgd3JvbmcgYXNzZXJ0IHRvIHJlc2V0LgotQ2hyaXMKLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
cXVlc3QuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCB8IDEy
ICsrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggY2UxYWJhMzYwNGIz
Li4xOGI5NGZjOTUyZDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xMzgx
LDcgKzEzODEsNyBAQCBzdGF0aWMgdm9pZCBwcm9jZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAJCQkgKiBjb2hlcmVudCAodmlzaWJsZSBmcm9tIHRoZSBDUFUpIGJlZm9y
ZSB0aGUKIAkJCSAqIHVzZXIgaW50ZXJydXB0IGFuZCBDU0IgaXMgcHJvY2Vzc2VkLgogCQkJICov
Ci0JCQlHRU1fQlVHX09OKCFpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSk7CisJCQlhc3NlcnRf
cmVxdWVzdF9jb21wbGV0ZShycSk7CiAJCQlleGVjbGlzdHNfc2NoZWR1bGVfb3V0KHJxKTsKIAog
CQkJR0VNX0JVR19PTihleGVjbGlzdHMtPmFjdGl2ZSAtIGV4ZWNsaXN0cy0+aW5mbGlnaHQgPgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCA1ZmY4N2M0YTBjZDUuLjViMWM2Mzhk
Mzc1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTMyOSw3ICszMjksNyBA
QCB2b2lkIGk5MTVfcmVxdWVzdF9yZXRpcmVfdXB0byhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkK
IAkJICBod3NwX3NlcW5vKHJxKSk7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZycS0+aTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7Ci0JR0VNX0JVR19PTighaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChy
cSkpOworCWFzc2VydF9yZXF1ZXN0X2NvbXBsZXRlKHJxKTsKIAogCWlmIChsaXN0X2VtcHR5KCZy
cS0+cmluZ19saW5rKSkKIAkJcmV0dXJuOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaApp
bmRleCBiNThjZWVmOTJlMjAuLmE0MTc5MTYzNzA3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmgKQEAgLTQzMiw0ICs0MzIsMTYgQEAgc3RhdGljIGlubGluZSB2b2lkIGk5MTVfcmVx
dWVzdF9tYXJrX2NvbXBsZXRlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCiBib29sIGk5MTVf
cmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKIAorc3RhdGlj
IGlubGluZSB2b2lkIGFzc2VydF9yZXF1ZXN0X2NvbXBsZXRlKGNvbnN0IHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQoreworCXUzMiBod3NwID0gaHdzcF9zZXFubyhycSk7CisKKwlpZiAoaTkxNV9z
ZXFub19wYXNzZWQoaHdzcCwgcnEtPmZlbmNlLnNlcW5vKSkKKwkJcmV0dXJuOworCisJR0VNX1RS
QUNFKCJmZW5jZSAlbGx4OiVsbHUgaW5jb21wbGV0ZSwgY3VycmVudCAldVxuIiwKKwkJICBycS0+
ZmVuY2UuY29udGV4dCwgcnEtPmZlbmNlLnNlcW5vLCBod3NwKTsKKwlHRU1fQlVHX09OKCFpOTE1
X3NlcW5vX3Bhc3NlZChod3NwLCBycS0+ZmVuY2Uuc2Vxbm8pKTsKK30KKwogI2VuZGlmIC8qIEk5
MTVfUkVRVUVTVF9IICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
