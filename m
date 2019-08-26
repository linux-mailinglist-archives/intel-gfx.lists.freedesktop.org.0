Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B379C97B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 08:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F31A6E17F;
	Mon, 26 Aug 2019 06:36:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81E16E182
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 06:36:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Aug 2019 23:36:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,431,1559545200"; d="scan'208";a="174111983"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2019 23:36:36 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 11:56:04 +0530
Message-Id: <1566800772-18412-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v8][PATCH 02/10] drm/i915/display: Add debug log for
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
b25maWcoKS4KClNpZ25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggYjUxZDFjZS4uY2E4
OGM3MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTEyMTM4LDYgKzEyMTM4LDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25m
aWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCiAJaW50ZWxf
ZHBsbF9kdW1wX2h3X3N0YXRlKGRldl9wcml2LCAmcGlwZV9jb25maWctPmRwbGxfaHdfc3RhdGUp
OwogCisJaWYgKElTX0NIRVJSWVZJRVcoZGV2X3ByaXYpKQorCQlEUk1fREVCVUdfS01TKCJjZ21f
bW9kZTolZCBnYW1tYV9tb2RlOiVkIGdhbW1hX2VuYWJsZTolZCBjc2NfZW5hYmxlOiVkXG4iLAor
CQkJICAgICAgIHBpcGVfY29uZmlnLT5jZ21fbW9kZSwgcGlwZV9jb25maWctPmdhbW1hX21vZGUs
CisJCQkgICAgICAgcGlwZV9jb25maWctPmdhbW1hX2VuYWJsZSwgcGlwZV9jb25maWctPmNzY19l
bmFibGUpOworCWVsc2UKKwkJRFJNX0RFQlVHX0tNUygiY3NjX21vZGU6JWQgZ2FtbWFfbW9kZTol
ZCBnYW1tYV9lbmFibGU6JWQgY3NjX2VuYWJsZTolZFxuIiwKKwkJCSAgICAgICBwaXBlX2NvbmZp
Zy0+Y3NjX21vZGUsIHBpcGVfY29uZmlnLT5nYW1tYV9tb2RlLAorCQkJICAgICAgIHBpcGVfY29u
ZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKKwogZHVtcF9wbGFu
ZXM6CiAJaWYgKCFzdGF0ZSkKIAkJcmV0dXJuOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
