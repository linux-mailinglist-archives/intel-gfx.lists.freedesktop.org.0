Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B8273E4FD
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 18:28:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C29810E178;
	Mon, 26 Jun 2023 16:28:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEB4A10E178
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 16:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687796924; x=1719332924;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y+UMHLiRyKPo1RGVDPms0w1xFnq62XhsL69eN95o9tI=;
 b=ljg4WGNCYly5grDd9ZHpQ2WHvUFbDZn9ASColqxt7yrydqLa/f+gYjWQ
 keMhi1FsPjLn0Pgr5zNhvEDbSYrkgsq1af5jF5FwSJON5OfMVzsgpVz41
 irqef3+ulTp7uBRtvtSnRIZ64WF5gCKuZdYQ2ihZGRfen2lkerhiLoO8i
 MuWejygQaodeBkvyw99WWDaiYti4sxwjQAqwuh3PaSiXXNRLTzb00IFbd
 kvWj5obgPC9/0eLHHu6NpvBuCmaDzgVI+icVc5eOLOlte/c5XCgy6WBib
 u6cgwSZuy1LsbN7/WwHHA0VDKiZP1LveiprErNF6CTdJE1MrKkLCqN81E g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="360180162"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="360180162"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:28:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="710291946"
X-IronPort-AV: E=Sophos;i="6.01,160,1684825200"; d="scan'208";a="710291946"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2023 09:28:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 19:28:47 +0300
Message-Id: <20230626162847.3571036-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adlp: Disable display RM unclaimed
 checks while DC6 is enabled
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

At least on ADLP a DC6 entry/exit sequence may corrupt the FPGA_DBG
register's RM_NOCLAIM flag, which is used to detect incorrect MMIO
accesses on the display RM bus. Based on my tests this only happens
with a non-zero package C10 residency.

A related problem is that the DMC firmware's DC6->DC5 register state
restore handler will keep alternately setting/clearing the RM_NOCLAIM
flag (since it's a clear-on-write flag, which means clearing if the
flag was set when saving the register value).

Besides random triggering of unclaimed register access WARNs, I haven't
noticed other issues. To avoid such WARNs disable the RM unclaimed
checks while DC6 is enabled, until a firmware root-cause/fix is found.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 13 ++++++++
 drivers/gpu/drm/i915/intel_uncore.c           | 32 ++++++++++++++++++-
 drivers/gpu/drm/i915/intel_uncore.h           |  3 ++
 3 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 916009894d89c..012d56ebcc02e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -845,6 +845,15 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
 
+	/*
+	 * A DC6 exit sequence will corrupt the FPGA_DBG/RM noclaim flag on
+	 * ADLP, so disable the unclaimed MMIO checking using this flag while
+	 * DC6 is enabled.
+	 * TODO: remove this once a firmware root-cause/fix is found.
+	 */
+	if (IS_ALDERLAKE_P(dev_priv))
+		intel_uncore_disable_unclaimed_rm_check(&dev_priv->uncore);
+
 	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
 }
 
@@ -965,6 +974,10 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
+	if (IS_ALDERLAKE_P(dev_priv) &&
+	    power_domains->target_dc_state == DC_STATE_EN_UPTO_DC6)
+		intel_uncore_enable_unclaimed_rm_check(&dev_priv->uncore);
+
 	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 796ebfe6c5507..8a33ac348ad5e 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -49,6 +49,7 @@ intel_uncore_mmio_debug_init_early(struct drm_i915_private *i915)
 {
 	spin_lock_init(&i915->mmio_debug.lock);
 	i915->mmio_debug.unclaimed_mmio_check = 1;
+	i915->mmio_debug.unclaimed_rm_check = true;
 
 	i915->uncore.debug = &i915->mmio_debug;
 }
@@ -504,6 +505,35 @@ intel_uncore_forcewake_reset(struct intel_uncore *uncore)
 	return fw; /* track the lost user forcewake domains */
 }
 
+/**
+ * intel_uncore_disable_unclaimed_rm_check - disable unclaimed RM MMIO checks
+ * @uncore: the intel_uncore structure
+ *
+ * Disabling checking for unclaimed MMIO accesses on the display RM bus.
+ */
+void intel_uncore_disable_unclaimed_rm_check(struct intel_uncore *uncore)
+{
+	spin_lock_irq(&uncore->debug->lock);
+	uncore->debug->unclaimed_rm_check = false;
+	spin_unlock_irq(&uncore->debug->lock);
+}
+
+/**
+ * intel_uncore_enable_unclaimed_rm_check - enable unclaimed RM MMIO checks
+ * @uncore: the intel_uncore structure
+ *
+ * Enable checking for unclaimed MMIO accesses on the display RM bus.
+ */
+void intel_uncore_enable_unclaimed_rm_check(struct intel_uncore *uncore)
+{
+	spin_lock_irq(&uncore->debug->lock);
+
+	uncore->debug->unclaimed_rm_check = true;
+	__raw_uncore_write32(uncore, FPGA_DBG, FPGA_DBG_RM_NOCLAIM);
+
+	spin_unlock_irq(&uncore->debug->lock);
+}
+
 static bool
 fpga_check_for_unclaimed_mmio(struct intel_uncore *uncore)
 {
@@ -531,7 +561,7 @@ fpga_check_for_unclaimed_mmio(struct intel_uncore *uncore)
 
 	__raw_uncore_write32(uncore, FPGA_DBG, FPGA_DBG_RM_NOCLAIM);
 
-	return true;
+	return uncore->debug->unclaimed_rm_check;
 }
 
 static bool
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 9ea1f4864a3a4..0c2be600ac423 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -44,6 +44,7 @@ struct intel_uncore_mmio_debug {
 	int unclaimed_mmio_check;
 	int saved_mmio_check;
 	u32 suspend_count;
+	bool unclaimed_rm_check:1;
 };
 
 enum forcewake_domain_id {
@@ -245,6 +246,8 @@ void intel_uncore_prune_engine_fw_domains(struct intel_uncore *uncore,
 					  struct intel_gt *gt);
 bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore);
 bool intel_uncore_arm_unclaimed_mmio_detection(struct intel_uncore *uncore);
+void intel_uncore_enable_unclaimed_rm_check(struct intel_uncore *uncore);
+void intel_uncore_disable_unclaimed_rm_check(struct intel_uncore *uncore);
 void intel_uncore_cleanup_mmio(struct intel_uncore *uncore);
 void intel_uncore_fini_mmio(struct drm_device *dev, void *data);
 void intel_uncore_suspend(struct intel_uncore *uncore);
-- 
2.37.2

