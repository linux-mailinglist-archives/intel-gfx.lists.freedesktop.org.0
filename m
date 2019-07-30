Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6857AA35
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 15:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D011E6E529;
	Tue, 30 Jul 2019 13:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83636E528
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 13:54:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 06:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="200169782"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2019 06:54:47 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 19:20:19 +0530
Message-Id: <20190730135024.31765-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190730135024.31765-1-anshuman.gupta@intel.com>
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/9] drm/i915/tgl: mutual exclusive handling
 for DC3CO and DC5/6
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
Cc: Deak@freedesktop.org, jani.nikula@intel.com,
	Vivi@freedesktop.org, Nikula@freedesktop.org, Manna@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIEIuU3BlY3MgREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiBEQzNDTyBpcyBlbmFi
bGVkCmFuZCBEQzNDTyBzaG91bGQgYmUgZW5hYmxlZCBvbmx5IGR1cmluZyBWSURFTyBwbGF5YmFj
ay4KV2hpY2ggZXNzZW50aWFsbHkgbWVhbnMgYm90aCBjYW4gREM1IGFuZCBEQzNDTyBjYW4gbm90
IGJlCmVuYWJsZWQgYXQgc2FtZSB0aW1lLCBpdCBtYWtlcyBEQzNDTyBhbmQgREM1IG11dHVhbCBl
eGNsdXNpdmUuCgpDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBE
ZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1l
c2gubWFubmFAaW50ZWwuY29tPgpDYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmlu
ZGV4IDFkMmFjZWQ3ZjBlNy4uNjRiZjYxYThiNDI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwpAQCAtMTAwMSw2ICsxMDAxLDEw
IEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNfb2ZmX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWdlbjlfc2V0X2RjX3N0YXRlKGRldl9wcml2LCBE
Q19TVEFURV9ESVNBQkxFKTsKIAorCS8qIERDM0NPIGFuZCBEQzUvNiBhcmUgbXV0dWFsbHkgZXhj
bHVzaXZlICovCisJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVf
RU5fREMzQ08pCisJCXRnbF9hbGxvd19kYzNjbyhkZXZfcHJpdik7CisKIAlkZXZfcHJpdi0+ZGlz
cGxheS5nZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNsa19zdGF0ZSk7CiAJLyogQ2FuJ3QgcmVhZCBv
dXQgdm9sdGFnZV9sZXZlbCBzbyBjYW4ndCB1c2UgaW50ZWxfY2RjbGtfY2hhbmdlZCgpICovCiAJ
V0FSTl9PTihpbnRlbF9jZGNsa19uZWVkc19tb2Rlc2V0KCZkZXZfcHJpdi0+Y2RjbGsuaHcsICZj
ZGNsa19zdGF0ZSkpOwpAQCAtMTAyNSw2ICsxMDI5LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNf
b2ZmX3Bvd2VyX3dlbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJaWYgKCFkZXZfcHJpdi0+Y3NyLmRtY19wYXlsb2FkKQogCQlyZXR1cm47CiAKKwkvKiBEQzND
TyBhbmQgREM1LzYgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSAqLworCWlmIChkZXZfcHJpdi0+Y3Ny
LmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NPKQorCQl0Z2xfZGlzYWxsb3dfZGMz
Y28oZGV2X3ByaXYpOworCiAJaWYgKGRldl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENf
U1RBVEVfRU5fVVBUT19EQzYpCiAJCXNrbF9lbmFibGVfZGM2KGRldl9wcml2KTsKIAllbHNlIGlm
IChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX1VQVE9fREM1KQot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
