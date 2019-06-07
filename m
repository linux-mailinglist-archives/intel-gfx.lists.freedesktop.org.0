Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C09F8389CB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73FFA89B67;
	Fri,  7 Jun 2019 12:08:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CCB89B65
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:43 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:42 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:27 +0100
Message-Id: <20190607120838.20514-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 01/12] drm/i915: Eliminate unused mmio accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCk9uIHRoZSBw
YXRoIG9mIHJlbW92aW5nIG1taW8gYWNjZXNzb3JzIHdpdGggaW1wbGljaXQgZGV2X3ByaXYsIGVh
c3kgZmlyc3QKc3RlcCBpcyB0byByZW1vdmUgYWxsIHN1Y2ggdW51c2VkIG1hY3Jvcy4KClNpZ25l
ZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+ClN1Z2dl
c3RlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgNCAtLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBkZmU0YjExZWU0MjMuLjhkYTE1
NDE1NDZlZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0yODUzLDEyICsyODUzLDkgQEAg
ZXh0ZXJuIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJvcl9zdGF0ZShzdHJ1Y3QgZHJtX2k5
MTVfZXJyb3Jfc3RhdGVfYnVmICplLAogCWludGVsX3VuY29yZV8jI29wX18oJihkZXZfcHJpdl9f
KS0+dW5jb3JlLCBfX1ZBX0FSR1NfXykKIAogI2RlZmluZSBJOTE1X1JFQUQ4KHJlZ19fKQkgIF9f
STkxNV9SRUdfT1AocmVhZDgsIGRldl9wcml2LCAocmVnX18pKQotI2RlZmluZSBJOTE1X1dSSVRF
OChyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGU4LCBkZXZfcHJpdiwgKHJlZ19fKSwg
KHZhbF9fKSkKIAogI2RlZmluZSBJOTE1X1JFQUQxNihyZWdfXykJICAgX19JOTE1X1JFR19PUChy
ZWFkMTYsIGRldl9wcml2LCAocmVnX18pKQogI2RlZmluZSBJOTE1X1dSSVRFMTYocmVnX18sIHZh
bF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlMTYsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQot
I2RlZmluZSBJOTE1X1JFQUQxNl9OT1RSQUNFKHJlZ19fKQkgICBfX0k5MTVfUkVHX09QKHJlYWQx
Nl9ub3RyYWNlLCBkZXZfcHJpdiwgKHJlZ19fKSkKLSNkZWZpbmUgSTkxNV9XUklURTE2X05PVFJB
Q0UocmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlMTZfbm90cmFjZSwgZGV2X3ByaXYs
IChyZWdfXyksICh2YWxfXykpCiAKICNkZWZpbmUgSTkxNV9SRUFEKHJlZ19fKQkgX19JOTE1X1JF
R19PUChyZWFkLCBkZXZfcHJpdiwgKHJlZ19fKSkKICNkZWZpbmUgSTkxNV9XUklURShyZWdfXywg
dmFsX18pIF9fSTkxNV9SRUdfT1Aod3JpdGUsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQpA
QCAtMjkxNCw3ICsyOTExLDYgQEAgZXh0ZXJuIHZvaWQgaW50ZWxfZGlzcGxheV9wcmludF9lcnJv
cl9zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfZXJyb3Jfc3RhdGVfYnVmICplLAogICovCiAjZGVmaW5l
IEk5MTVfUkVBRF9GVyhyZWdfXykgX19JOTE1X1JFR19PUChyZWFkX2Z3LCBkZXZfcHJpdiwgKHJl
Z19fKSkKICNkZWZpbmUgSTkxNV9XUklURV9GVyhyZWdfXywgdmFsX18pIF9fSTkxNV9SRUdfT1Ao
d3JpdGVfZncsIGRldl9wcml2LCAocmVnX18pLCAodmFsX18pKQotI2RlZmluZSBJOTE1X1dSSVRF
NjRfRlcocmVnX18sIHZhbF9fKSBfX0k5MTVfUkVHX09QKHdyaXRlNjRfZncsIGRldl9wcml2LCAo
cmVnX18pLCAodmFsX18pKQogI2RlZmluZSBQT1NUSU5HX1JFQURfRlcocmVnX18pIF9fSTkxNV9S
RUdfT1AocG9zdGluZ19yZWFkX2Z3LCBkZXZfcHJpdiwgKHJlZ19fKSkKIAogLyogIkJyb2FkY2Fz
dCBSR0IiIHByb3BlcnR5ICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
