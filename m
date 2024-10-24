Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124139AE4E0
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:34:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFC010E923;
	Thu, 24 Oct 2024 12:34:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5cJiNQc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A7C10E91B;
 Thu, 24 Oct 2024 12:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773289; x=1761309289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xH/0CO2Kj/cyNxDbIFkZsyHmHYkwVJcRl+LJTS/Jj6A=;
 b=X5cJiNQcdlaLIvu/fCHiMaYaJKSkY34QrdK4CL7t4FwC8DqfIvzNSJE5
 OZx911UNLmUFr+A3PKIXSEYLkGipHtRQX0ofrcJs2Oi57VKYO/i4rXp17
 vsJ76WtgawqHPsuSizXW+eIAdbXGGCdDh67cihN3SzgCzHvLiDzk84HLY
 3CxA2gB5yKNRUorzW31ppLvdzZgxu0I+YfC4r9wX+Uphha+uNWuMB6MPz
 4Jvz5G/c83rmHhz9/UJcI7BkyIPYsMWUqMcMNus1nRoNhY9m9eM1NJBof
 idlLZY8nVILBWxcekSoMVc9/2pg4/hBf5xxpifS/gDvx24/csJLLgyKDR A==;
X-CSE-ConnectionGUID: HVTLCVzWRUyBtznQXe4mXw==
X-CSE-MsgGUID: YRwzYN1nQ8e2WjbZrNLcxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51942960"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51942960"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:48 -0700
X-CSE-ConnectionGUID: ZJAoz2MgQ4uOTcr2b40Htw==
X-CSE-MsgGUID: 3X5/QC3lQuGG56dYGBBxPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="81001084"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:34:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 12/16] drm/i915/pps: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Date: Thu, 24 Oct 2024 15:33:38 +0300
Message-Id: <fb6e58e6cddd28b9ea5e5ceda9df0fa534b237de.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729773149.git.jani.nikula@intel.com>
References: <cover.1729773149.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Switch to using the new display->platform.<platform> members for
platform identification in display code.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 47 ++++++++++--------------
 1 file changed, 20 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ffeee9daa568..4bb7461e4616 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -29,10 +29,9 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 static const char *pps_name(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_pps *pps = &intel_dp->pps;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		switch (pps->vlv_pps_pipe) {
 		case INVALID_PIPE:
 			/*
@@ -122,7 +121,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	DP |= DP_PORT_WIDTH(1);
 	DP |= DP_LINK_TRAIN_PAT_1;
 
-	if (IS_CHERRYVIEW(dev_priv))
+	if (display->platform.cherryview)
 		DP |= DP_PIPE_SEL_CHV(pipe);
 	else
 		DP |= DP_PIPE_SEL(pipe);
@@ -134,7 +133,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	 * So enable temporarily it if it's not already enabled.
 	 */
 	if (!pll_enabled) {
-		release_cl_override = IS_CHERRYVIEW(dev_priv) &&
+		release_cl_override = display->platform.cherryview &&
 			!chv_phy_powergate_ch(dev_priv, phy, ch, true);
 
 		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
@@ -356,10 +355,10 @@ static int intel_num_pps(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		return 2;
 
-	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (display->platform.geminilake || display->platform.broxton)
 		return 2;
 
 	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
@@ -406,11 +405,10 @@ pps_initial_setup(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	lockdep_assert_held(&display->pps.mutex);
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		vlv_initial_power_sequencer_setup(intel_dp);
 		return true;
 	}
@@ -509,9 +507,9 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 
 	memset(regs, 0, sizeof(*regs));
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (display->platform.valleyview || display->platform.cherryview)
 		pps_idx = vlv_power_sequencer_pipe(intel_dp);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		pps_idx = bxt_power_sequencer_idx(intel_dp);
 	else
 		pps_idx = intel_dp->pps.pps_idx;
@@ -522,7 +520,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
 	regs->pp_off = PP_OFF_DELAYS(display, pps_idx);
 
 	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
-	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
+	if (display->platform.geminilake || display->platform.broxton ||
 	    INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
 		regs->pp_div = INVALID_MMIO_REG;
 	else
@@ -552,11 +550,10 @@ _pp_stat_reg(struct intel_dp *intel_dp)
 static bool edp_have_panel_power(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	lockdep_assert_held(&display->pps.mutex);
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
 		return false;
 
@@ -566,11 +563,10 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
 static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	lockdep_assert_held(&display->pps.mutex);
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
 		return false;
 
@@ -953,7 +949,6 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
 
@@ -978,7 +973,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 	pp = ilk_get_pp_control(intel_dp);
-	if (IS_IRONLAKE(dev_priv)) {
+	if (display->platform.ironlake) {
 		/* ILK workaround: disable reset around power sequence */
 		pp &= ~PANEL_POWER_RESET;
 		intel_de_write(display, pp_ctrl_reg, pp);
@@ -994,7 +989,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 			     0, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
 
 	pp |= PANEL_POWER_ON;
-	if (!IS_IRONLAKE(dev_priv))
+	if (!display->platform.ironlake)
 		pp |= PANEL_POWER_RESET;
 
 	intel_de_write(display, pp_ctrl_reg, pp);
@@ -1007,7 +1002,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
 			     PCH_DPLSUNIT_CLOCK_GATE_DISABLE, 0);
 
-	if (IS_IRONLAKE(dev_priv)) {
+	if (display->platform.ironlake) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(display, pp_ctrl_reg, pp);
 		intel_de_posting_read(display, pp_ctrl_reg);
@@ -1627,7 +1622,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 
 	/* Haswell doesn't have any port selection bits for the panel
 	 * power sequencer any more. */
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		port_sel = PANEL_PORT_SELECT_VLV(port);
 	} else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
 		switch (port) {
@@ -1674,7 +1669,6 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	if (!intel_dp_is_edp(intel_dp))
@@ -1685,7 +1679,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
 		 * Reinit the power sequencer also on the resume path, in case
 		 * BIOS did something nasty with it.
 		 */
-		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		if (display->platform.valleyview || display->platform.cherryview)
 			vlv_initial_power_sequencer_setup(intel_dp);
 
 		pps_init_delays(intel_dp);
@@ -1721,11 +1715,10 @@ bool intel_pps_init(struct intel_dp *intel_dp)
 static void pps_init_late(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	struct intel_connector *connector = intel_dp->attached_connector;
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	if (display->platform.valleyview || display->platform.cherryview)
 		return;
 
 	if (intel_num_pps(display) < 2)
@@ -1783,9 +1776,9 @@ void intel_pps_setup(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
+	if (HAS_PCH_SPLIT(i915) || display->platform.geminilake || display->platform.broxton)
 		display->pps.mmio_base = PCH_PPS_BASE;
-	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		display->pps.mmio_base = VLV_PPS_BASE;
 	else
 		display->pps.mmio_base = PPS_BASE;
@@ -1857,7 +1850,7 @@ void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
 			MISSING_CASE(port_sel);
 			break;
 		}
-	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	} else if (display->platform.valleyview || display->platform.cherryview) {
 		/* presumably write lock depends on pipe, not port select */
 		pp_reg = PP_CONTROL(display, pipe);
 		panel_pipe = pipe;
-- 
2.39.5

