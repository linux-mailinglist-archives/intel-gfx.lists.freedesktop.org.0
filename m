Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD14A32CD
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 10:42:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 313326E290;
	Fri, 30 Aug 2019 08:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED9036E28B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 08:42:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 01:42:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="381059266"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 01:42:09 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2019 14:01:44 +0530
Message-Id: <1567153913-20166-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
References: <1567153913-20166-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v9][PATCH 02/11] drm/i915/display: Add debug log for
 color parameters
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGRlYnVnIGxvZyBmb3IgY29sb3IgcmVsYXRlZCBwYXJhbWV0ZXJzIGxpa2UgZ2FtbWFfbW9k
ZSwgZ2FtbWFfZW5hYmxlLApjc2NfZW5hYmxlLCBldGMgaW5zaWRlIGludGVsX2R1bXBfcGlwZV9j
b25maWcoKS4KCnY2OiAtQWRkZWQgZGVidWcgbG9nIGZvciBjb2xvciBwYXJhIGluIGludGVsX2R1
bXBfcGlwZV9jb25maWcgW0phbmldCnY3OiAtU3BsaXQgcGF0Y2ggMyBpbnRvIDQgcGF0Y2hlcwp2
ODogLUNvcnJlY3RlZCBhbGlnbm1lbnQgW1VtYV0KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJt
YSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKaW5kZXggZWEyOTE1ZC4uZjljMDg0MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTEyMTM4LDYgKzEyMTM4LDE1IEBAIHN0YXRpYyB2b2lk
IGludGVsX2R1bXBfcGlwZV9jb25maWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBp
cGVfY29uZmlnLAogCiAJaW50ZWxfZHBsbF9kdW1wX2h3X3N0YXRlKGRldl9wcml2LCAmcGlwZV9j
b25maWctPmRwbGxfaHdfc3RhdGUpOwogCisJaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQor
CQlEUk1fREVCVUdfS01TKCJjZ21fbW9kZTogMHgleCBnYW1tYV9tb2RlOiAweCV4IGdhbW1hX2Vu
YWJsZTogJWQgY3NjX2VuYWJsZTogJWRcbiIsCisJCQkgICAgICBwaXBlX2NvbmZpZy0+Y2dtX21v
ZGUsIHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlLAorCQkJICAgICAgcGlwZV9jb25maWctPmdhbW1h
X2VuYWJsZSwgcGlwZV9jb25maWctPmNzY19lbmFibGUpOworCWVsc2UKKwkJRFJNX0RFQlVHX0tN
UygiY3NjX21vZGU6IDB4JXggZ2FtbWFfbW9kZTogMHgleCBnYW1tYV9lbmFibGU6ICVkIGNzY19l
bmFibGU6ICVkXG4iLAorCQkJICAgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2NvbmZp
Zy0+Z2FtbWFfbW9kZSwKKwkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVf
Y29uZmlnLT5jc2NfZW5hYmxlKTsKKwogZHVtcF9wbGFuZXM6CiAJaWYgKCFzdGF0ZSkKIAkJcmV0
dXJuOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
