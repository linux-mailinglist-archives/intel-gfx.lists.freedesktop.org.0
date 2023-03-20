Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C6B6C1D09
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:00:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D420E10E5ED;
	Mon, 20 Mar 2023 17:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748F410E5ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:00:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679331617; x=1710867617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JF1wHwywlmSEDAaRQ+AFUCaAEJyIBoC7Cqcl8f6yEiQ=;
 b=DuPbqeU625VcrdJwYmzA0XXEHQeCT9ToahdwtFGU7so9+3iafREWh3qv
 9lgHlSpHiQsdoytA3n0PBBK2OswgOCHHaWDOBoRgXijs/hqwXao2KGkRq
 LgHQktVm1mXIVYvzMs7tEXJM02iFWUFvYtY1RUJK3Z6rUdKoKuP1/C8Vj
 3/zPFMjy7U6hzNnv7DBkgi0c34v40c6lketZDvEi7jI0Ppmd5sgcp2M95
 uyjLLH1nj7qU830LSJ/op2YvuDLghnPIit10HILqKWW5VocKPz2w8gswx
 FakAnyfBSTPIHNra0qVT2RkKIiL+hlHMutkVORikmijYTH/oGbU/dahPy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318367889"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318367889"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855328310"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="855328310"
Received: from mmazilu-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:14 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 18:59:43 +0200
Message-Id: <20230320165945.3564891-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230320165945.3564891-1-jouni.hogander@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/psr: Fix Wa_16013835468 and
 Wa_14015648006
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

PSR WM optimization should be disabled based on any wm level being
disabled. Currently it's disabled always when using delayed vblank.
Also same WA should be applied for ICL as well

Bspec: 71580

v2:
 - set/clear chicken bit in post_plane_update
 - apply for ICL as well

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 67 ++++++++++++-------
 drivers/gpu/drm/i915/display/skl_watermark.c  |  7 +-
 3 files changed, 50 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c32bfba06ca1..60504c390408 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1152,6 +1152,7 @@ struct intel_crtc_state {
 	bool has_psr2;
 	bool enable_psr2_sel_fetch;
 	bool req_psr2_sdp_prior_scanline;
+	bool wm_level_disabled;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	struct drm_dp_vsc_sdp psr_vsc;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8dbf452d63c2..1050d777a108 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1173,18 +1173,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
-	/*
-	 * Wa_16013835468
-	 * Wa_14015648006
-	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
-		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
-		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
-				     wa_16013835468_bit_get(intel_dp));
-	}
-
 	if (intel_dp->psr.psr2_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
@@ -1362,7 +1350,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 	 * Wa_14015648006
 	 */
 	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13))
+	    IS_DISPLAY_VER(dev_priv, 11, 13))
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
@@ -1941,33 +1929,64 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * Wa_16013835468
+ * Wa_14015648006
+ */
+static void wa_16013835468(struct intel_dp *intel_dp, bool wm_level_disabled)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	if (!IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
+	    !IS_DISPLAY_VER(dev_priv, 11, 13))
+		return;
+
+	if (intel_dp->psr.enabled && wm_level_disabled)
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+			     wa_16013835468_bit_get(intel_dp));
+	else
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     wa_16013835468_bit_get(intel_dp), 0);
+}
+
 static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
-					 const struct intel_crtc_state *crtc_state)
+					 const struct intel_crtc_state *old_crtc_state,
+					 const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_encoder *encoder;
 
-	if (!crtc_state->has_psr)
+	if (!new_crtc_state->has_psr)
 		return;
 
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
-					     crtc_state->uapi.encoder_mask) {
+					     new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		struct intel_psr *psr = &intel_dp->psr;
 		bool keep_disabled = false;
 
 		mutex_lock(&psr->lock);
 
-		drm_WARN_ON(&dev_priv->drm, psr->enabled && !crtc_state->active_planes);
+		drm_WARN_ON(&dev_priv->drm, psr->enabled &&
+			    !new_crtc_state->active_planes);
 
 		keep_disabled |= psr->sink_not_reliable;
-		keep_disabled |= !crtc_state->active_planes;
+		keep_disabled |= !new_crtc_state->active_planes;
 
 		if (!psr->enabled && !keep_disabled)
-			intel_psr_enable_locked(intel_dp, crtc_state);
+			intel_psr_enable_locked(intel_dp, new_crtc_state);
+
+		/*
+		 * Wa_16013835468
+		 * Wa_14015648006
+		 */
+		if (old_crtc_state->wm_level_disabled !=
+		    new_crtc_state->wm_level_disabled)
+			wa_16013835468(intel_dp,
+				       new_crtc_state->wm_level_disabled);
 
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
-		if (crtc_state->crc_enabled && psr->enabled)
+		if (new_crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
 
 		mutex_unlock(&psr->lock);
@@ -1977,15 +1996,17 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
-	struct intel_crtc_state *crtc_state;
+	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	int i;
 
 	if (!HAS_PSR(dev_priv))
 		return;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i)
-		_intel_psr_post_plane_update(state, crtc_state);
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i)
+		_intel_psr_post_plane_update(state, old_crtc_state,
+					     new_crtc_state);
 }
 
 static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 50a9a6adbe32..afb751c024ba 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2273,9 +2273,12 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 		return level;
 
 	/*
-	 * FIXME PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
+	 * PSR needs to toggle LATENCY_REPORTING_REMOVED_PIPE_*
 	 * based on whether we're limited by the vblank duration.
-	 *
+	 */
+	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
+
+	/*
 	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
 	 * now) perhaps?
 	 */
-- 
2.34.1

