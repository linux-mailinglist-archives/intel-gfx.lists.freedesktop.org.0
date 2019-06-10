Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6FE3AF8B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D79F89123;
	Mon, 10 Jun 2019 07:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78EF789125
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 07:21:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16848356-1500050 
 for multiple; Mon, 10 Jun 2019 08:21:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:21:01 +0100
Message-Id: <20190610072126.6355-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610072126.6355-1-chris@chris-wilson.co.uk>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/28] drm/i915: Combine unbound/bound list
 tracking for objects
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

V2l0aCBhc3luYyBiaW5kaW5nLCB3ZSBkb24ndCB3YW50IHRvIG1hbmFnZSBhIGJvdW5kL3VuYm91
bmQgbGlzdCBhcyB3ZQptYXkgZW5kIHVwIHJ1bm5pbmcgYmVmb3JlIHdlIGV2ZW4gYWNxdWlyZSB0
aGUgcGFnZXMuIEFsbCB0aGF0IGlzCnJlcXVpcmVkIGlzIGtlZXBpbmcgdHJhY2sgb2Ygc2hyaW5r
YWJsZSBvYmplY3RzLCBzbyByZWR1Y2UgaXQgdG8gdGhlCm1pbmltdW0gbGlzdC4KClNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyAgICB8ICAxMiArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgICA1ICstCiAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAxMyArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyAgfCAgMzAgKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8IDE4OSArLS0tLS0tLS0tLS0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDMwICsr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYyAgICAgICAgICAgICAgIHwgIDMwICst
LQogLi4uL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYyAgIHwgIDE2ICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMgfCAgIDIgKy0K
IDEzIGZpbGVzIGNoYW5nZWQsIDc1IGluc2VydGlvbnMoKyksIDI3NSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG9tYWluLmMKaW5kZXggZTVkZWFlNjI2
ODFmLi42MTE1MTA5YTI4MTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kb21haW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
ZG9tYWluLmMKQEAgLTIxOSw3ICsyMTksNyBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3NldF9jYWNo
ZV9sZXZlbChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAogCSAqIHJld3JpdGUgdGhl
IFBURSBpbiB0aGUgYmVsaWVmIHRoYXQgZG9pbmcgc28gdHJhbXBsZXMgdXBvbiBsZXNzCiAJICog
c3RhdGUgYW5kIHNvIGludm9sdmVzIGxlc3Mgd29yay4KIAkgKi8KLQlpZiAob2JqLT5iaW5kX2Nv
dW50KSB7CisJaWYgKGF0b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQpKSB7CiAJCS8qIEJlZm9y
ZSB3ZSBjaGFuZ2UgdGhlIFBURSwgdGhlIEdQVSBtdXN0IG5vdCBiZSBhY2Nlc3NpbmcgaXQuCiAJ
CSAqIElmIHdlIHdhaXQgdXBvbiB0aGUgb2JqZWN0LCB3ZSBrbm93IHRoYXQgYWxsIHRoZSBib3Vu
ZAogCQkgKiBWTUEgYXJlIG5vIGxvbmdlciBhY3RpdmUuCkBAIC00NzUsMTQgKzQ3NSwxMCBAQCBz
dGF0aWMgdm9pZCBpOTE1X2dlbV9vYmplY3RfYnVtcF9pbmFjdGl2ZV9nZ3R0KHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmopCiAJfQogCW11dGV4X3VubG9jaygmaTkxNS0+Z2d0dC52bS5t
dXRleCk7CiAKLQlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSAmJgotCSAg
ICBvYmotPm1tLm1hZHYgPT0gSTkxNV9NQURWX1dJTExORUVEKSB7Ci0JCXN0cnVjdCBsaXN0X2hl
YWQgKmxpc3Q7Ci0KKwlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2JqKSkgewog
CQlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKLQkJbGlzdCA9IG9iai0+YmluZF9jb3Vu
dCA/Ci0JCQkmaTkxNS0+bW0uYm91bmRfbGlzdCA6ICZpOTE1LT5tbS51bmJvdW5kX2xpc3Q7Ci0J
CWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmssIGxpc3QpOworCQlpZiAob2JqLT5tbS5tYWR2
ID09IEk5MTVfTUFEVl9XSUxMTkVFRCkKKwkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmss
ICZpOTE1LT5tbS5zaHJpbmtfbGlzdCk7CiAJCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9j
ayk7CiAJfQogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jCmlu
ZGV4IGEwYmM4ZjdhYjc4MC4uN2EwN2U3MjZlYzgzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdC5jCkBAIC0yMTQsNyArMjE0LDcgQEAgc3RhdGljIHZvaWQgX19p
OTE1X2dlbV9mcmVlX29iamVjdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAKIAkJ
bXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAotCQlHRU1fQlVHX09OKG9i
ai0+YmluZF9jb3VudCk7CisJCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3Vu
dCkpOwogCQlHRU1fQlVHX09OKG9iai0+dXNlcmZhdWx0X2NvdW50KTsKIAkJR0VNX0JVR19PTihh
dG9taWNfcmVhZCgmb2JqLT5mcm9udGJ1ZmZlcl9iaXRzKSk7CiAJCUdFTV9CVUdfT04oIWxpc3Rf
ZW1wdHkoJm9iai0+bHV0X2xpc3QpKTsKQEAgLTMyOSw3ICszMjksOCBAQCB2b2lkIGk5MTVfZ2Vt
X2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqZ2VtX29iaikKIAogCQlvYmotPm1t
Lm1hZHYgPSBJOTE1X01BRFZfRE9OVE5FRUQ7CiAKLQkJaWYgKGk5MTVfZ2VtX29iamVjdF9oYXNf
cGFnZXMob2JqKSkgeworCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopICYmCisJ
CSAgICBpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7CiAJCQlzcGluX2xvY2so
Jmk5MTUtPm1tLm9ial9sb2NrKTsKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmssICZp
OTE1LT5tbS5wdXJnZV9saXN0KTsKIAkJCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5
cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgK
aW5kZXggOWMxNjFiYTczNTU4Li41YjA1Njk4NjE5Y2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgKQEAgLTE1NSw3ICsxNTUsNyBAQCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCB7CiAjZGVmaW5lIFNUUklERV9NQVNLICh+VElMSU5H
X01BU0spCiAKIAkvKiogQ291bnQgb2YgVk1BIGFjdHVhbGx5IGJvdW5kIGJ5IHRoaXMgb2JqZWN0
ICovCi0JdW5zaWduZWQgaW50IGJpbmRfY291bnQ7CisJYXRvbWljX3QgYmluZF9jb3VudDsKIAl1
bnNpZ25lZCBpbnQgYWN0aXZlX2NvdW50OwogCS8qKiBDb3VudCBvZiBob3cgbWFueSBnbG9iYWwg
Vk1BIGFyZSBjdXJyZW50bHkgcGlubmVkIGZvciB1c2UgYnkgSFcgKi8KIAl1bnNpZ25lZCBpbnQg
cGluX2dsb2JhbDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9wYWdlcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BhZ2VzLmMKaW5k
ZXggN2U2NGZkNmJjMTliLi43ODY4ZGQ0OGQ5MzEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9wYWdlcy5jCkBAIC01NywxMCArNTcsMTkgQEAgdm9pZCBfX2k5MTVfZ2VtX29i
amVjdF9zZXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKIAlHRU1fQlVH
X09OKCFIQVNfUEFHRV9TSVpFUyhpOTE1LCBvYmotPm1tLnBhZ2Vfc2l6ZXMuc2cpKTsKIAogCWlm
IChpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7CisJCXN0cnVjdCBsaXN0X2hl
YWQgKmxpc3Q7CisKIAkJc3Bpbl9sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisKIAkJaTkxNS0+
bW0uc2hyaW5rX2NvdW50Kys7CiAJCWk5MTUtPm1tLnNocmlua19tZW1vcnkgKz0gb2JqLT5iYXNl
LnNpemU7Ci0JCWxpc3RfYWRkKCZvYmotPm1tLmxpbmssICZpOTE1LT5tbS51bmJvdW5kX2xpc3Qp
OworCisJCWlmIChvYmotPm1tLm1hZHYgIT0gSTkxNV9NQURWX1dJTExORUVEKQorCQkJbGlzdCA9
ICZpOTE1LT5tbS5wdXJnZV9saXN0OworCQllbHNlCisJCQlsaXN0ID0gJmk5MTUtPm1tLnNocmlu
a19saXN0OworCQlsaXN0X2FkZF90YWlsKCZvYmotPm1tLmxpbmssIGxpc3QpOworCiAJCXNwaW5f
dW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CiAJfQogfQpAQCAtMTg1LDcgKzE5NCw3IEBAIGlu
dCBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19waW5uZWRfcGFnZXMob2JqKSkKIAkJcmV0
dXJuIC1FQlVTWTsKIAotCUdFTV9CVUdfT04ob2JqLT5iaW5kX2NvdW50KTsKKwlHRU1fQlVHX09O
KGF0b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQpKTsKIAogCS8qIE1heSBiZSBjYWxsZWQgYnkg
c2hyaW5rZXIgZnJvbSB3aXRoaW4gZ2V0X3BhZ2VzKCkgKG9uIGFub3RoZXIgYm8pICovCiAJbXV0
ZXhfbG9ja19uZXN0ZWQoJm9iai0+bW0ubG9jaywgc3ViY2xhc3MpOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fcG0uYwppbmRleCA2ZDYwNjRmYjJiZjUuLmExYWRkNWU2YjY1OCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKQEAgLTE2Miw4ICsxNjIsNyBAQCB2
b2lkIGk5MTVfZ2VtX3N1c3BlbmRfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwogCXN0cnVjdCBsaXN0X2hlYWQg
KnBoYXNlc1tdID0gewotCQkmaTkxNS0+bW0udW5ib3VuZF9saXN0LAotCQkmaTkxNS0+bW0uYm91
bmRfbGlzdCwKKwkJJmk5MTUtPm1tLnNocmlua19saXN0LAogCQkmaTkxNS0+bW0ucHVyZ2VfbGlz
dCwKIAkJTlVMTAogCX0sICoqcGhhc2U7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9zaHJpbmtlci5jCmluZGV4IGQ3MWU2MzBjNmZiOC4uMWU3ZjQ4ZGI3YjNlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwpAQCAtNjksNyArNjks
NyBAQCBzdGF0aWMgYm9vbCBjYW5fcmVsZWFzZV9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQogCSAqIHRvIHRoZSBHUFUsIHNpbXBseSB1bmJpbmRpbmcgZnJvbSB0aGUgR1BV
IGlzIG5vdCBnb2luZyB0byBzdWNjZWVkCiAJICogaW4gcmVsZWFzaW5nIG91ciBwaW4gY291bnQg
b24gdGhlIHBhZ2VzIHRoZW1zZWx2ZXMuCiAJICovCi0JaWYgKGF0b21pY19yZWFkKCZvYmotPm1t
LnBhZ2VzX3Bpbl9jb3VudCkgPiBvYmotPmJpbmRfY291bnQpCisJaWYgKGF0b21pY19yZWFkKCZv
YmotPm1tLnBhZ2VzX3Bpbl9jb3VudCkgPiBhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSkK
IAkJcmV0dXJuIGZhbHNlOwogCiAJLyogSWYgYW55IHZtYSBhcmUgInBlcm1hbmVudGx5IiBwaW5u
ZWQsIGl0IHdpbGwgcHJldmVudCB1cyBmcm9tCkBAIC0xNDUsOCArMTQ1LDEwIEBAIGk5MTVfZ2Vt
X3NocmluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJdW5zaWduZWQgaW50IGJp
dDsKIAl9IHBoYXNlc1tdID0gewogCQl7ICZpOTE1LT5tbS5wdXJnZV9saXN0LCB+MHUgfSwKLQkJ
eyAmaTkxNS0+bW0udW5ib3VuZF9saXN0LCBJOTE1X1NIUklOS19VTkJPVU5EIH0sCi0JCXsgJmk5
MTUtPm1tLmJvdW5kX2xpc3QsIEk5MTVfU0hSSU5LX0JPVU5EIH0sCisJCXsKKwkJCSZpOTE1LT5t
bS5zaHJpbmtfbGlzdCwKKwkJCUk5MTVfU0hSSU5LX0JPVU5EIHwgSTkxNV9TSFJJTktfVU5CT1VO
RAorCQl9LAogCQl7IE5VTEwsIDAgfSwKIAl9LCAqcGhhc2U7CiAJaW50ZWxfd2FrZXJlZl90IHdh
a2VyZWYgPSAwOwpAQCAtMjM3LDcgKzIzOSw3IEBAIGk5MTVfZ2VtX3NocmluayhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkJCQljb250aW51ZTsKIAogCQkJaWYgKCEoZmxhZ3MgJiBJ
OTE1X1NIUklOS19CT1VORCkgJiYKLQkJCSAgICBSRUFEX09OQ0Uob2JqLT5iaW5kX2NvdW50KSkK
KwkJCSAgICBhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSkKIAkJCQljb250aW51ZTsKIAog
CQkJaWYgKCFjYW5fcmVsZWFzZV9wYWdlcyhvYmopKQpAQCAtMzc3LDcgKzM3OSw3IEBAIGk5MTVf
Z2VtX3Nocmlua2VyX29vbShzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNpZ25lZCBsb25n
IGV2ZW50LCB2b2lkICpwdHIpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPQogCQlj
b250YWluZXJfb2YobmIsIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlLCBtbS5vb21fbm90aWZpZXIp
OwogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Ci0JdW5zaWduZWQgbG9uZyB1bmV2
aWN0YWJsZSwgYm91bmQsIHVuYm91bmQsIGZyZWVkX3BhZ2VzOworCXVuc2lnbmVkIGxvbmcgdW5l
dmljdGFibGUsIGF2YWlsYWJsZSwgZnJlZWRfcGFnZXM7CiAJaW50ZWxfd2FrZXJlZl90IHdha2Vy
ZWY7CiAKIAlmcmVlZF9wYWdlcyA9IDA7CkBAIC0zOTEsMjYgKzM5MywyMCBAQCBpOTE1X2dlbV9z
aHJpbmtlcl9vb20oc3RydWN0IG5vdGlmaWVyX2Jsb2NrICpuYiwgdW5zaWduZWQgbG9uZyBldmVu
dCwgdm9pZCAqcHRyKQogCSAqIGFzc2VydCB0aGF0IHRoZXJlIGFyZSBubyBvYmplY3RzIHdpdGgg
cGlubmVkIHBhZ2VzIHRoYXQgYXJlIG5vdAogCSAqIGJlaW5nIHBvaW50ZWQgdG8gYnkgaGFyZHdh
cmUuCiAJICovCi0JdW5ib3VuZCA9IGJvdW5kID0gdW5ldmljdGFibGUgPSAwOworCWF2YWlsYWJs
ZSA9IHVuZXZpY3RhYmxlID0gMDsKIAlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKLQls
aXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmk5MTUtPm1tLnVuYm91bmRfbGlzdCwgbW0ubGluaykg
eworCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmaTkxNS0+bW0uc2hyaW5rX2xpc3QsIG1tLmxp
bmspIHsKIAkJaWYgKCFjYW5fcmVsZWFzZV9wYWdlcyhvYmopKQogCQkJdW5ldmljdGFibGUgKz0g
b2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKIAkJZWxzZQotCQkJdW5ib3VuZCArPSBvYmot
PmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwotCX0KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwg
Jmk5MTUtPm1tLmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKLQkJaWYgKCFjYW5fcmVsZWFzZV9wYWdl
cyhvYmopKQotCQkJdW5ldmljdGFibGUgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsK
LQkJZWxzZQotCQkJYm91bmQgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKKwkJCWF2
YWlsYWJsZSArPSBvYmotPmJhc2Uuc2l6ZSA+PiBQQUdFX1NISUZUOwogCX0KIAlzcGluX3VubG9j
aygmaTkxNS0+bW0ub2JqX2xvY2spOwogCi0JaWYgKGZyZWVkX3BhZ2VzIHx8IHVuYm91bmQgfHwg
Ym91bmQpCisJaWYgKGZyZWVkX3BhZ2VzIHx8IGF2YWlsYWJsZSkKIAkJcHJfaW5mbygiUHVyZ2lu
ZyBHUFUgbWVtb3J5LCAlbHUgcGFnZXMgZnJlZWQsICIKLQkJCSIlbHUgcGFnZXMgc3RpbGwgcGlu
bmVkLlxuIiwKLQkJCWZyZWVkX3BhZ2VzLCB1bmV2aWN0YWJsZSk7CisJCQkiJWx1IHBhZ2VzIHN0
aWxsIHBpbm5lZCwgJWx1IHBhZ2VzIGxlZnQgYXZhaWxhYmxlLlxuIiwKKwkJCWZyZWVkX3BhZ2Vz
LCB1bmV2aWN0YWJsZSwgYXZhaWxhYmxlKTsKIAogCSoodW5zaWduZWQgbG9uZyAqKXB0ciArPSBm
cmVlZF9wYWdlczsKIAlyZXR1cm4gTk9USUZZX0RPTkU7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fc3RvbGVuLmMKaW5kZXggODRkNGY1NDllYjIxLi5jOWI1ZTZjZDk0MGQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKQEAgLTY4OSwxMCAr
Njg5LDggQEAgaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW5fZm9yX3ByZWFsbG9jYXRlZChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYKIAlsaXN0X21vdmVfdGFpbCgmdm1hLT52
bV9saW5rLCAmZ2d0dC0+dm0uYm91bmRfbGlzdCk7CiAJbXV0ZXhfdW5sb2NrKCZnZ3R0LT52bS5t
dXRleCk7CiAKLQlzcGluX2xvY2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7CiAJR0VNX0JVR19P
TihpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKTsKLQlvYmotPmJpbmRfY291bnQr
KzsKLQlzcGluX3VubG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKKwlhdG9taWNfaW5jKCZv
YmotPmJpbmRfY291bnQpOwogCiAJcmV0dXJuIG9iajsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwppbmRleCBiMGY0YzM2MzhkMjEuLjMyNmE1NmE5NzI0NyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKQEAgLTEwNCwxOSArMTA0LDYgQEAgc3RhdGljIGNoYXIgZ2V0X3Bp
bl9tYXBwZWRfZmxhZyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogCXJldHVybiBv
YmotPm1tLm1hcHBpbmcgPyAnTScgOiAnICc7CiB9CiAKLXN0YXRpYyB1NjQgaTkxNV9nZW1fb2Jq
X3RvdGFsX2dndHRfc2l6ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQotewotCXU2
NCBzaXplID0gMDsKLQlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKLQotCWZvcl9lYWNoX2dndHRfdm1h
KHZtYSwgb2JqKSB7Ci0JCWlmIChkcm1fbW1fbm9kZV9hbGxvY2F0ZWQoJnZtYS0+bm9kZSkpCi0J
CQlzaXplICs9IHZtYS0+bm9kZS5zaXplOwotCX0KLQotCXJldHVybiBzaXplOwotfQotCiBzdGF0
aWMgY29uc3QgY2hhciAqCiBzdHJpbmdpZnlfcGFnZV9zaXplcyh1bnNpZ25lZCBpbnQgcGFnZV9z
aXplcywgY2hhciAqYnVmLCBzaXplX3QgbGVuKQogewpAQCAtMjUyLDgzICsyMzksNiBAQCBkZXNj
cmliZV9vYmooc3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQogCQlzZXFfcHJpbnRmKG0sICIgKGZyb250YnVmZmVyOiAweCUwM3gpIiwgZnJvbnRidWZm
ZXJfYml0cyk7CiB9CiAKLXN0YXRpYyBpbnQgb2JqX3JhbmtfYnlfc3RvbGVuKGNvbnN0IHZvaWQg
KkEsIGNvbnN0IHZvaWQgKkIpCi17Ci0JY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
KmEgPQotCQkqKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoqKUE7Ci0JY29uc3Qg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmIgPQotCQkqKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICoqKUI7Ci0KLQlpZiAoYS0+c3RvbGVuLT5zdGFydCA8IGItPnN0b2xlbi0+
c3RhcnQpCi0JCXJldHVybiAtMTsKLQlpZiAoYS0+c3RvbGVuLT5zdGFydCA+IGItPnN0b2xlbi0+
c3RhcnQpCi0JCXJldHVybiAxOwotCXJldHVybiAwOwotfQotCi1zdGF0aWMgaW50IGk5MTVfZ2Vt
X3N0b2xlbl9saXN0X2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQotewotCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRl
KTsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07Ci0Jc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKipvYmplY3RzOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmo7Ci0JdTY0IHRvdGFsX29ial9zaXplLCB0b3RhbF9ndHRfc2l6ZTsKLQl1bnNpZ25lZCBs
b25nIHRvdGFsLCBjb3VudCwgbjsKLQlpbnQgcmV0OwotCi0JdG90YWwgPSBSRUFEX09OQ0UoZGV2
X3ByaXYtPm1tLnNocmlua19jb3VudCk7Ci0Jb2JqZWN0cyA9IGt2bWFsbG9jX2FycmF5KHRvdGFs
LCBzaXplb2YoKm9iamVjdHMpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIW9iamVjdHMpCi0JCXJldHVy
biAtRU5PTUVNOwotCi0JcmV0ID0gbXV0ZXhfbG9ja19pbnRlcnJ1cHRpYmxlKCZkZXYtPnN0cnVj
dF9tdXRleCk7Ci0JaWYgKHJldCkKLQkJZ290byBvdXQ7Ci0KLQl0b3RhbF9vYmpfc2l6ZSA9IHRv
dGFsX2d0dF9zaXplID0gY291bnQgPSAwOwotCi0Jc3Bpbl9sb2NrKCZkZXZfcHJpdi0+bW0ub2Jq
X2xvY2spOwotCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmZGV2X3ByaXYtPm1tLmJvdW5kX2xp
c3QsIG1tLmxpbmspIHsKLQkJaWYgKGNvdW50ID09IHRvdGFsKQotCQkJYnJlYWs7Ci0KLQkJaWYg
KG9iai0+c3RvbGVuID09IE5VTEwpCi0JCQljb250aW51ZTsKLQotCQlvYmplY3RzW2NvdW50Kytd
ID0gb2JqOwotCQl0b3RhbF9vYmpfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJdG90YWxfZ3R0
X3NpemUgKz0gaTkxNV9nZW1fb2JqX3RvdGFsX2dndHRfc2l6ZShvYmopOwotCi0JfQotCWxpc3Rf
Zm9yX2VhY2hfZW50cnkob2JqLCAmZGV2X3ByaXYtPm1tLnVuYm91bmRfbGlzdCwgbW0ubGluaykg
ewotCQlpZiAoY291bnQgPT0gdG90YWwpCi0JCQlicmVhazsKLQotCQlpZiAob2JqLT5zdG9sZW4g
PT0gTlVMTCkKLQkJCWNvbnRpbnVlOwotCi0JCW9iamVjdHNbY291bnQrK10gPSBvYmo7Ci0JCXRv
dGFsX29ial9zaXplICs9IG9iai0+YmFzZS5zaXplOwotCX0KLQlzcGluX3VubG9jaygmZGV2X3By
aXYtPm1tLm9ial9sb2NrKTsKLQotCXNvcnQob2JqZWN0cywgY291bnQsIHNpemVvZigqb2JqZWN0
cyksIG9ial9yYW5rX2J5X3N0b2xlbiwgTlVMTCk7Ci0KLQlzZXFfcHV0cyhtLCAiU3RvbGVuOlxu
Iik7Ci0JZm9yIChuID0gMDsgbiA8IGNvdW50OyBuKyspIHsKLQkJc2VxX3B1dHMobSwgIiAgICIp
OwotCQlkZXNjcmliZV9vYmoobSwgb2JqZWN0c1tuXSk7Ci0JCXNlcV9wdXRjKG0sICdcbicpOwot
CX0KLQlzZXFfcHJpbnRmKG0sICJUb3RhbCAlbHUgb2JqZWN0cywgJWxsdSBieXRlcywgJWxsdSBH
VFQgc2l6ZVxuIiwKLQkJICAgY291bnQsIHRvdGFsX29ial9zaXplLCB0b3RhbF9ndHRfc2l6ZSk7
Ci0KLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKLW91dDoKLQlrdmZyZWUob2Jq
ZWN0cyk7Ci0JcmV0dXJuIHJldDsKLX0KLQogc3RydWN0IGZpbGVfc3RhdHMgewogCXN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2UgKnZtOwogCXVuc2lnbmVkIGxvbmcgY291bnQ7CkBAIC0zNDgsNyAr
MjU4LDcgQEAgc3RhdGljIGludCBwZXJfZmlsZV9zdGF0cyhpbnQgaWQsIHZvaWQgKnB0ciwgdm9p
ZCAqZGF0YSkKIAogCXN0YXRzLT5jb3VudCsrOwogCXN0YXRzLT50b3RhbCArPSBvYmotPmJhc2Uu
c2l6ZTsKLQlpZiAoIW9iai0+YmluZF9jb3VudCkKKwlpZiAoIWF0b21pY19yZWFkKCZvYmotPmJp
bmRfY291bnQpKQogCQlzdGF0cy0+dW5ib3VuZCArPSBvYmotPmJhc2Uuc2l6ZTsKIAlpZiAob2Jq
LT5iYXNlLm5hbWUgfHwgb2JqLT5iYXNlLmRtYV9idWYpCiAJCXN0YXRzLT5zaGFyZWQgKz0gb2Jq
LT5iYXNlLnNpemU7CkBAIC00NTUsMTA0ICszNjUsMjIgQEAgc3RhdGljIHZvaWQgcHJpbnRfY29u
dGV4dF9zdGF0cyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCiAKIHN0YXRpYyBpbnQgaTkxNV9nZW1fb2Jq
ZWN0X2luZm8oc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQogewotCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IG5vZGVfdG9faTkxNShtLT5wcml2YXRlKTsKLQlzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2ID0gJmRldl9wcml2LT5kcm07Ci0Jc3RydWN0IGk5MTVfZ2d0dCAq
Z2d0dCA9ICZkZXZfcHJpdi0+Z2d0dDsKLQl1MzIgY291bnQsIG1hcHBlZF9jb3VudCwgcHVyZ2Vh
YmxlX2NvdW50LCBkcHlfY291bnQsIGh1Z2VfY291bnQ7Ci0JdTY0IHNpemUsIG1hcHBlZF9zaXpl
LCBwdXJnZWFibGVfc2l6ZSwgZHB5X3NpemUsIGh1Z2Vfc2l6ZTsKLQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqOwotCXVuc2lnbmVkIGludCBwYWdlX3NpemVzID0gMDsKLQljaGFyIGJ1
Zls4MF07CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBub2RlX3RvX2k5MTUobS0+
cHJpdmF0ZSk7CiAJaW50IHJldDsKIAogCXNlcV9wcmludGYobSwgIiV1IHNocmlua2FibGUgb2Jq
ZWN0cywgJWxsdSBieXRlc1xuIiwKLQkJICAgZGV2X3ByaXYtPm1tLnNocmlua19jb3VudCwKLQkJ
ICAgZGV2X3ByaXYtPm1tLnNocmlua19tZW1vcnkpOwotCi0Jc2l6ZSA9IGNvdW50ID0gMDsKLQlt
YXBwZWRfc2l6ZSA9IG1hcHBlZF9jb3VudCA9IDA7Ci0JcHVyZ2VhYmxlX3NpemUgPSBwdXJnZWFi
bGVfY291bnQgPSAwOwotCWh1Z2Vfc2l6ZSA9IGh1Z2VfY291bnQgPSAwOwotCi0Jc3Bpbl9sb2Nr
KCZkZXZfcHJpdi0+bW0ub2JqX2xvY2spOwotCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmZGV2
X3ByaXYtPm1tLnVuYm91bmRfbGlzdCwgbW0ubGluaykgewotCQlzaXplICs9IG9iai0+YmFzZS5z
aXplOwotCQkrK2NvdW50OwotCi0JCWlmIChvYmotPm1tLm1hZHYgPT0gSTkxNV9NQURWX0RPTlRO
RUVEKSB7Ci0JCQlwdXJnZWFibGVfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJCSsrcHVyZ2Vh
YmxlX2NvdW50OwotCQl9Ci0KLQkJaWYgKG9iai0+bW0ubWFwcGluZykgewotCQkJbWFwcGVkX2Nv
dW50Kys7Ci0JCQltYXBwZWRfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJfQotCi0JCWlmIChv
YmotPm1tLnBhZ2Vfc2l6ZXMuc2cgPiBJOTE1X0dUVF9QQUdFX1NJWkUpIHsKLQkJCWh1Z2VfY291
bnQrKzsKLQkJCWh1Z2Vfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJCXBhZ2Vfc2l6ZXMgfD0g
b2JqLT5tbS5wYWdlX3NpemVzLnNnOwotCQl9Ci0JfQotCXNlcV9wcmludGYobSwgIiV1IHVuYm91
bmQgb2JqZWN0cywgJWxsdSBieXRlc1xuIiwgY291bnQsIHNpemUpOwotCi0Jc2l6ZSA9IGNvdW50
ID0gZHB5X3NpemUgPSBkcHlfY291bnQgPSAwOwotCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAm
ZGV2X3ByaXYtPm1tLmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKLQkJc2l6ZSArPSBvYmotPmJhc2Uu
c2l6ZTsKLQkJKytjb3VudDsKLQotCQlpZiAob2JqLT5waW5fZ2xvYmFsKSB7Ci0JCQlkcHlfc2l6
ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJCSsrZHB5X2NvdW50OwotCQl9Ci0KLQkJaWYgKG9iai0+
bW0ubWFkdiA9PSBJOTE1X01BRFZfRE9OVE5FRUQpIHsKLQkJCXB1cmdlYWJsZV9zaXplICs9IG9i
ai0+YmFzZS5zaXplOwotCQkJKytwdXJnZWFibGVfY291bnQ7Ci0JCX0KLQotCQlpZiAob2JqLT5t
bS5tYXBwaW5nKSB7Ci0JCQltYXBwZWRfY291bnQrKzsKLQkJCW1hcHBlZF9zaXplICs9IG9iai0+
YmFzZS5zaXplOwotCQl9Ci0KLQkJaWYgKG9iai0+bW0ucGFnZV9zaXplcy5zZyA+IEk5MTVfR1RU
X1BBR0VfU0laRSkgewotCQkJaHVnZV9jb3VudCsrOwotCQkJaHVnZV9zaXplICs9IG9iai0+YmFz
ZS5zaXplOwotCQkJcGFnZV9zaXplcyB8PSBvYmotPm1tLnBhZ2Vfc2l6ZXMuc2c7Ci0JCX0KLQl9
Ci0Jc3Bpbl91bmxvY2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7Ci0KLQlzZXFfcHJpbnRmKG0s
ICIldSBib3VuZCBvYmplY3RzLCAlbGx1IGJ5dGVzXG4iLAotCQkgICBjb3VudCwgc2l6ZSk7Ci0J
c2VxX3ByaW50ZihtLCAiJXUgcHVyZ2VhYmxlIG9iamVjdHMsICVsbHUgYnl0ZXNcbiIsCi0JCSAg
IHB1cmdlYWJsZV9jb3VudCwgcHVyZ2VhYmxlX3NpemUpOwotCXNlcV9wcmludGYobSwgIiV1IG1h
cHBlZCBvYmplY3RzLCAlbGx1IGJ5dGVzXG4iLAotCQkgICBtYXBwZWRfY291bnQsIG1hcHBlZF9z
aXplKTsKLQlzZXFfcHJpbnRmKG0sICIldSBodWdlLXBhZ2VkIG9iamVjdHMgKCVzKSAlbGx1IGJ5
dGVzXG4iLAotCQkgICBodWdlX2NvdW50LAotCQkgICBzdHJpbmdpZnlfcGFnZV9zaXplcyhwYWdl
X3NpemVzLCBidWYsIHNpemVvZihidWYpKSwKLQkJICAgaHVnZV9zaXplKTsKLQlzZXFfcHJpbnRm
KG0sICIldSBkaXNwbGF5IG9iamVjdHMgKGdsb2JhbGx5IHBpbm5lZCksICVsbHUgYnl0ZXNcbiIs
Ci0JCSAgIGRweV9jb3VudCwgZHB5X3NpemUpOwotCi0Jc2VxX3ByaW50ZihtLCAiJWxsdSBbJXBh
XSBndHQgdG90YWxcbiIsCi0JCSAgIGdndHQtPnZtLnRvdGFsLCAmZ2d0dC0+bWFwcGFibGVfZW5k
KTsKLQlzZXFfcHJpbnRmKG0sICJTdXBwb3J0ZWQgcGFnZSBzaXplczogJXNcbiIsCi0JCSAgIHN0
cmluZ2lmeV9wYWdlX3NpemVzKElOVEVMX0lORk8oZGV2X3ByaXYpLT5wYWdlX3NpemVzLAotCQkJ
CQlidWYsIHNpemVvZihidWYpKSk7CisJCSAgIGk5MTUtPm1tLnNocmlua19jb3VudCwKKwkJICAg
aTkxNS0+bW0uc2hyaW5rX21lbW9yeSk7CiAKIAlzZXFfcHV0YyhtLCAnXG4nKTsKIAotCXJldCA9
IG11dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmZGV2LT5zdHJ1Y3RfbXV0ZXgpOworCXJldCA9IG11
dGV4X2xvY2tfaW50ZXJydXB0aWJsZSgmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CiAJaWYgKHJl
dCkKIAkJcmV0dXJuIHJldDsKIAotCXByaW50X2JhdGNoX3Bvb2xfc3RhdHMobSwgZGV2X3ByaXYp
OwotCXByaW50X2NvbnRleHRfc3RhdHMobSwgZGV2X3ByaXYpOwotCW11dGV4X3VubG9jaygmZGV2
LT5zdHJ1Y3RfbXV0ZXgpOworCXByaW50X2JhdGNoX3Bvb2xfc3RhdHMobSwgaTkxNSk7CisJcHJp
bnRfY29udGV4dF9zdGF0cyhtLCBpOTE1KTsKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwogCiAJcmV0dXJuIDA7CiB9CkBAIC00NTM2LDcgKzQzNjQsNiBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBpOTE1X2ZpZm9fdW5kZXJydW5fcmVzZXRfb3Bz
ID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1faW5mb19saXN0IGk5MTVfZGVidWdmc19saXN0
W10gPSB7CiAJeyJpOTE1X2NhcGFiaWxpdGllcyIsIGk5MTVfY2FwYWJpbGl0aWVzLCAwfSwKIAl7
Imk5MTVfZ2VtX29iamVjdHMiLCBpOTE1X2dlbV9vYmplY3RfaW5mbywgMH0sCi0JeyJpOTE1X2dl
bV9zdG9sZW4iLCBpOTE1X2dlbV9zdG9sZW5fbGlzdF9pbmZvIH0sCiAJeyJpOTE1X2dlbV9mZW5j
ZV9yZWdzIiwgaTkxNV9nZW1fZmVuY2VfcmVnc19pbmZvLCAwfSwKIAl7Imk5MTVfZ2VtX2ludGVy
cnVwdCIsIGk5MTVfaW50ZXJydXB0X2luZm8sIDB9LAogCXsiaTkxNV9nZW1fYmF0Y2hfcG9vbCIs
IGk5MTVfZ2VtX2JhdGNoX3Bvb2xfaW5mbywgMH0sCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRl
eCA5ZTZlY2VkNDc3ZTcuLjJiZWFkY2NiZDkxMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBA
IC03NDcsMTkgKzc0NywxNSBAQCBzdHJ1Y3QgaTkxNV9nZW1fbW0gewogCS8qIFByb3RlY3RzIGJv
dW5kX2xpc3QvdW5ib3VuZF9saXN0IGFuZCAjZHJtX2k5MTVfZ2VtX29iamVjdC5tbS5saW5rICov
CiAJc3BpbmxvY2tfdCBvYmpfbG9jazsKIAotCS8qKiBMaXN0IG9mIGFsbCBvYmplY3RzIGluIGd0
dF9zcGFjZS4gVXNlZCB0byByZXN0b3JlIGd0dAotCSAqIG1hcHBpbmdzIG9uIHJlc3VtZSAqLwot
CXN0cnVjdCBsaXN0X2hlYWQgYm91bmRfbGlzdDsKIAkvKioKLQkgKiBMaXN0IG9mIG9iamVjdHMg
d2hpY2ggYXJlIG5vdCBib3VuZCB0byB0aGUgR1RUICh0aHVzCi0JICogYXJlIGlkbGUgYW5kIG5v
dCB1c2VkIGJ5IHRoZSBHUFUpLiBUaGVzZSBvYmplY3RzIG1heSBvciBtYXkKLQkgKiBub3QgYWN0
dWFsbHkgaGF2ZSBhbnkgcGFnZXMgYXR0YWNoZWQuCisJICogTGlzdCBvZiBvYmplY3RzIHdoaWNo
IGFyZSBwdXJnZWFibGUuCiAJICovCi0Jc3RydWN0IGxpc3RfaGVhZCB1bmJvdW5kX2xpc3Q7CisJ
c3RydWN0IGxpc3RfaGVhZCBwdXJnZV9saXN0OworCiAJLyoqCi0JICogTGlzdCBvZiBvYmplY3Rz
IHdoaWNoIGFyZSBwdXJnZWFibGUuIE1heSBiZSBhY3RpdmUuCisJICogTGlzdCBvZiBvYmplY3Rz
IHdoaWNoIGhhdmUgYWxsb2NhdGVkIHBhZ2VzIGFuZCBhcmUgc2hyaW5rYWJsZS4KIAkgKi8KLQlz
dHJ1Y3QgbGlzdF9oZWFkIHB1cmdlX2xpc3Q7CisJc3RydWN0IGxpc3RfaGVhZCBzaHJpbmtfbGlz
dDsKIAogCS8qKgogCSAqIExpc3Qgb2Ygb2JqZWN0cyB3aGljaCBhcmUgcGVuZGluZyBkZXN0cnVj
dGlvbi4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmluZGV4IDk5NDI3ZDhiOTI2Ni4uMGFlY2E0MmNi
MDYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKQEAgLTExNDMsMTAgKzExNDMsOCBAQCBpOTE1
X2dlbV9tYWR2aXNlX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJ
CQlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKIAkJCWlmIChvYmotPm1tLm1hZHYgIT0g
STkxNV9NQURWX1dJTExORUVEKQogCQkJCWxpc3QgPSAmaTkxNS0+bW0ucHVyZ2VfbGlzdDsKLQkJ
CWVsc2UgaWYgKG9iai0+YmluZF9jb3VudCkKLQkJCQlsaXN0ID0gJmk5MTUtPm1tLmJvdW5kX2xp
c3Q7CiAJCQllbHNlCi0JCQkJbGlzdCA9ICZpOTE1LT5tbS51bmJvdW5kX2xpc3Q7CisJCQkJbGlz
dCA9ICZpOTE1LT5tbS5zaHJpbmtfbGlzdDsKIAkJCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxp
bmssIGxpc3QpOwogCQkJc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKIAkJfQpAQCAt
MTczNiw4ICsxNzM0LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9nZW1faW5pdF9fbW0oc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaW5pdF9sbGlzdF9oZWFkKCZpOTE1LT5tbS5mcmVlX2xp
c3QpOwogCiAJSU5JVF9MSVNUX0hFQUQoJmk5MTUtPm1tLnB1cmdlX2xpc3QpOwotCUlOSVRfTElT
VF9IRUFEKCZpOTE1LT5tbS51bmJvdW5kX2xpc3QpOwotCUlOSVRfTElTVF9IRUFEKCZpOTE1LT5t
bS5ib3VuZF9saXN0KTsKKwlJTklUX0xJU1RfSEVBRCgmaTkxNS0+bW0uc2hyaW5rX2xpc3QpOwog
CiAJaTkxNV9nZW1faW5pdF9fb2JqZWN0cyhpOTE1KTsKIH0KQEAgLTE3OTYsMTEgKzE3OTMsNyBA
QCBpbnQgaTkxNV9nZW1fZnJlZXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikK
IGludCBpOTE1X2dlbV9mcmVlemVfbGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
IHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXN0cnVjdCBsaXN0X2hlYWQg
KnBoYXNlc1tdID0gewotCQkmaTkxNS0+bW0udW5ib3VuZF9saXN0LAotCQkmaTkxNS0+bW0uYm91
bmRfbGlzdCwKLQkJTlVMTAotCX0sICoqcGhhc2U7CisJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7
CiAKIAkvKgogCSAqIENhbGxlZCBqdXN0IGJlZm9yZSB3ZSB3cml0ZSB0aGUgaGliZXJuYXRpb24g
aW1hZ2UuCkBAIC0xODE3LDE3ICsxODEwLDE4IEBAIGludCBpOTE1X2dlbV9mcmVlemVfbGF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKiB0aGUgb2JqZWN0cyBhcyB3ZWxsLCBz
ZWUgaTkxNV9nZW1fZnJlZXplKCkKIAkgKi8KIAotCWk5MTVfZ2VtX3NocmluayhpOTE1LCAtMVVM
LCBOVUxMLCBJOTE1X1NIUklOS19VTkJPVU5EKTsKKwl3YWtlcmVmID0gaW50ZWxfcnVudGltZV9w
bV9nZXQoaTkxNSk7CisKKwlpOTE1X2dlbV9zaHJpbmsoaTkxNSwgLTFVTCwgTlVMTCwgfjApOwog
CWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoaTkxNSk7CiAKLQlmb3IgKHBoYXNlID0gcGhh
c2VzOyAqcGhhc2U7IHBoYXNlKyspIHsKLQkJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICpwaGFz
ZSwgbW0ubGluaykgewotCQkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKLQkJCVdBUk5fT04o
aTkxNV9nZW1fb2JqZWN0X3NldF90b19jcHVfZG9tYWluKG9iaiwgdHJ1ZSkpOwotCQkJaTkxNV9n
ZW1fb2JqZWN0X3VubG9jayhvYmopOwotCQl9CisJbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICZp
OTE1LT5tbS5zaHJpbmtfbGlzdCwgbW0ubGluaykgeworCQlpOTE1X2dlbV9vYmplY3RfbG9jayhv
YmopOworCQlXQVJOX09OKGk5MTVfZ2VtX29iamVjdF9zZXRfdG9fY3B1X2RvbWFpbihvYmosIHRy
dWUpKTsKKwkJaTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwogCX0KLQlHRU1fQlVHX09OKCFs
aXN0X2VtcHR5KCZpOTE1LT5tbS5wdXJnZV9saXN0KSk7CisKKwlpbnRlbF9ydW50aW1lX3BtX3B1
dChpOTE1LCB3YWtlcmVmKTsKIAogCXJldHVybiAwOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMK
aW5kZXggZjZhYzgzOTRkYTc3Li5hM2NiMDhmNjAyZjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfdm1hLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
YwpAQCAtODIsOCArODIsNyBAQCBzdGF0aWMgdm9pZCBvYmpfYnVtcF9tcnUoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRv
X2k5MTUob2JqLT5iYXNlLmRldik7CiAKIAlzcGluX2xvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsK
LQlpZiAob2JqLT5iaW5kX2NvdW50KQotCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5rLCAm
aTkxNS0+bW0uYm91bmRfbGlzdCk7CisJbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywgJmk5
MTUtPm1tLnNocmlua19saXN0KTsKIAlzcGluX3VubG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwog
CiAJb2JqLT5tbS5kaXJ0eSA9IHRydWU7IC8qIGJlIHBhcmFub2lkICAqLwpAQCAtNTM1LDcgKzUz
NCw3IEBAIHN0YXRpYyB2b2lkIGFzc2VydF9iaW5kX2NvdW50KGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmopCiAJICogYXNzdW1lIHRoYXQgbm8gZWxzZSBpcyBwaW5uaW5nIHRo
ZSBwYWdlcywgYnV0IGFzIGEgcm91Z2ggYXNzZXJ0aW9uCiAJICogdGhhdCB3ZSB3aWxsIG5vdCBy
dW4gaW50byBwcm9ibGVtcyBsYXRlciwgdGhpcyB3aWxsIGRvISkKIAkgKi8KLQlHRU1fQlVHX09O
KGF0b21pY19yZWFkKCZvYmotPm1tLnBhZ2VzX3Bpbl9jb3VudCkgPCBvYmotPmJpbmRfY291bnQp
OworCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJm9iai0+bW0ucGFnZXNfcGluX2NvdW50KSA8IGF0
b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQpKTsKIH0KIAogLyoqCkBAIC02NzcsMTcgKzY3Niw4
IEBAIGk5MTVfdm1hX2luc2VydChzdHJ1Y3QgaTkxNV92bWEgKnZtYSwgdTY0IHNpemUsIHU2NCBh
bGlnbm1lbnQsIHU2NCBmbGFncykKIAltdXRleF91bmxvY2soJnZtYS0+dm0tPm11dGV4KTsKIAog
CWlmICh2bWEtPm9iaikgewotCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdm1h
LT5vYmo7Ci0KLQkJc3Bpbl9sb2NrKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2spOwotCi0JCWlmIChp
OTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKQotCQkJbGlzdF9tb3ZlX3RhaWwoJm9i
ai0+bW0ubGluaywgJmRldl9wcml2LT5tbS5ib3VuZF9saXN0KTsKLQotCQlvYmotPmJpbmRfY291
bnQrKzsKLQkJYXNzZXJ0X2JpbmRfY291bnQob2JqKTsKLQotCQlzcGluX3VubG9jaygmZGV2X3By
aXYtPm1tLm9ial9sb2NrKTsKKwkJYXRvbWljX2luYygmdm1hLT5vYmotPmJpbmRfY291bnQpOwor
CQlhc3NlcnRfYmluZF9jb3VudCh2bWEtPm9iaik7CiAJfQogCiAJcmV0dXJuIDA7CkBAIC03MDMs
OCArNjkzLDYgQEAgaTkxNV92bWFfaW5zZXJ0KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6
ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdzKQogc3RhdGljIHZvaWQKIGk5MTVfdm1hX3JlbW92
ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHZtYS0+dm0tPmk5MTU7Ci0KIAlHRU1fQlVHX09OKCFkcm1fbW1fbm9kZV9hbGxvY2F0ZWQo
JnZtYS0+bm9kZSkpOwogCUdFTV9CVUdfT04odm1hLT5mbGFncyAmIChJOTE1X1ZNQV9HTE9CQUxf
QklORCB8IEk5MTVfVk1BX0xPQ0FMX0JJTkQpKTsKIApAQCAtNzIyLDE1ICs3MTAsNyBAQCBpOTE1
X3ZtYV9yZW1vdmUoc3RydWN0IGk5MTVfdm1hICp2bWEpCiAJaWYgKHZtYS0+b2JqKSB7CiAJCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKIAotCQlzcGluX2xvY2so
Jmk5MTUtPm1tLm9ial9sb2NrKTsKLQotCQlHRU1fQlVHX09OKG9iai0+YmluZF9jb3VudCA9PSAw
KTsKLQkJaWYgKC0tb2JqLT5iaW5kX2NvdW50ID09IDAgJiYKLQkJICAgIGk5MTVfZ2VtX29iamVj
dF9pc19zaHJpbmthYmxlKG9iaikgJiYKLQkJICAgIG9iai0+bW0ubWFkdiA9PSBJOTE1X01BRFZf
V0lMTE5FRUQpCi0JCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5rLCAmaTkxNS0+bW0udW5i
b3VuZF9saXN0KTsKLQotCQlzcGluX3VubG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOworCQlhdG9t
aWNfZGVjKCZvYmotPmJpbmRfY291bnQpOwogCiAJCS8qCiAJCSAqIEFuZCBmaW5hbGx5IG5vdyB0
aGUgb2JqZWN0IGlzIGNvbXBsZXRlbHkgZGVjb3VwbGVkIGZyb20gdGhpcwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwppbmRleCAxZDgyMzUzMDNl
ZGYuLjcxYzEzNjNhZDUzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfZ2VtX2V2aWN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfZ2VtX2V2aWN0LmMKQEAgLTY3LDIwICs2NywyNCBAQCBzdGF0aWMgaW50IHBvcHVsYXRl
X2dndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCWNvdW50Kys7CiAJfQogCisJ
Ym91bmQgPSAwOwogCXVuYm91bmQgPSAwOwotCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmaTkx
NS0+bW0udW5ib3VuZF9saXN0LCBtbS5saW5rKQotCQlpZiAob2JqLT5tbS5xdWlya2VkKQorCWxp
c3RfZm9yX2VhY2hfZW50cnkob2JqLCBvYmplY3RzLCBzdF9saW5rKSB7CisJCUdFTV9CVUdfT04o
IW9iai0+bW0ucXVpcmtlZCk7CisKKwkJaWYgKGF0b21pY19yZWFkKCZvYmotPmJpbmRfY291bnQp
KQorCQkJYm91bmQrKzsKKwkJZWxzZQogCQkJdW5ib3VuZCsrOworCX0KKwlHRU1fQlVHX09OKGJv
dW5kICsgdW5ib3VuZCAhPSBjb3VudCk7CisKIAlpZiAodW5ib3VuZCkgewogCQlwcl9lcnIoIiVz
OiBGb3VuZCAlbHUgb2JqZWN0cyB1bmJvdW5kLCBleHBlY3RlZCAldSFcbiIsCiAJCSAgICAgICBf
X2Z1bmNfXywgdW5ib3VuZCwgMCk7CiAJCXJldHVybiAtRUlOVkFMOwogCX0KIAotCWJvdW5kID0g
MDsKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmk5MTUtPm1tLmJvdW5kX2xpc3QsIG1tLmxp
bmspCi0JCWlmIChvYmotPm1tLnF1aXJrZWQpCi0JCQlib3VuZCsrOwogCWlmIChib3VuZCAhPSBj
b3VudCkgewogCQlwcl9lcnIoIiVzOiBGb3VuZCAlbHUgb2JqZWN0cyBib3VuZCwgZXhwZWN0ZWQg
JWx1IVxuIiwKIAkJICAgICAgIF9fZnVuY19fLCBib3VuZCwgY291bnQpOwpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCmluZGV4IGYxZTk1ZWFmNjkyMy4u
ZGRhOGI5Yzc5YzM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
aTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
Z2VtX2d0dC5jCkBAIC0xMjMzLDcgKzEyMzMsNyBAQCBzdGF0aWMgdm9pZCB0cmFja192bWFfYmlu
ZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqID0gdm1hLT5vYmo7CiAKLQlvYmotPmJpbmRfY291bnQrKzsgLyogdHJhY2sgZm9yIGV2aWN0
aW9uIGxhdGVyICovCisJYXRvbWljX2luYygmb2JqLT5iaW5kX2NvdW50KTsgLyogdHJhY2sgZm9y
IGV2aWN0aW9uIGxhdGVyICovCiAJX19pOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CiAK
IAl2bWEtPnBhZ2VzID0gb2JqLT5tbS5wYWdlczsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
