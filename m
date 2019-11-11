Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A64AAF7354
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2D56E8CA;
	Mon, 11 Nov 2019 11:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CCCC89FA5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:43:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19158480-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:43:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:43:22 +0000
Message-Id: <20191111114323.5833-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191111114323.5833-1-chris@chris-wilson.co.uk>
References: <20191111114323.5833-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/5] drm/i915: Show guilty context name on GPU reset
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

V2UgbWVudGlvbiB0aGF0IHdlIGFyZSByZXNldHRpbmcgdGhlIEdQVSwgYW5kIGR1bXAgdGhlIGRl
dmljZSBzdGF0ZSBmb3IKcG9zdCBtb3J0ZW0gZGVidWdnaW5nLiBIb3dldmVyLCB3aGlsZSB0aGF0
IGR1bXAgY29udGFpbnMgdGhlIGFjdGl2ZQpwcm9jZXNzZXMgYW5kIHRoZSBvbmUgZmxhZ2dlZCBh
cyBjYXVzaW5nIHRoZSBlcnJvciwgd2UgZG8gbm90IGFsd2F5cwppbmNsdWRlIHRoYXQgaW5mb3Jt
YXRpb24gaW4gZG1lc2cuIEluY2x1ZGUgdGhlIG5hbWUgb2YgdGhlIGd1aWx0eQpwcm9jZXNzIGlu
IGRtZXNnIGZvciByZWZlcmVuY2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgfCA0ICsrKysK
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfcmVzZXQuYwppbmRleCBmMDNlMDAwMDUxYzEuLjg2ZDUyMzgzYmY5ZCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCkBAIC04Nyw2ICs4NywxMCBAQCBzdGF0aWMgYm9vbCBj
b250ZXh0X21hcmtfZ3VpbHR5KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCiAJaWYgKCFp
OTE1X2dlbV9jb250ZXh0X2lzX2Jhbm5hYmxlKGN0eCkpCiAJCXJldHVybiBmYWxzZTsKIAorCWRl
dl9ub3RpY2UoY3R4LT5pOTE1LT5kcm0uZGV2LAorCQkgICAiJXMgY29udGV4dCByZXNldCBkdWUg
dG8gR1BVIGhhbmdcbiIsCisJCSAgIGN0eC0+bmFtZSk7CisKIAkvKiBSZWNvcmQgdGhlIHRpbWVz
dGFtcCBmb3IgdGhlIGxhc3QgTiBoYW5ncyAqLwogCXByZXZfaGFuZyA9IGN0eC0+aGFuZ190aW1l
c3RhbXBbMF07CiAJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY3R4LT5oYW5nX3RpbWVzdGFt
cCkgLSAxOyBpKyspCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
