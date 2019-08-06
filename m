Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D230B82E55
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3613B6E33D;
	Tue,  6 Aug 2019 09:05:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 327C56E33A
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:05:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17901474-1500050 
 for multiple; Tue, 06 Aug 2019 10:05:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 10:05:29 +0100
Message-Id: <20190806090535.14807-16-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190806090535.14807-1-chris@chris-wilson.co.uk>
References: <20190806090535.14807-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/22] drm/i915/gt: Guard timeline pinning with
 its own mutex
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

SW4gcHJlcGFyYXRpb24gZm9yIHJlbW92aW5nIHN0cnVjdF9tdXRleCBmcm9tIGFyb3VuZCBjb250
ZXh0IHJldGlyZW1lbnQsCndlIG5lZWQgdG8gbWFrZSB0aW1lbGluZSBwaW5uaW5nIHNhZmUuIFNp
bmNlIG11bHRpcGxlIGVuZ2luZXMvY29udGV4dHMKY2FuIHNoYXJlIGEgc2luZ2xlIHRpbWVsaW5l
LCBpdCBuZWVkcyB0byBiZSBwcm90ZWN0ZWQgYnkgYSBtdXRleC4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgICAgICB8IDI3ICsrKysrKysrKy0tLS0tLS0tLS0K
IC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaCAgICB8ICAyICstCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICAgICAgfCAgNiArKy0tLQog
MyBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYwppbmRleCAzNTVkZmM1MmM4MDQuLjdi
NDc2Y2Q1NWRhYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGlt
ZWxpbmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCkBA
IC0yMTEsOSArMjExLDkgQEAgaW50IGludGVsX3RpbWVsaW5lX2luaXQoc3RydWN0IGludGVsX3Rp
bWVsaW5lICp0aW1lbGluZSwKIAl2b2lkICp2YWRkcjsKIAogCWtyZWZfaW5pdCgmdGltZWxpbmUt
PmtyZWYpOworCWF0b21pY19zZXQoJnRpbWVsaW5lLT5waW5fY291bnQsIDApOwogCiAJdGltZWxp
bmUtPmd0ID0gZ3Q7Ci0JdGltZWxpbmUtPnBpbl9jb3VudCA9IDA7CiAKIAl0aW1lbGluZS0+aGFz
X2luaXRpYWxfYnJlYWRjcnVtYiA9ICFod3NwOwogCXRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSA9
IE5VTEw7CkBAIC0yODAsNyArMjgwLDcgQEAgdm9pZCBpbnRlbF90aW1lbGluZXNfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogdm9pZCBpbnRlbF90aW1lbGluZV9maW5pKHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGltZWxpbmUpCiB7Ci0JR0VNX0JVR19PTih0aW1lbGluZS0+
cGluX2NvdW50KTsKKwlHRU1fQlVHX09OKGF0b21pY19yZWFkKCZ0aW1lbGluZS0+cGluX2NvdW50
KSk7CiAJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmdGltZWxpbmUtPnJlcXVlc3RzKSk7CiAKIAlp
ZiAodGltZWxpbmUtPmh3c3BfY2FjaGVsaW5lKQpAQCAtMzE0LDMzICszMTQsMzEgQEAgaW50IGlu
dGVsX3RpbWVsaW5lX3BpbihzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewogCWludCBlcnI7
CiAKLQlpZiAodGwtPnBpbl9jb3VudCsrKQorCWlmIChhdG9taWNfYWRkX3VubGVzcygmdGwtPnBp
bl9jb3VudCwgMSwgMCkpCiAJCXJldHVybiAwOwotCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQp
OwotCUdFTV9CVUdfT04odGwtPmFjdGl2ZV9jb3VudCk7CiAKIAllcnIgPSBpOTE1X3ZtYV9waW4o
dGwtPmh3c3BfZ2d0dCwgMCwgMCwgUElOX0dMT0JBTCB8IFBJTl9ISUdIKTsKIAlpZiAoZXJyKQot
CQlnb3RvIHVucGluOworCQlyZXR1cm4gZXJyOwogCiAJdGwtPmh3c3Bfb2Zmc2V0ID0KIAkJaTkx
NV9nZ3R0X29mZnNldCh0bC0+aHdzcF9nZ3R0KSArCiAJCW9mZnNldF9pbl9wYWdlKHRsLT5od3Nw
X29mZnNldCk7CiAKIAljYWNoZWxpbmVfYWNxdWlyZSh0bC0+aHdzcF9jYWNoZWxpbmUpOworCWlm
IChhdG9taWNfZmV0Y2hfaW5jKCZ0bC0+cGluX2NvdW50KSkgeworCQljYWNoZWxpbmVfcmVsZWFz
ZSh0bC0+aHdzcF9jYWNoZWxpbmUpOworCQlfX2k5MTVfdm1hX3VucGluKHRsLT5od3NwX2dndHQp
OworCX0KIAogCXJldHVybiAwOwotCi11bnBpbjoKLQl0bC0+cGluX2NvdW50ID0gMDsKLQlyZXR1
cm4gZXJyOwogfQogCiB2b2lkIGludGVsX3RpbWVsaW5lX2VudGVyKHN0cnVjdCBpbnRlbF90aW1l
bGluZSAqdGwpCiB7CiAJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJnRs
LT5ndC0+dGltZWxpbmVzOwogCi0JR0VNX0JVR19PTighdGwtPnBpbl9jb3VudCk7CisJR0VNX0JV
R19PTighYXRvbWljX3JlYWQoJnRsLT5waW5fY291bnQpKTsKIAlpZiAodGwtPmFjdGl2ZV9jb3Vu
dCsrKQogCQlyZXR1cm47CiAJR0VNX0JVR19PTighdGwtPmFjdGl2ZV9jb3VudCk7IC8qIG92ZXJm
bG93PyAqLwpAQCAtMzcyLDcgKzM3MCw3IEBAIHZvaWQgaW50ZWxfdGltZWxpbmVfZXhpdChzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogCiBzdGF0aWMgdTMyIHRpbWVsaW5lX2FkdmFuY2Uoc3Ry
dWN0IGludGVsX3RpbWVsaW5lICp0bCkKIHsKLQlHRU1fQlVHX09OKCF0bC0+cGluX2NvdW50KTsK
KwlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmdGwtPnBpbl9jb3VudCkpOwogCUdFTV9CVUdfT04o
dGwtPnNlcW5vICYgdGwtPmhhc19pbml0aWFsX2JyZWFkY3J1bWIpOwogCiAJcmV0dXJuIHRsLT5z
ZXFubyArPSAxICsgdGwtPmhhc19pbml0aWFsX2JyZWFkY3J1bWI7CkBAIC01MjMsMTEgKzUyMSwx
MCBAQCBpbnQgaW50ZWxfdGltZWxpbmVfcmVhZF9od3NwKHN0cnVjdCBpOTE1X3JlcXVlc3QgKmZy
b20sCiAKIHZvaWQgaW50ZWxfdGltZWxpbmVfdW5waW4oc3RydWN0IGludGVsX3RpbWVsaW5lICp0
bCkKIHsKLQlHRU1fQlVHX09OKCF0bC0+cGluX2NvdW50KTsKLQlpZiAoLS10bC0+cGluX2NvdW50
KQorCUdFTV9CVUdfT04oIWF0b21pY19yZWFkKCZ0bC0+cGluX2NvdW50KSk7CisJaWYgKCFhdG9t
aWNfZGVjX2FuZF90ZXN0KCZ0bC0+cGluX2NvdW50KSkKIAkJcmV0dXJuOwogCi0JR0VNX0JVR19P
Tih0bC0+YWN0aXZlX2NvdW50KTsKIAljYWNoZWxpbmVfcmVsZWFzZSh0bC0+aHdzcF9jYWNoZWxp
bmUpOwogCiAJX19pOTE1X3ZtYV91bnBpbih0bC0+aHdzcF9nZ3R0KTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lX3R5cGVzLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oCmluZGV4IGIxYTlmMGM1NGJmMC4u
MmIxYmFmMmZjYzhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZV90eXBlcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVs
aW5lX3R5cGVzLmgKQEAgLTQxLDcgKzQxLDcgQEAgc3RydWN0IGludGVsX3RpbWVsaW5lIHsKIAkg
KiBidXQgdGhlIHBpbl9jb3VudCBpcyBwcm90ZWN0ZWQgYnkgYSBjb21iaW5hdGlvbiBvZiBzZXJp
YWxpc2F0aW9uCiAJICogZnJvbSB0aGUgaW50ZWxfY29udGV4dCBjYWxsZXIgcGx1cyBpbnRlcm5h
bCBhdG9taWNpdHkuCiAJICovCi0JdW5zaWduZWQgaW50IHBpbl9jb3VudDsKKwlhdG9taWNfdCBw
aW5fY291bnQ7CiAJdW5zaWduZWQgaW50IGFjdGl2ZV9jb3VudDsKIAogCWNvbnN0IHUzMiAqaHdz
cF9zZXFubzsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCmluZGV4IDE2YjA5Mjdl
Mzk0OC4uNDQwODFlY2ZiYjliIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9t
b2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMK
QEAgLTM0LDEzICszNCwxMyBAQAogCiBzdGF0aWMgdm9pZCBtb2NrX3RpbWVsaW5lX3BpbihzdHJ1
Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewotCXRsLT5waW5fY291bnQrKzsKKwlhdG9taWNfaW5j
KCZ0bC0+cGluX2NvdW50KTsKIH0KIAogc3RhdGljIHZvaWQgbW9ja190aW1lbGluZV91bnBpbihz
dHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQogewotCUdFTV9CVUdfT04oIXRsLT5waW5fY291bnQp
OwotCXRsLT5waW5fY291bnQtLTsKKwlHRU1fQlVHX09OKCFhdG9taWNfcmVhZCgmdGwtPnBpbl9j
b3VudCkpOworCWF0b21pY19kZWMoJnRsLT5waW5fY291bnQpOwogfQogCiBzdGF0aWMgc3RydWN0
IGludGVsX3JpbmcgKm1vY2tfcmluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCi0t
IAoyLjIzLjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
