Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADA23AF7F
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:21:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953F689117;
	Mon, 10 Jun 2019 07:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D19568910E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 07:21:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16848370-1500050 
 for multiple; Mon, 10 Jun 2019 08:21:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 08:21:15 +0100
Message-Id: <20190610072126.6355-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610072126.6355-1-chris@chris-wilson.co.uk>
References: <20190610072126.6355-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/28] drm/i915: Push the i915_active.retire
 into a worker
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

QXMgd2UgbmVlZCB0byB1c2UgYSBtdXRleCB0byBzZXJpYWxpc2F0aW9uIGk5MTVfYWN0aXZlIGFj
dGl2YXRpb24KKGJlY2F1c2Ugd2Ugd2FudCB0byBhbGxvdyB0aGUgY2FsbGJhY2sgdG8gc2xlZXAp
LCB3ZSBuZWVkIHRvIHB1c2ggdGhlCmk5MTVfYWN0aXZlLnJldGlyZSBpbnRvIGEgd29ya2VyIGNh
bGxiYWNrIGluIGNhc2Ugd2UgZ2V0IG5lZWQgdG8gcmV0aXJlCmZyb20gYW4gYXRvbWljIGNvbnRl
eHQuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jICAgICAgIHwgMzggKysr
KysrKysrKysrKysrKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90
eXBlcy5oIHwgIDMgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgICAgICAgICAg
fCAgMSArCiAzIGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKaW5kZXggNDg4OGVmNzQ1YzZiLi5mN2ZmYTZl
N2JkOWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwpAQCAtMzAsMTggKzMwLDEzIEBA
IHN0cnVjdCBhY3RpdmVfbm9kZSB7CiB9OwogCiBzdGF0aWMgdm9pZAotYWN0aXZlX3JldGlyZShz
dHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKK19fYWN0aXZlX3JldGlyZShzdHJ1Y3QgaTkxNV9hY3Rp
dmUgKnJlZikKIHsKIAlzdHJ1Y3QgcmJfcm9vdCByb290ID0gUkJfUk9PVDsKIAlzdHJ1Y3QgYWN0
aXZlX25vZGUgKml0LCAqbjsKIAlib29sIHJldGlyZSA9IGZhbHNlOwogCi0JR0VNX0JVR19PTigh
YXRvbWljX3JlYWQoJnJlZi0+Y291bnQpKTsKLQlpZiAoYXRvbWljX2FkZF91bmxlc3MoJnJlZi0+
Y291bnQsIC0xLCAxKSkKLQkJcmV0dXJuOwotCi0JLyogT25lIGFjdGl2ZSBtYXkgYmUgZmx1c2hl
ZCBmcm9tIGluc2lkZSB0aGUgYWNxdWlyZSBvZiBhbm90aGVyICovCi0JbXV0ZXhfbG9ja19uZXN0
ZWQoJnJlZi0+bXV0ZXgsIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKKwlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZyZWYtPm11dGV4KTsKIAogCS8qIHJldHVybiB0aGUgdW51c2VkIG5vZGVzIHRvIG91ciBz
bGFiY2FjaGUgLS0gZmx1c2hpbmcgdGhlIGFsbG9jYXRvciAqLwogCWlmIChhdG9taWNfZGVjX2Fu
ZF90ZXN0KCZyZWYtPmNvdW50KSkgewpAQCAtNjIsNiArNTcsMzQgQEAgYWN0aXZlX3JldGlyZShz
dHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZikKIAl9CiB9CiAKK3N0YXRpYyB2b2lkCithY3RpdmVfd29y
ayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKK3sKKwlzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiA9
IGNvbnRhaW5lcl9vZih3cmssIHR5cGVvZigqcmVmKSwgd29yayk7CisKKwlpZiAoYXRvbWljX2Fk
ZF91bmxlc3MoJnJlZi0+Y291bnQsIC0xLCAxKSkKKwkJcmV0dXJuOworCisJbXV0ZXhfbG9jaygm
cmVmLT5tdXRleCk7CisJX19hY3RpdmVfcmV0aXJlKHJlZik7Cit9CisKK3N0YXRpYyB2b2lkCith
Y3RpdmVfcmV0aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKQoreworCUdFTV9CVUdfT04oIWF0
b21pY19yZWFkKCZyZWYtPmNvdW50KSk7CisJaWYgKGF0b21pY19hZGRfdW5sZXNzKCZyZWYtPmNv
dW50LCAtMSwgMSkpCisJCXJldHVybjsKKworCS8qIElmIHdlIGFyZSBpbnNpZGUgaW50ZXJydXB0
IGNvbnRleHQgKGZlbmNlIHNpZ25hbGluZyksIGRlZmVyICovCisJaWYgKCFtdXRleF90cnlsb2Nr
KCZyZWYtPm11dGV4KSkgeworCQlxdWV1ZV93b3JrKHN5c3RlbV91bmJvdW5kX3dxLCAmcmVmLT53
b3JrKTsKKwkJcmV0dXJuOworCX0KKworCV9fYWN0aXZlX3JldGlyZShyZWYpOworfQorCiBzdGF0
aWMgdm9pZAogbm9kZV9yZXRpcmUoc3RydWN0IGk5MTVfYWN0aXZlX3JlcXVlc3QgKmJhc2UsIHN0
cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQogewpAQCAtMTM4LDYgKzE2MSw3IEBAIHZvaWQgX19pOTE1
X2FjdGl2ZV9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCWluaXRfbGxpc3Rf
aGVhZCgmcmVmLT5iYXJyaWVycyk7CiAJYXRvbWljX3NldCgmcmVmLT5jb3VudCwgMCk7CiAJX19t
dXRleF9pbml0KCZyZWYtPm11dGV4LCAiaTkxNV9hY3RpdmUiLCBrZXkpOworCUlOSVRfV09SSygm
cmVmLT53b3JrLCBhY3RpdmVfd29yayk7CiB9CiAKIGludCBpOTE1X2FjdGl2ZV9yZWYoc3RydWN0
IGk5MTVfYWN0aXZlICpyZWYsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2FjdGl2ZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMu
aAppbmRleCA1YjBhMzAyNGNlMjQuLjA2YWNkZmZlMGY2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9hY3RpdmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2FjdGl2ZV90eXBlcy5oCkBAIC0xMiw2ICsxMiw3IEBACiAjaW5jbHVkZSA8bGludXgv
bXV0ZXguaD4KICNpbmNsdWRlIDxsaW51eC9yYnRyZWUuaD4KICNpbmNsdWRlIDxsaW51eC9yY3Vw
ZGF0ZS5oPgorI2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgogCiBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZTsKIHN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0OwpAQCAtMzksNiArNDAsOCBAQCBz
dHJ1Y3QgaTkxNV9hY3RpdmUgewogCWludCAoKmFjdGl2ZSkoc3RydWN0IGk5MTVfYWN0aXZlICpy
ZWYpOwogCXZvaWQgKCpyZXRpcmUpKHN0cnVjdCBpOTE1X2FjdGl2ZSAqcmVmKTsKIAorCXN0cnVj
dCB3b3JrX3N0cnVjdCB3b3JrOworCiAJc3RydWN0IGxsaXN0X2hlYWQgYmFycmllcnM7CiB9Owog
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV92bWEuYwppbmRleCBiZTE1ZjBlMGM2ZWIuLjM5MzU3NWJmYjVlYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jCkBAIC05NzUsNiArOTc1LDcgQEAgaW50IGk5MTVfdm1h
X3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKIAkJaWYgKHJldCkKIAkJCXJldHVybiByZXQ7
CiAJfQorCWZsdXNoX3dvcmsoJnZtYS0+YWN0aXZlLndvcmspOwogCUdFTV9CVUdfT04oaTkxNV92
bWFfaXNfYWN0aXZlKHZtYSkpOwogCiAJaWYgKGk5MTVfdm1hX2lzX3Bpbm5lZCh2bWEpKSB7Ci0t
IAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
