Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AFF921D5
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 13:08:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB5816E0FD;
	Mon, 19 Aug 2019 11:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D236E0FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 11:08:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18187721-1500050 
 for multiple; Mon, 19 Aug 2019 12:07:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Aug 2019 12:07:53 +0100
Message-Id: <20190819110753.22201-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Serialize against vma moves
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

TWFrZSBzdXJlIHdlIG9yZGVyIHRoZSBpZ3RfZ3B1X2ZpbGxfZncoKSByZXF1ZXN0cyB0byBiZSBz
dWJtaXR0ZWQgb25seQphZnRlciB0aGUgdm1hIHRoZWlyIHVzZWQgYXJlIGluIHBsYWNlLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMgfCA4ICsrKysrKy0tCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMKaW5kZXggNDJlMWU5
YzU4ZjYzLi41N2VjZTUzYzEwNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaWd0X2dlbV91dGlscy5jCkBAIC0xMzksMTMgKzEzOSwxNyBAQCBpbnQgaWd0
X2dwdV9maWxsX2R3KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAogCQlnb3RvIGVycl9yZXF1ZXN0Owog
CiAJaTkxNV92bWFfbG9jayhiYXRjaCk7Ci0JZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUo
YmF0Y2gsIHJxLCAwKTsKKwllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCBiYXRj
aC0+b2JqLCBmYWxzZSk7CisJaWYgKGVyciA9PSAwKQorCQllcnIgPSBpOTE1X3ZtYV9tb3ZlX3Rv
X2FjdGl2ZShiYXRjaCwgcnEsIDApOwogCWk5MTVfdm1hX3VubG9jayhiYXRjaCk7CiAJaWYgKGVy
cikKIAkJZ290byBza2lwX3JlcXVlc3Q7CiAKIAlpOTE1X3ZtYV9sb2NrKHZtYSk7Ci0JZXJyID0g
aTkxNV92bWFfbW92ZV90b19hY3RpdmUodm1hLCBycSwgRVhFQ19PQkpFQ1RfV1JJVEUpOworCWVy
ciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9vYmplY3QocnEsIHZtYS0+b2JqLCB0cnVlKTsKKwlpZiAo
ZXJyID09IDApCisJCWVyciA9IGk5MTVfdm1hX21vdmVfdG9fYWN0aXZlKHZtYSwgcnEsIEVYRUNf
T0JKRUNUX1dSSVRFKTsKIAlpOTE1X3ZtYV91bmxvY2sodm1hKTsKIAlpZiAoZXJyKQogCQlnb3Rv
IHNraXBfcmVxdWVzdDsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
