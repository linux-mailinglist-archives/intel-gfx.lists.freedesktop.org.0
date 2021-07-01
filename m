Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 191533B9203
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 15:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DCA89FC5;
	Thu,  1 Jul 2021 13:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5039989F92
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 13:08:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="188213908"
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="188213908"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:28 -0700
X-IronPort-AV: E=Sophos;i="5.83,314,1616482800"; d="scan'208";a="420396795"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 06:08:26 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Jul 2021 18:23:45 +0530
Message-Id: <20210701125346.10005-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210701125346.10005-1-anshuman.gupta@intel.com>
References: <20210701125346.10005-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Use AUDIO_MMIO for crtc
 power domain mask
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

VXNlIFBPV0VSX0RPTUFJTl9BVURJT19NTUlPIHBvd2VyIGRvbWFpbiBpbnN0ZWFkIG9mClBPV0VS
X0RPTUFJTl9BVURJTyBpbiBjcnRjIHBvd2VyIGRvbWFpbiBtYXNrLgoKSXQgd2lsbCBzYXZlIHRo
ZSBwb3dlciBpbiB1c2UgY2FzZXMgd2hlbiBEUC9IRE1JIGNvbm5lY3RvcnMKY29uZmlndXJlZCB3
aXRoIFBJUEVfQSB3aXRob3V0IGFueSBhdWRpbyBwbGF5YmFjay4KCnYxOiBDaGFuZ2VzIHNpbmNl
IFJGQwotIGNoYW5nZWQgcG93ZXIgZG9tYWluIG5hbWVzLiBbSW1yZV0KCkNjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogS2FpIFZlaG1hbmVuIDxr
YWkudmVobWFuZW5AbGludXguaW50ZWwuY29tPgpDYzogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2Fy
QGludGVsLmNvbT4KQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDIgKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQogMiBmaWxlcyBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggOTFmZDg1YmVlMWQyLi40Nzc4YzNlMzc3YWEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzQ0MSw3ICszNDQx
LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfZGRpX2lzX2F1ZGlvX2VuYWJsZWQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NPREVS
X0VEUCkKIAkJcmV0dXJuIGZhbHNlOwogCi0JaWYgKCFpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2Vu
YWJsZWQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9BVURJTykpCisJaWYgKCFpbnRlbF9kaXNwbGF5
X3Bvd2VyX2lzX2VuYWJsZWQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9BVURJT19NTUlPKSkKIAkJ
cmV0dXJuIGZhbHNlOwogCiAJcmV0dXJuIGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIEhTV19BVURf
UElOX0VMRF9DUF9WTEQpICYKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggMDI2YzI4YzYxMmYwLi5kZDU5OTRjNDRjM2YgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0zODY0LDcgKzM4NjQsNyBA
QCBzdGF0aWMgdTY0IGdldF9jcnRjX3Bvd2VyX2RvbWFpbnMoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCiAJfQogCiAJaWYgKEhBU19EREkoZGV2X3ByaXYpICYmIGNydGNfc3Rh
dGUtPmhhc19hdWRpbykKLQkJbWFzayB8PSBCSVRfVUxMKFBPV0VSX0RPTUFJTl9BVURJTyk7CisJ
CW1hc2sgfD0gQklUX1VMTChQT1dFUl9ET01BSU5fQVVESU9fTU1JTyk7CiAKIAlpZiAoY3J0Y19z
dGF0ZS0+c2hhcmVkX2RwbGwpCiAJCW1hc2sgfD0gQklUX1VMTChQT1dFUl9ET01BSU5fRElTUExB
WV9DT1JFKTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
