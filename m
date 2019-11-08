Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91715F3CEC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 01:36:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D89376F814;
	Fri,  8 Nov 2019 00:36:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518786F814
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 00:36:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 16:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="205843071"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.155])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2019 16:36:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 16:36:01 -0800
Message-Id: <20191108003602.33526-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191108003602.33526-1-lucas.demarchi@intel.com>
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/bios: make sure to check vbt size
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB3ZSBjYWxsIGludGVsX2Jpb3NfaXNfdmFsaWRfdmJ0KCksIHNpemUgbWF5IG5vdCBhY3R1
YWxseSBiZSB0aGUKc2l6ZSBvZiB0aGUgVkJULCBidXQgcmF0aGVyIHRoZSBzaXplIG9mIHRoZSBi
bG9iIHRoZSBWQlQgaXMgY29udGFpbmVkCmluLiBGb3IgZXhhbXBsZSwgd2hlbiBtYXBwaW5nIHRo
ZSBQQ0kgb3Byb20sIHNpemUgd2lsbCBiZSB0aGUgZW50aXJlCm9wcm9tIHNpemUuIFdlIGRvbid0
IHdhbnQgdG8gcmVhZCBiZXlvbmQgd2hhdCBpcyByZXBvcnRlZCB0byBiZSB0aGUKVkJULiBTbyBt
YWtlIHN1cmUgd2UgdmJ0LT52YnRfc2l6ZSBtYWtlcyBzZW5zZSBhbmQgdXNlIHRoYXQgZm9yCnRo
ZSBsYXR0ZXIgY2hlY2tzLgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4
IDFmODM2MTZjZmMzMi4uNjcxYmJjZTZiYTViIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwpAQCAtMTc3NywxMSArMTc3NywxMyBAQCBib29sIGludGVsX2Jpb3Nf
aXNfdmFsaWRfdmJ0KGNvbnN0IHZvaWQgKmJ1Ziwgc2l6ZV90IHNpemUpCiAJaWYgKCF2YnQpCiAJ
CXJldHVybiBmYWxzZTsKIAotCWlmIChzaXplb2Yoc3RydWN0IHZidF9oZWFkZXIpID4gc2l6ZSkg
eworCWlmIChzaXplb2Yoc3RydWN0IHZidF9oZWFkZXIpID4gc2l6ZSB8fCB2YnQtPnZidF9zaXpl
ID4gc2l6ZSkgewogCQlEUk1fREVCVUdfRFJJVkVSKCJWQlQgaGVhZGVyIGluY29tcGxldGVcbiIp
OwogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJc2l6ZSA9IHZidC0+dmJ0X3NpemU7CisKIAlpZiAo
bWVtY21wKHZidC0+c2lnbmF0dXJlLCAiJFZCVCIsIDQpKSB7CiAJCURSTV9ERUJVR19EUklWRVIo
IlZCVCBpbnZhbGlkIHNpZ25hdHVyZVxuIik7CiAJCXJldHVybiBmYWxzZTsKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
