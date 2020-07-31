Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93600234182
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 10:50:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 679BD6EA22;
	Fri, 31 Jul 2020 08:50:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90B2F6EA1B
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 08:50:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21990226-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 09:50:15 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Jul 2020 09:50:10 +0100
Message-Id: <20200731085015.32368-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200731085015.32368-1-chris@chris-wilson.co.uk>
References: <20200731085015.32368-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/7] drm/i915: Skip taking acquire mutex for no
 ref->active callback
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

SWYgbm8gYWN0aXZlIGNhbGxiYWNrIGlzIGRlZmluZWQgZm9yIGk5MTVfYWN0aXZlLCB3ZSBkbyBu
b3QgbmVlZCB0bwpzZXJpYWxpc2UgaXRzIGVuYWJsaW5nIHdpdGggdGhlIG11dGV4LiBXZSBzdGls
bCBkbyBvbmx5IHdhbnQgdG8gY2FsbCB0aGUKZGVidWcgYWN0aXZhdGUgb25jZSwgYW5kIG11c3Qg
c3RpbGwgc2VyaWFsaXNlIHdpdGggYSBjb25jdXJyZW50IHJldGlyZS4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21h
cyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMjQgKysrKysrKysrKysrKysrKy0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCBkOTYwZDBiZTViZDIuLjUwMDUzNzg4OWU2NiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC00MTYsNiArNDE2LDE0IEBAIGJvb2wgaTkx
NV9hY3RpdmVfYWNxdWlyZV9pZl9idXN5KHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQogCXJldHVy
biBhdG9taWNfYWRkX3VubGVzcygmcmVmLT5jb3VudCwgMSwgMCk7CiB9CiAKK3N0YXRpYyB2b2lk
IF9faTkxNV9hY3RpdmVfYWN0aXZhdGUoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCit7CisJc3Bp
bl9sb2NrX2lycSgmcmVmLT50cmVlX2xvY2spOyAvKiBfX2FjdGl2ZV9yZXRpcmUoKSAqLworCWlm
ICghYXRvbWljX2ZldGNoX2luYygmcmVmLT5jb3VudCkpCisJCWRlYnVnX2FjdGl2ZV9hY3RpdmF0
ZShyZWYpOworCXNwaW5fdW5sb2NrX2lycSgmcmVmLT50cmVlX2xvY2spOworfQorCiBpbnQgaTkx
NV9hY3RpdmVfYWNxdWlyZShzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIHsKIAlpbnQgZXJyOwpA
QCAtNDIzLDE5ICs0MzEsMTkgQEAgaW50IGk5MTVfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGk5MTVf
YWN0aXZlICpyZWYpCiAJaWYgKGk5MTVfYWN0aXZlX2FjcXVpcmVfaWZfYnVzeShyZWYpKQogCQly
ZXR1cm4gMDsKIAorCWlmICghcmVmLT5hY3RpdmUpIHsKKwkJX19pOTE1X2FjdGl2ZV9hY3RpdmF0
ZShyZWYpOworCQlyZXR1cm4gMDsKKwl9CisKIAllcnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGli
bGUoJnJlZi0+bXV0ZXgpOwogCWlmIChlcnIpCiAJCXJldHVybiBlcnI7CiAKIAlpZiAobGlrZWx5
KCFpOTE1X2FjdGl2ZV9hY3F1aXJlX2lmX2J1c3kocmVmKSkpIHsKLQkJaWYgKHJlZi0+YWN0aXZl
KQotCQkJZXJyID0gcmVmLT5hY3RpdmUocmVmKTsKLQkJaWYgKCFlcnIpIHsKLQkJCXNwaW5fbG9j
a19pcnEoJnJlZi0+dHJlZV9sb2NrKTsgLyogX19hY3RpdmVfcmV0aXJlKCkgKi8KLQkJCWRlYnVn
X2FjdGl2ZV9hY3RpdmF0ZShyZWYpOwotCQkJYXRvbWljX2luYygmcmVmLT5jb3VudCk7Ci0JCQlz
cGluX3VubG9ja19pcnEoJnJlZi0+dHJlZV9sb2NrKTsKLQkJfQorCQllcnIgPSByZWYtPmFjdGl2
ZShyZWYpOworCQlpZiAoIWVycikKKwkJCV9faTkxNV9hY3RpdmVfYWN0aXZhdGUocmVmKTsKIAl9
CiAKIAltdXRleF91bmxvY2soJnJlZi0+bXV0ZXgpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
