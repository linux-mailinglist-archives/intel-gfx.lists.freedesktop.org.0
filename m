Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2774F59CAC
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 15:12:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608CC6E922;
	Fri, 28 Jun 2019 13:12:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7236D6E922
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 13:12:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 06:12:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="314131432"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2019 06:12:41 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 18:37:48 +0530
Message-Id: <20190628130754.9527-5-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628130754.9527-1-anshuman.gupta@intel.com>
References: <20190628130754.9527-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915/tgl:Added mutual exclusive
 handling for DC3CO and DC5/6.
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgcGVyIEIuU3BjZXMgREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiBEQzNDTyBpcyBlbmFi
bGVkLgphbmQgREMzQ08gc2hvdWxkIGJlIGVuYWJsZWQgb25seSBkdXJpbmcgVklERU8gcGxheWJh
Y2suCldoaWNoIGVzc2VudGlhbGx5IG1lYW5zIGJvdGggY2FuIERDNSBhbmQgREMzQ08gY2FuIG5v
dCBiZQplbmFibGVkIGF0IHNhbWUgdGltZS4KVGhpcyBwYXRjaCBtYWtlcyBEQzNDTyBhbmQgREM1
IG11dHVhbCBleGNsdXNpdmUuCgpDYzogamFuaS5uaWt1bGFAaW50ZWwuY29tCkNjOiBpbXJlLmRl
YWtAaW50ZWwuY29tCkNjOiByb2RyaWdvLnZpdmlAaW50ZWwuY29tCkNjOiBhbmltZXNoLm1hbm5h
QGludGVsLmNvbQpTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYyB8
IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKaW5kZXggYjI5NzYxYjRmNTVlLi4zZjg3ZTliYjlm
OTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMKQEAgLTEyMzMsNiAr
MTIzMywxMCBAQCBzdGF0aWMgdm9pZCBnZW45X2RjX29mZl9wb3dlcl93ZWxsX2VuYWJsZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIAlnZW45X3NldF9kY19zdGF0ZShkZXZf
cHJpdiwgRENfU1RBVEVfRElTQUJMRSk7CiAKKwkvKiBEQzNDTyBhbmQgREM1LzYgYXJlIG11dHVh
bGx5IGV4Y2x1c2l2ZSAqLworCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERD
X1NUQVRFX0VOX0RDM0NPKQorCQl0Z2xfYWxsb3dfZGMzY28oZGV2X3ByaXYpOworCiAJZGV2X3By
aXYtPmRpc3BsYXkuZ2V0X2NkY2xrKGRldl9wcml2LCAmY2RjbGtfc3RhdGUpOwogCS8qIENhbid0
IHJlYWQgb3V0IHZvbHRhZ2VfbGV2ZWwgc28gY2FuJ3QgdXNlIGludGVsX2NkY2xrX2NoYW5nZWQo
KSAqLwogCVdBUk5fT04oaW50ZWxfY2RjbGtfbmVlZHNfbW9kZXNldCgmZGV2X3ByaXYtPmNkY2xr
Lmh3LCAmY2RjbGtfc3RhdGUpKTsKQEAgLTEyNTcsNiArMTI2MSwxMCBAQCBzdGF0aWMgdm9pZCBn
ZW45X2RjX29mZl9wb3dlcl93ZWxsX2Rpc2FibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCWlmICghZGV2X3ByaXYtPmNzci5kbWNfcGF5bG9hZCkKIAkJcmV0dXJuOwogCisJ
LyogREMzQ08gYW5kIERDNS82IGFyZSBtdXR1YWxseSBleGNsdXNpdmUgKi8KKwlpZiAoZGV2X3By
aXYtPmNzci5hbGxvd2VkX2RjX21hc2sgJiBEQ19TVEFURV9FTl9EQzNDTykKKwkJdGdsX2Rpc2Fs
bG93X2RjM2NvKGRldl9wcml2KTsKKwogCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFz
ayAmIERDX1NUQVRFX0VOX1VQVE9fREM2KQogCQlza2xfZW5hYmxlX2RjNihkZXZfcHJpdik7CiAJ
ZWxzZSBpZiAoZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21hc2sgJiBEQ19TVEFURV9FTl9VUFRP
X0RDNSkKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
