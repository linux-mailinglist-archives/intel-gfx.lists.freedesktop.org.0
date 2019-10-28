Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 469C4E7396
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:27:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D9006E8C1;
	Mon, 28 Oct 2019 14:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF716E7AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:27:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18994385-1500050 
 for multiple; Mon, 28 Oct 2019 14:27:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 14:26:52 +0000
Message-Id: <20191028142652.1987-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191028142652.1987-1-chris@chris-wilson.co.uk>
References: <20191028142652.1987-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Mark conn as initialised
 by iterator
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

c21hdGNoIGNvbXBsYWlucyBhYm91dApkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmM6MTQ0MDMgaW50ZWxfc2V0X2RwX3RwX2N0bF9ub3JtYWwoKSBlcnJvcjogdW5p
bml0aWFsaXplZCBzeW1ib2wgJ2Nvbm4nLgpiZWNhdXNlIGl0IGhhcyBubyB3YXkgdG8gZGV0ZXJt
aW5lIHRoYXQgdGhlIGxvb3AgbXVzdCBoYXZlIGFuIGVudHJ5LgpUZWxsIHRoZSBzdGF0aWMgYW5h
bHlzZXJzIHRvIGlnbm9yZSB0aGUgbG9jYWwsIGl0IHdpbGwgYWx3YXlzIGJlIHNldC4KClNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQogMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAwZjBjNTgyYTU2ZDUuLjlkY2Uy
ZTllNTM3NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE0MzkxLDggKzE0MzkxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19lbmFibGVf
dHJhbnNfcG9ydF9zeW5jKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogc3RhdGljIHZvaWQgaW50
ZWxfc2V0X2RwX3RwX2N0bF9ub3JtYWwoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJCQkJICAg
ICAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogeworCXN0cnVjdCBkcm1fY29u
bmVjdG9yICp1bmluaXRpYWxpemVkX3Zhcihjb25uKTsKIAlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9z
dGF0ZSAqY29ubl9zdGF0ZTsKLQlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubjsKIAlzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwOwogCWludCBpOwogCi0tIAoyLjI0LjAucmMxCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
