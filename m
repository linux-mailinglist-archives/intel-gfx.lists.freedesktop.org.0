Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80042279AD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 11:49:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FAF789D79;
	Thu, 23 May 2019 09:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6760789D79;
 Thu, 23 May 2019 09:49:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16652036-1500050 
 for multiple; Thu, 23 May 2019 10:49:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 10:49:40 +0100
Message-Id: <20190523094940.30195-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] igt/gem_fence_thrash,
 gem_mmap_gtt: Don't let the device sleep
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlc2UgdGVzdHMgYXJlIG5vdCBpbnRlbmRlZCB0byBleGVyY2lzZSBydW50aW1lIHBtLCBidXQg
dGhlIGRldmljZQpnb2luZyB0byBzbGVlcCBpbiB0aGUgbWlkZGxlIG9mIHRoZXNlIHRlc3RzIGNh
biBzaWduaWZpY2FudGx5IHNsb3cgdGhlbQpkb3duIGFzIHRoZSBHVFQgbW1hcHBpbmcgaXMgdG9y
biBkb3duIGFuZCBtdXN0IGJlIHJlYnVpbHQuIFRoaXMgY2FuIGJlIGEKbWFqb3IgbnVpc2FuY2Ug
aWYgdGhlIGRldmljZSBhdXRvc3VzcGVuZHMgbWFueSB0aW1lcyBhIHNlY29uZC4KClRoZXNlIHRl
c3RzIGRpZmZlciBmcm9tIHR5cGljYWwgYXBwbGljYXRpb25zIGFzIHRoZXkgYXJlIG5vdCBkb2lu
ZyBhbnkKcmVuZGVyaW5nIG9yIHV0aWxpemluZyB0aGUgZGlzcGxheSB3aGljaCB3b3VsZCBvcmRp
bmFyaWx5IGtlZXAgdGhlCmRldmljZSBhd2FrZS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2ZlbmNlX3Ro
cmFzaC5jIHwgMTcgKysrKysrKysrKysrKysrKysKIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMg
ICAgIHwgMTUgKysrKysrKysrKysrKystCiAyIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9mZW5jZV90aHJh
c2guYyBiL3Rlc3RzL2k5MTUvZ2VtX2ZlbmNlX3RocmFzaC5jCmluZGV4IDJkN2ZiMmZmOC4uNzcw
ZTljYjk4IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9mZW5jZV90aHJhc2guYworKysgYi90
ZXN0cy9pOTE1L2dlbV9mZW5jZV90aHJhc2guYwpAQCAtMjMyLDEwICsyMzIsMjcgQEAgc3RhdGlj
IGludCBydW5fdGVzdChpbnQgdGhyZWFkc19wZXJfZmVuY2UsIHZvaWQgKmYsIGludCB0aWxpbmcs
CiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBpbnQgd2FrZXJlZl9vcGVuKGludCBkZXZpY2UpCit7
CisJaW50IGRpciwgZmQ7CisKKwlkaXIgPSBpZ3RfZGVidWdmc19kaXIoZGV2aWNlKTsKKwlmZCA9
IG9wZW5hdChkaXIsICJpOTE1X3dha2VyZWZfdXNlciIsIE9fUkRPTkxZKTsKKwljbG9zZShkaXIp
OworCisJcmV0dXJuIGZkOworfQorCiBpZ3RfbWFpbgogewogCWlndF9za2lwX29uX3NpbXVsYXRp
b24oKTsKIAorCWlndF9maXh0dXJlIHsKKwkJaW50IGZkID0gZHJtX29wZW5fZHJpdmVyKERSSVZF
Ul9JTlRFTCk7CisJCXdha2VyZWZfb3BlbihmZCk7CisJCWNsb3NlKGZkKTsKKwl9CisKIAlpZ3Rf
c3VidGVzdCgiYm8td3JpdGUtdmVyaWZ5LW5vbmUiKQogCQlpZ3RfYXNzZXJ0KHJ1bl90ZXN0KDAs
IGJvX3dyaXRlX3ZlcmlmeSwgSTkxNV9USUxJTkdfTk9ORSwgODApID09IDApOwogCmRpZmYgLS1n
aXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQu
YwppbmRleCA5YTY3MGYwMzAuLjRiNzA5ZjgxZSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1f
bW1hcF9ndHQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCkBAIC04NzMsNiArODcz
LDE3IEBAIHN0YXRpYyBpbnQgbW1hcF9pb2N0bChpbnQgaTkxNSwgc3RydWN0IGRybV9pOTE1X2dl
bV9tbWFwX2d0dCAqYXJnKQogCXJldHVybiBlcnI7CiB9CiAKK3N0YXRpYyBpbnQgd2FrZXJlZl9v
cGVuKGludCBkZXZpY2UpCit7CisJaW50IGRpciwgZmQ7CisKKwlkaXIgPSBpZ3RfZGVidWdmc19k
aXIoZGV2aWNlKTsKKwlmZCA9IG9wZW5hdChkaXIsICJpOTE1X3dha2VyZWZfdXNlciIsIE9fUkRP
TkxZKTsKKwljbG9zZShkaXIpOworCisJcmV0dXJuIGZkOworfQorCiBpbnQgZmQ7CiAKIGlndF9t
YWluCkBAIC04ODAsOCArODkxLDEwIEBAIGlndF9tYWluCiAJaWYgKGlndF9ydW5faW5fc2ltdWxh
dGlvbigpKQogCQlPQkpFQ1RfU0laRSA9IDEgKiAxMDI0ICogMTAyNDsKIAotCWlndF9maXh0dXJl
CisJaWd0X2ZpeHR1cmUgewogCQlmZCA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJfSU5URUwpOwor
CQl3YWtlcmVmX29wZW4oZmQpOworCX0KIAogCWlndF9zdWJ0ZXN0KCJiYWQtb2JqZWN0Iikgewog
CQl1aW50MzJfdCByZWFsX2hhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
