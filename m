Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A629BCD73FB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 23:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D2F110E069;
	Mon, 22 Dec 2025 22:14:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Is2qZvaf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518BB10E069;
 Mon, 22 Dec 2025 22:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766441652; x=1797977652;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=bHwCns0HxiRpqGSxMhGZ3sbBQzQAu6f4JfPfCA7g8OE=;
 b=Is2qZvaf2pqNXU/EBoOSgrWPqIRo08+tSk0DPDnCeEXs5CYn9safyZSz
 u+bF2YZcLwmLgy0DW97RKPyfFBnt8WNKdYTtQUPJN+H1eKkLnUjKO3CoJ
 wYvA2o35JTpxnkYtDKJ/ytMCTpMekVnKmb2LZJ9s0+G8+zmXZjAwGB9w0
 wN+Eee87pg3Pm8GYrbVzjIKZlS4TdGz3yywQ/p7Pyv1RCgeXtD5ouQg+8
 nG/vCiMABqOivc1DIU4wGfqW01RyBYdHdVmN0QAxogKmbm0O/JR7chsTV
 MWFjcghr3VefQzZFcl0S8WtJxMHMZ3xPSLdjBxLvh34v8m7UYGogJ4AA/ A==;
X-CSE-ConnectionGUID: BesidCs1T0ilk+a0XwAC9A==
X-CSE-MsgGUID: 1wHUl7PCScaszDsulL6oOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="93769141"
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="93769141"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:14:11 -0800
X-CSE-ConnectionGUID: Eq9dxcDNST6QYGBetNESrg==
X-CSE-MsgGUID: PgXHOCM2ShygO02Q38uB8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,169,1763452800"; d="scan'208";a="198766362"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.137])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 14:14:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 22 Dec 2025 19:13:47 -0300
Subject: [PATCH] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X divider
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-xe3_lpd-no-cd2x-divider-v1-1-96f1e112baaa@intel.com>
X-B4-Tracking: v=1; b=H4sIAJvCSWkC/x3M0QpAQBBA0V/RPJtiEOtXJMnMMqWl3dq25N9tH
 s/DvQ8E8SoBxuIBL1GDXi6jLgvYjtXtgsrZQBV1NRFhkmY5b0Z34caUkDUqi8d2sMZWpidrBsj
 17cVq+s/T/L4f4oy2t2kAAAA=
X-Change-ID: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.15-dev
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Xe3_LPD, there is no instruction to program the CD2X divider anymore
and the hardware is expected to always use the default value of 0b00,
meaning "divide by 1".

With that, the CDCLK_CTL register was changed so that:

  (1) The field "CD2X Divider Select" became a debug-only field.
      Because we are programming CDCLK_CTL with a direct write instead
      of read-modify-write operation, we still need to program "CD2X
      Divider Select" in order to keep the field from deviating from its
      default value.  Let's, however, throw a warning if we encounter a
      CDCLK value that would result in an unexpected value for that
      field.

  (2) The field "CD2X Pipe Select" has been removed. In fact, some
      debugging in a PTL machine showed that such field comes back as
      zero after writing a non-zero value to it.  As such, do not
      program it starting with Xe3_LPD.

Bspec: 68864, 69090
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 27 ++++++++++++++++++++++-----
 1 file changed, 22 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 0aa59d624095..684b8437951b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1933,6 +1933,8 @@ static u32 bxt_cdclk_cd2x_pipe(struct intel_display *display, enum pipe pipe)
 static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
 				  int cdclk, int vco, u16 waveform)
 {
+	u32 ret;
+
 	/* cdclk = vco / 2 / div{1,1.5,2,4} */
 	switch (cdclk_divider(cdclk, vco, waveform)) {
 	default:
@@ -1941,14 +1943,27 @@ static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
 		drm_WARN_ON(display->drm, vco != 0);
 		fallthrough;
 	case 2:
-		return BXT_CDCLK_CD2X_DIV_SEL_1;
+		ret = BXT_CDCLK_CD2X_DIV_SEL_1;
+		break;
 	case 3:
-		return BXT_CDCLK_CD2X_DIV_SEL_1_5;
+		ret = BXT_CDCLK_CD2X_DIV_SEL_1_5;
+		break;
 	case 4:
-		return BXT_CDCLK_CD2X_DIV_SEL_2;
+		ret = BXT_CDCLK_CD2X_DIV_SEL_2;
+		break;
 	case 8:
-		return BXT_CDCLK_CD2X_DIV_SEL_4;
+		ret = BXT_CDCLK_CD2X_DIV_SEL_4;
+		break;
 	}
+
+	/*
+	 * On Xe3_LPD onward, the expectation is to always have
+	 * BXT_CDCLK_CD2X_DIV_SEL_1 as the default.
+	 */
+	if (DISPLAY_VER(display) >= 30)
+		drm_WARN_ON(display->drm, ret != BXT_CDCLK_CD2X_DIV_SEL_1);
+
+	return ret;
 }
 
 static u16 cdclk_squash_waveform(struct intel_display *display,
@@ -2136,7 +2151,9 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 
 	waveform = cdclk_squash_waveform(display, cdclk);
 
-	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform) |
+	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform);
+
+	if (DISPLAY_VER(display) < 30)
 		bxt_cdclk_cd2x_pipe(display, pipe);
 
 	/*

---
base-commit: f2a0e58c77845e1a5cb6c549dc02b2670042e588
change-id: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

