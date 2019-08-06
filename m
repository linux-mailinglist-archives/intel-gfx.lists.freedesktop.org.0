Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7761830B8
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 13:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9203D6E35F;
	Tue,  6 Aug 2019 11:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201146E35F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 11:32:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 04:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192643175"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 04:32:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 14:37:00 +0300
Message-Id: <20190806113700.18816-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <850d80046088b0505bbbd74a345b5e393389e6f5.1565085691.git.jani.nikula@intel.com>
References: <850d80046088b0505bbbd74a345b5e393389e6f5.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2] drm/i915/tc: un-inline
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXZvaWQgaW5jbHVkaW5nIHRoZSBpbnRlbF9kcnYuaCBtZWdhIGhlYWRlciBmcm9tIG90aGVyIGhl
YWRlciBmaWxlcyB0bwptYWtlIGZ1cnRoZXIgaGVhZGVyIGNsZWFudXAgZWFzaWVyLgoKdjI6IHJl
c3RvcmUgdGhlIG92ZXItZWFnZXJseSBkcm9wcGVkIDxsaW51eC90eXBlcy5oPiAoSW1yZSkKClNp
Z25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgNyArKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggfCA5ICsrLS0tLS0tLQogMiBmaWxlcyBj
aGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90Yy5jCmluZGV4IGM5NmE4MWMyNDE2Yy4uYTRkM2QyZDU0MWM0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCkBAIC03LDYgKzcsNyBAQAog
I2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCIKICNp
bmNsdWRlICJpbnRlbF90Yy5oIgorI2luY2x1ZGUgImludGVsX2Rydi5oIgogCiBzdGF0aWMgY29u
c3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9kZSkKIHsKQEAg
LTUwMyw2ICs1MDQsMTIgQEAgdm9pZCBpbnRlbF90Y19wb3J0X3VubG9jayhzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKIAkJCQkgICAgICB3YWtlcmVmKTsKIH0KIAorYm9vbCBp
bnRlbF90Y19wb3J0X3JlZl9oZWxkKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
KQoreworCXJldHVybiBtdXRleF9pc19sb2NrZWQoJmRpZ19wb3J0LT50Y19sb2NrKSB8fAorCSAg
ICAgICBkaWdfcG9ydC0+dGNfbGlua19yZWZjb3VudDsKK30KKwogdm9pZCBpbnRlbF90Y19wb3J0
X2dldF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCQkJICAgIGlu
dCByZXF1aXJlZF9sYW5lcykKIHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfdGMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
aAppbmRleCAyMmZlOTIyYWM5Y2YuLjc4M2Q3NTUzMTQzNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdGMuaApAQCAtOSw3ICs5LDcgQEAKICNpbmNsdWRlIDxsaW51eC9tdXRl
eC5oPgogI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CiAKLSNpbmNsdWRlICJpbnRlbF9kcnYuaCIK
K3N0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CiAKIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0
ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogdTMyIGludGVsX3RjX3Bv
cnRfZ2V0X2xhbmVfbWFzayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCk7CkBA
IC0yMywxMiArMjMsNyBAQCB2b2lkIGludGVsX3RjX3BvcnRfdW5sb2NrKHN0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKIHZvaWQgaW50ZWxfdGNfcG9ydF9nZXRfbGluayhzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwKIAkJCSAgICBpbnQgcmVxdWlyZWRfbGFu
ZXMpOwogdm9pZCBpbnRlbF90Y19wb3J0X3B1dF9saW5rKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQgKmRpZ19wb3J0KTsKLQotc3RhdGljIGlubGluZSBpbnQgaW50ZWxfdGNfcG9ydF9yZWZfaGVs
ZChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKLXsKLQlyZXR1cm4gbXV0ZXhf
aXNfbG9ja2VkKCZkaWdfcG9ydC0+dGNfbG9jaykgfHwKLQkgICAgICAgZGlnX3BvcnQtPnRjX2xp
bmtfcmVmY291bnQ7Ci19Citib29sIGludGVsX3RjX3BvcnRfcmVmX2hlbGQoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwogCiB2b2lkIGludGVsX3RjX3BvcnRfaW5pdChzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwgYm9vbCBpc19sZWdhY3kpOwogCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
