Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C6F82E63
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4696E33F;
	Tue,  6 Aug 2019 09:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73FC6E348
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:07:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17901462-1500050 
 for multiple; Tue, 06 Aug 2019 10:05:37 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 10:05:18 +0100
Message-Id: <20190806090535.14807-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190806090535.14807-1-chris@chris-wilson.co.uk>
References: <20190806090535.14807-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/22] drm/i915: Drop the fudge warning on ring
 restart for ctg/elk
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

U2luY2Ugd2UgaGF2ZSBhbHJlYWR5IHN0b3BwZWQgdGhlIHJpbmcsIGNsZWFyZWQgdGhlIHJpbmcs
IGRpc2FibGVkIHRoZQpyaW5nIChhbmQgdmVyaWZ5aW5nIHRoZSByaW5nIGlzIGNsZWFyKSwgYSBs
YXRlciBkZWJ1ZyBtZXNzYWdlIHRoYXQgdGhlCnJpbmcgaXMgbm8gbG9uZ2VyIGNsZWFyIHNlcnZl
cyBubyBmdW5jdGlvbi4gSXQgYXBwZWFycyBpdCByZXN0YXJ0cwphbnl3YXksIGFuZCB3ZSB2ZXJp
ZnkgdGhhdCB0aGUgcmluZyBzdGFydGVkIGNvcnJlY3RseSBhZnRlcndhcmRzLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgMTQgKysrKysrLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCmluZGV4IGFhMmYwNmI4MDk2MS4u
NzhiNDIzNWY5YzBmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nYnVmZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZl
ci5jCkBAIC02NDQsNiArNjQ0LDcgQEAgc3RhdGljIGludCB4Y3NfcmVzdW1lKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCWludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KGVuZ2lu
ZS0+dW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKIAorCS8qIFdhQ2xlYXJSaW5nQnVmSGVhZFJlZ0F0
SW5pdDpjdGcsZWxrICovCiAJaWYgKCFzdG9wX3JpbmcoZW5naW5lKSkgewogCQkvKiBHNDUgcmlu
ZyBpbml0aWFsaXphdGlvbiBvZnRlbiBmYWlscyB0byByZXNldCBoZWFkIHRvIHplcm8gKi8KIAkJ
RFJNX0RFQlVHX0RSSVZFUigiJXMgaGVhZCBub3QgcmVzZXQgdG8gemVybyAiCkBAIC02NzUsMTkg
KzY3NiwxNiBAQCBzdGF0aWMgaW50IHhjc19yZXN1bWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogCWludGVsX2VuZ2luZV9yZXNldF9icmVhZGNydW1icyhlbmdpbmUpOwogCiAJLyog
RW5mb3JjZSBvcmRlcmluZyBieSByZWFkaW5nIEhFQUQgcmVnaXN0ZXIgYmFjayAqLwotCUVOR0lO
RV9SRUFEKGVuZ2luZSwgUklOR19IRUFEKTsKKwlFTkdJTkVfUE9TVElOR19SRUFEKGVuZ2luZSwg
UklOR19IRUFEKTsKIAotCS8qIEluaXRpYWxpemUgdGhlIHJpbmcuIFRoaXMgbXVzdCBoYXBwZW4g
X2FmdGVyXyB3ZSd2ZSBjbGVhcmVkIHRoZSByaW5nCisJLyoKKwkgKiBJbml0aWFsaXplIHRoZSBy
aW5nLiBUaGlzIG11c3QgaGFwcGVuIF9hZnRlcl8gd2UndmUgY2xlYXJlZCB0aGUgcmluZwogCSAq
IHJlZ2lzdGVycyB3aXRoIHRoZSBhYm92ZSBzZXF1ZW5jZSAodGhlIHJlYWRiYWNrIG9mIHRoZSBI
RUFEIHJlZ2lzdGVycwogCSAqIGFsc28gZW5mb3JjZXMgb3JkZXJpbmcpLCBvdGhlcndpc2UgdGhl
IGh3IG1pZ2h0IGxvc2UgdGhlIG5ldyByaW5nCi0JICogcmVnaXN0ZXIgdmFsdWVzLiAqLworCSAq
IHJlZ2lzdGVyIHZhbHVlcy4KKwkgKi8KIAlFTkdJTkVfV1JJVEUoZW5naW5lLCBSSU5HX1NUQVJU
LCBpOTE1X2dndHRfb2Zmc2V0KHJpbmctPnZtYSkpOwogCi0JLyogV2FDbGVhclJpbmdCdWZIZWFk
UmVnQXRJbml0OmN0ZyxlbGsgKi8KLQlpZiAoRU5HSU5FX1JFQUQoZW5naW5lLCBSSU5HX0hFQUQp
KQotCQlEUk1fREVCVUdfRFJJVkVSKCIlcyBpbml0aWFsaXphdGlvbiBmYWlsZWQgW2hlYWQ9JTA4
eF0sIGZ1ZGdpbmdcbiIsCi0JCQkJIGVuZ2luZS0+bmFtZSwgRU5HSU5FX1JFQUQoZW5naW5lLCBS
SU5HX0hFQUQpKTsKLQogCS8qIENoZWNrIHRoYXQgdGhlIHJpbmcgb2Zmc2V0cyBwb2ludCB3aXRo
aW4gdGhlIHJpbmchICovCiAJR0VNX0JVR19PTighaW50ZWxfcmluZ19vZmZzZXRfdmFsaWQocmlu
ZywgcmluZy0+aGVhZCkpOwogCUdFTV9CVUdfT04oIWludGVsX3Jpbmdfb2Zmc2V0X3ZhbGlkKHJp
bmcsIHJpbmctPnRhaWwpKTsKLS0gCjIuMjMuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
