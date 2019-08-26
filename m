Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6C49CA24
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 09:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129A36E1F1;
	Mon, 26 Aug 2019 07:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0906E1BD
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 07:22:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18262679-1500050 
 for multiple; Mon, 26 Aug 2019 08:21:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 08:21:25 +0100
Message-Id: <20190826072149.9447-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826072149.9447-1-chris@chris-wilson.co.uk>
References: <20190826072149.9447-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/28] drm/i915/gtt: Downgrade Baytrail back to
 aliasing-ppgtt
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

V2l0aCB0aGUgdXBjb21pbmcgY2hhbmdlIGluIHRpbWluZyAoZHJhbWF0aWNhbGx5IHJlZHVjaW5n
IHRoZSBsYXRlbmN5CmJldHdlZW4gbWFuaXB1bGF0aW5nIHRoZSBwcEdUVCBhbmQgZXhlY3V0aW9u
KSwgbm8gYW1vdW50IG9mIHR3ZWFraW5nCmNvdWxkIHNhdmUgQmF5dHJhaWwsIGl0IHdvdWxkIGFs
d2F5cyBmYWlsIHRvIGludmFsaWRhdGUgaXRzIFRMQi4gVmlsbGUKd2FzIHJpZ2h0LCBCYXl0cmFp
bCBpcyBiZXlvbmQgaG9wZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdi
dWZmZXIuYyB8IDIzICsrKy0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcGNpLmMgICAgICAgICAgICB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmluZ2J1ZmZlci5jCmluZGV4IDYwMWMxNjIzOWZkZi4uZmRkZGRhNzVlYjQxIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCkBAIC0xNzUxLDI2ICsxNzUxLDEw
IEBAIHN0YXRpYyBpbnQgc3dpdGNoX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAK
IAlpZiAodm0pIHsKIAkJc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0ID0gaTkxNV92bV90b19wcGd0
dCh2bSk7Ci0JCWludCBsb29wczsKIAotCQkvKgotCQkgKiBCYXl0YWlsIHRha2VzIGEgbGl0dGxl
IG1vcmUgY29udmluY2luZyB0aGF0IGl0IHJlYWxseSBuZWVkcwotCQkgKiB0byByZWxvYWQgdGhl
IFBEIGJldHdlZW4gY29udGV4dHMuIEl0IGlzIG5vdCBqdXN0IGEgbGl0dGxlCi0JCSAqIGxvbmdl
ciwgYXMgYWRkaW5nIG1vcmUgc3RhbGxzIGFmdGVyIHRoZSBsb2FkX3BkX2RpciAoaS5lLgotCQkg
KiBhZGRpbmcgYSBsb25nIGxvb3AgYXJvdW5kIGZsdXNoX3BkX2RpcikgaXMgbm90IGFzIGVmZmVj
dGl2ZQotCQkgKiBhcyByZWxvYWRpbmcgdGhlIFBEIHVtcHRlZW4gdGltZXMuIDMyIGlzIGRlcml2
ZWQgZnJvbQotCQkgKiBleHBlcmltZW50YXRpb24gKGdlbV9leGVjX3BhcmFsbGVsL2ZkcykgYW5k
IGhhcyBubyBnb29kCi0JCSAqIGV4cGxhbmF0aW9uLgotCQkgKi8KLQkJbG9vcHMgPSAxOwotCQlp
ZiAoZW5naW5lLT5pZCA9PSBCQ1MwICYmIElTX1ZBTExFWVZJRVcoZW5naW5lLT5pOTE1KSkKLQkJ
CWxvb3BzID0gMzI7Ci0KLQkJZG8gewotCQkJcmV0ID0gbG9hZF9wZF9kaXIocnEsIHBwZ3R0KTsK
LQkJCWlmIChyZXQpCi0JCQkJZ290byBlcnI7Ci0JCX0gd2hpbGUgKC0tbG9vcHMpOworCQlyZXQg
PSBsb2FkX3BkX2RpcihycSwgcHBndHQpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKIAog
CQlpZiAocHBndHQtPnBkX2RpcnR5X2VuZ2luZXMgJiBlbmdpbmUtPm1hc2spIHsKIAkJCXVud2lu
ZF9tbSA9IGVuZ2luZS0+bWFzazsKQEAgLTE4MzIsNyArMTgxNiw2IEBAIHN0YXRpYyBpbnQgc3dp
dGNoX2NvbnRleHQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiBlcnJfbW06CiAJaWYgKHVud2lu
ZF9tbSkKIAkJaTkxNV92bV90b19wcGd0dCh2bSktPnBkX2RpcnR5X2VuZ2luZXMgfD0gdW53aW5k
X21tOwotZXJyOgogCXJldHVybiByZXQ7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4
IDE5NzRlNGM3OGE0My4uNGMxMjBhMmU5MmFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAg
LTQ3Niw3ICs0NzYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGlu
dGVsX3ZhbGxleXZpZXdfaW5mbyA9IHsKIAkuaGFzX3JwcyA9IHRydWUsCiAJLmRpc3BsYXkuaGFz
X2dtY2ggPSAxLAogCS5kaXNwbGF5Lmhhc19ob3RwbHVnID0gMSwKLQkucHBndHRfdHlwZSA9IElO
VEVMX1BQR1RUX0ZVTEwsCisJLnBwZ3R0X3R5cGUgPSBJTlRFTF9QUEdUVF9BTElBU0lORywKIAku
cHBndHRfc2l6ZSA9IDMxLAogCS5oYXNfc25vb3AgPSB0cnVlLAogCS5oYXNfY29oZXJlbnRfZ2d0
dCA9IGZhbHNlLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
