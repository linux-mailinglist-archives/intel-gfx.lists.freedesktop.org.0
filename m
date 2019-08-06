Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BFF82F5E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37CEE8920E;
	Tue,  6 Aug 2019 10:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA4A26E358
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631819"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:27 +0300
Message-Id: <850d80046088b0505bbbd74a345b5e393389e6f5.1565085691.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 06/10] drm/i915/tc: un-inline
 intel_tc_port_ref_held()
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

QXZvaWQgaW5jbHVkaW5nIHRoZSBpbnRlbF9kcnYuaCBtZWdhIGhlYWRlciBmcm9tIG90aGVyIGhl
YWRlciBmaWxlcyB0bwptYWtlIGZ1cnRoZXIgaGVhZGVyIGNsZWFudXAgZWFzaWVyLgoKU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAgNyArKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggfCAxMCArKy0tLS0tLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMKaW5kZXggYzk2YTgxYzI0MTZjLi5hNGQzZDJkNTQxYzQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTcsNiArNyw3IEBACiAj
aW5jbHVkZSAiaW50ZWxfZGlzcGxheS5oIgogI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgogI2lu
Y2x1ZGUgImludGVsX3RjLmgiCisjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCiAKIHN0YXRpYyBjb25z
dCBjaGFyICp0Y19wb3J0X21vZGVfbmFtZShlbnVtIHRjX3BvcnRfbW9kZSBtb2RlKQogewpAQCAt
NTAzLDYgKzUwNCwxMiBAQCB2b2lkIGludGVsX3RjX3BvcnRfdW5sb2NrKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCQkJCSAgICAgIHdha2VyZWYpOwogfQogCitib29sIGlu
dGVsX3RjX3BvcnRfcmVmX2hlbGQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
Cit7CisJcmV0dXJuIG11dGV4X2lzX2xvY2tlZCgmZGlnX3BvcnQtPnRjX2xvY2spIHx8CisJICAg
ICAgIGRpZ19wb3J0LT50Y19saW5rX3JlZmNvdW50OworfQorCiB2b2lkIGludGVsX3RjX3BvcnRf
Z2V0X2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJCQkgICAgaW50
IHJlcXVpcmVkX2xhbmVzKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5o
CmluZGV4IDIyZmU5MjJhYzljZi4uODM2ZDdiM2U1M2Q2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5oCkBAIC03LDkgKzcsOCBAQAogI2RlZmluZSBfX0lOVEVMX1RDX0hf
XwogCiAjaW5jbHVkZSA8bGludXgvbXV0ZXguaD4KLSNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgog
Ci0jaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCitzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0OwogCiBi
b29sIGludGVsX3RjX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRp
Z19wb3J0KTsKIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soc3RydWN0IGludGVsX2Rp
Z2l0YWxfcG9ydCAqZGlnX3BvcnQpOwpAQCAtMjMsMTIgKzIyLDcgQEAgdm9pZCBpbnRlbF90Y19w
b3J0X3VubG9jayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7CiB2b2lkIGlu
dGVsX3RjX3BvcnRfZ2V0X2xpbmsoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQs
CiAJCQkgICAgaW50IHJlcXVpcmVkX2xhbmVzKTsKIHZvaWQgaW50ZWxfdGNfcG9ydF9wdXRfbGlu
ayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7Ci0KLXN0YXRpYyBpbmxpbmUg
aW50IGludGVsX3RjX3BvcnRfcmVmX2hlbGQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGln
X3BvcnQpCi17Ci0JcmV0dXJuIG11dGV4X2lzX2xvY2tlZCgmZGlnX3BvcnQtPnRjX2xvY2spIHx8
Ci0JICAgICAgIGRpZ19wb3J0LT50Y19saW5rX3JlZmNvdW50OwotfQorYm9vbCBpbnRlbF90Y19w
b3J0X3JlZl9oZWxkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKIAogdm9p
ZCBpbnRlbF90Y19wb3J0X2luaXQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQs
IGJvb2wgaXNfbGVnYWN5KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
