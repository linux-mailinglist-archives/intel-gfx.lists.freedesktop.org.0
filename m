Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 143602930B1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 23:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E52C46EB30;
	Mon, 19 Oct 2020 21:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9686EB30
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 21:43:48 +0000 (UTC)
IronPort-SDR: Cp1hGKMoAfeWdN0+0nDfhLZk8xcbCmkosouddKCiyPBn9p3DkHddGBq+u1zHom/8pUNIllXUa6
 ECpMZTstaZdw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154050224"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154050224"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 14:43:44 -0700
IronPort-SDR: bSQFnd3ueunPHSeFtj6y1nwvb+LwLT73vepKIaYLw4N8augpf9MzGEd4RAW9rspWM7tGxtE62O
 2F56Ijp1PyEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="358285561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 19 Oct 2020 14:43:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Oct 2020 00:43:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Oct 2020 00:43:32 +0300
Message-Id: <20201019214337.19330-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
References: <20201019214337.19330-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Introduce
 with_intel_display_power_if_enabled()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCB0aGUgX2lmX2VuYWJsZWQoKSBjb3VudGVycGFydCB0byB3aXRoX2ludGVsX2Rpc3BsYXlfcG93
ZXIoKS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmggfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5o
CmluZGV4IDRhYTBhMDljZjE0Zi4uNGY0ODg1NWE3YzQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaApAQCAtMzI3LDYgKzMyNywx
MCBAQCB2b2lkIGdlbjlfZGJ1Zl9zbGljZXNfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKIAlmb3IgKCh3ZikgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldCgoaTkxNSks
IChkb21haW4pKTsgKHdmKTsgXAogCSAgICAgaW50ZWxfZGlzcGxheV9wb3dlcl9wdXRfYXN5bmMo
KGk5MTUpLCAoZG9tYWluKSwgKHdmKSksICh3ZikgPSAwKQogCisjZGVmaW5lIHdpdGhfaW50ZWxf
ZGlzcGxheV9wb3dlcl9pZl9lbmFibGVkKGk5MTUsIGRvbWFpbiwgd2YpIFwKKwlmb3IgKCh3Zikg
PSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9pZl9lbmFibGVkKChpOTE1KSwgKGRvbWFpbikpOyAo
d2YpOyBcCisJICAgICBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dF9hc3luYygoaTkxNSksIChkb21h
aW4pLCAod2YpKSwgKHdmKSA9IDApCisKIHZvaWQgY2h2X3BoeV9wb3dlcmdhdGVfbGFuZXMoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJCQkgICAgIGJvb2wgb3ZlcnJpZGUsIHVuc2ln
bmVkIGludCBtYXNrKTsKIGJvb2wgY2h2X3BoeV9wb3dlcmdhdGVfY2goc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIGRwaW9fcGh5IHBoeSwKLS0gCjIuMjYuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
