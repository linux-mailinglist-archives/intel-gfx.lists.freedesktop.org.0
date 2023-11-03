Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9928E7E0010
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 10:39:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBF610E538;
	Fri,  3 Nov 2023 09:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD94C10E538
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 09:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699004355; x=1730540355;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z8bjTtt5WnxNF8JaqmC9Sz4Ho9Hw8OoqQ79DocWDwEg=;
 b=W6GP+GArhBHXJ+2a/WVo95r54e3AeaVPnslEL3gXvnsRt1Nb3YziLF+I
 CI7hqjPO6AQD92KSJxqKt58FU3Q1tsxXW3OloycSQgyOAXdrX96nD4Cwx
 hqKdDHHNMAdhWpm5JOPqhstsy4SZ/JRPm8Jxh8zfE8113m6K+gTXe5iR3
 O4l8Yu0KuV7agbXPrQrP0fz6wAUjH3mqqusv9KMPnSegE/sTKF0EFxVtB
 c1tbzzBkXbPyQr49WzZ7QN/1ELGX/OPv39FXm4+AGiawwpMXoJbOs/xT0
 SU1UlqdF5cNLQNva1yNpxsdYt3ATvOFVxOTkXBjI8D24uOYPm+Qt2zDD5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453211179"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="453211179"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 02:39:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="738029783"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="738029783"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga006.jf.intel.com with ESMTP; 03 Nov 2023 02:39:13 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Nov 2023 11:32:59 +0200
Message-Id: <20231103093259.59054-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

Display driver shall read DPCD 00071h[3:1] during configuration
to get PSR setup time. This register provides the setup time
requirement on the VSC SDP entry packet. If setup time cannot be
met with the current timings
(e.g., PSR setup time + other blanking requirements > blanking time),
driver should enable sending VSC SDP one frame earlier before sending
the capture frame.

BSpec: 69895 (PSR Entry Setup Frames 17:16)

v2: Write frames before su entry to correct register (Ville, Jouni)
    Move frames before su entry calculation to it's
    own function (Ville, Jouni)
    Rename PSR Entry Setup Frames register to indicate
    Lunarlake specificity (Jouni)
v3: Modify setup entry frames calculation function to
    return the actual frames (Ville)
    Match comment with actual implementation (Jouni)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 82 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 +
 3 files changed, 71 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 047fe3f8905a..92f06d67fd1e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1708,6 +1708,7 @@ struct intel_psr {
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
+	u8 entry_setup_frames;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ecd24a0b86cb..497e4c26f4a6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -592,6 +592,9 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
 
+	if (intel_dp->psr.entry_setup_frames > 0)
+		dpcd_val |= DP_PSR_FRAME_CAPTURE;
+
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
 
 	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
@@ -690,6 +693,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
+
 	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
@@ -727,11 +733,27 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 	return psr2_block_count_lines(intel_dp) / 4;
 }
 
+static u8 get_frames_before_su_entry(struct intel_dp *intel_dp)
+{
+	u8 frames_before_su_entry;
+
+	frames_before_su_entry = max_t(u8,
+				       intel_dp->psr.sink_sync_latency + 1,
+				       2);
+
+	/* Entry setup frames must be at least 1 less than frames before SU entry */
+	if (intel_dp->psr.entry_setup_frames >= frames_before_su_entry)
+		frames_before_su_entry = intel_dp->psr.entry_setup_frames + 1;
+
+	return frames_before_su_entry;
+}
+
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
+	u32 psr_val = 0;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
@@ -741,7 +763,8 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
-	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
+	val |= EDP_PSR2_FRAME_BEFORE_SU(get_frames_before_su_entry(intel_dp));
+
 	val |= intel_psr2_get_tp_time(intel_dp);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
@@ -785,6 +808,9 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
+	if (DISPLAY_VER(dev_priv) >= 20)
+		psr_val |= LNL_EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
+
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
@@ -798,7 +824,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
 	 */
-	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), 0);
+	intel_de_write(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder), psr_val);
 
 	intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
 }
@@ -1066,6 +1092,40 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
 	return true;
 }
 
+static u8 intel_psr_set_entry_setup_frames(struct intel_dp *intel_dp,
+					   const struct drm_display_mode *adjusted_mode)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
+	u8 entry_setup_frames = 0;
+
+	if (psr_setup_time < 0) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
+			    intel_dp->psr_dpcd[1]);
+		return -ETIME;
+	}
+
+
+	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
+	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
+		if (DISPLAY_VER(dev_priv) >= 20) {
+			/* setup entry frames can be set up to 3 frames */
+			entry_setup_frames = 1;
+			drm_dbg_kms(&dev_priv->drm,
+				    "PSR setup entry frames set to %d\n",
+				    entry_setup_frames);
+		} else {
+			drm_dbg_kms(&dev_priv->drm,
+				    "PSR condition failed: PSR setup time (%d us) too long\n",
+				    psr_setup_time);
+			return -ETIME;
+		}
+	}
+
+	return entry_setup_frames;
+}
+
 static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 				    struct intel_crtc_state *crtc_state)
 {
@@ -1213,7 +1273,7 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	int psr_setup_time;
+	u8 entry_setup_frames;
 
 	/*
 	 * Current PSR panels don't work reliably with VRR enabled
@@ -1242,19 +1302,13 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
-	psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
-	if (psr_setup_time < 0) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR condition failed: Invalid PSR setup time (0x%02x)\n",
-			    intel_dp->psr_dpcd[1]);
-		return;
-	}
+	entry_setup_frames = intel_psr_set_entry_setup_frames(intel_dp, adjusted_mode);
 
-	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
-	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
+	if (entry_setup_frames >= 0) {
+		intel_dp->psr.entry_setup_frames = entry_setup_frames;
+	} else {
 		drm_dbg_kms(&dev_priv->drm,
-			    "PSR condition failed: PSR setup time (%d us) too long\n",
-			    psr_setup_time);
+			    "PSR condition failed: PSR setup timing not met\n");
 		return;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index d39951383c92..efe4306b37e0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -35,6 +35,8 @@
 #define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 3)
 #define   EDP_PSR_MAX_SLEEP_TIME_MASK		REG_GENMASK(24, 20)
 #define   EDP_PSR_MAX_SLEEP_TIME(x)		REG_FIELD_PREP(EDP_PSR_MAX_SLEEP_TIME_MASK, (x))
+#define   LNL_EDP_PSR_ENTRY_SETUP_FRAMES_MASK	REG_GENMASK(17, 16)
+#define   LNL_EDP_PSR_ENTRY_SETUP_FRAMES(x)	REG_FIELD_PREP(LNL_EDP_PSR_ENTRY_SETUP_FRAMES_MASK, (x))
 #define   EDP_PSR_SKIP_AUX_EXIT			REG_BIT(12)
 #define   EDP_PSR_TP_MASK			REG_BIT(11)
 #define   EDP_PSR_TP_TP1_TP2			REG_FIELD_PREP(EDP_PSR_TP_MASK, 0)
-- 
2.34.1

