Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2C23AF8A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 455A88913D;
	Mon, 10 Jun 2019 07:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F8BC8912A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 07:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16848355-1500050 
 for multiple; Mon, 10 Jun 2019 08:21:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:21:00 +0100
Message-Id: <20190610072126.6355-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610072126.6355-1-chris@chris-wilson.co.uk>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/28] drm/i915: Track ggtt fence reservations
 under its own mutex
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

V2UgY2FuIHJlZHVjZSB0aGUgbG9ja2luZyBmb3IgZmVuY2UgcmVnaXN0ZXJzIGZyb20gdGhlIGRl
di0+c3RydWN0X211dGV4CnRvIGEgbG9jYWwgbXV0ZXguIFdlIGNvdWxkIGludHJvZHVjZSBhIG11
dGV4IGZvciB0aGUgc29sZSBwdXJwb3NlIG9mCnRyYWNraW5nIHRoZSBmZW5jZSBhY3F1aXNpdGlv
biwgZXhjZXB0IHRoZXJlIGlzIGEgbGl0dGxlIGJpdCBvZiBvdmVybGFwCndpdGggdGhlIGZhdWx0
IHRyYWNraW5nLCBzbyB1c2UgdGhlIGk5MTVfZ2d0dC5tdXRleCBhcyBpdCBjb3ZlcnMgYm90aC4K
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jIHwgIDcgKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgIHwgIDUgKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jICAgIHwgODEgKysrKysrKysr
KysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5oICAg
IHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oICAgICAgICAgIHwg
IDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuaCAgICAgICAgICAgICAgfCAgNCAr
LQogNiBmaWxlcyBjaGFuZ2VkLCA3MCBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9oYW5nY2hlY2suYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCmluZGV4IDNiZTY3
ZTU2MWMyNi4uMTI3ZmFlZjhkOGMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9oYW5nY2hlY2suYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9oYW5nY2hlY2suYwpAQCAtMTE2Niw3ICsxMTY2LDE0IEBAIHN0YXRpYyBpbnQgZXZpY3Rf
ZmVuY2Uodm9pZCAqZGF0YSkKIAkJZ290byBvdXRfdW5sb2NrOwogCX0KIAorCWVyciA9IGk5MTVf
dm1hX3BpbihhcmctPnZtYSwgMCwgMCwgUElOX0dMT0JBTCB8IFBJTl9NQVBQQUJMRSk7CisJaWYg
KGVycikgeworCQlwcl9lcnIoIlVuYWJsZSB0byBwaW4gdm1hIGZvciBZLXRpbGVkIGZlbmNlOyBl
cnI6JWRcbiIsIGVycik7CisJCWdvdG8gb3V0X3VubG9jazsKKwl9CisKIAllcnIgPSBpOTE1X3Zt
YV9waW5fZmVuY2UoYXJnLT52bWEpOworCWk5MTVfdm1hX3VucGluKGFyZy0+dm1hKTsKIAlpZiAo
ZXJyKSB7CiAJCXByX2VycigiVW5hYmxlIHRvIHBpbiBZLXRpbGVkIGZlbmNlOyBlcnI6JWRcbiIs
IGVycik7CiAJCWdvdG8gb3V0X3VubG9jazsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMK
aW5kZXggMzMxYjJmNDc4YzQ4Li5iMGY0YzM2MzhkMjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCkBAIC04ODIsMTAgKzg4MiwxMSBAQCBzdGF0aWMgaW50IGk5MTVfZ2VtX2ZlbmNl
X3JlZ3NfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAKIAlyY3VfcmVhZF9s
b2NrKCk7CiAJZm9yIChpID0gMDsgaSA8IGk5MTUtPmdndHQubnVtX2ZlbmNlczsgaSsrKSB7Ci0J
CXN0cnVjdCBpOTE1X3ZtYSAqdm1hID0gaTkxNS0+Z2d0dC5mZW5jZV9yZWdzW2ldLnZtYTsKKwkJ
c3RydWN0IGk5MTVfZmVuY2VfcmVnICpyZWcgPSAmaTkxNS0+Z2d0dC5mZW5jZV9yZWdzW2ldOwor
CQlzdHJ1Y3QgaTkxNV92bWEgKnZtYSA9IHJlZy0+dm1hOwogCiAJCXNlcV9wcmludGYobSwgIkZl
bmNlICVkLCBwaW4gY291bnQgPSAlZCwgb2JqZWN0ID0gIiwKLQkJCSAgIGksIGk5MTUtPmdndHQu
ZmVuY2VfcmVnc1tpXS5waW5fY291bnQpOworCQkJICAgaSwgYXRvbWljX3JlYWQoJnJlZy0+cGlu
X2NvdW50KSk7CiAJCWlmICghdm1hKQogCQkJc2VxX3B1dHMobSwgInVudXNlZCIpOwogCQllbHNl
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCmluZGV4IDRiYTM3MjY1
NTZhNC4uZDEzYmUzYjBlOTFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9mZW5jZV9yZWcuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5j
ZV9yZWcuYwpAQCAtMzAxLDE1ICszMDEsMjQgQEAgc3RhdGljIGludCBmZW5jZV91cGRhdGUoc3Ry
dWN0IGk5MTVfZmVuY2VfcmVnICpmZW5jZSwKICAqLwogaW50IGk5MTVfdm1hX3B1dF9mZW5jZShz
dHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKKwlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gaTkxNV92
bV90b19nZ3R0KHZtYS0+dm0pOwogCXN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2UgPSB2bWEt
PmZlbmNlOworCWludCBlcnI7CiAKIAlpZiAoIWZlbmNlKQogCQlyZXR1cm4gMDsKIAotCWlmIChm
ZW5jZS0+cGluX2NvdW50KQorCWlmIChhdG9taWNfcmVhZCgmZmVuY2UtPnBpbl9jb3VudCkpCiAJ
CXJldHVybiAtRUJVU1k7CiAKLQlyZXR1cm4gZmVuY2VfdXBkYXRlKGZlbmNlLCBOVUxMKTsKKwll
cnIgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmdndHQtPnZtLm11dGV4KTsKKwlpZiAoZXJy
KQorCQlyZXR1cm4gZXJyOworCisJZXJyID0gZmVuY2VfdXBkYXRlKGZlbmNlLCBOVUxMKTsKKwlt
dXRleF91bmxvY2soJmdndHQtPnZtLm11dGV4KTsKKworCXJldHVybiBlcnI7CiB9CiAKIHN0YXRp
YyBzdHJ1Y3QgaTkxNV9mZW5jZV9yZWcgKmZlbmNlX2ZpbmQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCkBAIC0zMTksNyArMzI4LDcgQEAgc3RhdGljIHN0cnVjdCBpOTE1X2ZlbmNlX3Jl
ZyAqZmVuY2VfZmluZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlsaXN0X2Zvcl9l
YWNoX2VudHJ5KGZlbmNlLCAmaTkxNS0+Z2d0dC5mZW5jZV9saXN0LCBsaW5rKSB7CiAJCUdFTV9C
VUdfT04oZmVuY2UtPnZtYSAmJiBmZW5jZS0+dm1hLT5mZW5jZSAhPSBmZW5jZSk7CiAKLQkJaWYg
KGZlbmNlLT5waW5fY291bnQpCisJCWlmIChhdG9taWNfcmVhZCgmZmVuY2UtPnBpbl9jb3VudCkp
CiAJCQljb250aW51ZTsKIAogCQlyZXR1cm4gZmVuY2U7CkBAIC0zNTMsNiArMzYyLDcgQEAgc3Rh
dGljIHN0cnVjdCBpOTE1X2ZlbmNlX3JlZyAqZmVuY2VfZmluZChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIGludAogaTkxNV92bWFfcGluX2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1h
KQogeworCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSBpOTE1X3ZtX3RvX2dndHQodm1hLT52bSk7
CiAJc3RydWN0IGk5MTVfZmVuY2VfcmVnICpmZW5jZTsKIAlzdHJ1Y3QgaTkxNV92bWEgKnNldCA9
IGk5MTVfZ2VtX29iamVjdF9pc190aWxlZCh2bWEtPm9iaikgPyB2bWEgOiBOVUxMOwogCWludCBl
cnI7CkBAIC0zNjEsMjcgKzM3MSwzNCBAQCBpOTE1X3ZtYV9waW5fZmVuY2Uoc3RydWN0IGk5MTVf
dm1hICp2bWEpCiAJICogTm90ZSB0aGF0IHdlIHJldm9rZSBmZW5jZXMgb24gcnVudGltZSBzdXNw
ZW5kLiBUaGVyZWZvcmUgdGhlIHVzZXIKIAkgKiBtdXN0IGtlZXAgdGhlIGRldmljZSBhd2FrZSB3
aGlsc3QgdXNpbmcgdGhlIGZlbmNlLgogCSAqLwotCWFzc2VydF9ycG1fd2FrZWxvY2tfaGVsZCh2
bWEtPnZtLT5pOTE1KTsKKwlhc3NlcnRfcnBtX3dha2Vsb2NrX2hlbGQoZ2d0dC0+dm0uaTkxNSk7
CisJR0VNX0JVR19PTighaTkxNV92bWFfaXNfcGlubmVkKHZtYSkpOworCisJZXJyID0gbXV0ZXhf
bG9ja19pbnRlcnJ1cHRpYmxlKCZnZ3R0LT52bS5tdXRleCk7CisJaWYgKGVycikKKwkJcmV0dXJu
IGVycjsKIAogCS8qIEp1c3QgdXBkYXRlIG91ciBwbGFjZSBpbiB0aGUgTFJVIGlmIG91ciBmZW5j
ZSBpcyBnZXR0aW5nIHJldXNlZC4gKi8KIAlpZiAodm1hLT5mZW5jZSkgewogCQlmZW5jZSA9IHZt
YS0+ZmVuY2U7CiAJCUdFTV9CVUdfT04oZmVuY2UtPnZtYSAhPSB2bWEpOwotCQlmZW5jZS0+cGlu
X2NvdW50Kys7CisJCWF0b21pY19pbmMoJmZlbmNlLT5waW5fY291bnQpOwogCQlpZiAoIWZlbmNl
LT5kaXJ0eSkgewotCQkJbGlzdF9tb3ZlX3RhaWwoJmZlbmNlLT5saW5rLAotCQkJCSAgICAgICAm
ZmVuY2UtPmk5MTUtPmdndHQuZmVuY2VfbGlzdCk7Ci0JCQlyZXR1cm4gMDsKKwkJCWxpc3RfbW92
ZV90YWlsKCZmZW5jZS0+bGluaywgJmdndHQtPmZlbmNlX2xpc3QpOworCQkJZ290byB1bmxvY2s7
CiAJCX0KIAl9IGVsc2UgaWYgKHNldCkgewogCQlmZW5jZSA9IGZlbmNlX2ZpbmQodm1hLT52bS0+
aTkxNSk7Ci0JCWlmIChJU19FUlIoZmVuY2UpKQotCQkJcmV0dXJuIFBUUl9FUlIoZmVuY2UpOwor
CQlpZiAoSVNfRVJSKGZlbmNlKSkgeworCQkJZXJyID0gUFRSX0VSUihmZW5jZSk7CisJCQlnb3Rv
IHVubG9jazsKKwkJfQogCi0JCUdFTV9CVUdfT04oZmVuY2UtPnBpbl9jb3VudCk7Ci0JCWZlbmNl
LT5waW5fY291bnQrKzsKLQl9IGVsc2UKLQkJcmV0dXJuIDA7CisJCUdFTV9CVUdfT04oYXRvbWlj
X3JlYWQoJmZlbmNlLT5waW5fY291bnQpKTsKKwkJYXRvbWljX2luYygmZmVuY2UtPnBpbl9jb3Vu
dCk7CisJfSBlbHNlIHsKKwkJZ290byB1bmxvY2s7CisJfQogCiAJZXJyID0gZmVuY2VfdXBkYXRl
KGZlbmNlLCBzZXQpOwogCWlmIChlcnIpCkBAIC0zOTEsMTAgKzQwOCwxMiBAQCBpOTE1X3ZtYV9w
aW5fZmVuY2Uoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJR0VNX0JVR19PTih2bWEtPmZlbmNlICE9
IChzZXQgPyBmZW5jZSA6IE5VTEwpKTsKIAogCWlmIChzZXQpCi0JCXJldHVybiAwOworCQlnb3Rv
IHVubG9jazsKIAogb3V0X3VucGluOgotCWZlbmNlLT5waW5fY291bnQtLTsKKwlhdG9taWNfZGVj
KCZmZW5jZS0+cGluX2NvdW50KTsKK3VubG9jazoKKwltdXRleF91bmxvY2soJmdndHQtPnZtLm11
dGV4KTsKIAlyZXR1cm4gZXJyOwogfQogCkBAIC00MTIsMjggKzQzMSwzOCBAQCBpOTE1X3Jlc2Vy
dmVfZmVuY2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaW50IGNvdW50OwogCWlu
dCByZXQ7CiAKLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
KwltdXRleF9sb2NrKCZpOTE1LT5nZ3R0LnZtLm11dGV4KTsKIAogCS8qIEtlZXAgYXQgbGVhc3Qg
b25lIGZlbmNlIGF2YWlsYWJsZSBmb3IgdGhlIGRpc3BsYXkgZW5naW5lLiAqLwogCWNvdW50ID0g
MDsKIAlsaXN0X2Zvcl9lYWNoX2VudHJ5KGZlbmNlLCAmaTkxNS0+Z2d0dC5mZW5jZV9saXN0LCBs
aW5rKQotCQljb3VudCArPSAhZmVuY2UtPnBpbl9jb3VudDsKLQlpZiAoY291bnQgPD0gMSkKLQkJ
cmV0dXJuIEVSUl9QVFIoLUVOT1NQQyk7CisJCWNvdW50ICs9ICFhdG9taWNfcmVhZCgmZmVuY2Ut
PnBpbl9jb3VudCk7CisJaWYgKGNvdW50IDw9IDEpIHsKKwkJcmV0ID0gLUVOT1NQQzsKKwkJZ290
byBlcnI7CisJfQogCiAJZmVuY2UgPSBmZW5jZV9maW5kKGk5MTUpOwotCWlmIChJU19FUlIoZmVu
Y2UpKQotCQlyZXR1cm4gZmVuY2U7CisJaWYgKElTX0VSUihmZW5jZSkpIHsKKwkJcmV0ID0gUFRS
X0VSUihmZW5jZSk7CisJCWdvdG8gZXJyOworCX0KIAogCWlmIChmZW5jZS0+dm1hKSB7CiAJCS8q
IEZvcmNlLXJlbW92ZSBmZW5jZSBmcm9tIFZNQSAqLwogCQlyZXQgPSBmZW5jZV91cGRhdGUoZmVu
Y2UsIE5VTEwpOwogCQlpZiAocmV0KQotCQkJcmV0dXJuIEVSUl9QVFIocmV0KTsKKwkJCWdvdG8g
ZXJyOwogCX0KIAogCWxpc3RfZGVsKCZmZW5jZS0+bGluayk7CisJbXV0ZXhfdW5sb2NrKCZpOTE1
LT5nZ3R0LnZtLm11dGV4KTsKKwogCXJldHVybiBmZW5jZTsKKworZXJyOgorCW11dGV4X3VubG9j
aygmaTkxNS0+Z2d0dC52bS5tdXRleCk7CisJcmV0dXJuIEVSUl9QVFIocmV0KTsKIH0KIAogLyoq
CkBAIC00NDQsOSArNDczLDExIEBAIGk5MTVfcmVzZXJ2ZV9mZW5jZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKICAqLwogdm9pZCBpOTE1X3VucmVzZXJ2ZV9mZW5jZShzdHJ1Y3QgaTkx
NV9mZW5jZV9yZWcgKmZlbmNlKQogewotCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmZlbmNlLT5pOTE1
LT5kcm0uc3RydWN0X211dGV4KTsKKwlzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0ID0gJmZlbmNlLT5p
OTE1LT5nZ3R0OwogCi0JbGlzdF9hZGQoJmZlbmNlLT5saW5rLCAmZmVuY2UtPmk5MTUtPmdndHQu
ZmVuY2VfbGlzdCk7CisJbXV0ZXhfbG9jaygmZ2d0dC0+dm0ubXV0ZXgpOworCWxpc3RfYWRkKCZm
ZW5jZS0+bGluaywgJmdndHQtPmZlbmNlX2xpc3QpOworCW11dGV4X3VubG9jaygmZ2d0dC0+dm0u
bXV0ZXgpOwogfQogCiAvKioKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtX2ZlbmNlX3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVn
LmgKaW5kZXggZDJkYTk4ODI4MTc5Li5kN2M2ZWJmNzg5YzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5oCkBAIC00MCw3ICs0MCw3IEBAIHN0cnVjdCBpOTE1X2Zl
bmNlX3JlZyB7CiAJc3RydWN0IGxpc3RfaGVhZCBsaW5rOwogCXN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1OwogCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwotCWludCBwaW5fY291bnQ7CisJYXRv
bWljX3QgcGluX2NvdW50OwogCWludCBpZDsKIAkvKioKIAkgKiBXaGV0aGVyIHRoZSB0aWxpbmcg
cGFyYW1ldGVycyBmb3IgdGhlIGN1cnJlbnRseQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
aAppbmRleCBlZTM5NjkzOGRlMTAuLjVmMTU1YmYxODNiYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fZ3R0LmgKQEAgLTM2LDYgKzM2LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2lvLW1hcHBp
bmcuaD4KICNpbmNsdWRlIDxsaW51eC9tbS5oPgorI2luY2x1ZGUgPGxpbnV4L211dGV4Lmg+CiAj
aW5jbHVkZSA8bGludXgvcGFnZXZlYy5oPgogCiAjaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3ZtYS5oCmluZGV4IDRiNzY5ZGI2NDliZi4uOTA4MTE4YWRlNDQxIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfdm1hLmgKQEAgLTQxOSw4ICs0MTksOCBAQCBpbnQgX19tdXN0X2No
ZWNrIGk5MTVfdm1hX3B1dF9mZW5jZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSk7CiAKIHN0YXRpYyBp
bmxpbmUgdm9pZCBfX2k5MTVfdm1hX3VucGluX2ZlbmNlKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQog
ewotCUdFTV9CVUdfT04odm1hLT5mZW5jZS0+cGluX2NvdW50IDw9IDApOwotCXZtYS0+ZmVuY2Ut
PnBpbl9jb3VudC0tOworCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJnZtYS0+ZmVuY2UtPnBpbl9j
b3VudCkgPD0gMCk7CisJYXRvbWljX2RlYygmdm1hLT5mZW5jZS0+cGluX2NvdW50KTsKIH0KIAog
LyoqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
