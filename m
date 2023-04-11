Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5AA6DE48E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE9E410E618;
	Tue, 11 Apr 2023 19:14:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EA4E10E630
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240495; x=1712776495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fqPaKO9aGYXULa7Oobkce8/JxDfmqnsyfrRhr59zhZU=;
 b=VqnzFpuna93GYUs9FF0XfPeES33S6gzTaZnR/pmG+0qne4VQD40kgBPd
 Gu7XRNR8UvAHS7veb6SE8avvheditY+/jImeCSJQxfFUyCVJcGSFHIEOw
 wZ78Xr9XW32BQxmz/9bFuhUB3ZyqJJuqyYkXAg+e/V5lQE1ro25zS9Ema
 WW7olWiEIlLxoH7yvDHZUtwYUv2QvVT2dliZ2qDUxVKMVBGHzvuPPP7sf
 KiU7SSxBIvNXmXArwD3xHTUgAn/McisTvzeDwXBhGJ2YD9ErW9ShBQ0hM
 3R/AMXb4NbfC3imecBhwrxIGPZqfbdV51pb0al0Gh65KMI9qfjvep4YJO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202073"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202073"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446590"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:29 +0300
Message-Id: <20230411191429.29895-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/8] drm/i915/psr: Sprinkle cpu_transcoder
 variables around
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reduce the 'intel_dp' stuff a bit by introducing local
cpu_transcoder variables.

Ideally I'd like the whole PSR code to stop using intel_dp
except during a full modeset, but dunno yet if that's
possible. But the less 'intel_dp' we have sprad around
the easier that should be to figure out eventually.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 111 ++++++++++++-----------
 1 file changed, 59 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 843fec3651e0..a8875da796c7 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -293,13 +293,13 @@ static void psr_event_print(struct drm_i915_private *i915,
 
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 {
-	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	ktime_t time_ns =  ktime_get();
 	i915_reg_t imr_reg;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
-		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
+		imr_reg = TRANS_PSR_IMR(cpu_transcoder);
 	else
 		imr_reg = EDP_PSR_IMR;
 
@@ -559,6 +559,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
 
@@ -576,7 +577,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+	intel_de_rmw(dev_priv, EDP_PSR_CTL(cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
@@ -616,6 +617,7 @@ static int psr2_block_count(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
@@ -673,31 +675,30 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 tmp;
 
-		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
+		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
 		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
 	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0);
+		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), 0);
 	}
 
 	/*
 	 * PSR2 HW is incorrectly using EDP_PSR_TP1_TP3_SEL and BSpec is
 	 * recommending keep this bit unset while PSR2 is enabled.
 	 */
-	intel_de_write(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder), 0);
+	intel_de_write(dev_priv, EDP_PSR_CTL(cpu_transcoder), 0);
 
-	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
+	intel_de_write(dev_priv, EDP_PSR2_CTL(cpu_transcoder), val);
 }
 
 static bool
-transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder trans)
+transcoder_has_psr2(struct drm_i915_private *dev_priv, enum transcoder cpu_transcoder)
 {
 	if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER(dev_priv) >= 14)
-		return trans == TRANSCODER_A || trans == TRANSCODER_B;
+		return cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B;
 	else if (DISPLAY_VER(dev_priv) >= 12)
-		return trans == TRANSCODER_A;
+		return cpu_transcoder == TRANSCODER_A;
 	else
-		return trans == TRANSCODER_EDP;
+		return cpu_transcoder == TRANSCODER_EDP;
 }
 
 static u32 intel_get_frame_time_us(const struct intel_crtc_state *cstate)
@@ -713,8 +714,9 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 				     u32 idle_frames)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+	intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
 		     EDP_PSR2_IDLE_FRAMES_MASK,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
@@ -1154,6 +1156,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	struct intel_dp *intel_dp;
 	u32 val;
 
@@ -1180,13 +1183,13 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 		goto unlock;
 
 	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
-		val = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder));
 		if (val & PSR2_MAN_TRK_CTL_ENABLE)
 			pipe_config->enable_psr2_sel_fetch = true;
 	}
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
-		val = intel_de_read(dev_priv, TRANS_EXITLINE(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, TRANS_EXITLINE(cpu_transcoder));
 		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
 	}
 unlock:
@@ -1196,14 +1199,14 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 static void intel_psr_activate(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	enum transcoder transcoder = intel_dp->psr.transcoder;
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	if (transcoder_has_psr2(dev_priv, transcoder))
+	if (transcoder_has_psr2(dev_priv, cpu_transcoder))
 		drm_WARN_ON(&dev_priv->drm,
-			    intel_de_read(dev_priv, EDP_PSR2_CTL(transcoder)) & EDP_PSR2_ENABLE);
+			    intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder)) & EDP_PSR2_ENABLE);
 
 	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, EDP_PSR_CTL(transcoder)) & EDP_PSR_ENABLE);
+		    intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder)) & EDP_PSR_ENABLE);
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.active);
 	lockdep_assert_held(&intel_dp->psr.lock);
 
@@ -1282,7 +1285,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) < 11)
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
-	intel_de_write(dev_priv, EDP_PSR_DEBUG(intel_dp->psr.transcoder),
+	intel_de_write(dev_priv, EDP_PSR_DEBUG(cpu_transcoder),
 		       mask);
 
 	psr_irq_control(intel_dp);
@@ -1338,6 +1341,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
 	/*
@@ -1349,8 +1353,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	 * to avoid any rendering problems.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 12)
-		val = intel_de_read(dev_priv,
-				    TRANS_PSR_IIR(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, TRANS_PSR_IIR(cpu_transcoder));
 	else
 		val = intel_de_read(dev_priv, EDP_PSR_IIR);
 	val &= psr_irq_psr_error_bit_get(intel_dp);
@@ -1406,17 +1409,16 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 static void intel_psr_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
 	if (!intel_dp->psr.active) {
-		if (transcoder_has_psr2(dev_priv, intel_dp->psr.transcoder)) {
-			val = intel_de_read(dev_priv,
-					    EDP_PSR2_CTL(intel_dp->psr.transcoder));
+		if (transcoder_has_psr2(dev_priv, cpu_transcoder)) {
+			val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
 			drm_WARN_ON(&dev_priv->drm, val & EDP_PSR2_ENABLE);
 		}
 
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_CTL(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder));
 		drm_WARN_ON(&dev_priv->drm, val & EDP_PSR_ENABLE);
 
 		return;
@@ -1425,12 +1427,12 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 	if (intel_dp->psr.psr2_enabled) {
 		tgl_disallow_dc3co_on_psr2_exit(intel_dp);
 
-		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+		val = intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
 				   EDP_PSR2_ENABLE, 0);
 
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR2_ENABLE));
 	} else {
-		val = intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+		val = intel_de_rmw(dev_priv, EDP_PSR_CTL(cpu_transcoder),
 				   EDP_PSR_ENABLE, 0);
 
 		drm_WARN_ON(&dev_priv->drm, !(val & EDP_PSR_ENABLE));
@@ -1441,14 +1443,15 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
 static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	i915_reg_t psr_status;
 	u32 psr_status_mask;
 
 	if (intel_dp->psr.psr2_enabled) {
-		psr_status = EDP_PSR2_STATUS(intel_dp->psr.transcoder);
+		psr_status = EDP_PSR2_STATUS(cpu_transcoder);
 		psr_status_mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		psr_status = EDP_PSR_STATUS(intel_dp->psr.transcoder);
+		psr_status = EDP_PSR_STATUS(cpu_transcoder);
 		psr_status_mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
@@ -1461,6 +1464,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	enum phy phy = intel_port_to_phy(dev_priv,
 					 dp_to_dig_port(intel_dp)->base.port);
 
@@ -1487,7 +1491,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
+				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
@@ -1624,10 +1628,11 @@ static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
 static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled)
 		intel_de_write(dev_priv,
-			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+			       PSR2_MAN_TRK_CTL(cpu_transcoder),
 			       man_trk_ctl_enable_bit_get(dev_priv) |
 			       man_trk_ctl_partial_frame_bit_get(dev_priv) |
 			       man_trk_ctl_single_full_frame_bit_get(dev_priv) |
@@ -1727,6 +1732,7 @@ void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -1742,7 +1748,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		break;
 	}
 
-	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
+	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
 }
 
@@ -2121,6 +2127,7 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	/*
 	 * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
@@ -2128,13 +2135,14 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
 	 */
 	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
+				       EDP_PSR2_STATUS(cpu_transcoder),
 				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
 }
 
 static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	/*
 	 * From bspec: Panel Self Refresh (BDW+)
@@ -2143,7 +2151,7 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * defensive enough to cover everything.
 	 */
 	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
+				       EDP_PSR_STATUS(cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
@@ -2185,6 +2193,7 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	i915_reg_t reg;
 	u32 mask;
 	int err;
@@ -2193,10 +2202,10 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 		return false;
 
 	if (intel_dp->psr.psr2_enabled) {
-		reg = EDP_PSR2_STATUS(intel_dp->psr.transcoder);
+		reg = EDP_PSR2_STATUS(cpu_transcoder);
 		mask = EDP_PSR2_STATUS_STATE_MASK;
 	} else {
-		reg = EDP_PSR_STATUS(intel_dp->psr.transcoder);
+		reg = EDP_PSR_STATUS(cpu_transcoder);
 		mask = EDP_PSR_STATUS_STATE_MASK;
 	}
 
@@ -2357,6 +2366,7 @@ static void intel_psr_work(struct work_struct *work)
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 val;
@@ -2370,7 +2380,7 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 		val = man_trk_ctl_enable_bit_get(dev_priv) |
 		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
 		      man_trk_ctl_continuos_full_frame(dev_priv);
-		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), val);
+		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), val);
 		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
@@ -2449,6 +2459,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
@@ -2465,7 +2476,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 				 * SU configuration in case update is sent for any reason after
 				 * sff bit gets cleared by the HW on next vblank.
 				 */
-				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
 					       val);
 				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
@@ -2778,6 +2789,7 @@ static void
 psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	const char *status = "unknown";
 	u32 val, status_val;
 
@@ -2795,8 +2807,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"BUF_ON",
 			"TG_ON"
 		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR2_STATUS(cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -2811,8 +2822,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"SRDOFFACK",
 			"SRDENT_ON",
 		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_STATUS(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR_STATUS(cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -2824,6 +2834,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
 	const char *status;
@@ -2855,12 +2866,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	}
 
 	if (psr->psr2_enabled) {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_CTL(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR2_CTL(cpu_transcoder));
 		enabled = val & EDP_PSR2_ENABLE;
 	} else {
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_CTL(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR_CTL(cpu_transcoder));
 		enabled = val & EDP_PSR_ENABLE;
 	}
 	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
@@ -2872,8 +2881,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	val = intel_de_read(dev_priv,
-			    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
+	val = intel_de_read(dev_priv, EDP_PSR_PERF_CNT(cpu_transcoder));
 	seq_printf(m, "Performance counter: %u\n",
 		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
@@ -2892,8 +2900,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 		 * frame boundary between register reads
 		 */
 		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3) {
-			val = intel_de_read(dev_priv,
-					    PSR2_SU_STATUS(intel_dp->psr.transcoder, frame));
+			val = intel_de_read(dev_priv, PSR2_SU_STATUS(cpu_transcoder, frame));
 			su_frames_val[frame / 3] = val;
 		}
 
-- 
2.39.2

