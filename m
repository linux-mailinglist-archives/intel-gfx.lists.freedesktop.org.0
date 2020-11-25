Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C476F2C3E27
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 11:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C3A6E919;
	Wed, 25 Nov 2020 10:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F806E8B2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 10:40:30 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Nov 2020 11:39:50 +0100
Message-Id: <20201125104011.606641-43-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8
In-Reply-To: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
References: <20201125104011.606641-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 42/63] drm/i915/selftests: Prepare client
 blit for obj->mm.lock removal.
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
L2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyB8IDggKysr
Ky0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9j
bGllbnRfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2Vt
X2NsaWVudF9ibHQuYwppbmRleCA0ZTM2ZDQ4OTdlYTYuLmNjNzgyNTY5NzY1ZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGll
bnRfYmx0LmMKQEAgLTQ3LDcgKzQ3LDcgQEAgc3RhdGljIGludCBfX2lndF9jbGllbnRfZmlsbChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQlnb3RvIGVycl9mbHVzaDsKIAkJfQog
Ci0JCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJ
CXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9X
Qik7CiAJCWlmIChJU19FUlIodmFkZHIpKSB7CiAJCQllcnIgPSBQVFJfRVJSKHZhZGRyKTsKIAkJ
CWdvdG8gZXJyX3B1dDsKQEAgLTE1OSw3ICsxNTksNyBAQCBzdGF0aWMgaW50IHByZXBhcmVfYmxp
dChjb25zdCBzdHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCiAJdTMyIHNyY19waXRjaCwgZHN0X3BpdGNo
OwogCXUzMiBjbWQsICpjczsKIAotCWNzID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoYmF0Y2gs
IEk5MTVfTUFQX1dDKTsKKwljcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGJh
dGNoLCBJOTE1X01BUF9XQyk7CiAJaWYgKElTX0VSUihjcykpCiAJCXJldHVybiBQVFJfRVJSKGNz
KTsKIApAQCAtMzc5LDcgKzM3OSw3IEBAIHN0YXRpYyBpbnQgdmVyaWZ5X2J1ZmZlcihjb25zdCBz
dHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCiAJeSA9IGk5MTVfcHJhbmRvbV91MzJfbWF4X3N0YXRlKHQt
PmhlaWdodCwgcHJuZyk7CiAJcCA9IHkgKiB0LT53aWR0aCArIHg7CiAKLQl2YWRkciA9IGk5MTVf
Z2VtX29iamVjdF9waW5fbWFwKGJ1Zi0+dm1hLT5vYmosIEk5MTVfTUFQX1dDKTsKKwl2YWRkciA9
IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGJ1Zi0+dm1hLT5vYmosIEk5MTVfTUFQ
X1dDKTsKIAlpZiAoSVNfRVJSKHZhZGRyKSkKIAkJcmV0dXJuIFBUUl9FUlIodmFkZHIpOwogCkBA
IC01NjYsNyArNTY2LDcgQEAgc3RhdGljIGludCB0aWxlZF9ibGl0c19wcmVwYXJlKHN0cnVjdCB0
aWxlZF9ibGl0cyAqdCwKIAlpbnQgZXJyOwogCWludCBpOwogCi0JbWFwID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9tYXAodC0+c2NyYXRjaC52bWEtPm9iaiwgSTkxNV9NQVBfV0MpOworCW1hcCA9IGk5
MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKHQtPnNjcmF0Y2gudm1hLT5vYmosIEk5MTVf
TUFQX1dDKTsKIAlpZiAoSVNfRVJSKG1hcCkpCiAJCXJldHVybiBQVFJfRVJSKG1hcCk7CiAKLS0g
CjIuMjkuMi4yMjIuZzVkMmE5MmQxMGY4CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
