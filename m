Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0FECFB1C6
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 22:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02D3410E03B;
	Tue,  6 Jan 2026 21:41:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NjSAWSDf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CFE710E004;
 Tue,  6 Jan 2026 21:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767735672; x=1799271672;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=iW7jkDSE74R5Cm/lMtPSGzfImnUqKwXjqDHbGcCoCRY=;
 b=NjSAWSDfZ1SjsJqIhNsIiFQltpIvJPwAYZSDLe9pU+MWbAw1le0U8j/A
 YqM+FT/lXCt0dE/Ay8+6tZsUX4jZQrA9Pw9oHsK2cgXoLsNxACb1JuSSU
 /ShmL2mb/hUv0ykRNDnSFlZYLYv+xpLF6r3pVa+flFhTVTXkp+EFDk1VX
 nOqeW2XZlprBgG+9i0Or5Pr1JRjGvcGBQfyN6OIKjJwkC02VX5U+P+rFE
 /cRabPsq0LU021R5c1Ce6MvCF55PAWoRA1W4HQievT1fj0qWmG5kdUNSM
 q/IFIbJb4thrV86Y9ArVy8E6OYbGuZk83mzpAy/uEiZcNjsAp4g4syzjm g==;
X-CSE-ConnectionGUID: ibC1BizZTeiUcdr3rQmx3w==
X-CSE-MsgGUID: QiT2+qbrTnqb4KEOO+2/vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="68845996"
X-IronPort-AV: E=Sophos;i="6.21,206,1763452800"; d="scan'208";a="68845996"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 13:40:58 -0800
X-CSE-ConnectionGUID: oYHiQfSBSLa/Y7XFBEvZqg==
X-CSE-MsgGUID: ILkFE8JhTa6R1Q9ADT7KZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,206,1763452800"; d="scan'208";a="207814990"
Received: from khuang2-desk.gar.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.76])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 13:40:56 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 06 Jan 2026 18:40:21 -0300
Subject: [PATCH v2] drm/i915/cdclk: Incorporate Xe3_LPD changes for CD2X
 divider
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-xe3_lpd-no-cd2x-divider-v2-1-06e5cbc9dabb@intel.com>
X-B4-Tracking: v=1; b=H4sIAESBXWkC/4WNWwrCMBBFt1Ly7UhnfDV+uQ8pEpuJHahJSUqol
 O7d2A34eQ7ccxeVOAonda0WFTlLkuAL0K5SXW/8i0FsYUU1nZCIYObDYxgt+ACdpRmsZLEc4dg
 47Wp9IacbVdZjZCfzVr63hXtJU4if7Sjjz/5vZgQEfXbIiPQ0xtzETzzsu/BW7bquX4eGqmK+A
 AAA
X-Change-ID: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
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

v2:
  - Add missing "val |= " when calling bxt_cdclk_cd2x_pipe().
    (Dnyaneshwar)

Bspec: 68864, 69090
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
Changes in v2:
- EDITME: describe what is new in this series revision.
- EDITME: use bulletpoints and terse descriptions.
- Link to v1: https://patch.msgid.link/20251222-xe3_lpd-no-cd2x-divider-v1-1-96f1e112baaa@intel.com
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7443e5285942..9bfbfbf34dc0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1948,6 +1948,8 @@ static u32 bxt_cdclk_cd2x_pipe(struct intel_display *display, enum pipe pipe)
 static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
 				  int cdclk, int vco, u16 waveform)
 {
+	u32 ret;
+
 	/* cdclk = vco / 2 / div{1,1.5,2,4} */
 	switch (cdclk_divider(cdclk, vco, waveform)) {
 	default:
@@ -1956,14 +1958,27 @@ static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
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
@@ -2151,8 +2166,10 @@ static u32 bxt_cdclk_ctl(struct intel_display *display,
 
 	waveform = cdclk_squash_waveform(display, cdclk);
 
-	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform) |
-		bxt_cdclk_cd2x_pipe(display, pipe);
+	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform);
+
+	if (DISPLAY_VER(display) < 30)
+		val |= bxt_cdclk_cd2x_pipe(display, pipe);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,

---
base-commit: 3d6700a02638d446a4e8ad92a8212c3efef84ae0
change-id: 20251222-xe3_lpd-no-cd2x-divider-48f9f0972f98

Best regards,
--  
Gustavo Sousa <gustavo.sousa@intel.com>

