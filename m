Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E11DC2EAF3D
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFBD6E131;
	Tue,  5 Jan 2021 15:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 827A86E192
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:38 +0100
Message-Id: <20210105153558.134272-45-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 44/64] drm/i915/selftests: Prepare context
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
IHsKIAkJZXJyID0gUFRSX0VSUihjbWQpOwogCQlnb3RvIG91dF92bTsKLS0gCjIuMzAuMC5yYzEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
