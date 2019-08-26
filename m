Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEA19CA0C
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:22:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2CAA6E1BB;
	Mon, 26 Aug 2019 07:22:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2D186E1D2
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262689-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:35 +0100
Message-Id: <20190826072149.9447-14-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/28] drm/i915: Mark up address spaces that may
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
b24uCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKysrCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDIgKysKIDIgZmlsZXMgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwppbmRleCBmNjI2
NDFmODY1NDUuLjEwNTQ1YzY0ZTI3ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
QEAgLTE1MDAsNiArMTUwMCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0dCAqZ2VuOF9wcGd0
dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJCQlnb3RvIGVycl9mcmVl
X3BkOwogCX0KIAorCXBwZ3R0LT52bS5iaW5kX2FsbG9jID0gSTkxNV9WTUFfTE9DQUxfQklORDsK
IAlwcGd0dC0+dm0uaW5zZXJ0X2VudHJpZXMgPSBnZW44X3BwZ3R0X2luc2VydDsKIAlwcGd0dC0+
dm0uYWxsb2NhdGVfdmFfcmFuZ2UgPSBnZW44X3BwZ3R0X2FsbG9jOwogCXBwZ3R0LT52bS5jbGVh
cl9yYW5nZSA9IGdlbjhfcHBndHRfY2xlYXI7CkBAIC0xOTQ0LDYgKzE5NDUsNyBAQCBzdGF0aWMg
c3RydWN0IGk5MTVfcHBndHQgKmdlbjZfcHBndHRfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCXBwZ3R0X2luaXQoJnBwZ3R0LT5iYXNlLCAmaTkxNS0+Z3QpOwogCXBwZ3R0
LT5iYXNlLnZtLnRvcCA9IDE7CiAKKwlwcGd0dC0+YmFzZS52bS5iaW5kX2FsbG9jID0gSTkxNV9W
TUFfTE9DQUxfQklORDsKIAlwcGd0dC0+YmFzZS52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdlbjZf
YWxsb2NfdmFfcmFuZ2U7CiAJcHBndHQtPmJhc2Uudm0uY2xlYXJfcmFuZ2UgPSBnZW42X3BwZ3R0
X2NsZWFyX3JhbmdlOwogCXBwZ3R0LT5iYXNlLnZtLmluc2VydF9lbnRyaWVzID0gZ2VuNl9wcGd0
dF9pbnNlcnRfZW50cmllczsKQEAgLTI1NzUsNiArMjU3Nyw3IEBAIHN0YXRpYyBpbnQgaW5pdF9h
bGlhc2luZ19wcGd0dChzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0KQogCQlnb3RvIGVycl9wcGd0dDsK
IAogCWdndHQtPmFsaWFzID0gcHBndHQ7CisJZ2d0dC0+dm0uYmluZF9hbGxvYyB8PSBwcGd0dC0+
dm0uYmluZF9hbGxvYzsKIAogCUdFTV9CVUdfT04oZ2d0dC0+dm0udm1hX29wcy5iaW5kX3ZtYSAh
PSBnZ3R0X2JpbmRfdm1hKTsKIAlnZ3R0LT52bS52bWFfb3BzLmJpbmRfdm1hID0gYWxpYXNpbmdf
Z3R0X2JpbmRfdm1hOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCAwNDlkYjAz
YzNiNmQuLjQ2ZDkxNWQ3ZmZiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKQEAg
LTMwNSw3ICszMDUsOSBAQCBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlIHsKIAl1NjQgdG90YWw7
CQkvKiBzaXplIGFkZHIgc3BhY2UgbWFwcyAoZXguIDJHQiBmb3IgZ2d0dCkgKi8KIAl1NjQgcmVz
ZXJ2ZWQ7CQkvKiBzaXplIGFkZHIgc3BhY2UgcmVzZXJ2ZWQgKi8KIAorCXVuc2lnbmVkIGludCBi
aW5kX2FsbG9jOwogCXVuc2lnbmVkIGludCBzZXJpYWw7CisKIAlib29sIGNsb3NlZDsKIAogCXN0
cnVjdCBtdXRleCBtdXRleDsgLyogcHJvdGVjdHMgdm1hIGFuZCBvdXIgbGlzdHMgKi8KLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
