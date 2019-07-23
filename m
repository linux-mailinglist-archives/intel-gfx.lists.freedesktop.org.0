Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7192671FB4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 20:56:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87F46E3A6;
	Tue, 23 Jul 2019 18:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9D66E39C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jul 2019 18:56:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17542620-1500050 
 for multiple; Tue, 23 Jul 2019 19:38:45 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Jul 2019 19:38:35 +0100
Message-Id: <20190723183842.20372-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190723183842.20372-1-chris@chris-wilson.co.uk>
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/23] drm/i915/gt: Add to timeline requires the
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
dGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCmluZGV4IDBj
ZTU4ODBhY2UwYS4uYmNkNjljMTg3MzEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dC5jCkBAIC0yNjEsMTAgKzI2MSwxOCBAQCBpbnQgaW50ZWxfY29udGV4dF9wcmVwYXJl
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
IHRpbWVsaW5lIHJlbWFpbnMgcGlubmVkIHVudGlsIHRoZQpAQCAtMjc0LDcgKzI4MiwxMiBAQCBp
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
