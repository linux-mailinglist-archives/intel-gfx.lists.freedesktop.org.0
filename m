Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F6146C32
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Jun 2019 00:06:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376828938F;
	Fri, 14 Jun 2019 22:06:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CF48938F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 22:06:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16908001-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 23:06:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Jun 2019 23:06:16 +0100
Message-Id: <20190614220616.24932-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915: Avoid tainting i915_gem_park() with
 wakeref.lock
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

V2hpbGUgd2UgbmVlZCB0byBmbHVzaCB0aGUgd2FrZXJlZiBiZWZvcmUgcGFya2luZywgd2UgZG8g
bm90IG5lZWQgdG8KcGVyZm9ybSB0aGUgaTkxNV9nZW1fcGFyaygpIGl0c2VsZiB1bmRlcm5lYXRo
IHRoZSB3YWtlcmVmIGxvY2ssIG1lcmVseQp0aGUgc3RydWN0X211dGV4LiBJZiB3ZSByZWFycmFu
Z2UgdGhlIGxvY2tzLCB3ZSBjYW4gYXZvaWQgdGhlIHVubmVjZXNzYXJ5CnRhaW50aW5nLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmll
d2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcG0uYyB8IDE3ICsrKysrKysrLS0t
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggMTQxZjNlYTM0OWE0Li4w
NTAxMWQ0YTNiODggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5jCkBAIC00
OCwyMyArNDgsMjIgQEAgc3RhdGljIHZvaWQgaWRsZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KIAkJY29u
dGFpbmVyX29mKHdvcmssIHR5cGVvZigqaTkxNSksIGdlbS5pZGxlX3dvcmspOwotCWJvb2wgcmVz
dGFydCA9IHRydWU7CisJYm9vbCBwYXJrOwogCi0JY2FuY2VsX2RlbGF5ZWRfd29yaygmaTkxNS0+
Z2VtLnJldGlyZV93b3JrKTsKKwljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJmk5MTUtPmdlbS5y
ZXRpcmVfd29yayk7CiAJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAKIAlp
bnRlbF93YWtlcmVmX2xvY2soJmk5MTUtPmd0Lndha2VyZWYpOwotCWlmICghaW50ZWxfd2FrZXJl
Zl9hY3RpdmUoJmk5MTUtPmd0Lndha2VyZWYpICYmICF3b3JrX3BlbmRpbmcod29yaykpIHsKLQkJ
aTkxNV9nZW1fcGFyayhpOTE1KTsKLQkJcmVzdGFydCA9IGZhbHNlOwotCX0KKwlwYXJrID0gIWlu
dGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1LT5ndC53YWtlcmVmKSAmJiAhd29ya19wZW5kaW5nKHdv
cmspOwogCWludGVsX3dha2VyZWZfdW5sb2NrKCZpOTE1LT5ndC53YWtlcmVmKTsKLQotCW11dGV4
X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Ci0JaWYgKHJlc3RhcnQpCisJaWYgKHBh
cmspCisJCWk5MTVfZ2VtX3BhcmsoaTkxNSk7CisJZWxzZQogCQlxdWV1ZV9kZWxheWVkX3dvcmso
aTkxNS0+d3EsCiAJCQkJICAgJmk5MTUtPmdlbS5yZXRpcmVfd29yaywKIAkJCQkgICByb3VuZF9q
aWZmaWVzX3VwX3JlbGF0aXZlKEhaKSk7CisKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwogfQogCiBzdGF0aWMgdm9pZCByZXRpcmVfd29ya19oYW5kbGVyKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
