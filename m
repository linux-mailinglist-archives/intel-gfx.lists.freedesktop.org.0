Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF1AA1972
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 13:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1214289346;
	Thu, 29 Aug 2019 11:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08E6489346
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 11:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 04:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="197790835"
Received: from wo73065l01s008.fi.intel.com ([10.237.72.188])
 by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2019 04:58:58 -0700
From: Simon Ser <simon.ser@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:59:56 +0300
Message-Id: <20190829115957.30685-1-simon.ser@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: add Type-C port to encoder name
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

VGhpcyBwYXRjaCBhZGRzIHRoZSBUeXBlLUMgcG9ydCBudW1iZXIgdG8gdGhlIGVuY29kZXIgbmFt
ZS4gVGhpcyBpcyBhbgphbHRlcm5hdGl2ZSB0byBbMV0uCgpbMV06IGh0dHBzOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjU2OTUvCgpTaWduZWQtb2ZmLWJ5OiBTaW1vbiBTZXIg
PHNpbW9uLnNlckBpbnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+
CkNjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTEgKysrKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOGViMmIzZWMwMWVkLi5lNTQzZDQ0YTcxMDUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtNDI3OCw2ICs0
Mjc4LDggQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogCWJvb2wgaW5pdF9oZG1pLCBpbml0X2RwLCBpbml0X2xz
cGNvbiA9IGZhbHNlOwogCWVudW0gcGlwZSBwaXBlOwogCWVudW0gcGh5IHBoeSA9IGludGVsX3Bv
cnRfdG9fcGh5KGRldl9wcml2LCBwb3J0KTsKKwllbnVtIHRjX3BvcnQgdGNfcG9ydDsKKwljaGFy
IHRjX3N1ZmZpeFsxMjhdOwogCiAJaW5pdF9oZG1pID0gcG9ydF9pbmZvLT5zdXBwb3J0c19kdmkg
fHwgcG9ydF9pbmZvLT5zdXBwb3J0c19oZG1pOwogCWluaXRfZHAgPSBwb3J0X2luZm8tPnN1cHBv
cnRzX2RwOwpAQCAtNDMwNyw4ICs0MzA5LDE1IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCkKIAlpbnRlbF9lbmNv
ZGVyID0gJmludGVsX2RpZ19wb3J0LT5iYXNlOwogCWVuY29kZXIgPSAmaW50ZWxfZW5jb2Rlci0+
YmFzZTsKIAorCXRjX3BvcnQgPSBpbnRlbF9wb3J0X3RvX3RjKGRldl9wcml2LCBwb3J0KTsKKwlp
ZiAodGNfcG9ydCAhPSBQT1JUX1RDX05PTkUpCisJCXNucHJpbnRmKHRjX3N1ZmZpeCwgc2l6ZW9m
KHRjX3N1ZmZpeCksICIvVEMjJWQiLCB0Y19wb3J0ICsgMSk7CisJZWxzZQorCQl0Y19zdWZmaXhb
MF0gPSAnXDAnOworCiAJZHJtX2VuY29kZXJfaW5pdCgmZGV2X3ByaXYtPmRybSwgZW5jb2Rlciwg
JmludGVsX2RkaV9mdW5jcywKLQkJCSBEUk1fTU9ERV9FTkNPREVSX1RNRFMsICJEREkgJWMiLCBw
b3J0X25hbWUocG9ydCkpOworCQkJIERSTV9NT0RFX0VOQ09ERVJfVE1EUywgIkRESSAlYyVzIiwg
cG9ydF9uYW1lKHBvcnQpLAorCQkJIHRjX3N1ZmZpeCk7CiAKIAlpbnRlbF9lbmNvZGVyLT5ob3Rw
bHVnID0gaW50ZWxfZGRpX2hvdHBsdWc7CiAJaW50ZWxfZW5jb2Rlci0+Y29tcHV0ZV9vdXRwdXRf
dHlwZSA9IGludGVsX2RkaV9jb21wdXRlX291dHB1dF90eXBlOwotLSAKMi4yMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
