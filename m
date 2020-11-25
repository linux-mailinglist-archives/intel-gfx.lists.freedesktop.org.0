Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB4D2C3E2A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439086E968;
	Wed, 25 Nov 2020 10:40:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EED6E89B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:52 +0100
Message-Id: <20201125104011.606641-45-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 44/63] drm/i915/selftests: Prepare context
 tests for obj->mm.lock removal.
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3RyYWlnaHRmb3J3YXJkIGNvbnZlcnNpb24sIGp1c3QgY29udmVydCBhIGJ1bmNoIG9mIGNhbGxz
IHRvCnVubG9ja2VkIHZlcnNpb25zLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDEwICsrKysr
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
b250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Nv
bnRleHQuYwppbmRleCBkM2Y4N2RjNGVkYTMuLjVmZWY1OTIzOTBjYiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKQEAg
LTEwOTQsNyArMTA5NCw3IEBAIF9fcmVhZF9zbGljZV9jb3VudChzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsCiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlidWYgPSBpOTE1X2dlbV9v
YmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwlidWYgPSBpOTE1X2dlbV9vYmplY3Rf
cGluX21hcF91bmxvY2tlZChvYmosIEk5MTVfTUFQX1dCKTsKIAlpZiAoSVNfRVJSKGJ1ZikpIHsK
IAkJcmV0ID0gUFRSX0VSUihidWYpOwogCQlyZXR1cm4gcmV0OwpAQCAtMTUxMSw3ICsxNTExLDcg
QEAgc3RhdGljIGludCB3cml0ZV90b19zY3JhdGNoKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpj
dHgsCiAJaWYgKElTX0VSUihvYmopKQogCQlyZXR1cm4gUFRSX0VSUihvYmopOwogCi0JY21kID0g
aTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJY21kID0gaTkxNV9n
ZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJaWYgKElTX0VS
UihjbWQpKSB7CiAJCWVyciA9IFBUUl9FUlIoY21kKTsKIAkJZ290byBvdXQ7CkBAIC0xNjIyLDcg
KzE2MjIsNyBAQCBzdGF0aWMgaW50IHJlYWRfZnJvbV9zY3JhdGNoKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCiAJCWlmIChlcnIpCiAJCQlnb3RvIG91dF92bTsKIAotCQljbWQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwkJY21kID0gaTkxNV9nZW1f
b2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJCWlmIChJU19FUlIo
Y21kKSkgewogCQkJZXJyID0gUFRSX0VSUihjbWQpOwogCQkJZ290byBvdXQ7CkBAIC0xNjU4LDcg
KzE2NTgsNyBAQCBzdGF0aWMgaW50IHJlYWRfZnJvbV9zY3JhdGNoKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCiAJCWlmIChlcnIpCiAJCQlnb3RvIG91dF92bTsKIAotCQljbWQgPSBpOTE1
X2dlbV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwkJY21kID0gaTkxNV9nZW1f
b2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9XQik7CiAJCWlmIChJU19FUlIo
Y21kKSkgewogCQkJZXJyID0gUFRSX0VSUihjbWQpOwogCQkJZ290byBvdXQ7CkBAIC0xNzE1LDcg
KzE3MTUsNyBAQCBzdGF0aWMgaW50IHJlYWRfZnJvbV9zY3JhdGNoKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCiAJaWYgKGVycikKIAkJZ290byBvdXRfdm07CiAKLQljbWQgPSBpOTE1X2dl
bV9vYmplY3RfcGluX21hcChvYmosIEk5MTVfTUFQX1dCKTsKKwljbWQgPSBpOTE1X2dlbV9vYmpl
Y3RfcGluX21hcF91bmxvY2tlZChvYmosIEk5MTVfTUFQX1dCKTsKIAlpZiAoSVNfRVJSKGNtZCkp
IHsKIAkJZXJyID0gUFRSX0VSUihjbWQpOwogCQlnb3RvIG91dF92bTsKLS0gCjIuMjkuMi4yMjIu
ZzVkMmE5MmQxMGY4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
