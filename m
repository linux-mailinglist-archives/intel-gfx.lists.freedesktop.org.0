Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A07AB2EAF13
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7897E6E16D;
	Tue,  5 Jan 2021 15:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942386E17A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:42 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:36 +0100
Message-Id: <20210105153558.134272-43-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 42/64] drm/i915/selftests: Prepare client
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
X2NsaWVudF9ibHQuYwppbmRleCA2YTY3NGE3OTk0ZGYuLmQzNjg3Mzg4NWNjMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGll
bnRfYmx0LmMKQEAgLTQ1LDcgKzQ1LDcgQEAgc3RhdGljIGludCBfX2lndF9jbGllbnRfZmlsbChz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQlnb3RvIGVycl9mbHVzaDsKIAkJfQog
Ci0JCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9XQik7CisJ
CXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQob2JqLCBJOTE1X01BUF9X
Qik7CiAJCWlmIChJU19FUlIodmFkZHIpKSB7CiAJCQllcnIgPSBQVFJfRVJSKHZhZGRyKTsKIAkJ
CWdvdG8gZXJyX3B1dDsKQEAgLTE1Nyw3ICsxNTcsNyBAQCBzdGF0aWMgaW50IHByZXBhcmVfYmxp
dChjb25zdCBzdHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCiAJdTMyIHNyY19waXRjaCwgZHN0X3BpdGNo
OwogCXUzMiBjbWQsICpjczsKIAotCWNzID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoYmF0Y2gs
IEk5MTVfTUFQX1dDKTsKKwljcyA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGJh
dGNoLCBJOTE1X01BUF9XQyk7CiAJaWYgKElTX0VSUihjcykpCiAJCXJldHVybiBQVFJfRVJSKGNz
KTsKIApAQCAtMzc3LDcgKzM3Nyw3IEBAIHN0YXRpYyBpbnQgdmVyaWZ5X2J1ZmZlcihjb25zdCBz
dHJ1Y3QgdGlsZWRfYmxpdHMgKnQsCiAJeSA9IGk5MTVfcHJhbmRvbV91MzJfbWF4X3N0YXRlKHQt
PmhlaWdodCwgcHJuZyk7CiAJcCA9IHkgKiB0LT53aWR0aCArIHg7CiAKLQl2YWRkciA9IGk5MTVf
Z2VtX29iamVjdF9waW5fbWFwKGJ1Zi0+dm1hLT5vYmosIEk5MTVfTUFQX1dDKTsKKwl2YWRkciA9
IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKGJ1Zi0+dm1hLT5vYmosIEk5MTVfTUFQ
X1dDKTsKIAlpZiAoSVNfRVJSKHZhZGRyKSkKIAkJcmV0dXJuIFBUUl9FUlIodmFkZHIpOwogCkBA
IC01NjQsNyArNTY0LDcgQEAgc3RhdGljIGludCB0aWxlZF9ibGl0c19wcmVwYXJlKHN0cnVjdCB0
aWxlZF9ibGl0cyAqdCwKIAlpbnQgZXJyOwogCWludCBpOwogCi0JbWFwID0gaTkxNV9nZW1fb2Jq
ZWN0X3Bpbl9tYXAodC0+c2NyYXRjaC52bWEtPm9iaiwgSTkxNV9NQVBfV0MpOworCW1hcCA9IGk5
MTVfZ2VtX29iamVjdF9waW5fbWFwX3VubG9ja2VkKHQtPnNjcmF0Y2gudm1hLT5vYmosIEk5MTVf
TUFQX1dDKTsKIAlpZiAoSVNfRVJSKG1hcCkpCiAJCXJldHVybiBQVFJfRVJSKG1hcCk7CiAKLS0g
CjIuMzAuMC5yYzEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
