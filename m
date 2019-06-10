Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C22763B347
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C330F890C2;
	Mon, 10 Jun 2019 10:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151E9890C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 10:36:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16850880-1500050 
 for multiple; Mon, 10 Jun 2019 11:36:11 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 11:36:10 +0100
Message-Id: <20190610103610.19883-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Allow interrupts when taking the
 timeline->mutex
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

QmVmb3JlIHdlIGNvbW1pdCBvdXJzZWx2ZXMgdG8gd3JpdGluZyBjb21tYW5kcyBpbnRvIHRoZQpy
aW5nYnVmZmVyIGFuZCBzdWJtaXR0aW5nIHRoZSByZXF1ZXN0LCBhbGxvdyBzaWduYWxzIHRvIGlu
dGVycnVwdAphY3F1aXNpdGlvbiBvZiB0aGUgdGltZWxpbmUgbXV0ZXguIFdlIGFsbG93IG91cnNl
bHZlcyB0byBiZSBpbnRlcnJ1cHRlZAphdCBhbnkgdGltZSBsYXRlciBpZiB3ZSBuZWVkIHRvIGJs
b2NrIGZvciBzcGFjZSBpbiB0aGUgcmluZywgYW55d2F5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfY29udGV4dC5oIHwgNSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZXF1ZXN0LmMgICAgIHwgNSArKysrLQogMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfY29udGV4dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5o
CmluZGV4IDYzMzkyYzg4Y2Q5OC4uNmQ1NDUzYmEyYzFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5oCkBAIC0xMTMsMTAgKzExMywxMSBAQCBzdGF0aWMgaW5saW5lIHZv
aWQgaW50ZWxfY29udGV4dF9wdXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWtyZWZfcHV0
KCZjZS0+cmVmLCBjZS0+b3BzLT5kZXN0cm95KTsKIH0KIAotc3RhdGljIGlubGluZSB2b2lkIGlu
dGVsX2NvbnRleHRfdGltZWxpbmVfbG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCitzdGF0
aWMgaW5saW5lIGludCBfX211c3RfY2hlY2sKK2ludGVsX2NvbnRleHRfdGltZWxpbmVfbG9jayhz
dHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiAJX19hY3F1aXJlcygmY2UtPnJpbmctPnRpbWVsaW5l
LT5tdXRleCkKIHsKLQltdXRleF9sb2NrKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4KTsKKwly
ZXR1cm4gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZjZS0+cmluZy0+dGltZWxpbmUtPm11dGV4
KTsKIH0KIAogc3RhdGljIGlubGluZSB2b2lkIGludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2Nr
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMK
aW5kZXggZGExZTY5ODRhOGNjLi5lOWI1OWVlYTRmMTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jCkBAIC03ODQsOCArNzg0LDExIEBAIHN0cnVjdCBpOTE1X3JlcXVlc3QgKgogaTkx
NV9yZXF1ZXN0X2NyZWF0ZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7CiAJc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnE7CisJaW50IGVycjsKIAotCWludGVsX2NvbnRleHRfdGltZWxpbmVfbG9j
ayhjZSk7CisJZXJyID0gaW50ZWxfY29udGV4dF90aW1lbGluZV9sb2NrKGNlKTsKKwlpZiAoZXJy
KQorCQlyZXR1cm4gRVJSX1BUUihlcnIpOwogCiAJLyogTW92ZSBvdXIgb2xkZXN0IHJlcXVlc3Qg
dG8gdGhlIHNsYWItY2FjaGUgKGlmIG5vdCBpbiB1c2UhKSAqLwogCXJxID0gbGlzdF9maXJzdF9l
bnRyeSgmY2UtPnJpbmctPnJlcXVlc3RfbGlzdCwgdHlwZW9mKCpycSksIHJpbmdfbGluayk7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
