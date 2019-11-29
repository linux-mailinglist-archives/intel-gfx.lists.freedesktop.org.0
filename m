Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 906D510D437
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD046E89D;
	Fri, 29 Nov 2019 10:35:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7440B6E89D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 10:35:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19390255-1500050 
 for multiple; Fri, 29 Nov 2019 10:34:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 10:34:55 +0000
Message-Id: <20191129103455.744389-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Wait only on the expected
 barrier
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

V2FpdCBvbiBvbmx5IHRoZSBsYXN0IHJlcXVlc3Qgb24gdGhlIGtlcm5lbF9jb250ZXh0IGFmdGVy
IGVtaXR0aW5nIGEKYmFycmllciBzbyB0aGF0IHdlIGRvIG5vdCB3YWl0IGZvciBldmVyeXRoaW5n
IGluIGdlbmVyYWwgYW5kIGJ5IGRvaW5nIHNvCmNhdXNlIGFuIGFjY2lkZW50YWwgZW1pc3Npb24g
b2YgdGhlIGJhcnJpZXIhCgpCdWd6aWxsYTsgaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTEyNDA1ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIC4uLi9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVf
aGVhcnRiZWF0LmMgICB8IDI0ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAy
MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jCmluZGV4IDBiMTE0OGNmM2Y2MS4u
NTIyN2U3OTIwNGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9lbmdpbmVfaGVhcnRiZWF0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfZW5naW5lX2hlYXJ0YmVhdC5jCkBAIC0xMSw2ICsxMSwyOCBAQAogI2luY2x1ZGUgImludGVs
X2d0X3JlcXVlc3RzLmgiCiAjaW5jbHVkZSAiaTkxNV9zZWxmdGVzdC5oIgogCitzdGF0aWMgaW50
IHRpbWVsaW5lX3N5bmMoc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKK3sKKwlzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKKwlsb25nIHRpbWVvdXQ7CisKKwlmZW5jZSA9IGk5MTVfYWN0aXZlX2Zl
bmNlX2dldCgmdGwtPmxhc3RfcmVxdWVzdCk7CisJaWYgKCFmZW5jZSkKKwkJcmV0dXJuIDA7CisK
Kwl0aW1lb3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwgdHJ1ZSwgSFogLyAyKTsK
KwlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwlpZiAodGltZW91dCA8IDApCisJCXJldHVybiB0aW1l
b3V0OworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgZW5naW5lX3N5bmNfYmFycmllcihz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJcmV0dXJuIHRpbWVsaW5lX3N5bmMo
ZW5naW5lLT5rZXJuZWxfY29udGV4dC0+dGltZWxpbmUpOworfQorCiBzdHJ1Y3QgcHVsc2Ugewog
CXN0cnVjdCBpOTE1X2FjdGl2ZSBhY3RpdmU7CiAJc3RydWN0IGtyZWYga3JlZjsKQEAgLTkwLDcg
KzExMiw3IEBAIHN0YXRpYyBpbnQgX19saXZlX2lkbGVfcHVsc2Uoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAogCiAJR0VNX0JVR19PTighbGxpc3RfZW1wdHkoJmVuZ2luZS0+YmFycmll
cl90YXNrcykpOwogCi0JaWYgKGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KGVuZ2lu
ZS0+Z3QsIEhaIC8gNSkpIHsKKwlpZiAoZW5naW5lX3N5bmNfYmFycmllcihlbmdpbmUpKSB7CiAJ
CXN0cnVjdCBkcm1fcHJpbnRlciBtID0gZHJtX2Vycl9wcmludGVyKCJwdWxzZSIpOwogCiAJCXBy
X2VycigiJXM6IG5vIGhlYXJ0YmVhdCBwdWxzZT9cbiIsIGVuZ2luZS0+bmFtZSk7Ci0tIAoyLjI0
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
