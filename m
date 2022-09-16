Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E35815BA848
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 10:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277EF10ECDA;
	Fri, 16 Sep 2022 08:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF1AB10E3EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 08:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663317291; x=1694853291;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nN20Z+U1ond2FMsqvEYPjz+3mTSHiQpqC+Nd0iUzf9s=;
 b=Pj2B3JMcLzJYR1cjxnOty30cb0CwBGR1RZdo38P0tK2LxCevE0y3GFDw
 xLQunnQOOzalkYDxEGoSPML90UBTVgSPcKZB6HhBMvip78DPgZ+tpABFt
 uAYPHqNZ55k+O8fwpiqvnTSodCPufNgPBG8Pm2f8t+HsXk+tOZC1aIj37
 LuJJ153wUrf2Vh2e7yxD9ffRJnL+3lxLd5qS0QjEgDmfLT6RV21ZNnn94
 ZUbCfqHjyyLtlMH9jzydnS/mOMmmVG4UbwqmX3T6IUIccJ/6ydG/OHkLA
 8CmbasYQBJ93RNzyKzFP97ePGC2zYldIDlxpaRR1T87V4CAkUCcQBq1TF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="279326145"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="279326145"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="679879358"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmsmga008.fm.intel.com with ESMTP; 16 Sep 2022 01:34:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 14:01:01 +0530
Message-Id: <20220916083102.18559-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/pps: Add get_pps_idx() hook as
 part of pps_get_register() cleanup
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Simplified pps_get_register() which use get_pps_idx() hook to derive the
pps instance and get_pps_idx() will be initialized at pps_init().

v1: Initial version. Got r-b from Jani.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_pps.c          | 15 ++++++++++-----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..b78b29951241 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1693,6 +1693,7 @@ struct intel_dp {
 	u8 (*preemph_max)(struct intel_dp *intel_dp);
 	u8 (*voltage_max)(struct intel_dp *intel_dp,
 			  const struct intel_crtc_state *crtc_state);
+	int (*get_pps_idx)(struct intel_dp *intel_dp);
 
 	/* Displayport compliance testing */
 	struct intel_dp_compliance compliance;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 21944f5bf3a8..b972fa6ec00d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -364,12 +364,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	int pps_idx = 0;
 
-	memset(regs, 0, sizeof(*regs));
+	if (intel_dp->get_pps_idx)
+		pps_idx = intel_dp->get_pps_idx(intel_dp);
 
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		pps_idx = bxt_power_sequencer_idx(intel_dp);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		pps_idx = vlv_power_sequencer_pipe(intel_dp);
+	memset(regs, 0, sizeof(*regs));
 
 	regs->pp_ctrl = PP_CONTROL(pps_idx);
 	regs->pp_stat = PP_STATUS(pps_idx);
@@ -1432,6 +1430,13 @@ void intel_pps_init(struct intel_dp *intel_dp)
 	intel_dp->pps.initializing = true;
 	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
 
+	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
+	else
+		intel_dp->get_pps_idx = NULL;
+
 	pps_init_timestamps(intel_dp);
 
 	with_intel_pps_lock(intel_dp, wakeref) {
-- 
2.29.0

