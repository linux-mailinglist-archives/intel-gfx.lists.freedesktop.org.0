Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1315015964F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 18:39:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 392766F3F1;
	Tue, 11 Feb 2020 17:39:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D8A6F3E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 17:39:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 09:36:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="380503940"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 11 Feb 2020 09:36:54 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 22:55:32 +0530
Message-Id: <20200211172532.14287-8-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200211172532.14287-1-anshuman.gupta@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: Fix broken num_entries in
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
ZCBhcwpJTlRFTF9OVU1fUElQRVMsIGl0IHNob3VsZCBiZSBJOTE1X01BWF9QSVBFUy4KCkNjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNmZkYWViMDE5ZmVmLi5k
ZDc3MzI0MjA2YmMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC0xNTQ3NSw3ICsxNTQ3NSw2IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9k
ZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQogCXN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjOwogCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZSwgKm5ld19jcnRjX3N0YXRlOwogCXN0cnVjdCBza2xfZGRiX2VudHJ5IGVudHJpZXNbSTkxNV9N
QVhfUElQRVNdID0ge307Ci0JY29uc3QgdTggbnVtX3BpcGVzID0gSU5URUxfTlVNX1BJUEVTKGRl
dl9wcml2KTsKIAl1OCB1cGRhdGVfcGlwZXMgPSAwLCBtb2Rlc2V0X3BpcGVzID0gMDsKIAlpbnQg
aTsKIApAQCAtMTU1MTIsNyArMTU1MTEsNyBAQCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVz
ZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkJCQljb250aW51
ZTsKIAogCQkJaWYgKHNrbF9kZGJfYWxsb2NhdGlvbl9vdmVybGFwcygmbmV3X2NydGNfc3RhdGUt
PndtLnNrbC5kZGIsCi0JCQkJCQkJZW50cmllcywgbnVtX3BpcGVzLCBwaXBlKSkKKwkJCQkJCQll
bnRyaWVzLCBJOTE1X01BWF9QSVBFUywgcGlwZSkpCiAJCQkJY29udGludWU7CiAKIAkJCWVudHJp
ZXNbcGlwZV0gPSBuZXdfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKQEAgLTE1NTUwLDcgKzE1NTQ5
LDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQljb250aW51ZTsKIAogCQlXQVJOX09OKHNrbF9kZGJf
YWxsb2NhdGlvbl9vdmVybGFwcygmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGIsCi0JCQkJCQkg
ICAgZW50cmllcywgbnVtX3BpcGVzLCBwaXBlKSk7CisJCQkJCQkgICAgZW50cmllcywgSTkxNV9N
QVhfUElQRVMsIHBpcGUpKTsKIAogCQllbnRyaWVzW3BpcGVdID0gbmV3X2NydGNfc3RhdGUtPndt
LnNrbC5kZGI7CiAJCW1vZGVzZXRfcGlwZXMgJj0gfkJJVChwaXBlKTsKQEAgLTE1NTg1LDcgKzE1
NTg0LDcgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCQljb250aW51ZTsKIAogCQlXQVJOX09OKHNrbF9k
ZGJfYWxsb2NhdGlvbl9vdmVybGFwcygmbmV3X2NydGNfc3RhdGUtPndtLnNrbC5kZGIsCi0JCQkJ
CQkgICAgZW50cmllcywgbnVtX3BpcGVzLCBwaXBlKSk7CisJCQkJCQkgICAgZW50cmllcywgSTkx
NV9NQVhfUElQRVMsIHBpcGUpKTsKIAogCQllbnRyaWVzW3BpcGVdID0gbmV3X2NydGNfc3RhdGUt
PndtLnNrbC5kZGI7CiAJCW1vZGVzZXRfcGlwZXMgJj0gfkJJVChwaXBlKTsKLS0gCjIuMjQuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
