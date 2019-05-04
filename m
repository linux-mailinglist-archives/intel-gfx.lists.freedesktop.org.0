Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E0213B4E
	for <lists+intel-gfx@lfdr.de>; Sat,  4 May 2019 19:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFD389332;
	Sat,  4 May 2019 17:15:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A02389203
 for <intel-gfx@lists.freedesktop.org>; Sat,  4 May 2019 17:15:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 May 2019 10:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,430,1549958400"; d="scan'208";a="229328077"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2019 10:15:53 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  4 May 2019 22:41:31 +0530
Message-Id: <1556989900-21972-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
References: <1556989900-21972-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v5][PATCH 02/11] drm/i915: Enable
 intel_color_read_luts()
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

SW4gdGhpcyBwYXRjaCwgaW50ZWxfY29sb3JfcmVhZF9sdXRzKCkgaXMgZW5hYmxlZCBhbmQgc3Vw
cG9ydApmb3IgcmVhZF9sdXRzKCkgd2lsbCBiZSBhZGRlZCBwbGF0Zm9ybSBieSBwbGF0Zm9ybSBp
bmNyZW1lbnRhbGx5CmluIHRoZSBmb2xsb3ctdXAgcGF0Y2hlcy4KCnY0OiAtUmVuYW1lZCBpbnRl
bF9nZXRfY29sb3JfY29uZmlnIHRvIGludGVsX2NvbG9yX2dldF9jb25maWcgW0phbmldCiAgICAt
QWRkZWQgdGhlIHVzZXIgZWFybHkgb24gc3VjaCB0aGF0IHN1cHBvcnQgZm9yIGdldF9jb2xvcl9j
b25maWcoKQogICAgIGNhbiBiZSBhZGRlZCBwbGF0Zm9ybSBieSBwbGF0Zm9ybSBpbmNyZW1lbnRh
bGx5IFtKYW5pXQp2NTogLUluY29ycmVjdCBwbGFjZSBmb3IgY2FsbGluZyBpbnRlbF9jb2xvcl9n
ZXRfY29uZmlnKCkgaW4KICAgICBoYXN3ZWxsX2dldF9waXBlX2NvbmZpZygpIFtWaWxsZV0KClNp
Z25lZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIHwgNCArKysrCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCmlu
ZGV4IDU0NTNkYmUuLjc5MTk3NGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTgzMjcsNiArODMyNyw3IEBAIHN0YXRpYyBib29sIGk5eHhfZ2V0X3BpcGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQlwaXBlX2NvbmZpZy0+Y2dtX21vZGUgPSBJOTE1X1JF
QUQoQ0dNX1BJUEVfTU9ERShjcnRjLT5waXBlKSk7CiAKIAlpOXh4X2dldF9waXBlX2NvbG9yX2Nv
bmZpZyhwaXBlX2NvbmZpZyk7CisJaW50ZWxfY29sb3JfcmVhZF9sdXRzKHBpcGVfY29uZmlnKTsK
IAogCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgNCkKIAkJcGlwZV9jb25maWctPmRvdWJsZV93
aWRlID0gdG1wICYgUElQRUNPTkZfRE9VQkxFX1dJREU7CkBAIC05NDAwLDYgKzk0MDEsNyBAQCBz
dGF0aWMgYm9vbCBpcm9ubGFrZV9nZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCiAJcGlwZV9jb25maWctPmNzY19tb2RlID0gSTkxNV9SRUFEKFBJUEVfQ1NDX01PREUoY3J0
Yy0+cGlwZSkpOwogCiAJaTl4eF9nZXRfcGlwZV9jb2xvcl9jb25maWcocGlwZV9jb25maWcpOwor
CWludGVsX2NvbG9yX3JlYWRfbHV0cyhwaXBlX2NvbmZpZyk7CiAKIAlpZiAoSTkxNV9SRUFEKFBD
SF9UUkFOU0NPTkYoY3J0Yy0+cGlwZSkpICYgVFJBTlNfRU5BQkxFKSB7CiAJCXN0cnVjdCBpbnRl
bF9zaGFyZWRfZHBsbCAqcGxsOwpAQCAtMTAwNjMsNiArMTAwNjUsOCBAQCBzdGF0aWMgYm9vbCBo
YXN3ZWxsX2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJaTl4eF9n
ZXRfcGlwZV9jb2xvcl9jb25maWcocGlwZV9jb25maWcpOwogCX0KIAorCWludGVsX2NvbG9yX3Jl
YWRfbHV0cyhwaXBlX2NvbmZpZyk7CisKIAlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUElQ
RV9QQU5FTF9GSVRURVIoY3J0Yy0+cGlwZSk7CiAJV0FSTl9PTihwb3dlcl9kb21haW5fbWFzayAm
IEJJVF9VTEwocG93ZXJfZG9tYWluKSk7CiAKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
