Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058E66A37
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 11:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222A46E33D;
	Fri, 12 Jul 2019 09:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CE526E33B
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 09:43:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17243560-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 10:43:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Jul 2019 10:43:24 +0100
Message-Id: <20190712094327.24437-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712094327.24437-1-chris@chris-wilson.co.uk>
References: <20190712094327.24437-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/6] drm/i915/gtt: Markup i915_ppgtt height
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

VGhpcyB3aWxsIGJlIHVzZWZ1bCB0byBjb25zb2xpZGF0ZSByZWN1cnNpdmUgY29kZS4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdl
ZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyICsrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCmluZGV4IGFiYjJlM2U0YmJiYy4u
NDU0NGFmMWQzYTNjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwpAQCAtMTU5OCw2
ICsxNTk4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X3BwZ3R0ICpnZW44X3BwZ3R0X2NyZWF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7
CiAKIAlwcGd0dF9pbml0KHBwZ3R0LCAmaTkxNS0+Z3QpOworCXBwZ3R0LT52bS50b3AgPSBpOTE1
X3ZtX2lzXzRsdmwoJnBwZ3R0LT52bSkgPyAzIDogMjsKIAogCS8qCiAJICogRnJvbSBiZHcsIHRo
ZXJlIGlzIGh3IHN1cHBvcnQgZm9yIHJlYWQtb25seSBwYWdlcyBpbiB0aGUgUFBHVFQuCkBAIC0y
MDg0LDYgKzIwODUsNyBAQCBzdGF0aWMgc3RydWN0IGk5MTVfcHBndHQgKmdlbjZfcHBndHRfY3Jl
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQlyZXR1cm4gRVJSX1BUUigtRU5P
TUVNKTsKIAogCXBwZ3R0X2luaXQoJnBwZ3R0LT5iYXNlLCAmaTkxNS0+Z3QpOworCXBwZ3R0LT5i
YXNlLnZtLnRvcCA9IDE7CiAKIAlwcGd0dC0+YmFzZS52bS5hbGxvY2F0ZV92YV9yYW5nZSA9IGdl
bjZfYWxsb2NfdmFfcmFuZ2U7CiAJcHBndHQtPmJhc2Uudm0uY2xlYXJfcmFuZ2UgPSBnZW42X3Bw
Z3R0X2NsZWFyX3JhbmdlOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaAppbmRleCA0OGJi
OGM1MTI1ZTMuLjM2MTYyYmI3NTYxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgK
QEAgLTMyMyw2ICszMjMsNyBAQCBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlIHsKIAlzdHJ1Y3Qg
aTkxNV9wYWdlX2RtYSBzY3JhdGNoX3B0OwogCXN0cnVjdCBpOTE1X3BhZ2VfZG1hIHNjcmF0Y2hf
cGQ7CiAJc3RydWN0IGk5MTVfcGFnZV9kbWEgc2NyYXRjaF9wZHA7IC8qIEdFTjgrICYgNDhiIFBQ
R1RUICovCisJdW5zaWduZWQgaW50IHRvcDsKIAogCS8qKgogCSAqIExpc3Qgb2Ygdm1hIGN1cnJl
bnRseSBib3VuZC4KLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
