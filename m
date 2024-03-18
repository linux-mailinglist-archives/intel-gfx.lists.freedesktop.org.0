Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B2387F1A7
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 22:01:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD56112189;
	Mon, 18 Mar 2024 21:01:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORZfBc7E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B041A112189
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710795714; x=1742331714;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zxPenPFYyMoK4e2A3aqMXrajKvTgLnkgd3j4n3je3vs=;
 b=ORZfBc7E1TkU9R//zR7XxFPr79fjzpZFHSrj0IyOV7+9YrjZrqLaRamr
 k+GpI3X3UeefvebtCLGX6P/MooSDvOUDGI6tiYOPDwoJf36Iuy8x6bU5v
 oRNAZerHSQixtZwwLIdSxPphPWLw1rXdzaUJYilrSm2RuCoE2fVj+/dqb
 ZRKUl9+z67a82n1QYsw1W4UevrPzHwm4wwfybyicJu3bG8BkeE+Y0N8Ba
 YTFth5gVwnbsf1/v+AK0gYRWIf83dNnK7RXbAd92Dh+mlc7cAP0Rao/Ce
 6psnVyiz/3duRz0CYnvirg09ko+n1OgC7VMfqA9ULlchY9EgYqkzaR1Nk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="9436726"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; 
   d="scan'208";a="9436726"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 14:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="18277506"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 14:01:53 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2] drm/i915/xelpg: Add Wa_14020495402
Date: Mon, 18 Mar 2024 14:00:25 -0700
Message-Id: <20240318210025.562698-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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

Disable clockgating for TDL SVHS fub.

v2: Implement in general render/compute wa's(MattR)

Bspec: 46045
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 50962cfd1353..1f778b77f4f8 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1215,6 +1215,7 @@
 #define   GEN12_DISABLE_EARLY_READ		REG_BIT(14)
 #define   GEN12_ENABLE_LARGE_GRF_MODE		REG_BIT(12)
 #define   GEN12_PUSH_CONST_DEREF_HOLD_DIS	REG_BIT(8)
+#define   XELPG_DISABLE_TDL_SVHS_GATING		REG_BIT(1)
 #define   GEN12_DISABLE_DOP_GATING              REG_BIT(0)
 
 #define RT_CTRL					MCR_REG(0xe530)
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index b079cbbc1897..d2c63ecc490e 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2892,10 +2892,14 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER) ||
-	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74)))
+	    IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 74), IP_VER(12, 74))) {
 		/* Wa_14017856879 */
 		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
 
+		/* Wa_14020495402 */
+		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2, XELPG_DISABLE_TDL_SVHS_GATING);
+	}
+
 	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
 	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
 		/*
-- 
2.34.1

