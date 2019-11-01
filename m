Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432CBEBF34
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 09:29:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42576E1B3;
	Fri,  1 Nov 2019 08:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B1D6E1B3
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 08:29:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19042505-1500050 
 for multiple; Fri, 01 Nov 2019 08:29:20 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 08:29:19 +0000
Message-Id: <20191101082919.21122-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Ignore the inactive kernel
 context in assert_pending_valid
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

RmlsdGVyIG91dCB3YXJuaW5ncyBmb3IgdGhlIGtlcm5lbCBjb250ZXh0IHRoYXQgaXMgdXNlZCB0
byBmbHVzaAppbmFjdGl2ZSBjb250ZXh0cywgYXMgdGhleSBkbyBubyBub3QgcG9zZSBhIHJpc2su
CgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDE1ICsrKysrKysrKyst
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA1MWFlZjJhMjMzY2IuLmNhMmQzNDE2
ZmE0ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTEyMzYsNyArMTIzNiw4
IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xp
c3RzICpleGVjbGlzdHMsCiAKIAlmb3IgKHBvcnQgPSBleGVjbGlzdHMtPnBlbmRpbmc7IChycSA9
ICpwb3J0KTsgcG9ydCsrKSB7CiAJCWlmIChjZSA9PSBycS0+aHdfY29udGV4dCkgewotCQkJR0VN
X1RSQUNFX0VSUigiRHVwbGljYXRlIGNvbnRleHQgaW4gcGVuZGluZ1slemRdXG4iLAorCQkJR0VN
X1RSQUNFX0VSUigiRHVwIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCisJCQkJICAg
ICAgY2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBleGVjbGlz
dHMtPnBlbmRpbmcpOwogCQkJcmV0dXJuIGZhbHNlOwogCQl9CkBAIC0xMjQ1LDIwICsxMjQ2LDI0
IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xp
c3RzICpleGVjbGlzdHMsCiAJCWlmIChpOTE1X3JlcXVlc3RfY29tcGxldGVkKHJxKSkKIAkJCWNv
bnRpbnVlOwogCi0JCWlmIChpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0aXZlKSkgewotCQkJ
R0VNX1RSQUNFX0VSUigiSW5hY3RpdmUgY29udGV4dCBpbiBwZW5kaW5nWyV6ZF1cbiIsCisJCWlm
IChpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0aXZlKSAmJgorCQkgICAgIWk5MTVfZ2VtX2Nv
bnRleHRfaXNfa2VybmVsKGNlLT5nZW1fY29udGV4dCkpIHsKKwkJCUdFTV9UUkFDRV9FUlIoIklu
YWN0aXZlIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCisJCQkJICAgICAgY2UtPnRp
bWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBleGVjbGlzdHMtPnBlbmRp
bmcpOwogCQkJcmV0dXJuIGZhbHNlOwogCQl9CiAKIAkJaWYgKCFpOTE1X3ZtYV9pc19waW5uZWQo
Y2UtPnN0YXRlKSkgewotCQkJR0VNX1RSQUNFX0VSUigiVW5waW5uZWQgY29udGV4dCBpbiBwZW5k
aW5nWyV6ZF1cbiIsCisJCQlHRU1fVFJBQ0VfRVJSKCJVbnBpbm5lZCBjb250ZXh0OiVsbHggaW4g
cGVuZGluZ1slemRdXG4iLAorCQkJCSAgICAgIGNlLT50aW1lbGluZS0+ZmVuY2VfY29udGV4dCwK
IAkJCQkgICAgICBwb3J0IC0gZXhlY2xpc3RzLT5wZW5kaW5nKTsKIAkJCXJldHVybiBmYWxzZTsK
IAkJfQogCiAJCWlmICghaTkxNV92bWFfaXNfcGlubmVkKGNlLT5yaW5nLT52bWEpKSB7Ci0JCQlH
RU1fVFJBQ0VfRVJSKCJVbnBpbm5lZCByaW5nYnVmZmVyIGluIHBlbmRpbmdbJXpkXVxuIiwKKwkJ
CUdFTV9UUkFDRV9FUlIoIlVucGlubmVkIHJpbmc6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCisJ
CQkJICAgICAgY2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBl
eGVjbGlzdHMtPnBlbmRpbmcpOwogCQkJcmV0dXJuIGZhbHNlOwogCQl9Ci0tIAoyLjI0LjAucmMy
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
