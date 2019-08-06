Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E0F82F67
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 12:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A306E364;
	Tue,  6 Aug 2019 10:03:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C36DC6E357
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 10:03:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 03:03:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="192631810"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 Aug 2019 03:03:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Aug 2019 13:07:26 +0300
Message-Id: <ae8f7a9514a9e952e1e0dba411aeb42293d1e183.1565085691.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565085691.git.jani.nikula@intel.com>
References: <cover.1565085691.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 05/10] drm/i915/mst: un-inline
 intel_dp_mst_encoder_active_links()
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
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgNiArKysrKysKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmggfCA5ICsrLS0tLS0tLQogMiBmaWxl
cyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKaW5kZXggNjA2NTJlYmJkZjYxLi40MDcx
YzlkYTEwNjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
YwpAQCAtNjMxLDYgKzYzMSwxMiBAQCBpbnRlbF9kcF9jcmVhdGVfZmFrZV9tc3RfZW5jb2RlcnMo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpCiAJcmV0dXJuIHRydWU7
CiB9CiAKK2ludAoraW50ZWxfZHBfbXN0X2VuY29kZXJfYWN0aXZlX2xpbmtzKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQoreworCXJldHVybiBpbnRlbF9kaWdfcG9y
dC0+ZHAuYWN0aXZlX21zdF9saW5rczsKK30KKwogaW50CiBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9p
bml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LCBpbnQgY29ubl9i
YXNlX2lkKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgK
aW5kZXggNjc1NGMyMTEyMDVhLi5mNjYwYWQ4MGRiMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuaApAQCAtNiwxNSArNiwxMCBAQAogI2lmbmRlZiBfX0lO
VEVMX0RQX01TVF9IX18KICNkZWZpbmUgX19JTlRFTF9EUF9NU1RfSF9fCiAKLSNpbmNsdWRlICJp
bnRlbF9kcnYuaCIKK3N0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQ7CiAKIGludCBpbnRlbF9kcF9t
c3RfZW5jb2Rlcl9pbml0KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0
LCBpbnQgY29ubl9pZCk7CiB2b2lkIGludGVsX2RwX21zdF9lbmNvZGVyX2NsZWFudXAoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpOwotc3RhdGljIGlubGluZSBpbnQK
LWludGVsX2RwX21zdF9lbmNvZGVyX2FjdGl2ZV9saW5rcyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9w
b3J0ICppbnRlbF9kaWdfcG9ydCkKLXsKLQlyZXR1cm4gaW50ZWxfZGlnX3BvcnQtPmRwLmFjdGl2
ZV9tc3RfbGlua3M7Ci19Ci0KK2ludCBpbnRlbF9kcF9tc3RfZW5jb2Rlcl9hY3RpdmVfbGlua3Mo
c3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQpOwogCiAjZW5kaWYgLyog
X19JTlRFTF9EUF9NU1RfSF9fICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
