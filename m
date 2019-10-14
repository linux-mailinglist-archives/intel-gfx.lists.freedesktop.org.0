Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5235D6B75
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 00:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8DD89E52;
	Mon, 14 Oct 2019 22:05:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69FDE89D2F
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 22:05:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18837427-1500050 
 for multiple; Mon, 14 Oct 2019 23:05:36 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Oct 2019 23:05:26 +0100
Message-Id: <20191014220534.1662-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014220534.1662-1-chris@chris-wilson.co.uk>
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/10] drm/i915/execlists: Clear semaphore
 immediately upon ELSP promotion
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

VGhlcmUgaXMgbm8gc2lnbmlmaWNhbmNlIHRvIG91ciBkZWxheSBiZWZvcmUgY2xlYXJpbmcgdGhl
IHNlbWFwaG9yZSB0aGUKZW5naW5lIGlzIHdhaXRpbmcgb24sIHNvIHJlbGVhc2UgaXQgYXMgc29v
biBhcyB3ZSBhY2tub3dsZWRnZSB0aGUgQ1MKdXBkYXRlIGZvbGxvd2luZyBvdXIgcHJlZW1wdGlv
biByZXF1ZXN0LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA2ICsr
Ky0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDQ4NGVmZTNiNDI3My4uMjE2MzVkYjhk
NzZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTkxMCw2ICsxOTEwLDkg
QEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5l
KQogCQllbHNlCiAJCQlwcm9tb3RlID0gZ2VuOF9jc2JfcGFyc2UoZXhlY2xpc3RzLCBidWYgKyAy
ICogaGVhZCk7CiAJCWlmIChwcm9tb3RlKSB7CisJCQlpZiAoIWluamVjdF9wcmVlbXB0X2hhbmco
ZXhlY2xpc3RzKSkKKwkJCQlyaW5nX3NldF9wYXVzZWQoZW5naW5lLCAwKTsKKwogCQkJLyogY2Fu
Y2VsIG9sZCBpbmZsaWdodCwgcHJlcGFyZSBmb3Igc3dpdGNoICovCiAJCQl0cmFjZV9wb3J0cyhl
eGVjbGlzdHMsICJwcmVlbXB0ZWQiLCBleGVjbGlzdHMtPmFjdGl2ZSk7CiAJCQl3aGlsZSAoKmV4
ZWNsaXN0cy0+YWN0aXZlKQpAQCAtMTkyNiw5ICsxOTI5LDYgQEAgc3RhdGljIHZvaWQgcHJvY2Vz
c19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCQkJaWYgKGVuYWJsZV90aW1l
c2xpY2UoZXhlY2xpc3RzKSkKIAkJCQltb2RfdGltZXIoJmV4ZWNsaXN0cy0+dGltZXIsIGppZmZp
ZXMgKyAxKTsKIAotCQkJaWYgKCFpbmplY3RfcHJlZW1wdF9oYW5nKGV4ZWNsaXN0cykpCi0JCQkJ
cmluZ19zZXRfcGF1c2VkKGVuZ2luZSwgMCk7Ci0KIAkJCVdSSVRFX09OQ0UoZXhlY2xpc3RzLT5w
ZW5kaW5nWzBdLCBOVUxMKTsKIAkJfSBlbHNlIHsKIAkJCUdFTV9CVUdfT04oISpleGVjbGlzdHMt
PmFjdGl2ZSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
