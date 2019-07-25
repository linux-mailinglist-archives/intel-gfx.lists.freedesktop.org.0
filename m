Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA3D75AD7
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 00:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8AB6E839;
	Thu, 25 Jul 2019 22:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 916E3891D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 22:44:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17610921-1500050 
 for multiple; Thu, 25 Jul 2019 23:44:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 23:44:04 +0100
Message-Id: <20190725224407.4206-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725224407.4206-1-chris@chris-wilson.co.uk>
References: <20190725224407.4206-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Add to timeline requires the
 timeline mutex
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

TW9kaWZ5aW5nIGEgcmVtb3RlIGNvbnRleHQgcmVxdWlyZXMgY2FyZWZ1bCBzZXJpYWxpc2F0aW9u
IHdpdGggcmVxdWVzdHMKb24gdGhhdCBjb250ZXh0LCBhbmQgdGhhdCBzZXJpYWxpc2F0aW9uIHJl
cXVpcmVzIHVzIHRvIHRha2UgdGhlaXIKdGltZWxpbmUtPm11dGV4LiBNYWtlIGl0IHNvLgoKTm90
ZSB0aGF0IHdoaWxlIHN0cnVjdF9tdXRleCBydWxlcywgd2UgY2FuJ3QgY3JlYXRlIG1vcmUgdGhh
biBvbmUKcmVxdWVzdCBpbiBwYXJhbGxlbCwgYnV0IHRoYXQgYWdlIGlzIHNvb24gY29taW5nIHRv
IGFuIGVuZC4KCnYyOiBUaG91Z2ggaXQgZG9lc24ndCBhZmZlY3QgdGhlIGN1cnJlbnQgdXNlcnMs
IGNvbnRleHRzIG1heSBzaGFyZQp0aW1lbGluZXMgc28gY2hlY2sgaWYgd2UgYWxyZWFkeSBob2xk
IHRoZSByaWdodCBtdXRleC4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCAyMyAr
KysrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyks
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCmlu
ZGV4IDkyOTJiNmNhNWU5Yy4uZDY0YjQ1ZjdlYzZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfY29udGV4dC5jCkBAIC0yNTQsMTAgKzI1NCwxOCBAQCBpbnQgaW50ZWxfY29udGV4dF9w
cmVwYXJlX3JlbW90ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAkvKiBPbmx5
IHN1aXRhYmxlIGZvciB1c2UgaW4gcmVtb3RlbHkgbW9kaWZ5aW5nIHRoaXMgY29udGV4dCAqLwog
CUdFTV9CVUdfT04ocnEtPmh3X2NvbnRleHQgPT0gY2UpOwogCi0JLyogUXVldWUgdGhpcyBzd2l0
Y2ggYWZ0ZXIgYWxsIG90aGVyIGFjdGl2aXR5IGJ5IHRoaXMgY29udGV4dC4gKi8KLQllcnIgPSBp
OTE1X2FjdGl2ZV9yZXF1ZXN0X3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOwotCWlmIChlcnIp
Ci0JCXJldHVybiBlcnI7CisJaWYgKHJxLT50aW1lbGluZSAhPSB0bCkgeyAvKiBiZXdhcmUgdGlt
ZWxpbmUgc2hhcmluZyAqLworCQllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGVfbmVzdGVk
KCZ0bC0+bXV0ZXgsCisJCQkJCQkgICAgICBTSU5HTEVfREVQVEhfTkVTVElORyk7CisJCWlmIChl
cnIpCisJCQlyZXR1cm4gZXJyOworCisJCS8qIFF1ZXVlIHRoaXMgc3dpdGNoIGFmdGVyIGN1cnJl
bnQgYWN0aXZpdHkgYnkgdGhpcyBjb250ZXh0LiAqLworCQllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1
ZXN0X3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOworCQlpZiAoZXJyKQorCQkJZ290byB1bmxv
Y2s7CisJfQorCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnRsLT5tdXRleCk7CiAKIAkvKgogCSAqIEd1
YXJhbnRlZSBjb250ZXh0IGltYWdlIGFuZCB0aGUgdGltZWxpbmUgcmVtYWlucyBwaW5uZWQgdW50
aWwgdGhlCkBAIC0yNjcsNyArMjc1LDEyIEBAIGludCBpbnRlbF9jb250ZXh0X3ByZXBhcmVfcmVt
b3RlX3JlcXVlc3Qoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAogCSAqIHdvcmRzIHRyYW5zZmVy
IHRoZSBwaW5uZWQgY2Ugb2JqZWN0IHRvIHRyYWNrZWQgYWN0aXZlIHJlcXVlc3QuCiAJICovCiAJ
R0VNX0JVR19PTihpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0aXZlKSk7Ci0JcmV0dXJuIGk5
MTVfYWN0aXZlX3JlZigmY2UtPmFjdGl2ZSwgcnEtPmZlbmNlLmNvbnRleHQsIHJxKTsKKwllcnIg
PSBpOTE1X2FjdGl2ZV9yZWYoJmNlLT5hY3RpdmUsIHJxLT5mZW5jZS5jb250ZXh0LCBycSk7CisK
K3VubG9jazoKKwlpZiAocnEtPnRpbWVsaW5lICE9IHRsKQorCQltdXRleF91bmxvY2soJnRsLT5t
dXRleCk7CisJcmV0dXJuIGVycjsKIH0KIAogc3RydWN0IGk5MTVfcmVxdWVzdCAqaW50ZWxfY29u
dGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCi0tIAoyLjIyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
