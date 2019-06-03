Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA48333735
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE04B892AE;
	Mon,  3 Jun 2019 17:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82C64892C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 17:49:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16778860-1500050 
 for multiple; Mon, 03 Jun 2019 18:49:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 18:49:29 +0100
Message-Id: <20190603174935.23982-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Combine unbound/bound list
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
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5jICAgIHwgICAyICstCiAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCAgfCAgIDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jICAgICB8ICAxMyArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgICAgICAgIHwgICAzICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYyAgfCAgMzAgKystCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8IDE4OSArLS0tLS0tLS0tLS0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAxNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAgICAgICAgIHwgIDIyICst
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAgICAgICAgfCAgMzAgKy0t
CiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5jICAgfCAgMTYgKy0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYyB8ICAgMiArLQog
MTMgZmlsZXMgY2hhbmdlZCwgNjcgaW5zZXJ0aW9ucygrKSwgMjcyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kb21haW4uYwppbmRleCBlNWRlYWU2MjY4
MWYuLjYxMTUxMDlhMjgxMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2RvbWFpbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9k
b21haW4uYwpAQCAtMjE5LDcgKzIxOSw3IEBAIGludCBpOTE1X2dlbV9vYmplY3Rfc2V0X2NhY2hl
X2xldmVsKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJICogcmV3cml0ZSB0aGUg
UFRFIGluIHRoZSBiZWxpZWYgdGhhdCBkb2luZyBzbyB0cmFtcGxlcyB1cG9uIGxlc3MKIAkgKiBz
dGF0ZSBhbmQgc28gaW52b2x2ZXMgbGVzcyB3b3JrLgogCSAqLwotCWlmIChvYmotPmJpbmRfY291
bnQpIHsKKwlpZiAoYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3VudCkpIHsKIAkJLyogQmVmb3Jl
IHdlIGNoYW5nZSB0aGUgUFRFLCB0aGUgR1BVIG11c3Qgbm90IGJlIGFjY2Vzc2luZyBpdC4KIAkJ
ICogSWYgd2Ugd2FpdCB1cG9uIHRoZSBvYmplY3QsIHdlIGtub3cgdGhhdCBhbGwgdGhlIGJvdW5k
CiAJCSAqIFZNQSBhcmUgbm8gbG9uZ2VyIGFjdGl2ZS4KQEAgLTQ3NSwxNCArNDc1LDEwIEBAIHN0
YXRpYyB2b2lkIGk5MTVfZ2VtX29iamVjdF9idW1wX2luYWN0aXZlX2dndHQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikKIAl9CiAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5nZ3R0LnZtLm11
dGV4KTsKIAotCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopICYmCi0JICAg
IG9iai0+bW0ubWFkdiA9PSBJOTE1X01BRFZfV0lMTE5FRUQpIHsKLQkJc3RydWN0IGxpc3RfaGVh
ZCAqbGlzdDsKLQorCWlmIChpOTE1X2dlbV9vYmplY3RfaXNfc2hyaW5rYWJsZShvYmopKSB7CiAJ
CXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwotCQlsaXN0ID0gb2JqLT5iaW5kX2NvdW50
ID8KLQkJCSZpOTE1LT5tbS5ib3VuZF9saXN0IDogJmk5MTUtPm1tLnVuYm91bmRfbGlzdDsKLQkJ
bGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywgbGlzdCk7CisJCWlmIChvYmotPm1tLm1hZHYg
PT0gSTkxNV9NQURWX1dJTExORUVEKQorCQkJbGlzdF9tb3ZlX3RhaWwoJm9iai0+bW0ubGluaywg
Jmk5MTUtPm1tLnNocmlua19saXN0KTsKIAkJc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2Nr
KTsKIAl9CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
b2JqZWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMKaW5k
ZXggYjg0MGNmMTc5YmJlLi4yNzAyZTA2MDEwMmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fb2JqZWN0LmMKQEAgLTIwNiw3ICsyMDYsNyBAQCBzdGF0aWMgdm9pZCBfX2k5
MTVfZ2VtX2ZyZWVfb2JqZWN0cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAogCQlt
dXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwogCi0JCUdFTV9CVUdfT04ob2Jq
LT5iaW5kX2NvdW50KTsKKwkJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50
KSk7CiAJCUdFTV9CVUdfT04ob2JqLT51c2VyZmF1bHRfY291bnQpOwogCQlHRU1fQlVHX09OKGF0
b21pY19yZWFkKCZvYmotPmZyb250YnVmZmVyX2JpdHMpKTsKIAkJR0VNX0JVR19PTighbGlzdF9l
bXB0eSgmb2JqLT5sdXRfbGlzdCkpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdF90eXBlcy5oCmluZGV4IDY3YTk5MmQ2ZWUwYy4uNDFkMmU3YzhlMzMyIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVz
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdF90eXBlcy5o
CkBAIC0xNTYsNyArMTU2LDcgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgewogI2RlZmlu
ZSBTVFJJREVfTUFTSyAoflRJTElOR19NQVNLKQogCiAJLyoqIENvdW50IG9mIFZNQSBhY3R1YWxs
eSBib3VuZCBieSB0aGlzIG9iamVjdCAqLwotCXVuc2lnbmVkIGludCBiaW5kX2NvdW50OworCWF0
b21pY190IGJpbmRfY291bnQ7CiAJdW5zaWduZWQgaW50IGFjdGl2ZV9jb3VudDsKIAkvKiogQ291
bnQgb2YgaG93IG1hbnkgZ2xvYmFsIFZNQSBhcmUgY3VycmVudGx5IHBpbm5lZCBmb3IgdXNlIGJ5
IEhXICovCiAJdW5zaWduZWQgaW50IHBpbl9nbG9iYWw7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9wYWdlcy5jCmluZGV4IDdlNjRmZDZiYzE5Yi4uNzg2OGRkNDhkOTMxIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYwpAQCAtNTcsMTAgKzU3LDE5
IEBAIHZvaWQgX19pOTE1X2dlbV9vYmplY3Rfc2V0X3BhZ2VzKHN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmosCiAJR0VNX0JVR19PTighSEFTX1BBR0VfU0laRVMoaTkxNSwgb2JqLT5tbS5w
YWdlX3NpemVzLnNnKSk7CiAKIAlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2Jq
KSkgeworCQlzdHJ1Y3QgbGlzdF9oZWFkICpsaXN0OworCiAJCXNwaW5fbG9jaygmaTkxNS0+bW0u
b2JqX2xvY2spOworCiAJCWk5MTUtPm1tLnNocmlua19jb3VudCsrOwogCQlpOTE1LT5tbS5zaHJp
bmtfbWVtb3J5ICs9IG9iai0+YmFzZS5zaXplOwotCQlsaXN0X2FkZCgmb2JqLT5tbS5saW5rLCAm
aTkxNS0+bW0udW5ib3VuZF9saXN0KTsKKworCQlpZiAob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFE
Vl9XSUxMTkVFRCkKKwkJCWxpc3QgPSAmaTkxNS0+bW0ucHVyZ2VfbGlzdDsKKwkJZWxzZQorCQkJ
bGlzdCA9ICZpOTE1LT5tbS5zaHJpbmtfbGlzdDsKKwkJbGlzdF9hZGRfdGFpbCgmb2JqLT5tbS5s
aW5rLCBsaXN0KTsKKwogCQlzcGluX3VubG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwogCX0KIH0K
QEAgLTE4NSw3ICsxOTQsNyBAQCBpbnQgX19pOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJaWYgKGk5MTVfZ2VtX29iamVjdF9oYXNfcGlu
bmVkX3BhZ2VzKG9iaikpCiAJCXJldHVybiAtRUJVU1k7CiAKLQlHRU1fQlVHX09OKG9iai0+Ymlu
ZF9jb3VudCk7CisJR0VNX0JVR19PTihhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSk7CiAK
IAkvKiBNYXkgYmUgY2FsbGVkIGJ5IHNocmlua2VyIGZyb20gd2l0aGluIGdldF9wYWdlcygpIChv
biBhbm90aGVyIGJvKSAqLwogCW11dGV4X2xvY2tfbmVzdGVkKCZvYmotPm1tLmxvY2ssIHN1YmNs
YXNzKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMKaW5kZXggODliYjZkODIy
ZjZlLi4yZWYwZGIwZjFlNWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wbS5j
CkBAIC0xNjIsOCArMTYyLDcgQEAgdm9pZCBpOTE1X2dlbV9zdXNwZW5kX2xhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
ajsKIAlzdHJ1Y3QgbGlzdF9oZWFkICpwaGFzZXNbXSA9IHsKLQkJJmk5MTUtPm1tLnVuYm91bmRf
bGlzdCwKLQkJJmk5MTUtPm1tLmJvdW5kX2xpc3QsCisJCSZpOTE1LT5tbS5zaHJpbmtfbGlzdCwK
IAkJJmk5MTUtPm1tLnB1cmdlX2xpc3QsCiAJCU5VTEwKIAl9LCAqKnBoYXNlOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwppbmRleCBkNzFlNjMwYzZmYjgu
LjFlN2Y0OGRiN2IzZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX3Nocmlua2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3No
cmlua2VyLmMKQEAgLTY5LDcgKzY5LDcgQEAgc3RhdGljIGJvb2wgY2FuX3JlbGVhc2VfcGFnZXMo
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkgKiB0byB0aGUgR1BVLCBzaW1wbHkg
dW5iaW5kaW5nIGZyb20gdGhlIEdQVSBpcyBub3QgZ29pbmcgdG8gc3VjY2VlZAogCSAqIGluIHJl
bGVhc2luZyBvdXIgcGluIGNvdW50IG9uIHRoZSBwYWdlcyB0aGVtc2VsdmVzLgogCSAqLwotCWlm
IChhdG9taWNfcmVhZCgmb2JqLT5tbS5wYWdlc19waW5fY291bnQpID4gb2JqLT5iaW5kX2NvdW50
KQorCWlmIChhdG9taWNfcmVhZCgmb2JqLT5tbS5wYWdlc19waW5fY291bnQpID4gYXRvbWljX3Jl
YWQoJm9iai0+YmluZF9jb3VudCkpCiAJCXJldHVybiBmYWxzZTsKIAogCS8qIElmIGFueSB2bWEg
YXJlICJwZXJtYW5lbnRseSIgcGlubmVkLCBpdCB3aWxsIHByZXZlbnQgdXMgZnJvbQpAQCAtMTQ1
LDggKzE0NSwxMCBAQCBpOTE1X2dlbV9zaHJpbmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAJCXVuc2lnbmVkIGludCBiaXQ7CiAJfSBwaGFzZXNbXSA9IHsKIAkJeyAmaTkxNS0+bW0u
cHVyZ2VfbGlzdCwgfjB1IH0sCi0JCXsgJmk5MTUtPm1tLnVuYm91bmRfbGlzdCwgSTkxNV9TSFJJ
TktfVU5CT1VORCB9LAotCQl7ICZpOTE1LT5tbS5ib3VuZF9saXN0LCBJOTE1X1NIUklOS19CT1VO
RCB9LAorCQl7CisJCQkmaTkxNS0+bW0uc2hyaW5rX2xpc3QsCisJCQlJOTE1X1NIUklOS19CT1VO
RCB8IEk5MTVfU0hSSU5LX1VOQk9VTkQKKwkJfSwKIAkJeyBOVUxMLCAwIH0sCiAJfSwgKnBoYXNl
OwogCWludGVsX3dha2VyZWZfdCB3YWtlcmVmID0gMDsKQEAgLTIzNyw3ICsyMzksNyBAQCBpOTE1
X2dlbV9zaHJpbmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJCQkJY29udGludWU7
CiAKIAkJCWlmICghKGZsYWdzICYgSTkxNV9TSFJJTktfQk9VTkQpICYmCi0JCQkgICAgUkVBRF9P
TkNFKG9iai0+YmluZF9jb3VudCkpCisJCQkgICAgYXRvbWljX3JlYWQoJm9iai0+YmluZF9jb3Vu
dCkpCiAJCQkJY29udGludWU7CiAKIAkJCWlmICghY2FuX3JlbGVhc2VfcGFnZXMob2JqKSkKQEAg
LTM3Nyw3ICszNzksNyBAQCBpOTE1X2dlbV9zaHJpbmtlcl9vb20oc3RydWN0IG5vdGlmaWVyX2Js
b2NrICpuYiwgdW5zaWduZWQgbG9uZyBldmVudCwgdm9pZCAqcHRyKQogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1ID0KIAkJY29udGFpbmVyX29mKG5iLCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSwgbW0ub29tX25vdGlmaWVyKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OwotCXVuc2lnbmVkIGxvbmcgdW5ldmljdGFibGUsIGJvdW5kLCB1bmJvdW5kLCBmcmVlZF9wYWdl
czsKKwl1bnNpZ25lZCBsb25nIHVuZXZpY3RhYmxlLCBhdmFpbGFibGUsIGZyZWVkX3BhZ2VzOwog
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogCiAJZnJlZWRfcGFnZXMgPSAwOwpAQCAtMzkxLDI2
ICszOTMsMjAgQEAgaTkxNV9nZW1fc2hyaW5rZXJfb29tKHN0cnVjdCBub3RpZmllcl9ibG9jayAq
bmIsIHVuc2lnbmVkIGxvbmcgZXZlbnQsIHZvaWQgKnB0cikKIAkgKiBhc3NlcnQgdGhhdCB0aGVy
ZSBhcmUgbm8gb2JqZWN0cyB3aXRoIHBpbm5lZCBwYWdlcyB0aGF0IGFyZSBub3QKIAkgKiBiZWlu
ZyBwb2ludGVkIHRvIGJ5IGhhcmR3YXJlLgogCSAqLwotCXVuYm91bmQgPSBib3VuZCA9IHVuZXZp
Y3RhYmxlID0gMDsKKwlhdmFpbGFibGUgPSB1bmV2aWN0YWJsZSA9IDA7CiAJc3Bpbl9sb2NrKCZp
OTE1LT5tbS5vYmpfbG9jayk7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICZpOTE1LT5tbS51
bmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmk5MTUt
Pm1tLnNocmlua19saXN0LCBtbS5saW5rKSB7CiAJCWlmICghY2FuX3JlbGVhc2VfcGFnZXMob2Jq
KSkKIAkJCXVuZXZpY3RhYmxlICs9IG9iai0+YmFzZS5zaXplID4+IFBBR0VfU0hJRlQ7CiAJCWVs
c2UKLQkJCXVuYm91bmQgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9TSElGVDsKLQl9Ci0JbGlz
dF9mb3JfZWFjaF9lbnRyeShvYmosICZpOTE1LT5tbS5ib3VuZF9saXN0LCBtbS5saW5rKSB7Ci0J
CWlmICghY2FuX3JlbGVhc2VfcGFnZXMob2JqKSkKLQkJCXVuZXZpY3RhYmxlICs9IG9iai0+YmFz
ZS5zaXplID4+IFBBR0VfU0hJRlQ7Ci0JCWVsc2UKLQkJCWJvdW5kICs9IG9iai0+YmFzZS5zaXpl
ID4+IFBBR0VfU0hJRlQ7CisJCQlhdmFpbGFibGUgKz0gb2JqLT5iYXNlLnNpemUgPj4gUEFHRV9T
SElGVDsKIAl9CiAJc3Bpbl91bmxvY2soJmk5MTUtPm1tLm9ial9sb2NrKTsKIAotCWlmIChmcmVl
ZF9wYWdlcyB8fCB1bmJvdW5kIHx8IGJvdW5kKQorCWlmIChmcmVlZF9wYWdlcyB8fCBhdmFpbGFi
bGUpCiAJCXByX2luZm8oIlB1cmdpbmcgR1BVIG1lbW9yeSwgJWx1IHBhZ2VzIGZyZWVkLCAiCi0J
CQkiJWx1IHBhZ2VzIHN0aWxsIHBpbm5lZC5cbiIsCi0JCQlmcmVlZF9wYWdlcywgdW5ldmljdGFi
bGUpOworCQkJIiVsdSBwYWdlcyBzdGlsbCBwaW5uZWQsICVsdSBwYWdlcyBsZWZ0IGF2YWlsYWJs
ZS5cbiIsCisJCQlmcmVlZF9wYWdlcywgdW5ldmljdGFibGUsIGF2YWlsYWJsZSk7CiAKIAkqKHVu
c2lnbmVkIGxvbmcgKilwdHIgKz0gZnJlZWRfcGFnZXM7CiAJcmV0dXJuIE5PVElGWV9ET05FOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jCmluZGV4IDg0ZDRmNTQ5
ZWIyMS4uYzliNWU2Y2Q5NDBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fc3RvbGVuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3N0b2xlbi5jCkBAIC02ODksMTAgKzY4OSw4IEBAIGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3Rv
bGVuX2Zvcl9wcmVhbGxvY2F0ZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2CiAJ
bGlzdF9tb3ZlX3RhaWwoJnZtYS0+dm1fbGluaywgJmdndHQtPnZtLmJvdW5kX2xpc3QpOwogCW11
dGV4X3VubG9jaygmZ2d0dC0+dm0ubXV0ZXgpOwogCi0Jc3Bpbl9sb2NrKCZkZXZfcHJpdi0+bW0u
b2JqX2xvY2spOwogCUdFTV9CVUdfT04oaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2Jq
KSk7Ci0Jb2JqLT5iaW5kX2NvdW50Kys7Ci0Jc3Bpbl91bmxvY2soJmRldl9wcml2LT5tbS5vYmpf
bG9jayk7CisJYXRvbWljX2luYygmb2JqLT5iaW5kX2NvdW50KTsKIAogCXJldHVybiBvYmo7CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5kZXggZjIxMjI0MWEyNzU4Li40YTdmN2Vm
MWM5ZWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCkBAIC0xMDQsMTkgKzEwNCw2
IEBAIHN0YXRpYyBjaGFyIGdldF9waW5fbWFwcGVkX2ZsYWcoc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaikKIAlyZXR1cm4gb2JqLT5tbS5tYXBwaW5nID8gJ00nIDogJyAnOwogfQogCi1z
dGF0aWMgdTY0IGk5MTVfZ2VtX29ial90b3RhbF9nZ3R0X3NpemUoc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaikKLXsKLQl1NjQgc2l6ZSA9IDA7Ci0Jc3RydWN0IGk5MTVfdm1hICp2bWE7
Ci0KLQlmb3JfZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikgewotCQlpZiAoZHJtX21tX25vZGVfYWxs
b2NhdGVkKCZ2bWEtPm5vZGUpKQotCQkJc2l6ZSArPSB2bWEtPm5vZGUuc2l6ZTsKLQl9Ci0KLQly
ZXR1cm4gc2l6ZTsKLX0KLQogc3RhdGljIGNvbnN0IGNoYXIgKgogc3RyaW5naWZ5X3BhZ2Vfc2l6
ZXModW5zaWduZWQgaW50IHBhZ2Vfc2l6ZXMsIGNoYXIgKmJ1Ziwgc2l6ZV90IGxlbikKIHsKQEAg
LTI0Nyw4MyArMjM0LDYgQEAgZGVzY3JpYmVfb2JqKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0
IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIAkJc2VxX3ByaW50ZihtLCAiIChmcm9udGJ1ZmZl
cjogMHglMDN4KSIsIGZyb250YnVmZmVyX2JpdHMpOwogfQogCi1zdGF0aWMgaW50IG9ial9yYW5r
X2J5X3N0b2xlbihjb25zdCB2b2lkICpBLCBjb25zdCB2b2lkICpCKQotewotCWNvbnN0IHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICphID0KLQkJKihjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqKilBOwotCWNvbnN0IHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpiID0KLQkJ
Kihjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqKilCOwotCi0JaWYgKGEtPnN0b2xl
bi0+c3RhcnQgPCBiLT5zdG9sZW4tPnN0YXJ0KQotCQlyZXR1cm4gLTE7Ci0JaWYgKGEtPnN0b2xl
bi0+c3RhcnQgPiBiLT5zdG9sZW4tPnN0YXJ0KQotCQlyZXR1cm4gMTsKLQlyZXR1cm4gMDsKLX0K
LQotc3RhdGljIGludCBpOTE1X2dlbV9zdG9sZW5fbGlzdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqZGF0YSkKLXsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBu
b2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZf
cHJpdi0+ZHJtOwotCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoqb2JqZWN0czsKLQlzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwotCXU2NCB0b3RhbF9vYmpfc2l6ZSwgdG90YWxf
Z3R0X3NpemU7Ci0JdW5zaWduZWQgbG9uZyB0b3RhbCwgY291bnQsIG47Ci0JaW50IHJldDsKLQot
CXRvdGFsID0gUkVBRF9PTkNFKGRldl9wcml2LT5tbS5zaHJpbmtfY291bnQpOwotCW9iamVjdHMg
PSBrdm1hbGxvY19hcnJheSh0b3RhbCwgc2l6ZW9mKCpvYmplY3RzKSwgR0ZQX0tFUk5FTCk7Ci0J
aWYgKCFvYmplY3RzKQotCQlyZXR1cm4gLUVOT01FTTsKLQotCXJldCA9IG11dGV4X2xvY2tfaW50
ZXJydXB0aWJsZSgmZGV2LT5zdHJ1Y3RfbXV0ZXgpOwotCWlmIChyZXQpCi0JCWdvdG8gb3V0Owot
Ci0JdG90YWxfb2JqX3NpemUgPSB0b3RhbF9ndHRfc2l6ZSA9IGNvdW50ID0gMDsKLQotCXNwaW5f
bG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwg
JmRldl9wcml2LT5tbS5ib3VuZF9saXN0LCBtbS5saW5rKSB7Ci0JCWlmIChjb3VudCA9PSB0b3Rh
bCkKLQkJCWJyZWFrOwotCi0JCWlmIChvYmotPnN0b2xlbiA9PSBOVUxMKQotCQkJY29udGludWU7
Ci0KLQkJb2JqZWN0c1tjb3VudCsrXSA9IG9iajsKLQkJdG90YWxfb2JqX3NpemUgKz0gb2JqLT5i
YXNlLnNpemU7Ci0JCXRvdGFsX2d0dF9zaXplICs9IGk5MTVfZ2VtX29ial90b3RhbF9nZ3R0X3Np
emUob2JqKTsKLQotCX0KLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmRldl9wcml2LT5tbS51
bmJvdW5kX2xpc3QsIG1tLmxpbmspIHsKLQkJaWYgKGNvdW50ID09IHRvdGFsKQotCQkJYnJlYWs7
Ci0KLQkJaWYgKG9iai0+c3RvbGVuID09IE5VTEwpCi0JCQljb250aW51ZTsKLQotCQlvYmplY3Rz
W2NvdW50KytdID0gb2JqOwotCQl0b3RhbF9vYmpfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQl9
Ci0Jc3Bpbl91bmxvY2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7Ci0KLQlzb3J0KG9iamVjdHMs
IGNvdW50LCBzaXplb2YoKm9iamVjdHMpLCBvYmpfcmFua19ieV9zdG9sZW4sIE5VTEwpOwotCi0J
c2VxX3B1dHMobSwgIlN0b2xlbjpcbiIpOwotCWZvciAobiA9IDA7IG4gPCBjb3VudDsgbisrKSB7
Ci0JCXNlcV9wdXRzKG0sICIgICAiKTsKLQkJZGVzY3JpYmVfb2JqKG0sIG9iamVjdHNbbl0pOwot
CQlzZXFfcHV0YyhtLCAnXG4nKTsKLQl9Ci0Jc2VxX3ByaW50ZihtLCAiVG90YWwgJWx1IG9iamVj
dHMsICVsbHUgYnl0ZXMsICVsbHUgR1RUIHNpemVcbiIsCi0JCSAgIGNvdW50LCB0b3RhbF9vYmpf
c2l6ZSwgdG90YWxfZ3R0X3NpemUpOwotCi0JbXV0ZXhfdW5sb2NrKCZkZXYtPnN0cnVjdF9tdXRl
eCk7Ci1vdXQ6Ci0Ja3ZmcmVlKG9iamVjdHMpOwotCXJldHVybiByZXQ7Ci19Ci0KIHN0cnVjdCBm
aWxlX3N0YXRzIHsKIAlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsKIAl1bnNpZ25lZCBs
b25nIGNvdW50OwpAQCAtMzQzLDcgKzI1Myw3IEBAIHN0YXRpYyBpbnQgcGVyX2ZpbGVfc3RhdHMo
aW50IGlkLCB2b2lkICpwdHIsIHZvaWQgKmRhdGEpCiAKIAlzdGF0cy0+Y291bnQrKzsKIAlzdGF0
cy0+dG90YWwgKz0gb2JqLT5iYXNlLnNpemU7Ci0JaWYgKCFvYmotPmJpbmRfY291bnQpCisJaWYg
KCFhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50KSkKIAkJc3RhdHMtPnVuYm91bmQgKz0gb2Jq
LT5iYXNlLnNpemU7CiAJaWYgKG9iai0+YmFzZS5uYW1lIHx8IG9iai0+YmFzZS5kbWFfYnVmKQog
CQlzdGF0cy0+c2hhcmVkICs9IG9iai0+YmFzZS5zaXplOwpAQCAtNDUwLDEwNCArMzYwLDIyIEBA
IHN0YXRpYyB2b2lkIHByaW50X2NvbnRleHRfc3RhdHMoc3RydWN0IHNlcV9maWxlICptLAogCiBz
dGF0aWMgaW50IGk5MTVfZ2VtX29iamVjdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAq
ZGF0YSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBub2RlX3RvX2k5
MTUobS0+cHJpdmF0ZSk7Ci0Jc3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJt
OwotCXN0cnVjdCBpOTE1X2dndHQgKmdndHQgPSAmZGV2X3ByaXYtPmdndHQ7Ci0JdTMyIGNvdW50
LCBtYXBwZWRfY291bnQsIHB1cmdlYWJsZV9jb3VudCwgZHB5X2NvdW50LCBodWdlX2NvdW50Owot
CXU2NCBzaXplLCBtYXBwZWRfc2l6ZSwgcHVyZ2VhYmxlX3NpemUsIGRweV9zaXplLCBodWdlX3Np
emU7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKLQl1bnNpZ25lZCBpbnQgcGFn
ZV9zaXplcyA9IDA7Ci0JY2hhciBidWZbODBdOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1ID0gbm9kZV90b19pOTE1KG0tPnByaXZhdGUpOwogCWludCByZXQ7CiAKIAlzZXFfcHJpbnRm
KG0sICIldSBzaHJpbmthYmxlIG9iamVjdHMsICVsbHUgYnl0ZXNcbiIsCi0JCSAgIGRldl9wcml2
LT5tbS5zaHJpbmtfY291bnQsCi0JCSAgIGRldl9wcml2LT5tbS5zaHJpbmtfbWVtb3J5KTsKLQot
CXNpemUgPSBjb3VudCA9IDA7Ci0JbWFwcGVkX3NpemUgPSBtYXBwZWRfY291bnQgPSAwOwotCXB1
cmdlYWJsZV9zaXplID0gcHVyZ2VhYmxlX2NvdW50ID0gMDsKLQlodWdlX3NpemUgPSBodWdlX2Nv
dW50ID0gMDsKLQotCXNwaW5fbG9jaygmZGV2X3ByaXYtPm1tLm9ial9sb2NrKTsKLQlsaXN0X2Zv
cl9lYWNoX2VudHJ5KG9iaiwgJmRldl9wcml2LT5tbS51bmJvdW5kX2xpc3QsIG1tLmxpbmspIHsK
LQkJc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJKytjb3VudDsKLQotCQlpZiAob2JqLT5tbS5t
YWR2ID09IEk5MTVfTUFEVl9ET05UTkVFRCkgewotCQkJcHVyZ2VhYmxlX3NpemUgKz0gb2JqLT5i
YXNlLnNpemU7Ci0JCQkrK3B1cmdlYWJsZV9jb3VudDsKLQkJfQotCi0JCWlmIChvYmotPm1tLm1h
cHBpbmcpIHsKLQkJCW1hcHBlZF9jb3VudCsrOwotCQkJbWFwcGVkX3NpemUgKz0gb2JqLT5iYXNl
LnNpemU7Ci0JCX0KLQotCQlpZiAob2JqLT5tbS5wYWdlX3NpemVzLnNnID4gSTkxNV9HVFRfUEFH
RV9TSVpFKSB7Ci0JCQlodWdlX2NvdW50Kys7Ci0JCQlodWdlX3NpemUgKz0gb2JqLT5iYXNlLnNp
emU7Ci0JCQlwYWdlX3NpemVzIHw9IG9iai0+bW0ucGFnZV9zaXplcy5zZzsKLQkJfQotCX0KLQlz
ZXFfcHJpbnRmKG0sICIldSB1bmJvdW5kIG9iamVjdHMsICVsbHUgYnl0ZXNcbiIsIGNvdW50LCBz
aXplKTsKLQotCXNpemUgPSBjb3VudCA9IGRweV9zaXplID0gZHB5X2NvdW50ID0gMDsKLQlsaXN0
X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmRldl9wcml2LT5tbS5ib3VuZF9saXN0LCBtbS5saW5rKSB7
Ci0JCXNpemUgKz0gb2JqLT5iYXNlLnNpemU7Ci0JCSsrY291bnQ7Ci0KLQkJaWYgKG9iai0+cGlu
X2dsb2JhbCkgewotCQkJZHB5X3NpemUgKz0gb2JqLT5iYXNlLnNpemU7Ci0JCQkrK2RweV9jb3Vu
dDsKLQkJfQotCi0JCWlmIChvYmotPm1tLm1hZHYgPT0gSTkxNV9NQURWX0RPTlRORUVEKSB7Ci0J
CQlwdXJnZWFibGVfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJCSsrcHVyZ2VhYmxlX2NvdW50
OwotCQl9Ci0KLQkJaWYgKG9iai0+bW0ubWFwcGluZykgewotCQkJbWFwcGVkX2NvdW50Kys7Ci0J
CQltYXBwZWRfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJfQotCi0JCWlmIChvYmotPm1tLnBh
Z2Vfc2l6ZXMuc2cgPiBJOTE1X0dUVF9QQUdFX1NJWkUpIHsKLQkJCWh1Z2VfY291bnQrKzsKLQkJ
CWh1Z2Vfc2l6ZSArPSBvYmotPmJhc2Uuc2l6ZTsKLQkJCXBhZ2Vfc2l6ZXMgfD0gb2JqLT5tbS5w
YWdlX3NpemVzLnNnOwotCQl9Ci0JfQotCXNwaW5fdW5sb2NrKCZkZXZfcHJpdi0+bW0ub2JqX2xv
Y2spOwotCi0Jc2VxX3ByaW50ZihtLCAiJXUgYm91bmQgb2JqZWN0cywgJWxsdSBieXRlc1xuIiwK
LQkJICAgY291bnQsIHNpemUpOwotCXNlcV9wcmludGYobSwgIiV1IHB1cmdlYWJsZSBvYmplY3Rz
LCAlbGx1IGJ5dGVzXG4iLAotCQkgICBwdXJnZWFibGVfY291bnQsIHB1cmdlYWJsZV9zaXplKTsK
LQlzZXFfcHJpbnRmKG0sICIldSBtYXBwZWQgb2JqZWN0cywgJWxsdSBieXRlc1xuIiwKLQkJICAg
bWFwcGVkX2NvdW50LCBtYXBwZWRfc2l6ZSk7Ci0Jc2VxX3ByaW50ZihtLCAiJXUgaHVnZS1wYWdl
ZCBvYmplY3RzICglcykgJWxsdSBieXRlc1xuIiwKLQkJICAgaHVnZV9jb3VudCwKLQkJICAgc3Ry
aW5naWZ5X3BhZ2Vfc2l6ZXMocGFnZV9zaXplcywgYnVmLCBzaXplb2YoYnVmKSksCi0JCSAgIGh1
Z2Vfc2l6ZSk7Ci0Jc2VxX3ByaW50ZihtLCAiJXUgZGlzcGxheSBvYmplY3RzIChnbG9iYWxseSBw
aW5uZWQpLCAlbGx1IGJ5dGVzXG4iLAotCQkgICBkcHlfY291bnQsIGRweV9zaXplKTsKLQotCXNl
cV9wcmludGYobSwgIiVsbHUgWyVwYV0gZ3R0IHRvdGFsXG4iLAotCQkgICBnZ3R0LT52bS50b3Rh
bCwgJmdndHQtPm1hcHBhYmxlX2VuZCk7Ci0Jc2VxX3ByaW50ZihtLCAiU3VwcG9ydGVkIHBhZ2Ug
c2l6ZXM6ICVzXG4iLAotCQkgICBzdHJpbmdpZnlfcGFnZV9zaXplcyhJTlRFTF9JTkZPKGRldl9w
cml2KS0+cGFnZV9zaXplcywKLQkJCQkJYnVmLCBzaXplb2YoYnVmKSkpOworCQkgICBpOTE1LT5t
bS5zaHJpbmtfY291bnQsCisJCSAgIGk5MTUtPm1tLnNocmlua19tZW1vcnkpOwogCiAJc2VxX3B1
dGMobSwgJ1xuJyk7CiAKLQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmRldi0+c3Ry
dWN0X211dGV4KTsKKwlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQlwcmludF9iYXRjaF9w
b29sX3N0YXRzKG0sIGRldl9wcml2KTsKLQlwcmludF9jb250ZXh0X3N0YXRzKG0sIGRldl9wcml2
KTsKLQltdXRleF91bmxvY2soJmRldi0+c3RydWN0X211dGV4KTsKKwlwcmludF9iYXRjaF9wb29s
X3N0YXRzKG0sIGk5MTUpOworCXByaW50X2NvbnRleHRfc3RhdHMobSwgaTkxNSk7CisJbXV0ZXhf
dW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKIAogCXJldHVybiAwOwogfQpAQCAtNDUz
Myw3ICs0MzYxLDYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmaWxlX29wZXJhdGlvbnMgaTkxNV9m
aWZvX3VuZGVycnVuX3Jlc2V0X29wcyA9IHsKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2luZm9f
bGlzdCBpOTE1X2RlYnVnZnNfbGlzdFtdID0gewogCXsiaTkxNV9jYXBhYmlsaXRpZXMiLCBpOTE1
X2NhcGFiaWxpdGllcywgMH0sCiAJeyJpOTE1X2dlbV9vYmplY3RzIiwgaTkxNV9nZW1fb2JqZWN0
X2luZm8sIDB9LAotCXsiaTkxNV9nZW1fc3RvbGVuIiwgaTkxNV9nZW1fc3RvbGVuX2xpc3RfaW5m
byB9LAogCXsiaTkxNV9nZW1fZmVuY2VfcmVncyIsIGk5MTVfZ2VtX2ZlbmNlX3JlZ3NfaW5mbywg
MH0sCiAJeyJpOTE1X2dlbV9pbnRlcnJ1cHQiLCBpOTE1X2ludGVycnVwdF9pbmZvLCAwfSwKIAl7
Imk5MTVfZ2VtX2JhdGNoX3Bvb2wiLCBpOTE1X2dlbV9iYXRjaF9wb29sX2luZm8sIDB9LApkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggNzZmMmJmOTBlZDg2Li41MjI5YTRkZjA4NzkgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtODU1LDE5ICs4NTUsMTUgQEAgc3RydWN0IGk5MTVfZ2Vt
X21tIHsKIAkvKiBQcm90ZWN0cyBib3VuZF9saXN0L3VuYm91bmRfbGlzdCBhbmQgI2RybV9pOTE1
X2dlbV9vYmplY3QubW0ubGluayAqLwogCXNwaW5sb2NrX3Qgb2JqX2xvY2s7CiAKLQkvKiogTGlz
dCBvZiBhbGwgb2JqZWN0cyBpbiBndHRfc3BhY2UuIFVzZWQgdG8gcmVzdG9yZSBndHQKLQkgKiBt
YXBwaW5ncyBvbiByZXN1bWUgKi8KLQlzdHJ1Y3QgbGlzdF9oZWFkIGJvdW5kX2xpc3Q7CiAJLyoq
Ci0JICogTGlzdCBvZiBvYmplY3RzIHdoaWNoIGFyZSBub3QgYm91bmQgdG8gdGhlIEdUVCAodGh1
cwotCSAqIGFyZSBpZGxlIGFuZCBub3QgdXNlZCBieSB0aGUgR1BVKS4gVGhlc2Ugb2JqZWN0cyBt
YXkgb3IgbWF5Ci0JICogbm90IGFjdHVhbGx5IGhhdmUgYW55IHBhZ2VzIGF0dGFjaGVkLgorCSAq
IExpc3Qgb2Ygb2JqZWN0cyB3aGljaCBhcmUgcHVyZ2VhYmxlLgogCSAqLwotCXN0cnVjdCBsaXN0
X2hlYWQgdW5ib3VuZF9saXN0OworCXN0cnVjdCBsaXN0X2hlYWQgcHVyZ2VfbGlzdDsKKwogCS8q
KgotCSAqIExpc3Qgb2Ygb2JqZWN0cyB3aGljaCBhcmUgcHVyZ2VhYmxlLiBNYXkgYmUgYWN0aXZl
LgorCSAqIExpc3Qgb2Ygb2JqZWN0cyB3aGljaCBoYXZlIGFsbG9jYXRlZCBwYWdlcyBhbmQgYXJl
IHNocmlua2FibGUuCiAJICovCi0Jc3RydWN0IGxpc3RfaGVhZCBwdXJnZV9saXN0OworCXN0cnVj
dCBsaXN0X2hlYWQgc2hyaW5rX2xpc3Q7CiAKIAkvKiogTGlzdCBvZiBhbGwgb2JqZWN0cyBpbiBn
dHRfc3BhY2UsIGN1cnJlbnRseSBtbWFwZWQgYnkgdXNlcnNwYWNlLgogCSAqIEFsbCBvYmplY3Rz
IHdpdGhpbiB0aGlzIGxpc3QgbXVzdCBhbHNvIGJlIG9uIGJvdW5kX2xpc3QuCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwppbmRleCA0NzM5YTYzMDdjMzIuLjhjMDdhYmVkYTY5NyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbS5jCkBAIC0xMTQxLDEwICsxMTQxLDggQEAgaTkxNV9nZW1fbWFkdmlzZV9pb2N0
bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCQkJc3Bpbl9sb2NrKCZpOTE1
LT5tbS5vYmpfbG9jayk7CiAJCQlpZiAob2JqLT5tbS5tYWR2ICE9IEk5MTVfTUFEVl9XSUxMTkVF
RCkKIAkJCQlsaXN0ID0gJmk5MTUtPm1tLnB1cmdlX2xpc3Q7Ci0JCQllbHNlIGlmIChvYmotPmJp
bmRfY291bnQpCi0JCQkJbGlzdCA9ICZpOTE1LT5tbS5ib3VuZF9saXN0OwogCQkJZWxzZQotCQkJ
CWxpc3QgPSAmaTkxNS0+bW0udW5ib3VuZF9saXN0OworCQkJCWxpc3QgPSAmaTkxNS0+bW0uc2hy
aW5rX2xpc3Q7CiAJCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5rLCBsaXN0KTsKIAkJCXNw
aW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CiAJCX0KQEAgLTE3NjYsOCArMTc2NCw3IEBA
IHN0YXRpYyB2b2lkIGk5MTVfZ2VtX2luaXRfX21tKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1KQogCWluaXRfbGxpc3RfaGVhZCgmaTkxNS0+bW0uZnJlZV9saXN0KTsKIAogCUlOSVRfTElT
VF9IRUFEKCZpOTE1LT5tbS5wdXJnZV9saXN0KTsKLQlJTklUX0xJU1RfSEVBRCgmaTkxNS0+bW0u
dW5ib3VuZF9saXN0KTsKLQlJTklUX0xJU1RfSEVBRCgmaTkxNS0+bW0uYm91bmRfbGlzdCk7CisJ
SU5JVF9MSVNUX0hFQUQoJmk5MTUtPm1tLnNocmlua19saXN0KTsKIAlJTklUX0xJU1RfSEVBRCgm
aTkxNS0+bW0uZmVuY2VfbGlzdCk7CiAKIAlJTklUX0xJU1RfSEVBRCgmaTkxNS0+bW0udXNlcmZh
dWx0X2xpc3QpOwpAQCAtMTgyOSwxMSArMTgyNiw2IEBAIGludCBpOTE1X2dlbV9mcmVlemUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogaW50IGk5MTVfZ2VtX2ZyZWV6ZV9sYXRl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogewogCXN0cnVjdCBkcm1faTkxNV9nZW1f
b2JqZWN0ICpvYmo7Ci0Jc3RydWN0IGxpc3RfaGVhZCAqcGhhc2VzW10gPSB7Ci0JCSZpOTE1LT5t
bS51bmJvdW5kX2xpc3QsCi0JCSZpOTE1LT5tbS5ib3VuZF9saXN0LAotCQlOVUxMCi0JfSwgKipw
aGFzZTsKIAogCS8qCiAJICogQ2FsbGVkIGp1c3QgYmVmb3JlIHdlIHdyaXRlIHRoZSBoaWJlcm5h
dGlvbiBpbWFnZS4KQEAgLTE4NTMsMTIgKzE4NDUsMTAgQEAgaW50IGk5MTVfZ2VtX2ZyZWV6ZV9s
YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWk5MTVfZ2VtX3NocmluayhpOTE1
LCAtMVVMLCBOVUxMLCBJOTE1X1NIUklOS19VTkJPVU5EKTsKIAlpOTE1X2dlbV9kcmFpbl9mcmVl
ZF9vYmplY3RzKGk5MTUpOwogCi0JZm9yIChwaGFzZSA9IHBoYXNlczsgKnBoYXNlOyBwaGFzZSsr
KSB7Ci0JCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAqcGhhc2UsIG1tLmxpbmspIHsKLQkJCWk5
MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7Ci0JCQlXQVJOX09OKGk5MTVfZ2VtX29iamVjdF9zZXRf
dG9fY3B1X2RvbWFpbihvYmosIHRydWUpKTsKLQkJCWk5MTVfZ2VtX29iamVjdF91bmxvY2sob2Jq
KTsKLQkJfQorCWxpc3RfZm9yX2VhY2hfZW50cnkob2JqLCAmaTkxNS0+bW0uc2hyaW5rX2xpc3Qs
IG1tLmxpbmspIHsKKwkJaTkxNV9nZW1fb2JqZWN0X2xvY2sob2JqKTsKKwkJV0FSTl9PTihpOTE1
X2dlbV9vYmplY3Rfc2V0X3RvX2NwdV9kb21haW4ob2JqLCB0cnVlKSk7CisJCWk5MTVfZ2VtX29i
amVjdF91bmxvY2sob2JqKTsKIAl9CiAJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmaTkxNS0+bW0u
cHVyZ2VfbGlzdCkpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Zt
YS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRleCBiN2ZiN2QyMTZmNzcu
LjBmMzg0NzFjMmFlYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBAIC04Miw4ICs4Miw3IEBA
IHN0YXRpYyB2b2lkIG9ial9idW1wX21ydShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
KQogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2
KTsKIAogCXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2spOwotCWlmIChvYmotPmJpbmRfY291
bnQpCi0JCWxpc3RfbW92ZV90YWlsKCZvYmotPm1tLmxpbmssICZpOTE1LT5tbS5ib3VuZF9saXN0
KTsKKwlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5rLCAmaTkxNS0+bW0uc2hyaW5rX2xpc3Qp
OwogCXNwaW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CiAKIAlvYmotPm1tLmRpcnR5ID0g
dHJ1ZTsgLyogYmUgcGFyYW5vaWQgICovCkBAIC01MzMsNyArNTMyLDcgQEAgc3RhdGljIHZvaWQg
YXNzZXJ0X2JpbmRfY291bnQoY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikK
IAkgKiBhc3N1bWUgdGhhdCBubyBlbHNlIGlzIHBpbm5pbmcgdGhlIHBhZ2VzLCBidXQgYXMgYSBy
b3VnaCBhc3NlcnRpb24KIAkgKiB0aGF0IHdlIHdpbGwgbm90IHJ1biBpbnRvIHByb2JsZW1zIGxh
dGVyLCB0aGlzIHdpbGwgZG8hKQogCSAqLwotCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJm9iai0+
bW0ucGFnZXNfcGluX2NvdW50KSA8IG9iai0+YmluZF9jb3VudCk7CisJR0VNX0JVR19PTihhdG9t
aWNfcmVhZCgmb2JqLT5tbS5wYWdlc19waW5fY291bnQpIDwgYXRvbWljX3JlYWQoJm9iai0+Ymlu
ZF9jb3VudCkpOwogfQogCiAvKioKQEAgLTY3NSwxNyArNjc0LDggQEAgaTkxNV92bWFfaW5zZXJ0
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLCB1NjQgc2l6ZSwgdTY0IGFsaWdubWVudCwgdTY0IGZsYWdz
KQogCW11dGV4X3VubG9jaygmdm1hLT52bS0+bXV0ZXgpOwogCiAJaWYgKHZtYS0+b2JqKSB7Ci0J
CXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSB2bWEtPm9iajsKLQotCQlzcGluX2xv
Y2soJmRldl9wcml2LT5tbS5vYmpfbG9jayk7Ci0KLQkJaWYgKGk5MTVfZ2VtX29iamVjdF9pc19z
aHJpbmthYmxlKG9iaikpCi0JCQlsaXN0X21vdmVfdGFpbCgmb2JqLT5tbS5saW5rLCAmZGV2X3By
aXYtPm1tLmJvdW5kX2xpc3QpOwotCi0JCW9iai0+YmluZF9jb3VudCsrOwotCQlhc3NlcnRfYmlu
ZF9jb3VudChvYmopOwotCi0JCXNwaW5fdW5sb2NrKCZkZXZfcHJpdi0+bW0ub2JqX2xvY2spOwor
CQlhdG9taWNfaW5jKCZ2bWEtPm9iai0+YmluZF9jb3VudCk7CisJCWFzc2VydF9iaW5kX2NvdW50
KHZtYS0+b2JqKTsKIAl9CiAKIAlyZXR1cm4gMDsKQEAgLTcwMSw4ICs2OTEsNiBAQCBpOTE1X3Zt
YV9pbnNlcnQoc3RydWN0IGk5MTVfdm1hICp2bWEsIHU2NCBzaXplLCB1NjQgYWxpZ25tZW50LCB1
NjQgZmxhZ3MpCiBzdGF0aWMgdm9pZAogaTkxNV92bWFfcmVtb3ZlKHN0cnVjdCBpOTE1X3ZtYSAq
dm1hKQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdm1hLT52bS0+aTkxNTsK
LQogCUdFTV9CVUdfT04oIWRybV9tbV9ub2RlX2FsbG9jYXRlZCgmdm1hLT5ub2RlKSk7CiAJR0VN
X0JVR19PTih2bWEtPmZsYWdzICYgKEk5MTVfVk1BX0dMT0JBTF9CSU5EIHwgSTkxNV9WTUFfTE9D
QUxfQklORCkpOwogCkBAIC03MjAsMTUgKzcwOCw3IEBAIGk5MTVfdm1hX3JlbW92ZShzdHJ1Y3Qg
aTkxNV92bWEgKnZtYSkKIAlpZiAodm1hLT5vYmopIHsKIAkJc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaiA9IHZtYS0+b2JqOwogCi0JCXNwaW5fbG9jaygmaTkxNS0+bW0ub2JqX2xvY2sp
OwotCi0JCUdFTV9CVUdfT04ob2JqLT5iaW5kX2NvdW50ID09IDApOwotCQlpZiAoLS1vYmotPmJp
bmRfY291bnQgPT0gMCAmJgotCQkgICAgaTkxNV9nZW1fb2JqZWN0X2lzX3Nocmlua2FibGUob2Jq
KSAmJgotCQkgICAgb2JqLT5tbS5tYWR2ID09IEk5MTVfTUFEVl9XSUxMTkVFRCkKLQkJCWxpc3Rf
bW92ZV90YWlsKCZvYmotPm1tLmxpbmssICZpOTE1LT5tbS51bmJvdW5kX2xpc3QpOwotCi0JCXNw
aW5fdW5sb2NrKCZpOTE1LT5tbS5vYmpfbG9jayk7CisJCWF0b21pY19kZWMoJm9iai0+YmluZF9j
b3VudCk7CiAKIAkJLyoKIAkJICogQW5kIGZpbmFsbHkgbm93IHRoZSBvYmplY3QgaXMgY29tcGxl
dGVseSBkZWNvdXBsZWQgZnJvbSB0aGlzCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pOTE1X2dlbV9ldmljdC5jCmluZGV4IDFkODIzNTMwM2VkZi4uOWIyNTg2YjBlOWVkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3Qu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwpA
QCAtNjcsMjAgKzY3LDI0IEBAIHN0YXRpYyBpbnQgcG9wdWxhdGVfZ2d0dChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwKIAkJY291bnQrKzsKIAl9CiAKKwlib3VuZCA9IDA7CiAJdW5ib3Vu
ZCA9IDA7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeShvYmosICZpOTE1LT5tbS51bmJvdW5kX2xpc3Qs
IG1tLmxpbmspCi0JCWlmIChvYmotPm1tLnF1aXJrZWQpCisJbGlzdF9mb3JfZWFjaF9lbnRyeShv
YmosICZpOTE1LT5tbS5zaHJpbmtfbGlzdCwgbW0ubGluaykgeworCQlpZiAoIW9iai0+bW0ucXVp
cmtlZCkKKwkJCWNvbnRpbnVlOworCisJCWlmIChhdG9taWNfcmVhZCgmb2JqLT5iaW5kX2NvdW50
KSkKKwkJCWJvdW5kKys7CisJCWVsc2UKIAkJCXVuYm91bmQrKzsKKwl9CisKIAlpZiAodW5ib3Vu
ZCkgewogCQlwcl9lcnIoIiVzOiBGb3VuZCAlbHUgb2JqZWN0cyB1bmJvdW5kLCBleHBlY3RlZCAl
dSFcbiIsCiAJCSAgICAgICBfX2Z1bmNfXywgdW5ib3VuZCwgMCk7CiAJCXJldHVybiAtRUlOVkFM
OwogCX0KIAotCWJvdW5kID0gMDsKLQlsaXN0X2Zvcl9lYWNoX2VudHJ5KG9iaiwgJmk5MTUtPm1t
LmJvdW5kX2xpc3QsIG1tLmxpbmspCi0JCWlmIChvYmotPm1tLnF1aXJrZWQpCi0JCQlib3VuZCsr
OwogCWlmIChib3VuZCAhPSBjb3VudCkgewogCQlwcl9lcnIoIiVzOiBGb3VuZCAlbHUgb2JqZWN0
cyBib3VuZCwgZXhwZWN0ZWQgJWx1IVxuIiwKIAkJICAgICAgIF9fZnVuY19fLCBib3VuZCwgY291
bnQpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
X2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCmlu
ZGV4IGYxZTk1ZWFmNjkyMy4uZGRhOGI5Yzc5YzM3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCkBAIC0xMjMzLDcgKzEyMzMsNyBAQCBzdGF0aWMg
dm9pZCB0cmFja192bWFfYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIHsKIAlzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdm1hLT5vYmo7CiAKLQlvYmotPmJpbmRfY291bnQrKzsg
LyogdHJhY2sgZm9yIGV2aWN0aW9uIGxhdGVyICovCisJYXRvbWljX2luYygmb2JqLT5iaW5kX2Nv
dW50KTsgLyogdHJhY2sgZm9yIGV2aWN0aW9uIGxhdGVyICovCiAJX19pOTE1X2dlbV9vYmplY3Rf
cGluX3BhZ2VzKG9iaik7CiAKIAl2bWEtPnBhZ2VzID0gb2JqLT5tbS5wYWdlczsKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
