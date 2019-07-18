Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B463C6C9A8
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 09:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DBE6E312;
	Thu, 18 Jul 2019 07:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D766E315
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 07:02:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17390396-1500050 
 for multiple; Thu, 18 Jul 2019 08:00:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Jul 2019 08:00:21 +0100
Message-Id: <20190718070024.21781-17-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190718070024.21781-1-chris@chris-wilson.co.uk>
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Add to timeline requires the
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
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCAxNyAr
KysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCmluZGV4IDg3
Yzg0Y2MwZjY1OC4uZmU5OTVhNzk3NDUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dC5jCkBAIC0yNjAsMTAgKzI2MCwxOCBAQCBpbnQgaW50ZWxfY29udGV4dF9wcmVwYXJl
X3JlbW90ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAkvKiBPbmx5IHN1aXRh
YmxlIGZvciB1c2UgaW4gcmVtb3RlbHkgbW9kaWZ5aW5nIHRoaXMgY29udGV4dCAqLwogCUdFTV9C
VUdfT04ocnEtPmh3X2NvbnRleHQgPT0gY2UpOwogCisJaWYgKHJxLT50aW1lbGluZSAhPSB0bCkg
eyAvKiBiZXdhcmUgdGltZWxpbmUgc2hhcmluZyAqLworCQllcnIgPSBtdXRleF9sb2NrX2ludGVy
cnVwdGlibGVfbmVzdGVkKCZ0bC0+bXV0ZXgsCisJCQkJCQkgICAgICBTSU5HTEVfREVQVEhfTkVT
VElORyk7CisJCWlmIChlcnIpCisJCQlyZXR1cm4gZXJyOworCX0KKwlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZ0bC0+bXV0ZXgpOworCiAJLyogUXVldWUgdGhpcyBzd2l0Y2ggYWZ0ZXIgYWxsIG90aGVy
IGFjdGl2aXR5IGJ5IHRoaXMgY29udGV4dC4gKi8KIAllcnIgPSBpOTE1X2FjdGl2ZV9yZXF1ZXN0
X3NldCgmdGwtPmxhc3RfcmVxdWVzdCwgcnEpOwogCWlmIChlcnIpCi0JCXJldHVybiBlcnI7CisJ
CWdvdG8gdW5sb2NrOwogCiAJLyoKIAkgKiBHdWFyYW50ZWUgY29udGV4dCBpbWFnZSBhbmQgdGhl
IHRpbWVsaW5lIHJlbWFpbnMgcGlubmVkIHVudGlsIHRoZQpAQCAtMjczLDcgKzI4MSwxMiBAQCBp
bnQgaW50ZWxfY29udGV4dF9wcmVwYXJlX3JlbW90ZV9yZXF1ZXN0KHN0cnVjdCBpbnRlbF9jb250
ZXh0ICpjZSwKIAkgKiB3b3JkcyB0cmFuc2ZlciB0aGUgcGlubmVkIGNlIG9iamVjdCB0byB0cmFj
a2VkIGFjdGl2ZSByZXF1ZXN0LgogCSAqLwogCUdFTV9CVUdfT04oaTkxNV9hY3RpdmVfaXNfaWRs
ZSgmY2UtPmFjdGl2ZSkpOwotCXJldHVybiBpOTE1X2FjdGl2ZV9yZWYoJmNlLT5hY3RpdmUsIHJx
LT5mZW5jZS5jb250ZXh0LCBycSk7CisJZXJyID0gaTkxNV9hY3RpdmVfcmVmKCZjZS0+YWN0aXZl
LCBycS0+ZmVuY2UuY29udGV4dCwgcnEpOworCit1bmxvY2s6CisJaWYgKHJxLT50aW1lbGluZSAh
PSB0bCkKKwkJbXV0ZXhfdW5sb2NrKCZ0bC0+bXV0ZXgpOworCXJldHVybiBlcnI7CiB9CiAKIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKmludGVsX2NvbnRleHRfY3JlYXRlX3JlcXVlc3Qoc3RydWN0IGlu
dGVsX2NvbnRleHQgKmNlKQotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
