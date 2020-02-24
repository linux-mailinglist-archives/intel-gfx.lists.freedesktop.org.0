Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BA216A67D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 13:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B2B6E488;
	Mon, 24 Feb 2020 12:52:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D2E6E471
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 12:52:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 04:52:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,480,1574150400"; d="scan'208";a="225967626"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga007.jf.intel.com with ESMTP; 24 Feb 2020 04:52:46 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 18:10:04 +0530
Message-Id: <20200224124004.26712-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200224124004.26712-1-anshuman.gupta@intel.com>
References: <20200224124004.26712-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 7/7] drm/i915: Fix broken num_entries in
 skl_ddb_allocation_overlaps
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

c2tsX2RkYl9hbGxvY2F0aW9uX292ZXJsYXBzKCkgbnVtX2VudHJpZXMgaGFzcyBiZWVuIHBhc3Nl
ZCBhcwpJTlRFTF9OVU1fUElQRVMsIGl0IHNob3VsZCBiZSBJOTE1X01BWF9QSVBFUy4KCnYyOgot
IFJlYmFzZWQuCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpp
bmRleCAxNzJkYmU4MjYwYzEuLmI2NTRkMDA3YTAzNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTE1MzI4LDcgKzE1MzI4LDYgQEAgc3RhdGlj
IHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGMgKmNydGM7CiAJc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm9sZF9jcnRjX3N0YXRlLCAqbmV3X2NydGNfc3RhdGU7CiAJc3RydWN0IHNrbF9kZGJf
ZW50cnkgZW50cmllc1tJOTE1X01BWF9QSVBFU10gPSB7fTsKLQljb25zdCB1OCBudW1fcGlwZXMg
PSBJTlRFTF9OVU1fUElQRVMoZGV2X3ByaXYpOwogCXU4IHVwZGF0ZV9waXBlcyA9IDAsIG1vZGVz
ZXRfcGlwZXMgPSAwOwogCWludCBpOwogCkBAIC0xNTM2NSw3ICsxNTM2NCw3IEBAIHN0YXRpYyB2
b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlKQogCQkJCWNvbnRpbnVlOwogCiAJCQlpZiAoc2tsX2RkYl9hbGxvY2F0aW9uX292ZXJs
YXBzKCZuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYiwKLQkJCQkJCQllbnRyaWVzLCBudW1fcGlw
ZXMsIHBpcGUpKQorCQkJCQkJCWVudHJpZXMsIEk5MTVfTUFYX1BJUEVTLCBwaXBlKSkKIAkJCQlj
b250aW51ZTsKIAogCQkJZW50cmllc1twaXBlXSA9IG5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRi
OwpAQCAtMTU0MDMsNyArMTU0MDIsNyBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRf
ZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJCWNvbnRpbnVlOwog
CiAJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBza2xfZGRiX2FsbG9jYXRpb25fb3Zlcmxh
cHMoJm5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiLAotCQkJCQkJCQkJZW50cmllcywgbnVtX3Bp
cGVzLCBwaXBlKSk7CisJCQkJCQkJCQllbnRyaWVzLCBJOTE1X01BWF9QSVBFUywgcGlwZSkpOwog
CiAJCWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKIAkJbW9kZXNl
dF9waXBlcyAmPSB+QklUKHBpcGUpOwpAQCAtMTU0MzgsNyArMTU0MzcsNyBAQCBzdGF0aWMgdm9p
ZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkKIAkJCWNvbnRpbnVlOwogCiAJCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBza2xf
ZGRiX2FsbG9jYXRpb25fb3ZlcmxhcHMoJm5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiLAotCQkJ
CQkJCQkJZW50cmllcywgbnVtX3BpcGVzLCBwaXBlKSk7CisJCQkJCQkJCQllbnRyaWVzLCBJOTE1
X01BWF9QSVBFUywgcGlwZSkpOwogCiAJCWVudHJpZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+
d20uc2tsLmRkYjsKIAkJbW9kZXNldF9waXBlcyAmPSB+QklUKHBpcGUpOwotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
