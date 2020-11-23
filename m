Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3C52C1016
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 17:27:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40C946E043;
	Mon, 23 Nov 2020 16:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32576E043
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 16:27:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23081003-1500050 
 for multiple; Mon, 23 Nov 2020 16:27:17 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Nov 2020 16:27:17 +0000
Message-Id: <20201123162717.21845-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201123145551.13222-1-chris@chris-wilson.co.uk>
References: <20201123145551.13222-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Record the plane update
 times for debugging
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugd2UgdHJ5IGFuZCBlc3RpbWF0ZSBob3cgbG9uZyB3ZSByZXF1aXJlIHRvIHVwZGF0ZSB0
aGUgcmVnaXN0ZXJzIHRvCnBlcmZvcm0gYSBwbGFuZSB1cGRhdGUsIGl0IGlzIG9mIHZpdGFsIGlt
cG9ydGFuY2UgdGhhdCB3ZSBtZWFzdXJlIHRoZQpkaXN0cmlidXRpb24gb2YgcGxhbmUgdXBkYXRl
cyB0byBiZXR0ZXIgZ3VpZGUgb3VyIGVzdGltYXRlLiBJZiB3ZQp1bmRlcmVzdGltYXRlIGhvdyBs
b25nIGl0IHRha2VzIHRvIHBlcmZvcm0gdGhlIHBsYW5lIHVwZGF0ZSwgd2UgbWF5CnNsaXAgaW50
byB0aGUgbmV4dCBzY2Fub3V0IGZyYW1lIGNhdXNpbmcgYSB0ZWFyLiBJZiB3ZSBvdmVyZXN0aW1h
dGUsIHdlCm1heSB1bm5lY2Vzc2FyaWx5IGRlbGF5IHRoZSB1cGRhdGUgdG8gdGhlIG5leHQgZnJh
bWUsIGNhdXNpbmcgdmlzaWJsZQpqaXR0ZXIuCgpSZXBsYWNlIHRoZSB3YXJuaW5nIHRoYXQgd2Ug
ZXhjZWVkIHNvbWUgYXJiaXRyYXJ5IHRocmVzaG9sZCBmb3IgdGhlCnZibGFuayB1cGRhdGUgd2l0
aCBhIGhpc3RvZ3JhbSBmb3IgZGVidWdmcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxp
bnV4LmludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2Zz
LmMgIHwgNDYgKysrKysrKysrKysrKysrKysrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oICAgIHwgIDcgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jICAgfCAyOSArKysrKysrKystLS0KIDMgZmlsZXMgY2hhbmdlZCwgNzUg
aW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwppbmRleCBjYTQxZThjMDBhZDcu
LmQ0YmNmNDk3MTU1OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCkBAIC04NjUsNiArODY1LDUwIEBAIHN0YXRpYyB2b2lk
IGludGVsX3NjYWxlcl9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMg
KmNydGMpCiAJfQogfQogCisjaWZkZWYgQ09ORklHX0RSTV9JOTE1X0RFQlVHX1ZCTEFOS19FVkFE
RQorc3RhdGljIHZvaWQgY3J0Y192YmxhbmtfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVj
dCBpbnRlbF9jcnRjICpjcnRjKQoreworCWNoYXIgYnVmW0FSUkFZX1NJWkUoY3J0Yy0+ZGVidWcu
dmJsX3RpbWVzKSArIDFdID0ge307CisJaW50IGgsIHJvdywgbWF4OworCXU2NCBjb3VudDsKKwor
CW1heCA9IDA7CisJY291bnQgPSAwOworCWZvciAoaCA9IDA7IGggPCBBUlJBWV9TSVpFKGNydGMt
PmRlYnVnLnZibF90aW1lcyk7IGgrKykgeworCQlpZiAoY3J0Yy0+ZGVidWcudmJsX3RpbWVzW2hd
ID4gbWF4KQorCQkJbWF4ID0gY3J0Yy0+ZGVidWcudmJsX3RpbWVzW2hdOworCQljb3VudCArPSBj
cnRjLT5kZWJ1Zy52YmxfdGltZXNbaF07CisJfQorCXNlcV9wcmludGYobSwgIlx0VXBkYXRlczog
JWxsdVxuIiwgY291bnQpOworCWlmICghY291bnQpCisJCXJldHVybjsKKworCW1lbXNldChidWYs
ICctJywgc2l6ZW9mKGJ1ZikgLSAxKTsKKwlzZXFfcHJpbnRmKG0sICJcdCAgfCVzfFxuIiwgYnVm
KTsKKworCWZvciAocm93ID0gaWxvZzIobWF4KSAtIDE7IHJvdzsgcm93LS0pIHsKKwkJbWVtc2V0
KGJ1ZiwgJyAnLCBzaXplb2YoYnVmKSAtIDEpOworCQlmb3IgKGggPSAwOyBoIDwgQVJSQVlfU0la
RShjcnRjLT5kZWJ1Zy52YmxfdGltZXMpOyBoKyspIHsKKwkJCWlmIChpbG9nMihjcnRjLT5kZWJ1
Zy52YmxfdGltZXNbaF0pID49IHJvdykKKwkJCQlidWZbaF0gPSAnKic7CisJCX0KKwkJc2VxX3By
aW50ZihtLCAiXHQgIHwlc3xcbiIsIGJ1Zik7CisJfQorCisJbWVtc2V0KGJ1ZiwgJy0nLCBzaXpl
b2YoYnVmKSAtIDEpOworCXNlcV9wcmludGYobSwgIlx0ICB8JXN8XG4iLCBidWYpOworCXNlcV9w
cmludGYobSwgIlx0ICAgIDF1cyAgICAgKGxvZykgICAgICAxbXNcbiIpOworCisJc2VxX3ByaW50
ZihtLCAiXHRNaW4gdXBkYXRlOiAlbGx1bnNcbiIsIGNydGMtPmRlYnVnLm1pbl92YmxfdGltZSk7
CisJc2VxX3ByaW50ZihtLCAiXHRNYXggdXBkYXRlOiAlbGx1bnNcbiIsIGNydGMtPmRlYnVnLm1h
eF92YmxfdGltZSk7CisJc2VxX3ByaW50ZihtLCAiXHRBdmVyYWdlIHVwZGF0ZTogJWxsdW5zXG4i
LAorCQkgICBkaXY2NF91NjQoY3J0Yy0+ZGVidWcuc3VtX3ZibF90aW1lLCAgY291bnQpKTsKKwlz
ZXFfcHJpbnRmKG0sICJcdE92ZXJmbG93czogJWx1XG4iLCBjcnRjLT5kZWJ1Zy5vdmVyX3ZibF90
aW1lKTsKK30KKyNlbHNlCitzdGF0aWMgdm9pZCBjcnRjX3ZibGFua19pbmZvKHN0cnVjdCBzZXFf
ZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpIHt9CisjZW5kaWYKKwogc3RhdGljIHZv
aWQgaW50ZWxfY3J0Y19pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMg
KmNydGMpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gbm9kZV90b19p
OTE1KG0tPnByaXZhdGUpOwpAQCAtOTA3LDYgKzk1MSw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2Ny
dGNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCXNl
cV9wcmludGYobSwgIlx0dW5kZXJydW4gcmVwb3J0aW5nOiBjcHU9JXMgcGNoPSVzXG4iLAogCQkg
ICB5ZXNubyghY3J0Yy0+Y3B1X2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQpLAogCQkgICB5ZXNubygh
Y3J0Yy0+cGNoX2ZpZm9fdW5kZXJydW5fZGlzYWJsZWQpKTsKKworCWNydGNfdmJsYW5rX2luZm8o
bSwgY3J0Yyk7CiB9CiAKIHN0YXRpYyBpbnQgaTkxNV9kaXNwbGF5X2luZm8oc3RydWN0IHNlcV9m
aWxlICptLCB2b2lkICp1bnVzZWQpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGNlODJkNjU0ZDBmMi4uZWZiYjdjNjFlNmZi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaApAQCAtMTE4Niw2ICsxMTg2LDEzIEBAIHN0cnVjdCBpbnRlbF9jcnRjIHsKIAkJa3Rp
bWVfdCBzdGFydF92YmxfdGltZTsKIAkJaW50IG1pbl92YmwsIG1heF92Ymw7CiAJCWludCBzY2Fu
bGluZV9zdGFydDsKKyNpZmRlZiBDT05GSUdfRFJNX0k5MTVfREVCVUdfVkJMQU5LX0VWQURFCisJ
CXU2NCBtaW5fdmJsX3RpbWU7CisJCXU2NCBtYXhfdmJsX3RpbWU7CisJCXU2NCBzdW1fdmJsX3Rp
bWU7CisJCXVuc2lnbmVkIGludCB2YmxfdGltZXNbMjFdOyAvKiBbMXVzLCAxbXNdICovCisJCXVu
c2lnbmVkIGxvbmcgb3Zlcl92YmxfdGltZTsKKyNlbmRpZgogCX0gZGVidWc7CiAKIAkvKiBzY2Fs
ZXJzIGF2YWlsYWJsZSBvbiB0aGlzIGNydGMgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDAxOWEyZDZkODA3YS4uNjYxY2JhZjRjYzM4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTI1MCwxMyAr
MjUwLDI4IEBAIHZvaWQgaW50ZWxfcGlwZV91cGRhdGVfZW5kKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpuZXdfY3J0Y19zdGF0ZSkKIAkJCWNydGMtPmRlYnVnLnNjYW5saW5lX3N0YXJ0LCBzY2Fu
bGluZV9lbmQpOwogCX0KICNpZmRlZiBDT05GSUdfRFJNX0k5MTVfREVCVUdfVkJMQU5LX0VWQURF
Ci0JZWxzZSBpZiAoa3RpbWVfdXNfZGVsdGEoZW5kX3ZibF90aW1lLCBjcnRjLT5kZWJ1Zy5zdGFy
dF92YmxfdGltZSkgPgotCQkgVkJMQU5LX0VWQVNJT05fVElNRV9VUykKLQkJZHJtX3dhcm4oJmRl
dl9wcml2LT5kcm0sCi0JCQkgIkF0b21pYyB1cGRhdGUgb24gcGlwZSAoJWMpIHRvb2sgJWxsZCB1
cywgbWF4IHRpbWUgdW5kZXIgZXZhc2lvbiBpcyAldSB1c1xuIiwKLQkJCSBwaXBlX25hbWUocGlw
ZSksCi0JCQkga3RpbWVfdXNfZGVsdGEoZW5kX3ZibF90aW1lLCBjcnRjLT5kZWJ1Zy5zdGFydF92
YmxfdGltZSksCi0JCQkgVkJMQU5LX0VWQVNJT05fVElNRV9VUyk7CisJeworCQl1bnNpZ25lZCBp
bnQgaDsKKwkJdTY0IGRlbHRhOworCisJCWRlbHRhID0ga3RpbWVfdG9fbnMoa3RpbWVfc3ViKGVu
ZF92YmxfdGltZSwKKwkJCQkJICAgICAgY3J0Yy0+ZGVidWcuc3RhcnRfdmJsX3RpbWUpKTsKKwor
CQloID0gaWxvZzIoZGVsdGEgPj4gOSk7CisJCWlmIChoID49IEFSUkFZX1NJWkUoY3J0Yy0+ZGVi
dWcudmJsX3RpbWVzKSkKKwkJCWggPSBBUlJBWV9TSVpFKGNydGMtPmRlYnVnLnZibF90aW1lcykg
LSAxOworCQljcnRjLT5kZWJ1Zy52YmxfdGltZXNbaF0rKzsKKworCQljcnRjLT5kZWJ1Zy5zdW1f
dmJsX3RpbWUgKz0gZGVsdGE7CisJCWlmICghY3J0Yy0+ZGVidWcubWluX3ZibF90aW1lIHx8CisJ
CSAgICBkZWx0YSA8IGNydGMtPmRlYnVnLm1pbl92YmxfdGltZSkKKwkJCWNydGMtPmRlYnVnLm1p
bl92YmxfdGltZSA9IGRlbHRhOworCQlpZiAoZGVsdGEgPiBjcnRjLT5kZWJ1Zy5tYXhfdmJsX3Rp
bWUpCisJCQljcnRjLT5kZWJ1Zy5tYXhfdmJsX3RpbWUgPSBkZWx0YTsKKworCQlpZiAoZGVsdGEg
PiAxMDAwICogVkJMQU5LX0VWQVNJT05fVElNRV9VUykKKwkJCWNydGMtPmRlYnVnLm92ZXJfdmJs
X3RpbWUrKzsKKwl9CiAjZW5kaWYKIH0KIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
