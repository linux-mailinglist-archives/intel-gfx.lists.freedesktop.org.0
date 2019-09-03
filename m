Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B02DCA73B8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 21:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FFFC89804;
	Tue,  3 Sep 2019 19:33:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9ADA89812
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 19:33:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 12:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,464,1559545200"; d="scan'208";a="176693377"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by orsmga008.jf.intel.com with ESMTP; 03 Sep 2019 12:33:05 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Sep 2019 00:52:52 +0530
Message-Id: <1567538578-4489-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v10][PATCH 2/8] drm/i915/display: Add debug log for
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
YSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jIHwgOSArKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGVhMjkxNWQuLmY5YzA4NDIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCkBAIC0xMjEzOCw2ICsxMjEzOCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
dW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZywKIAogCWludGVsX2RwbGxfZHVtcF9od19zdGF0ZShkZXZfcHJpdiwgJnBpcGVfY29uZmlnLT5k
cGxsX2h3X3N0YXRlKTsKIAorCWlmIChJU19DSEVSUllWSUVXKGRldl9wcml2KSkKKwkJRFJNX0RF
QlVHX0tNUygiY2dtX21vZGU6IDB4JXggZ2FtbWFfbW9kZTogMHgleCBnYW1tYV9lbmFibGU6ICVk
IGNzY19lbmFibGU6ICVkXG4iLAorCQkJICAgICAgcGlwZV9jb25maWctPmNnbV9tb2RlLCBwaXBl
X2NvbmZpZy0+Z2FtbWFfbW9kZSwKKwkJCSAgICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUs
IHBpcGVfY29uZmlnLT5jc2NfZW5hYmxlKTsKKwllbHNlCisJCURSTV9ERUJVR19LTVMoImNzY19t
b2RlOiAweCV4IGdhbW1hX21vZGU6IDB4JXggZ2FtbWFfZW5hYmxlOiAlZCBjc2NfZW5hYmxlOiAl
ZFxuIiwKKwkJCSAgICAgIHBpcGVfY29uZmlnLT5jc2NfbW9kZSwgcGlwZV9jb25maWctPmdhbW1h
X21vZGUsCisJCQkgICAgICBwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlLCBwaXBlX2NvbmZpZy0+
Y3NjX2VuYWJsZSk7CisKIGR1bXBfcGxhbmVzOgogCWlmICghc3RhdGUpCiAJCXJldHVybjsKLS0g
CjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
