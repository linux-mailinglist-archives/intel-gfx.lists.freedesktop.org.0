Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4CD7B848
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 05:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D296189F38;
	Wed, 31 Jul 2019 03:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 445A089F38
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 03:37:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 20:37:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,328,1559545200"; d="scan'208";a="162956891"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 20:37:16 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 09:03:24 +0530
Message-Id: <20190731033324.6031-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/icl: Remove DDI IO power domain from
 PG3 power domains
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
Cc: Syrjala Ville <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RERJIElPIHBvd2VyIGRvbWFpbiBhcmUgaW4gSU8vUEhZL0FGRSBwb3dlciBkb21haW5zLgpXaGlj
aCBkb2VzIG5vdCByZXF1aXJlIFBHMyBwb3dlciB3ZWxsIHRvIGJlIGVuYWJsZS4KTUlQSSBEU0kg
ZHVhbCBsaW5rIGdldHMgIkRESSBCIiBJTyBwb3dlciBkb21haW4gcmVmZXJlbmNlCmNvdW50IHdo
aWNoIGVuYWJsZXMgUEczIHNpbmNlICJEREkgQiIgSU8gcG93ZXIgZG9tYWluIGlzCnBhcnQgb2Yg
UEczIHBvd2VyIGRvbWFpbiwgdGhhdCBtYWtlcyBwb3dlciBsZWFrYWdlIGluCk1JUEkgRFNJIGR1
YWwgbGluayB1c2UgY2FzZS4KCkNjOiBEZWFrIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+CkNj
OiBTeXJqYWxhIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
QW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCmluZGV4IGRkMmE1MGI4YmEwYS4uY2EzM2U4ZDQx
MjE4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcG93ZXIuYwpAQCAtMjQ4MiwxMSArMjQ4Miw4IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dl
cl9wdXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVJfQykgfAkJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BJUEVfQl9Q
QU5FTF9GSVRURVIpIHwJXAogCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfTEFORVMp
IHwJXAotCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0JfSU8pIHwJCVwKIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9QT1JUX0RESV9DX0xBTkVTKSB8CVwKLQlCSVRfVUxMKFBPV0VSX0RPTUFJ
Tl9QT1JUX0RESV9DX0lPKSB8CQlcCiAJQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfRF9M
QU5FUykgfAlcCi0JQklUX1VMTChQT1dFUl9ET01BSU5fUE9SVF9ERElfRF9JTykgfAkJXAogCUJJ
VF9VTEwoUE9XRVJfRE9NQUlOX1BPUlRfRERJX0VfTEFORVMpIHwJXAogCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX1BPUlRfRERJX0VfSU8pIHwJCVwKIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QT1JUX0RE
SV9GX0xBTkVTKSB8CVwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
