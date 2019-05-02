Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E210B12510
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:27:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7503B893BC;
	Thu,  2 May 2019 23:27:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E45893BC
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 23:27:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 16:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="147715146"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 16:27:04 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 02:26:40 +0300
Message-Id: <20190502232648.4450-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: Verify power domains state
 during suspend in all cases
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgaXMgbm8gcmVhc29uIHdoeSB3ZSBjb3VsZG4ndCB2ZXJpZnkgdGhlIHBvd2VyIGRvbWFp
bnMgc3RhdGUgZHVyaW5nCnN1c3BlbmQgaW4gYWxsIGNhc2VzLCBzbyBkbyB0aGF0LiBJIG92ZXJs
b29rZWQgdGhpcyB3aGVuIG9yaWdpbmFsbHkKYWRkaW5nIHRoZSBjaGVjay4KCkNjOiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uYyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYwppbmRl
eCA0YTdiZmM5NDUzMjIuLmNjNDVjYmNiNDNjYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3J1bnRpbWVfcG0uYwpAQCAtNDI1MSwxMCArNDI1MSwxMCBAQCB2b2lkIGludGVsX3Bvd2VyX2Rv
bWFpbnNfc3VzcGVuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkgKiBFdmVuIGlm
IHBvd2VyIHdlbGwgc3VwcG9ydCB3YXMgZGlzYWJsZWQgd2Ugc3RpbGwgd2FudCB0byBkaXNhYmxl
CiAJICogcG93ZXIgd2VsbHMgaWYgcG93ZXIgZG9tYWlucyBtdXN0IGJlIGRlaW5pdGlhbGl6ZWQg
Zm9yIHN1c3BlbmQuCiAJICovCi0JaWYgKCFpOTE1X21vZHBhcmFtcy5kaXNhYmxlX3Bvd2VyX3dl
bGwpIHsKKwlpZiAoIWk5MTVfbW9kcGFyYW1zLmRpc2FibGVfcG93ZXJfd2VsbCkKIAkJaW50ZWxf
ZGlzcGxheV9wb3dlcl9wdXRfdW5jaGVja2VkKGk5MTUsIFBPV0VSX0RPTUFJTl9JTklUKTsKLQkJ
aW50ZWxfcG93ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoaTkxNSk7Ci0JfQorCisJaW50ZWxfcG93
ZXJfZG9tYWluc192ZXJpZnlfc3RhdGUoaTkxNSk7CiAKIAlpZiAoSU5URUxfR0VOKGk5MTUpID49
IDExKQogCQlpY2xfZGlzcGxheV9jb3JlX3VuaW5pdChpOTE1KTsKLS0gCjIuMTcuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
