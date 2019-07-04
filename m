Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B42F5EFEE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 02:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2EEE6E223;
	Thu,  4 Jul 2019 00:06:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4F76E21E
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 00:06:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 17:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,449,1557212400"; d="scan'208";a="339454314"
Received: from puneetya-mobl.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.184.98])
 by orsmga005.jf.intel.com with ESMTP; 03 Jul 2019 17:06:55 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 17:06:47 -0700
Message-Id: <20190704000649.20661-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190704000649.20661-1-lucas.demarchi@intel.com>
References: <20190704000649.20661-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: fix include order in intel_tc.*
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWFrZSBpbnRlbF90Yy5oIHRoZSBmaXJzdCBpbmNsdWRlIHNvIHdlIGd1YXJhbnRlZSBpdCdzIHNl
bGYtY29udGFpbmVkLgpTb3J0IHRoZSByZXN0LiBTYW1lIHByaW5jaXBsZSBhcHBsaWVzIGZvciBp
bmNsdWRlcyBpbiB0aGUgaGVhZGVyLgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jIHwgNSArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5oIHwgNSArKystLQogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCmluZGV4IDFh
OWRkMzJmYjBhNS4uZTZlNjE2M2MxMjMyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5jCkBAIC0zLDEwICszLDExIEBACiAgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBD
b3Jwb3JhdGlvbgogICovCiAKKyNpbmNsdWRlICJpbnRlbF90Yy5oIgorCisjaW5jbHVkZSAiaTkx
NV9kcnYuaCIKICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5LmgiCiAjaW5jbHVkZSAiaW50ZWxfZHBf
bXN0LmgiCi0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKLSNpbmNsdWRlICJpbnRlbF90Yy5oIgogCiBz
dGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9k
ZSkKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAppbmRleCAwZDg0MTFk
NGE5MWQuLjQ1YWUzMDUzN2I3OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dGMuaApAQCAtNiwxMCArNiwxMSBAQAogI2lmbmRlZiBfX0lOVEVMX1RDX0hfXwogI2RlZmluZSBf
X0lOVEVMX1RDX0hfXwogCi0jaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KLSNpbmNsdWRlIDxsaW51
eC9tdXRleC5oPgogI2luY2x1ZGUgImludGVsX2Rydi5oIgogCisjaW5jbHVkZSA8bGludXgvbXV0
ZXguaD4KKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgorCiBib29sIGludGVsX3RjX3BvcnRfY29u
bmVjdGVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKIHUzMiBpbnRlbF90
Y19wb3J0X2dldF9sYW5lX21hc2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
OwogaW50IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdp
dGFsX3BvcnQgKmRpZ19wb3J0KTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
