Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EDFB7D6789
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 11:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6291410E0E5;
	Wed, 25 Oct 2023 09:52:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC18310E0E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 09:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698227530; x=1729763530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q6TJ1KAe03ebO2yWj6r6HaVIuXwZjLWPEknqbEAEPE4=;
 b=ItAITmo9bEiqRf3pXI7TJtMdJ+LJYUvcX7/RZJiFLBlG5vXagv0snFla
 WOaE6dGTXASybG+oIpEuh6S6iSErOH09zyWChzmqbbLkOcroP9dt9RIPA
 9j2rrCrAJBkjxzHab3YiLzzzp17Yx6lFZIjK7hdBjOLLltSq7af+qsJuh
 5G+rdAhvlGQg2ULmr5xYTY+Go5az9mKFp2I5yG7EMQpId33bPYTee6NN9
 Dc5Kj1bhfkC26miFy0a2du6h/z5ThbLJu5UyBcpjsRtDhgz91lxlV80NO
 gtw9/PnxgTSDu2GBnAewCI1BzggeqSWOla55fT+swu7RE3z6HO65mOAgR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="451500336"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="451500336"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 02:52:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="882402240"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="882402240"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga004.jf.intel.com with ESMTP; 25 Oct 2023 02:52:08 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Oct 2023 12:46:00 +0300
Message-Id: <20231025094600.371566-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Support PSR entry VSC packet
 to be transmitted one frame earlier
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

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 35 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 ++
 3 files changed, 33 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 65ea37fe8cff..a0bcab6f2bec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1710,6 +1710,7 @@ struct intel_psr {
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
 	struct delayed_work dc3co_work;
+	u8 entry_setup_frames;
 };
 
 struct intel_dp {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 4f1f31fc9529..0acb4edae128 100644
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
 
+	if (intel_dp->psr.entry_setup_frames > 0)
+		val |= EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
+
 	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
@@ -731,6 +737,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
+	u8 frames_before_su_entry;
 	u32 val = EDP_PSR2_ENABLE;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
@@ -741,7 +748,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
 		val |= EDP_Y_COORDINATE_ENABLE;
 
-	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
+	frames_before_su_entry = max_t(u8,
+				       intel_dp->psr.sink_sync_latency + 1,
+				       2);
+	val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry);
 	val |= intel_psr2_get_tp_time(intel_dp);
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
@@ -785,6 +795,14 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
 		val |= EDP_PSR2_SU_SDP_SCANLINE;
 
+	/* Entry setup frames must be at least 1 less than frames before SU entry */
+	if (intel_dp->psr.entry_setup_frames > 0) {
+		val |= EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
+
+		if (intel_dp->psr.entry_setup_frames >= frames_before_su_entry)
+			val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry + 1);
+	}
+
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
@@ -1252,10 +1270,17 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 
 	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
 	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "PSR condition failed: PSR setup time (%d us) too long\n",
-			    psr_setup_time);
-		return;
+		if (DISPLAY_VER(dev_priv) >= 20) {
+			intel_dp->psr.entry_setup_frames = 1;
+			drm_dbg_kms(&dev_priv->drm,
+				    "PSR setup entry frames: %d\n",
+				    intel_dp->psr.entry_setup_frames);
+		} else {
+			drm_dbg_kms(&dev_priv->drm,
+				    "PSR condition failed: PSR setup time (%d us) too long\n",
+				    psr_setup_time);
+			return;
+		}
 	}
 
 	crtc_state->has_psr = true;
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index d39951383c92..9414c4de5f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -35,6 +35,8 @@
 #define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 3)
 #define   EDP_PSR_MAX_SLEEP_TIME_MASK		REG_GENMASK(24, 20)
 #define   EDP_PSR_MAX_SLEEP_TIME(x)		REG_FIELD_PREP(EDP_PSR_MAX_SLEEP_TIME_MASK, (x))
+#define   EDP_PSR_ENTRY_SETUP_FRAMES_MASK	REG_GENMASK(17, 16)
+#define   EDP_PSR_ENTRY_SETUP_FRAMES(x)		REG_FIELD_PREP(EDP_PSR_ENTRY_SETUP_FRAMES_MASK, (x))
 #define   EDP_PSR_SKIP_AUX_EXIT			REG_BIT(12)
 #define   EDP_PSR_TP_MASK			REG_BIT(11)
 #define   EDP_PSR_TP_TP1_TP2			REG_FIELD_PREP(EDP_PSR_TP_MASK, 0)
-- 
2.34.1

