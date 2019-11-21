Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F1A104DBD
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 09:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209D16EB95;
	Thu, 21 Nov 2019 08:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FB236EB9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 08:20:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19281520-1500050 
 for multiple; Thu, 21 Nov 2019 08:20:15 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 08:20:12 +0000
Message-Id: <20191121082012.108692-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Lock the request while
 validating it during promotion
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

U2luY2UgdGhlIHJlcXVlc3QgaXMgYWxyZWFkeSBvbiB0aGUgSFcgYXMgd2UgcGVyZm9ybSBpdHMg
dmFsaWRhdGlvbiwgaXQKYW5kIGV2ZW4gaXRzIHN1YnNlcXVlbnQgYmFycmllciBtYXkgYmUgY29u
Y3VycmVudGx5IHJldGlyZWQgYmVmb3JlIHdlCnByb2Nlc3MgdGhlIGFzc2VydGlvbnMuIElmIGl0
IGlzIHJldGlyZWQgYWxyZWFkeSBhbmQgc28gb2ZmIHRoZSBIVywgb3VyCmFzc2VydGlvbnMgYmVj
b21lIHZvaWQgYW5kIHdlIG5lZWQgdG8gaWdub3JlIHRoZW0uCgpCdWd6aWxsYTogaHR0cHM6Ly9i
dWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMzYzClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMjQgKysrKysrKysrKysrKysrKysrKy0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IGI2NWJjMDY4NTViMC4uYjM5NzEzMjg0NTcwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMTI5MSwzOCArMTI5MSw1MiBAQCBh
c3NlcnRfcGVuZGluZ192YWxpZChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAq
ZXhlY2xpc3RzLAogCX0KIAogCWZvciAocG9ydCA9IGV4ZWNsaXN0cy0+cGVuZGluZzsgKHJxID0g
KnBvcnQpOyBwb3J0KyspIHsKKwkJdW5zaWduZWQgbG9uZyBmbGFnczsKKwkJYm9vbCBvayA9IHRy
dWU7CisKIAkJaWYgKGNlID09IHJxLT5od19jb250ZXh0KSB7CiAJCQlHRU1fVFJBQ0VfRVJSKCJE
dXAgY29udGV4dDolbGx4IGluIHBlbmRpbmdbJXpkXVxuIiwKIAkJCQkgICAgICBjZS0+dGltZWxp
bmUtPmZlbmNlX2NvbnRleHQsCiAJCQkJICAgICAgcG9ydCAtIGV4ZWNsaXN0cy0+cGVuZGluZyk7
CiAJCQlyZXR1cm4gZmFsc2U7CiAJCX0KLQogCQljZSA9IHJxLT5od19jb250ZXh0OworCisJCS8q
IEhvbGQgdGlnaHRseSBvbnRvIHRoZSBsb2NrIHRvIHByZXZlbnQgY29uY3VycmVudCByZXRpcmVz
ISAqLworCQlzcGluX2xvY2tfaXJxc2F2ZSgmcnEtPmxvY2ssIGZsYWdzKTsKKwogCQlpZiAoaTkx
NV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCi0JCQljb250aW51ZTsKKwkJCWdvdG8gdW5sb2NrOwog
CiAJCWlmIChpOTE1X2FjdGl2ZV9pc19pZGxlKCZjZS0+YWN0aXZlKSAmJgogCQkgICAgIWk5MTVf
Z2VtX2NvbnRleHRfaXNfa2VybmVsKGNlLT5nZW1fY29udGV4dCkpIHsKIAkJCUdFTV9UUkFDRV9F
UlIoIkluYWN0aXZlIGNvbnRleHQ6JWxseCBpbiBwZW5kaW5nWyV6ZF1cbiIsCiAJCQkJICAgICAg
Y2UtPnRpbWVsaW5lLT5mZW5jZV9jb250ZXh0LAogCQkJCSAgICAgIHBvcnQgLSBleGVjbGlzdHMt
PnBlbmRpbmcpOwotCQkJcmV0dXJuIGZhbHNlOworCQkJb2sgPSBmYWxzZTsKKwkJCWdvdG8gdW5s
b2NrOwogCQl9CiAKIAkJaWYgKCFpOTE1X3ZtYV9pc19waW5uZWQoY2UtPnN0YXRlKSkgewogCQkJ
R0VNX1RSQUNFX0VSUigiVW5waW5uZWQgY29udGV4dDolbGx4IGluIHBlbmRpbmdbJXpkXVxuIiwK
IAkJCQkgICAgICBjZS0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQsCiAJCQkJICAgICAgcG9ydCAt
IGV4ZWNsaXN0cy0+cGVuZGluZyk7Ci0JCQlyZXR1cm4gZmFsc2U7CisJCQlvayA9IGZhbHNlOwor
CQkJZ290byB1bmxvY2s7CiAJCX0KIAogCQlpZiAoIWk5MTVfdm1hX2lzX3Bpbm5lZChjZS0+cmlu
Zy0+dm1hKSkgewogCQkJR0VNX1RSQUNFX0VSUigiVW5waW5uZWQgcmluZzolbGx4IGluIHBlbmRp
bmdbJXpkXVxuIiwKIAkJCQkgICAgICBjZS0+dGltZWxpbmUtPmZlbmNlX2NvbnRleHQsCiAJCQkJ
ICAgICAgcG9ydCAtIGV4ZWNsaXN0cy0+cGVuZGluZyk7Ci0JCQlyZXR1cm4gZmFsc2U7CisJCQlv
ayA9IGZhbHNlOworCQkJZ290byB1bmxvY2s7CiAJCX0KKwordW5sb2NrOgorCQlzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZycS0+bG9jaywgZmxhZ3MpOworCQlpZiAoIW9rKQorCQkJcmV0dXJuIGZh
bHNlOwogCX0KIAogCXJldHVybiBjZTsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
