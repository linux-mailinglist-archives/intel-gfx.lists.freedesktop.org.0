Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E232EAF33
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 16:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAF96E18E;
	Tue,  5 Jan 2021 15:45:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B12476E17D
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 15:45:43 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jan 2021 16:35:43 +0100
Message-Id: <20210105153558.134272-50-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.30.0.rc1
In-Reply-To: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 49/64] drm/i915/selftests: Prepare object
 blit tests for obj->mm.lock removal.
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

VXNlIHNvbWUgdW5sb2NrZWQgdmVyc2lvbnMgd2hlcmUgd2UncmUgbm90IGhvbGRpbmcgdGhlIHd3
IGxvY2suCgpTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jIHwgNiArKystLS0KIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYwppbmRl
eCAyM2I2ZTExYmJjM2UuLmVlOTQ5NmYzZDExZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTI2Miw3
ICsyNjIsNyBAQCBzdGF0aWMgaW50IGlndF9maWxsX2JsdF90aHJlYWQodm9pZCAqYXJnKQogCQkJ
Z290byBlcnJfZmx1c2g7CiAJCX0KIAotCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFw
KG9iaiwgSTkxNV9NQVBfV0IpOworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwX3Vu
bG9ja2VkKG9iaiwgSTkxNV9NQVBfV0IpOwogCQlpZiAoSVNfRVJSKHZhZGRyKSkgewogCQkJZXJy
ID0gUFRSX0VSUih2YWRkcik7CiAJCQlnb3RvIGVycl9wdXQ7CkBAIC0zODAsNyArMzgwLDcgQEAg
c3RhdGljIGludCBpZ3RfY29weV9ibHRfdGhyZWFkKHZvaWQgKmFyZykKIAkJCWdvdG8gZXJyX2Zs
dXNoOwogCQl9CiAKLQkJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChzcmMsIEk5MTVf
TUFQX1dCKTsKKwkJdmFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcF91bmxvY2tlZChzcmMs
IEk5MTVfTUFQX1dCKTsKIAkJaWYgKElTX0VSUih2YWRkcikpIHsKIAkJCWVyciA9IFBUUl9FUlIo
dmFkZHIpOwogCQkJZ290byBlcnJfcHV0X3NyYzsKQEAgLTQwMCw3ICs0MDAsNyBAQCBzdGF0aWMg
aW50IGlndF9jb3B5X2JsdF90aHJlYWQodm9pZCAqYXJnKQogCQkJZ290byBlcnJfcHV0X3NyYzsK
IAkJfQogCi0JCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAoZHN0LCBJOTE1X01BUF9X
Qik7CisJCXZhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXBfdW5sb2NrZWQoZHN0LCBJOTE1
X01BUF9XQik7CiAJCWlmIChJU19FUlIodmFkZHIpKSB7CiAJCQllcnIgPSBQVFJfRVJSKHZhZGRy
KTsKIAkJCWdvdG8gZXJyX3B1dF9kc3Q7Ci0tIAoyLjMwLjAucmMxCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
