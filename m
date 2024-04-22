Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 329FE8AC45D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 08:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 095181127FA;
	Mon, 22 Apr 2024 06:40:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jXFkkv2H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCBA21127F1;
 Mon, 22 Apr 2024 06:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713768026; x=1745304026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dbNwAk2Afx2depN7spOGPt9c+XTe7Fjy9Z+s/LJdsN4=;
 b=jXFkkv2HmhHVm4TsuyIoGbxqFKdfnkgPmAbbtHphYIBoqWGhKcbV/PDC
 G1NOxLQIK6WT7Jr4CPm+vZ72Ih17NJHC+3L4a6rVq15KRA/KFEkb2glo0
 uklLdIRfxIVYCyGmef451wfbSE9Xfjo1YgfAM2esTutCrTS+lpJFeNuYw
 wSPaRPOM3+1RNFxdj/RsI9qE36wWzTSey4dB9N8U151G0Dy1SUjNqP3gf
 qvAsvqbXLzG61ZuJte9hkz0TXUUp+s+5K9ON0vYaZNSE4YrP9FOuaMvPn
 T2unMud0SAOdSm8EUqy+eOo+l5rNtqwNQ1V6Na2r0iJEMDwudXdHEu7Bb w==;
X-CSE-ConnectionGUID: kCDaKSQGSwWW7LXWQy57lA==
X-CSE-MsgGUID: lJvXGglNRfq+9iLZMcn6cQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9208632"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9208632"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:25 -0700
X-CSE-ConnectionGUID: JgPOYmeYSE+wrZzdbF+qjw==
X-CSE-MsgGUID: H1FfAzQETVS+pfbrNbIwMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="23896476"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 23:40:23 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v4 10/19] drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before
 enabling planes
Date: Mon, 22 Apr 2024 12:10:29 +0530
Message-Id: <20240422064038.1451579-11-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
References: <20240422064038.1451579-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

From: Anusha Srivatsa <anusha.srivatsa@intel.com>

Add step 9 from initialize display sequence.

v2: Commit subject improved

Bpsec: 49189
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 6fd4fa52253a..bf9685acf75a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1694,6 +1694,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	if (IS_DG2(dev_priv))
 		intel_snps_phy_wait_for_calibration(dev_priv);
 
+	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
+	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
+		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
+
 	if (resume)
 		intel_dmc_load_program(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 14cb7c267f2b..879bd635f8fc 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4564,6 +4564,7 @@
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
 #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
+#define   BMG_DARB_HALF_BLK_END_BURST	REG_BIT(27)
 #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
 #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
 #define   GLK_CL2_PWR_DOWN		REG_BIT(12)
-- 
2.25.1

