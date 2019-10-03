Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8770AC9AE0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 11:37:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17076E98C;
	Thu,  3 Oct 2019 09:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387766E98C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 09:37:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18704177-1500050 
 for multiple; Thu, 03 Oct 2019 10:36:42 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 10:36:21 +0100
Message-Id: <20191003093639.10186-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003093639.10186-1-chris@chris-wilson.co.uk>
References: <20191003093639.10186-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/22] drm/i915: Mark up address spaces that may
 need to allocate
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

U2luY2Ugd2UgY2Fubm90IGFsbG9jYXRlIHVuZGVybmVhdGggdGhlIHZtLT5tdXRleCAoaXQgaXMg
dXNlZCBpbiB0aGUKZGlyZWN0LXJlY2xhaW0gcGF0aHMpLCB3ZSBuZWVkIHRvIHNoaWZ0IHRoZSBh
bGxvY2F0aW9ucyBvZmYgaW50byBhCm11dGV4bGVzcyB3b3JrZXIgd2l0aCBmZW5jZSByZWN1cnNp
b24gcHJldmVudGlvbi4gVG8ga25vdyB3aGVuIHdlIG5lZWQKdGhpcyBwcm90ZWN0aW9uLCB3ZSBt
YXJrIHVwIHRoZSBhZGRyZXNzIHNwYWNlcyB0aGF0IGRvIGFsbG9jYXRlIGJlZm9yZQppbnNlcnRp
b24uIEluIHRoZSBmdXR1cmUsIHdlIG1heSB3aXNoIHRvIGV4dGVuZCB0aGUgYXN5bmMgYmluZCBz
Y2hlbWUgdG8KbW9yZSB0aGFuIGp1c3QgYWxsb2NhdGlvbnMuCgp2Mjogcy92bS0+YmluZF9hbGxv
Yy92bS0+YmluZF9hc3luY19mbGFncy8KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAyICsrCiAyIGZpbGVzIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKaW5k
ZXggYWQ5ZWIyZDY4ZjNmLi44ZWJhNjNlY2RiMDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jCkBAIC0xNTAyLDYgKzE1MDIsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQgKmdl
bjhfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQkJZ290byBl
cnJfZnJlZV9wZDsKIAl9CiAKKwlwcGd0dC0+dm0uYmluZF9hc3luY19mbGFncyA9IEk5MTVfVk1B
X0xPQ0FMX0JJTkQ7CiAJcHBndHQtPnZtLmluc2VydF9lbnRyaWVzID0gZ2VuOF9wcGd0dF9pbnNl
cnQ7CiAJcHBndHQtPnZtLmFsbG9jYXRlX3ZhX3JhbmdlID0gZ2VuOF9wcGd0dF9hbGxvYzsKIAlw
cGd0dC0+dm0uY2xlYXJfcmFuZ2UgPSBnZW44X3BwZ3R0X2NsZWFyOwpAQCAtMTk1MCw2ICsxOTUx
LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW42X3BwZ3R0X2NyZWF0ZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlwcGd0dF9pbml0KCZwcGd0dC0+YmFzZSwgJmk5MTUt
Pmd0KTsKIAlwcGd0dC0+YmFzZS52bS50b3AgPSAxOwogCisJcHBndHQtPmJhc2Uudm0uYmluZF9h
c3luY19mbGFncyA9IEk5MTVfVk1BX0xPQ0FMX0JJTkQ7CiAJcHBndHQtPmJhc2Uudm0uYWxsb2Nh
dGVfdmFfcmFuZ2UgPSBnZW42X2FsbG9jX3ZhX3JhbmdlOwogCXBwZ3R0LT5iYXNlLnZtLmNsZWFy
X3JhbmdlID0gZ2VuNl9wcGd0dF9jbGVhcl9yYW5nZTsKIAlwcGd0dC0+YmFzZS52bS5pbnNlcnRf
ZW50cmllcyA9IGdlbjZfcHBndHRfaW5zZXJ0X2VudHJpZXM7CkBAIC0yNTgxLDYgKzI1ODMsNyBA
QCBzdGF0aWMgaW50IGluaXRfYWxpYXNpbmdfcHBndHQoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkK
IAkJZ290byBlcnJfcHBndHQ7CiAKIAlnZ3R0LT5hbGlhcyA9IHBwZ3R0OworCWdndHQtPnZtLmJp
bmRfYXN5bmNfZmxhZ3MgfD0gcHBndHQtPnZtLmJpbmRfYXN5bmNfZmxhZ3M7CiAKIAlHRU1fQlVH
X09OKGdndHQtPnZtLnZtYV9vcHMuYmluZF92bWEgIT0gZ2d0dF9iaW5kX3ZtYSk7CiAJZ2d0dC0+
dm0udm1hX29wcy5iaW5kX3ZtYSA9IGFsaWFzaW5nX2d0dF9iaW5kX3ZtYTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmgKaW5kZXggYmJkYzczNTQ2NmMxLi4zNTAyYjljODVhOGUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oCkBAIC0zMDUsNiArMzA1LDggQEAgc3RydWN0IGk5
MTVfYWRkcmVzc19zcGFjZSB7CiAJdTY0IHRvdGFsOwkJLyogc2l6ZSBhZGRyIHNwYWNlIG1hcHMg
KGV4LiAyR0IgZm9yIGdndHQpICovCiAJdTY0IHJlc2VydmVkOwkJLyogc2l6ZSBhZGRyIHNwYWNl
IHJlc2VydmVkICovCiAKKwl1bnNpZ25lZCBpbnQgYmluZF9hc3luY19mbGFnczsKKwogCWJvb2wg
Y2xvc2VkOwogCiAJc3RydWN0IG11dGV4IG11dGV4OyAvKiBwcm90ZWN0cyB2bWEgYW5kIG91ciBs
aXN0cyAqLwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
