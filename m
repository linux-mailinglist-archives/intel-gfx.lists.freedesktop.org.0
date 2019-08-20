Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0967395964
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 10:26:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6431B6E639;
	Tue, 20 Aug 2019 08:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D3EE6E639
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 08:26:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18197680-1500050 
 for multiple; Tue, 20 Aug 2019 09:09:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2019 09:09:07 +0100
Message-Id: <20190820080907.4665-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Serialize insertion into the
 file->mm.request_list
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

Q3VycmVudGx5LCB3ZSByZW1vdmUgdGhlIGZyb20gcGVyLWZpbGUgcmVxdWVzdCBsaXN0IGZvciB0
aHJvdHRsaW5nIGFuZApyZXRpcmVtZW50IHVuZGVyIGEgZGVkaWNhdGVkIHNwaW5sb2NrLCBidXQg
aW5zZXJ0aW9uIGlzIGdvdmVybmVkIGJ5CnN0cnVjdF9tdXRleC4gVGhpcyBuZWVkcyB0byBiZSB0
aGUgc2FtZSBsb2NrIHNvIHRoYXQgdGhlCnJldGlyZW1lbnQvaW5zZXJ0aW9uIG9mIG5laWdoYm91
cmluZyByZXF1ZXN0cyAoYXQgdGhlIHRhaWwpIGRvZXNuJ3QKYnJlYWsgdGhlIGxpc3QuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgOSArKysrKysrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAgICAgICAgICAgfCA2ICsrKy0tLQogMiBmaWxlcyBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCmluZGV4IDUzNzUyMDA2ZDMwNy4u
ZjMwMjU4ZWViYmQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMKQEAgLTIwMDMsOCArMjAwMywxMyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1h
ICplYl9wYXJzZShzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwgYm9vbCBpc19tYXN0ZXIpCiBz
dGF0aWMgdm9pZAogYWRkX3RvX2NsaWVudChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0
IGRybV9maWxlICpmaWxlKQogewotCXJxLT5maWxlX3ByaXYgPSBmaWxlLT5kcml2ZXJfcHJpdjsK
LQlsaXN0X2FkZF90YWlsKCZycS0+Y2xpZW50X2xpbmssICZycS0+ZmlsZV9wcml2LT5tbS5yZXF1
ZXN0X2xpc3QpOworCXN0cnVjdCBkcm1faTkxNV9maWxlX3ByaXZhdGUgKmZpbGVfcHJpdiA9IGZp
bGUtPmRyaXZlcl9wcml2OworCisJcnEtPmZpbGVfcHJpdiA9IGZpbGVfcHJpdjsKKworCXNwaW5f
bG9jaygmZmlsZV9wcml2LT5tbS5sb2NrKTsKKwlsaXN0X2FkZF90YWlsKCZycS0+Y2xpZW50X2xp
bmssICZmaWxlX3ByaXYtPm1tLnJlcXVlc3RfbGlzdCk7CisJc3Bpbl91bmxvY2soJmZpbGVfcHJp
di0+bW0ubG9jayk7CiB9CiAKIHN0YXRpYyBpbnQgZWJfc3VibWl0KHN0cnVjdCBpOTE1X2V4ZWNi
dWZmZXIgKmViKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwppbmRleCA4NmM4ZGQ0NDIx
NmIuLmYxYTBhNTdmYzZmYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZXF1ZXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMKQEAgLTE2
NSwxMSArMTY1LDExIEBAIHN0YXRpYyB2b2lkIF9fbm90aWZ5X2V4ZWN1dGVfY2Ioc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpCiB9CiAKIHN0YXRpYyBpbmxpbmUgdm9pZAotaTkxNV9yZXF1ZXN0X3Jl
bW92ZV9mcm9tX2NsaWVudChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0KQorcmVtb3ZlX2Zy
b21fY2xpZW50KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiB7CiAJc3RydWN0IGRybV9p
OTE1X2ZpbGVfcHJpdmF0ZSAqZmlsZV9wcml2OwogCi0JZmlsZV9wcml2ID0gcmVxdWVzdC0+Zmls
ZV9wcml2OworCWZpbGVfcHJpdiA9IFJFQURfT05DRShyZXF1ZXN0LT5maWxlX3ByaXYpOwogCWlm
ICghZmlsZV9wcml2KQogCQlyZXR1cm47CiAKQEAgLTI4Miw3ICsyODIsNyBAQCBzdGF0aWMgYm9v
bCBpOTE1X3JlcXVlc3RfcmV0aXJlKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogCiAJbG9jYWxf
aXJxX2VuYWJsZSgpOwogCi0JaTkxNV9yZXF1ZXN0X3JlbW92ZV9mcm9tX2NsaWVudChycSk7CisJ
cmVtb3ZlX2Zyb21fY2xpZW50KHJxKTsKIAlsaXN0X2RlbCgmcnEtPmxpbmspOwogCiAJaW50ZWxf
Y29udGV4dF9leGl0KHJxLT5od19jb250ZXh0KTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
