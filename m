Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6147D8D237C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:49:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C8C112606;
	Tue, 28 May 2024 18:49:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LwSlkC82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E71112606
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:49:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922191; x=1748458191;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eW6bQ5InU68O+U0Gux2CoY0mo/5VV2eG+T/qO3U/SPM=;
 b=LwSlkC82bBZ242QZy4VLvUHRWvDRCC/802gk07ymrVtkPFhnfbjwntDw
 Vl2xD/xi6ZUsLLxJ7pVQmTOYp12R2tIHxu1zVjpUKCYUH6D+858uKPuAv
 7QeRpbr+HvaEHEGOMq5HmQ2DRdVHDrWEqBbD6fnxvCG8hUNhcR/GqiJrw
 Usfqz/yUx+Pi4Rz4H8oBO73Cu3A2aSZE8VhiHsnM+JdW7FrOFdIZPfrtG
 Tn612blatZiaBx+QfA1/ZJoTDNwuBWJPYYZF5crCmmoW6jbN6CkHtlvN4
 NQ/8KPfQdIRqp3ubqlTMMEApXZ3MlO3dX5+YKZKri+zqpGyxyGSqdGmpR w==;
X-CSE-ConnectionGUID: mmA2wBz5TgaYAm12laH6og==
X-CSE-MsgGUID: rYlPdsjYQx6B24SDOEtx5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35812411"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35812411"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:49:50 -0700
X-CSE-ConnectionGUID: 8xg3dSoLQEOWA+7+nkQx1A==
X-CSE-MsgGUID: nJ1J7J/yRQ2VTNRc0YDrrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35141357"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:49:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:49:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/cdclk: Plumb the full atomic state deeper
Date: Tue, 28 May 2024 21:49:43 +0300
Message-ID: <20240528184945.24083-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Various parts of the cdclk code need access the full atomic
state. Currently it's being dug out via the cdclk_state->base.state
pointer, which is not great as that pointer isn't always valid.
Instead plumb the full atomic state from the top so that it's
clear that it is in fact valid.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 60 +++++++++++++---------
 1 file changed, 35 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b78154c82a71..7ef8dcb1601a 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -113,7 +113,7 @@ struct intel_cdclk_funcs {
 	void (*set_cdclk)(struct drm_i915_private *i915,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe);
-	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
+	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 };
 
@@ -130,10 +130,11 @@ static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
 	dev_priv->display.funcs.cdclk->set_cdclk(dev_priv, cdclk_config, pipe);
 }
 
-static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_priv,
-					  struct intel_cdclk_state *cdclk_config)
+static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(cdclk_config);
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+
+	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(state);
 }
 
 static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
@@ -2834,10 +2835,11 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	return min_cdclk;
 }
 
-static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
+static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	const struct intel_bw_state *bw_state;
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
@@ -2916,10 +2918,11 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
  * future platforms this code will need to be
  * adjusted.
  */
-static int bxt_compute_min_voltage_level(struct intel_cdclk_state *cdclk_state)
+static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	u8 min_voltage_level;
@@ -2952,13 +2955,14 @@ static int bxt_compute_min_voltage_level(struct intel_cdclk_state *cdclk_state)
 	return min_voltage_level;
 }
 
-static int vlv_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
+static int vlv_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, cdclk;
 
-	min_cdclk = intel_compute_min_cdclk(cdclk_state);
+	min_cdclk = intel_compute_min_cdclk(state);
 	if (min_cdclk < 0)
 		return min_cdclk;
 
@@ -2981,11 +2985,13 @@ static int vlv_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	return 0;
 }
 
-static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
+static int bdw_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, cdclk;
 
-	min_cdclk = intel_compute_min_cdclk(cdclk_state);
+	min_cdclk = intel_compute_min_cdclk(state);
 	if (min_cdclk < 0)
 		return min_cdclk;
 
@@ -3008,10 +3014,11 @@ static int bdw_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	return 0;
 }
 
-static int skl_dpll0_vco(struct intel_cdclk_state *cdclk_state)
+static int skl_dpll0_vco(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state *crtc_state;
 	int vco, i;
@@ -3045,15 +3052,17 @@ static int skl_dpll0_vco(struct intel_cdclk_state *cdclk_state)
 	return vco;
 }
 
-static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
+static int skl_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, cdclk, vco;
 
-	min_cdclk = intel_compute_min_cdclk(cdclk_state);
+	min_cdclk = intel_compute_min_cdclk(state);
 	if (min_cdclk < 0)
 		return min_cdclk;
 
-	vco = skl_dpll0_vco(cdclk_state);
+	vco = skl_dpll0_vco(state);
 
 	cdclk = skl_calc_cdclk(min_cdclk, vco);
 
@@ -3076,17 +3085,18 @@ static int skl_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	return 0;
 }
 
-static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
+static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	struct intel_atomic_state *state = cdclk_state->base.state;
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_cdclk_state *cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, min_voltage_level, cdclk, vco;
 
-	min_cdclk = intel_compute_min_cdclk(cdclk_state);
+	min_cdclk = intel_compute_min_cdclk(state);
 	if (min_cdclk < 0)
 		return min_cdclk;
 
-	min_voltage_level = bxt_compute_min_voltage_level(cdclk_state);
+	min_voltage_level = bxt_compute_min_voltage_level(state);
 	if (min_voltage_level < 0)
 		return min_voltage_level;
 
@@ -3114,7 +3124,7 @@ static int bxt_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	return 0;
 }
 
-static int fixed_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
+static int fixed_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	int min_cdclk;
 
@@ -3123,7 +3133,7 @@ static int fixed_modeset_calc_cdclk(struct intel_cdclk_state *cdclk_state)
 	 * check that the required minimum frequency doesn't exceed
 	 * the actual cdclk frequency.
 	 */
-	min_cdclk = intel_compute_min_cdclk(cdclk_state);
+	min_cdclk = intel_compute_min_cdclk(state);
 	if (min_cdclk < 0)
 		return min_cdclk;
 
@@ -3263,7 +3273,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	new_cdclk_state->active_pipes =
 		intel_calc_active_pipes(state, old_cdclk_state->active_pipes);
 
-	ret = intel_cdclk_modeset_calc_cdclk(dev_priv, new_cdclk_state);
+	ret = intel_cdclk_modeset_calc_cdclk(state);
 	if (ret)
 		return ret;
 
-- 
2.44.1

