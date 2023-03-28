Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAA26CBAEA
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD9510E454;
	Tue, 28 Mar 2023 09:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D0910E454
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995868; x=1711531868;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y9oSYdRvwdGjFFajHYQK3oxK5IhXJ6FPobJ456uwZ+Q=;
 b=h2eWEfCUqKu13k545RzDaAsmgsWMpgtYhPYj68ZZzkRJx1zaWqe/JgOF
 /wVmah040rkehSTYyz3B/Zt2vAhmP5HO4MJcVobe22pJS1U9tHdVzaqwY
 WpVVg5gVKb7Lu5maO1mSfLHKFX8t9R/k22GlQFtTxmVjhGr1+nocxXsBd
 qy2trYYGnAgGZBl8mMdGqkyy0nFqQ7oz8IqVsQgqRwiVXoF3YXvVQXb57
 fa57taA43QRYn1GgbB7w0WTUF6P0Mg2BZgumDesYUFXxyXpkqyKkoyAWp
 ub9inDFQzuBJeF8+TxMsZ6TzCnyk35RYqOT6Qp/HV7ZoGE+19D9SnjnR4 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129680"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129680"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343668"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343668"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:31:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:31:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:42 +0300
Message-Id: <20230328093042.7469-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/psr: Sprinkle cpu_transcoder
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
index 807bf1b77ca7..5c5d7c592c42 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -292,13 +292,13 @@ static void psr_event_print(struct drm_i915_private *i915,
 
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
 
@@ -558,6 +558,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
 static void hsw_activate_psr1(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
 
@@ -575,7 +576,7 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	if (DISPLAY_VER(dev_priv) >= 8)
 		val |= EDP_PSR_CRC_ENABLE;
 
-	intel_de_rmw(dev_priv, EDP_PSR_CTL(intel_dp->psr.transcoder),
+	intel_de_rmw(dev_priv, EDP_PSR_CTL(cpu_transcoder),
 		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
 }
 
@@ -604,6 +605,7 @@ static u32 intel_psr2_get_tp_time(struct intel_dp *intel_dp)
 static void hsw_activate_psr2(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val = EDP_PSR2_ENABLE;
 
 	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
@@ -662,31 +664,30 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
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
@@ -702,8 +703,9 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 				     u32 idle_frames)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
-	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+	intel_de_rmw(dev_priv, EDP_PSR2_CTL(cpu_transcoder),
 		     EDP_PSR2_IDLE_FRAMES_MASK,
 		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
@@ -1134,6 +1136,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
 	struct intel_dp *intel_dp;
 	u32 val;
 
@@ -1160,13 +1163,13 @@ void intel_psr_get_config(struct intel_encoder *encoder,
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
@@ -1176,14 +1179,14 @@ void intel_psr_get_config(struct intel_encoder *encoder,
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
 
@@ -1234,7 +1237,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	if (DISPLAY_VER(dev_priv) < 11)
 		mask |= EDP_PSR_DEBUG_MASK_DISP_REG_WRITE;
 
-	intel_de_write(dev_priv, EDP_PSR_DEBUG(intel_dp->psr.transcoder),
+	intel_de_write(dev_priv, EDP_PSR_DEBUG(cpu_transcoder),
 		       mask);
 
 	psr_irq_control(intel_dp);
@@ -1296,6 +1299,7 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 val;
 
 	/*
@@ -1307,8 +1311,7 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	 * to avoid any rendering problems.
 	 */
 	if (DISPLAY_VER(dev_priv) >= 12)
-		val = intel_de_read(dev_priv,
-				    TRANS_PSR_IIR(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, TRANS_PSR_IIR(cpu_transcoder));
 	else
 		val = intel_de_read(dev_priv, EDP_PSR_IIR);
 	val &= psr_irq_psr_error_bit_get(intel_dp);
@@ -1364,17 +1367,16 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
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
@@ -1383,12 +1385,12 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
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
@@ -1399,14 +1401,15 @@ static void intel_psr_exit(struct intel_dp *intel_dp)
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
 
@@ -1419,6 +1422,7 @@ static void intel_psr_wait_exit_locked(struct intel_dp *intel_dp)
 static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	enum phy phy = intel_port_to_phy(dev_priv,
 					 dp_to_dig_port(intel_dp)->base.port);
 
@@ -1446,7 +1450,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		/* Wa_16012604467:adlp,mtl[a0,b0] */
 		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
 			intel_de_rmw(dev_priv,
-				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
+				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder),
 				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
 		else if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
@@ -1583,10 +1587,11 @@ static u32 man_trk_ctl_continuos_full_frame(struct drm_i915_private *dev_priv)
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
@@ -1686,6 +1691,7 @@ void intel_psr2_program_plane_sel_fetch_noarm(struct intel_plane *plane,
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	struct intel_encoder *encoder;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
@@ -1701,7 +1707,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		break;
 	}
 
-	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
+	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
 }
 
@@ -2068,6 +2074,7 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	/*
 	 * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
@@ -2075,13 +2082,14 @@ static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
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
@@ -2090,7 +2098,7 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 	 * defensive enough to cover everything.
 	 */
 	return intel_de_wait_for_clear(dev_priv,
-				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
+				       EDP_PSR_STATUS(cpu_transcoder),
 				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
@@ -2132,6 +2140,7 @@ void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_stat
 static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	i915_reg_t reg;
 	u32 mask;
 	int err;
@@ -2140,10 +2149,10 @@ static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
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
 
@@ -2304,6 +2313,7 @@ static void intel_psr_work(struct work_struct *work)
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		u32 val;
@@ -2317,7 +2327,7 @@ static void _psr_invalidate_handle(struct intel_dp *intel_dp)
 		val = man_trk_ctl_enable_bit_get(dev_priv) |
 		      man_trk_ctl_partial_frame_bit_get(dev_priv) |
 		      man_trk_ctl_continuos_full_frame(dev_priv);
-		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), val);
+		intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder), val);
 		intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 		intel_dp->psr.psr2_sel_fetch_cff_enabled = true;
 	} else {
@@ -2396,6 +2406,7 @@ tgl_dc3co_flush_locked(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 static void _psr_flush_handle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 
 	if (intel_dp->psr.psr2_sel_fetch_enabled) {
 		if (intel_dp->psr.psr2_sel_fetch_cff_enabled) {
@@ -2412,7 +2423,7 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 				 * SU configuration in case update is sent for any reason after
 				 * sff bit gets cleared by the HW on next vblank.
 				 */
-				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
+				intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(cpu_transcoder),
 					       val);
 				intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
 				intel_dp->psr.psr2_sel_fetch_cff_enabled = false;
@@ -2725,6 +2736,7 @@ static void
 psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	const char *status = "unknown";
 	u32 val, status_val;
 
@@ -2742,8 +2754,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"BUF_ON",
 			"TG_ON"
 		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR2_STATUS(cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -2758,8 +2769,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 			"SRDOFFACK",
 			"SRDENT_ON",
 		};
-		val = intel_de_read(dev_priv,
-				    EDP_PSR_STATUS(intel_dp->psr.transcoder));
+		val = intel_de_read(dev_priv, EDP_PSR_STATUS(cpu_transcoder));
 		status_val = REG_FIELD_GET(EDP_PSR_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
@@ -2771,6 +2781,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct intel_psr *psr = &intel_dp->psr;
 	intel_wakeref_t wakeref;
 	const char *status;
@@ -2802,12 +2813,10 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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
@@ -2819,8 +2828,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
 	 */
-	val = intel_de_read(dev_priv,
-			    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
+	val = intel_de_read(dev_priv, EDP_PSR_PERF_CNT(cpu_transcoder));
 	seq_printf(m, "Performance counter: %u\n",
 		   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 
@@ -2839,8 +2847,7 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
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

