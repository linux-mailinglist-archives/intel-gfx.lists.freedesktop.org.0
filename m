Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 217C59656B3
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31AE10E7DF;
	Fri, 30 Aug 2024 05:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJrtRYcF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A1010E7E1;
 Fri, 30 Aug 2024 05:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994522; x=1756530522;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=47kQwlcWGRkVzBAGNIrfkizoQf3yzGqRHKXcdVGv1Uw=;
 b=hJrtRYcFyMvOUSpsB+vRHBxpKE3+OrUFC55qeER7whbGRR2otbL8S0UD
 OX8SVMtcl5n4Dul0SxQSLuVMdAvg2nco52oN9islYHDKF+oOd8kTtp0wK
 DoAwQUvQvnHWv2/c5/e9+fwj3A1dxD9VEcreJF8/gHwBWBdGVCG6hFFVP
 iU2uW+gBnc6TDQoxH4lUVTWe2SUTKRxlvXfExxJMfyoEEWXtWVvjCjITf
 1jiQpHqfGbak3FjWB6nqIluMHVblEB1eZ7eyRIKc1QsqR/ym2mB4F6Ve2
 ck9zgu8sMxFuBWtRbEj3gPEKeex6OWFgxdL5c47Emg9t4Fqljezf26Wvs g==;
X-CSE-ConnectionGUID: LevU/rq+SpqJaltQa3c5Rg==
X-CSE-MsgGUID: j1WziWAHRaCLFH/ubSpXPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421688"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421688"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:42 -0700
X-CSE-ConnectionGUID: DbriUxVvS6qmnsv+a/h/rg==
X-CSE-MsgGUID: 9vC3VQSZQN+GaH1T/Fif8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610272"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:40 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 12/19] drm/i915/display: Rename static functions that use
 joiner
Date: Fri, 30 Aug 2024 10:39:42 +0530
Message-ID: <20240830050950.2528450-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

At the moment, many functions that are concerned with joiner have
different prefixes. Rename the static functions, to have a prefix
'intel_joiner'. This will make the movement of these helpers to a
separate file for pipe joiner.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 56 +++++++++++---------
 1 file changed, 30 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7b407ebccd54..ad72691b47b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -249,7 +249,7 @@ is_trans_port_sync_mode(const struct intel_crtc_state *crtc_state)
 		is_trans_port_sync_slave(crtc_state);
 }
 
-static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
+static enum pipe intel_joiner_get_primary_pipe(const struct intel_crtc_state *crtc_state)
 {
 	return ffs(crtc_state->joiner_pipes) - 1;
 }
@@ -257,7 +257,7 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
 {
 	if (crtc_state->joiner_pipes)
-		return crtc_state->joiner_pipes & ~BIT(joiner_primary_pipe(crtc_state));
+		return crtc_state->joiner_pipes & ~BIT(intel_joiner_get_primary_pipe(crtc_state));
 	else
 		return 0;
 }
@@ -267,7 +267,7 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe != joiner_primary_pipe(crtc_state);
+		crtc->pipe != intel_joiner_get_primary_pipe(crtc_state);
 }
 
 bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
@@ -275,10 +275,10 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
 	return crtc_state->joiner_pipes &&
-		crtc->pipe == joiner_primary_pipe(crtc_state);
+		crtc->pipe == intel_joiner_get_primary_pipe(crtc_state);
 }
 
-static int intel_joiner_num_pipes(const struct intel_crtc_state *crtc_state)
+static int intel_joiner_get_num_pipes(const struct intel_crtc_state *crtc_state)
 {
 	return hweight8(crtc_state->joiner_pipes);
 }
@@ -295,7 +295,7 @@ struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
 	if (intel_crtc_is_joiner_secondary(crtc_state))
-		return intel_crtc_for_pipe(i915, joiner_primary_pipe(crtc_state));
+		return intel_crtc_for_pipe(i915, intel_joiner_get_primary_pipe(crtc_state));
 	else
 		return to_intel_crtc(crtc_state->uapi.crtc);
 }
@@ -2344,7 +2344,7 @@ static void intel_crtc_compute_pixel_rate(struct intel_crtc_state *crtc_state)
 static void intel_joiner_adjust_timings(const struct intel_crtc_state *crtc_state,
 					struct drm_display_mode *mode)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
 
 	if (num_pipes < 2)
 		return;
@@ -2408,7 +2408,7 @@ static void intel_crtc_readout_derived_state(struct intel_crtc_state *crtc_state
 	drm_mode_copy(mode, pipe_mode);
 	intel_mode_from_crtc_timings(mode, mode);
 	mode->hdisplay = drm_rect_width(&crtc_state->pipe_src) *
-		(intel_joiner_num_pipes(crtc_state) ?: 1);
+		(intel_joiner_get_num_pipes(crtc_state) ?: 1);
 	mode->vdisplay = drm_rect_height(&crtc_state->pipe_src);
 
 	/* Derive per-pipe timings in case joiner is used */
@@ -2428,7 +2428,7 @@ void intel_encoder_get_config(struct intel_encoder *encoder,
 
 static void intel_joiner_compute_pipe_src(struct intel_crtc_state *crtc_state)
 {
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
 	int width, height;
 
 	if (num_pipes < 2)
@@ -2888,14 +2888,14 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
 static void intel_joiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	int num_pipes = intel_joiner_num_pipes(crtc_state);
+	int num_pipes = intel_joiner_get_num_pipes(crtc_state);
 	enum pipe primary_pipe, pipe = crtc->pipe;
 	int width;
 
 	if (num_pipes < 2)
 		return;
 
-	primary_pipe = joiner_primary_pipe(crtc_state);
+	primary_pipe = intel_joiner_get_primary_pipe(crtc_state);
 	width = drm_rect_width(&crtc_state->pipe_src);
 
 	drm_rect_translate_to(&crtc_state->pipe_src,
@@ -3505,7 +3505,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	return ret;
 }
 
-static u8 joiner_pipes(struct drm_i915_private *i915)
+static u8 intel_joiner_supported_pipes(struct drm_i915_private *i915)
 {
 	u8 pipes;
 
@@ -3535,8 +3535,8 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	return tmp & TRANS_DDI_FUNC_ENABLE;
 }
 
-static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
-				 u8 *primary_pipes, u8 *secondary_pipes)
+static void intel_joiner_enabled_pipes(struct drm_i915_private *dev_priv,
+				       u8 *primary_pipes, u8 *secondary_pipes)
 {
 	struct intel_crtc *crtc;
 
@@ -3544,7 +3544,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 	*secondary_pipes = 0;
 
 	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
-					 joiner_pipes(dev_priv)) {
+					 intel_joiner_supported_pipes(dev_priv)) {
 		intel_dss_get_compressed_joiner_pipes(crtc,
 						      primary_pipes,
 						      secondary_pipes);
@@ -3560,7 +3560,9 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
 		 *primary_pipes, *secondary_pipes);
 }
 
-static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static enum pipe intel_joiner_find_primary_pipe(enum pipe pipe,
+						u8 primary_pipes,
+						u8 secondary_pipes)
 {
 	if ((secondary_pipes & BIT(pipe)) == 0)
 		return pipe;
@@ -3572,11 +3574,13 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
 	return fls(primary_pipes) - 1;
 }
 
-static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
+static u8 intel_joiner_find_secondary_pipes(enum pipe pipe,
+					    u8 primary_pipes,
+					    u8 secondary_pipes)
 {
 	enum pipe primary_pipe, next_primary_pipe;
 
-	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
+	primary_pipe = intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes);
 
 	if ((primary_pipes & BIT(primary_pipe)) == 0)
 		return 0;
@@ -3660,10 +3664,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enabled_transcoders |= BIT(cpu_transcoder);
 
 	/* joiner secondary -> consider the primary pipe's transcoder as well */
-	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
+	intel_joiner_enabled_pipes(dev_priv, &primary_pipes, &secondary_pipes);
 	if (secondary_pipes & BIT(crtc->pipe)) {
 		cpu_transcoder = (enum transcoder)
-			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
+			intel_joiner_find_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
 		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
 			enabled_transcoders |= BIT(cpu_transcoder);
 	}
@@ -3797,14 +3801,14 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
 	u8 primary_pipes, secondary_pipes;
 	enum pipe pipe = crtc->pipe;
 
-	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
+	intel_joiner_enabled_pipes(i915, &primary_pipes, &secondary_pipes);
 
 	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
 		return;
 
 	crtc_state->joiner_pipes =
-		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
-		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
+		BIT(intel_joiner_find_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
+		intel_joiner_find_secondary_pipes(pipe, primary_pipes, secondary_pipes);
 }
 
 static bool hsw_get_pipe_config(struct intel_crtc *crtc,
@@ -5987,15 +5991,15 @@ static int intel_atomic_check_joiner(struct intel_atomic_state *state,
 
 	/* sanity check */
 	if (drm_WARN_ON(&i915->drm,
-			primary_crtc->pipe != joiner_primary_pipe(primary_crtc_state)))
+			primary_crtc->pipe != intel_joiner_get_primary_pipe(primary_crtc_state)))
 		return -EINVAL;
 
-	if (primary_crtc_state->joiner_pipes & ~joiner_pipes(i915)) {
+	if (primary_crtc_state->joiner_pipes & ~intel_joiner_supported_pipes(i915)) {
 		drm_dbg_kms(&i915->drm,
 			    "[CRTC:%d:%s] Cannot act as joiner primary "
 			    "(need 0x%x as pipes, only 0x%x possible)\n",
 			    primary_crtc->base.base.id, primary_crtc->base.name,
-			    primary_crtc_state->joiner_pipes, joiner_pipes(i915));
+			    primary_crtc_state->joiner_pipes, intel_joiner_supported_pipes(i915));
 		return -EINVAL;
 	}
 
-- 
2.45.2

