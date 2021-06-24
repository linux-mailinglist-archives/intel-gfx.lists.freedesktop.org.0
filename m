Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF93B2DDE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 13:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 376066EACA;
	Thu, 24 Jun 2021 11:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5B16EAC3;
 Thu, 24 Jun 2021 11:29:29 +0000 (UTC)
IronPort-SDR: KhN0oItrhy/hinPQRqYpAozMeN5tD5WliDf3CcflaG6ZDcnj+nBWnT4bkPpeu5ZeAINIQVd19N
 U0cjDI3naSuw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="204443493"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="204443493"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 04:29:26 -0700
IronPort-SDR: jQPUZZpL7ULIuvNEYyenzraWhFLm2dygF8r2JZOWVFjbPKNxU8kIF8oqd0gxvj7ZoVDKlCh75i
 2gQwdGW3jf6g==
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="474479278"
Received: from cmutgix-mobl.gar.corp.intel.com (HELO thellst-mobl1.intel.com)
 ([10.249.254.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 04:29:23 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Jun 2021 13:29:14 +0200
Message-Id: <20210624112914.311984-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Reinstate the mmap ioctl for some
 platforms
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVpbnN0YXRlIHRoZSBtbWFwIGlvY3RsIGZvciBhbGwgY3VycmVudCBpbnRlZ3JhdGVkIHBsYXRm
b3Jtcy4KVGhlIGludGVudGlvbiB3YXMgcmVhbGx5IHRvIGhhdmUgaXQgZGlzYWJsZWQgZm9yIGRp
c2NyZXRlIGdyYXBoaWNzCndoZXJlIHdlIGVuZm9yY2UgYSBzaW5nbGUgbW1hcCBtb2RlLgoKRml4
ZXM6IDM1Y2JkOTFlYjU0MSAoImRybS9pOTE1OiBEaXNhYmxlIG1tYXAgaW9jdGwgZm9yIGdlbjEy
KyIpClNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxp
bnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGlu
dGVsLmNvbT4KLS0tCnYyOgotIEFkZGVkIGEgUi1CLgotIEZpeGVkIHVwIHRoZSBjb2RlIGNvbW1l
bnQgYSBiaXQuCi0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8
IDcgKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRleCAyZmQxNTU3
NDJiZDIuLjRmNTBhNTA4YzdhMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
bW1hbi5jCkBAIC02MiwxMCArNjIsMTEgQEAgaTkxNV9nZW1fbW1hcF9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAogCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
Ymo7CiAJdW5zaWduZWQgbG9uZyBhZGRyOwogCi0JLyogbW1hcCBpb2N0bCBpcyBkaXNhbGxvd2Vk
IGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRHTC1MUC4gIFRoaXMgYWxzbwotCSAqIGNvdmVycyBh
bGwgcGxhdGZvcm1zIHdpdGggbG9jYWwgbWVtb3J5LgorCS8qCisJICogbW1hcCBpb2N0bCBpcyBk
aXNhbGxvd2VkIGZvciBhbGwgZGlzY3JldGUgcGxhdGZvcm1zLAorCSAqIGFuZCBmb3IgYWxsIHBs
YXRmb3JtcyB3aXRoIEdSQVBISUNTX1ZFUiA+IDEyLgogCSAqLwotCWlmIChHUkFQSElDU19WRVIo
aTkxNSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShpOTE1KSkKKwlpZiAoSVNfREdGWChpOTE1KSB8
fCBHUkFQSElDU19WRVIoaTkxNSkgPiAxMikKIAkJcmV0dXJuIC1FT1BOT1RTVVBQOwogCiAJaWYg
KGFyZ3MtPmZsYWdzICYgfihJOTE1X01NQVBfV0MpKQotLSAKMi4zMS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
