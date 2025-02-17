Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001A4A38D5A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B25D10E5E4;
	Mon, 17 Feb 2025 20:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eGc1/7WF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC6F410E5E1;
 Mon, 17 Feb 2025 20:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739824659; x=1771360659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DdHYPVMAEIF422yz1Mr8DdYp8STWKqWjN2pBMzE1+p8=;
 b=eGc1/7WFoQzfR/nJ5SuwEpXOWMVXt+VgQ3joEYqFq9C1JZsn5UOVjwdM
 2g1gPqgAapxYMHTmTrmdAVYc42S35qHeMDJLe8T75gIWIa8aJMhUTTLbQ
 mB0eeqGBhkXXiO1YWYDmj7phRN/c2hZzwd3a1ouyOCkSXisT1q7qyZpRa
 xdtDaziFK3Jjyh1YPQ3WuyzLVxs+dBLjNrQ4WleVMOjt/irIgVN+OXIU+
 HwSrCh+plk4itZfy/GZpPOhvk3PuDIfU61m6nuNeHiWlbamHiBUnWOrkp
 KTheLWewQl3E4bYDpVEpOMlt51EOFy7FWrFEvKdZ7SG3hqNwKua7USmGN A==;
X-CSE-ConnectionGUID: LCnsY1EXQJGYSxzQHEWh+w==
X-CSE-MsgGUID: yOi9oTpkR1Sw2gxtCfTXaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="58043195"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="58043195"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:39 -0800
X-CSE-ConnectionGUID: kzYWzQKnQQu2Ohvf2zA59w==
X-CSE-MsgGUID: EOWFru6SRvubzLuNYMCSqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114853234"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.109.149])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:37:37 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 3/3] drm/i915/display: Convert POWER_DOMAIN_*() to functions
Date: Mon, 17 Feb 2025 17:34:28 -0300
Message-ID: <20250217203722.87152-4-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250217203722.87152-1-gustavo.sousa@intel.com>
References: <20250217203722.87152-1-gustavo.sousa@intel.com>
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

We already have other functions to get power domain for other things
(i.e. intel_display_power_*_domain()). Convert POWER_DOMAIN_*() macros
to the same standard.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---

Note: Maybe this patch could be squashed with the previous one.

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cmtg.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 10 ++---
 drivers/gpu/drm/i915/display/intel_display.c  | 39 ++++++++++++-------
 .../gpu/drm/i915/display/intel_display_irq.c  | 18 +++++----
 .../drm/i915/display/intel_display_power.c    | 21 ++++++++++
 .../drm/i915/display/intel_display_power.h    | 16 ++++----
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  6 +--
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  3 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 13 files changed, 82 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index aef8d8b7ea85..504599a20b8f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -697,7 +697,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	 * but that's only the case for gen2-4 which don't have any
 	 * display power wells.
 	 */
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
index 07d7f4e8f60f..6b8b20e101a4 100644
--- a/drivers/gpu/drm/i915/display/intel_cmtg.c
+++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
@@ -92,7 +92,7 @@ static bool intel_cmtg_transcoder_is_secondary(struct intel_display *display,
 	if (!HAS_TRANSCODER(display, trans))
 		return false;
 
-	power_domain = POWER_DOMAIN_TRANSCODER(trans);
+	power_domain = intel_display_power_transcoder_domain(display, trans);
 
 	with_intel_display_power_if_enabled(display, power_domain, wakeref)
 		val = intel_de_read(display, TRANS_DDI_FUNC_CTL2(display, trans));
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f31efac89e95..85d406335b6f 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -336,7 +336,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(PIPE_A);
+	power_domain = intel_display_power_pipe_domain(display, PIPE_A);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
@@ -746,7 +746,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	 * but that's only the case for gen2-3 which don't have any
 	 * display power wells.
 	 */
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5082f38b0a02..6fbf1583ca99 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -852,11 +852,12 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 	for_each_pipe(dev_priv, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
+		enum intel_display_power_domain power_domain;
 		u32 port_mask, ddi_select, ddi_mode;
 		intel_wakeref_t trans_wakeref;
 
-		trans_wakeref = intel_display_power_get_if_enabled(display,
-								   POWER_DOMAIN_TRANSCODER(cpu_transcoder));
+		power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
+		trans_wakeref = intel_display_power_get_if_enabled(display, power_domain);
 		if (!trans_wakeref)
 			continue;
 
@@ -870,8 +871,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 		tmp = intel_de_read(dev_priv,
 				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
-		intel_display_power_put(display, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
-					trans_wakeref);
+		intel_display_power_put(display, power_domain, trans_wakeref);
 
 		if ((tmp & port_mask) != ddi_select)
 			continue;
@@ -3950,7 +3950,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		enum intel_display_power_domain power_domain;
 		intel_wakeref_t trans_wakeref;
 
-		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
+		power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
 		trans_wakeref = intel_display_power_get_if_enabled(display,
 								   power_domain);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..1b45342bc986 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -429,7 +429,7 @@ void assert_transcoder(struct intel_display *display,
 	if (display->platform.i830)
 		state = true;
 
-	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
+	power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (wakeref) {
 		u32 val = intel_de_read(display,
@@ -2013,6 +2013,7 @@ intel_aux_power_domain(struct intel_digital_port *dig_port)
 static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 				   struct intel_power_domain_mask *mask)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -2024,11 +2025,11 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 	if (!crtc_state->hw.active)
 		return;
 
-	set_bit(POWER_DOMAIN_PIPE(pipe), mask->bits);
-	set_bit(POWER_DOMAIN_TRANSCODER(cpu_transcoder), mask->bits);
+	set_bit(intel_display_power_pipe_domain(display, pipe), mask->bits);
+	set_bit(intel_display_power_transcoder_domain(display, cpu_transcoder), mask->bits);
 	if (crtc_state->pch_pfit.enabled ||
 	    crtc_state->pch_pfit.force_thru)
-		set_bit(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe), mask->bits);
+		set_bit(intel_display_power_pipe_panel_fitter_domain(display, pipe), mask->bits);
 
 	drm_for_each_encoder_mask(encoder, &dev_priv->drm,
 				  crtc_state->uapi.encoder_mask) {
@@ -3113,7 +3114,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	u32 tmp;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
+	power_domain = intel_display_power_pipe_domain(display, crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
@@ -3497,7 +3498,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	u32 tmp;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
+	power_domain = intel_display_power_pipe_domain(display, crtc->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
@@ -3590,7 +3591,7 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 	intel_wakeref_t wakeref;
 	u32 tmp = 0;
 
-	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
+	power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
 
 	with_intel_display_power_if_enabled(display, power_domain, wakeref)
 		tmp = intel_de_read(dev_priv,
@@ -3617,7 +3618,7 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 		enum pipe pipe = crtc->pipe;
 		intel_wakeref_t wakeref;
 
-		power_domain = POWER_DOMAIN_PIPE(pipe);
+		power_domain = intel_display_power_pipe_domain(display, pipe);
 		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
@@ -3884,7 +3885,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		enum pipe trans_pipe;
 		u32 tmp = 0;
 
-		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
+		power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
 		with_intel_display_power_if_enabled(display, power_domain, wakeref)
 			tmp = intel_de_read(dev_priv,
 					    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
@@ -3973,6 +3974,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum intel_display_power_domain power_domain;
 	unsigned long enabled_transcoders;
 	u32 tmp;
 
@@ -3989,8 +3991,9 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	 */
 	pipe_config->cpu_transcoder = ffs(enabled_transcoders) - 1;
 
-	if (!intel_display_power_get_in_set_if_enabled(display, power_domain_set,
-						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))
+	power_domain = intel_display_power_transcoder_domain(display, pipe_config->cpu_transcoder);
+
+	if (!intel_display_power_get_in_set_if_enabled(display, power_domain_set, power_domain))
 		return false;
 
 	if (hsw_panel_transcoders(dev_priv) & BIT(pipe_config->cpu_transcoder)) {
@@ -4013,6 +4016,7 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum intel_display_power_domain power_domain;
 	enum transcoder cpu_transcoder;
 	enum port port;
 	u32 tmp;
@@ -4023,8 +4027,10 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		else
 			cpu_transcoder = TRANSCODER_DSI_C;
 
+		power_domain = intel_display_power_transcoder_domain(display, cpu_transcoder);
+
 		if (!intel_display_power_get_in_set_if_enabled(display, power_domain_set,
-							       POWER_DOMAIN_TRANSCODER(cpu_transcoder)))
+							       power_domain))
 			continue;
 
 		/*
@@ -4073,11 +4079,14 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum intel_display_power_domain power_domain;
 	bool active;
 	u32 tmp;
 
+	power_domain = intel_display_power_pipe_domain(display, crtc->pipe);
+
 	if (!intel_display_power_get_in_set_if_enabled(display, &crtc->hw_readout_power_domains,
-						       POWER_DOMAIN_PIPE(crtc->pipe)))
+						       power_domain))
 		return false;
 
 	pipe_config->shared_dpll = NULL;
@@ -4128,8 +4137,10 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->ips_linetime =
 			REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
 
+	power_domain = intel_display_power_pipe_panel_fitter_domain(display, crtc->pipe);
+
 	if (intel_display_power_get_in_set_if_enabled(display, &crtc->hw_readout_power_domains,
-						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
+						      power_domain)) {
 		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_scaler_get_config(pipe_config);
 		else
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 880eaed83cd5..1fd17aad3a65 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1617,10 +1617,14 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
 	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 
-	for_each_pipe(dev_priv, pipe)
-		if (intel_display_power_is_enabled(display,
-						   POWER_DOMAIN_PIPE(pipe)))
+	for_each_pipe(dev_priv, pipe) {
+		enum intel_display_power_domain power_domain;
+
+		power_domain = intel_display_power_pipe_domain(display, pipe);
+
+		if (intel_display_power_is_enabled(display, power_domain))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
+	}
 
 	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
 	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
@@ -1644,7 +1648,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
 			enum intel_display_power_domain domain;
 
-			domain = POWER_DOMAIN_TRANSCODER(trans);
+			domain = intel_display_power_transcoder_domain(display, trans);
 			if (!intel_display_power_is_enabled(display, domain))
 				continue;
 
@@ -1662,7 +1666,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 
 	for_each_pipe(dev_priv, pipe)
 		if (intel_display_power_is_enabled(display,
-						   POWER_DOMAIN_PIPE(pipe)))
+						   intel_display_power_pipe_domain(display, pipe)))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
 	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
@@ -1887,7 +1891,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		for_each_cpu_transcoder_masked(dev_priv, trans, trans_mask) {
 			enum intel_display_power_domain domain;
 
-			domain = POWER_DOMAIN_TRANSCODER(trans);
+			domain = intel_display_power_transcoder_domain(display, trans);
 			if (!intel_display_power_is_enabled(display, domain))
 				continue;
 
@@ -1902,7 +1906,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 		dev_priv->display.irq.de_irq_mask[pipe] = ~de_pipe_masked;
 
 		if (intel_display_power_is_enabled(display,
-						   POWER_DOMAIN_PIPE(pipe)))
+						   intel_display_power_pipe_domain(display, pipe)))
 			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
 						    dev_priv->display.irq.de_irq_mask[pipe],
 						    de_pipe_enables);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 396930937d98..b206bef3d44c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2476,6 +2476,27 @@ intel_port_domains_for_platform(struct intel_display *display,
 	}
 }
 
+enum intel_display_power_domain
+intel_display_power_pipe_domain(struct intel_display *display, enum pipe pipe)
+{
+	return pipe - PIPE_A + POWER_DOMAIN_PIPE_A;
+}
+
+enum intel_display_power_domain
+intel_display_power_pipe_panel_fitter_domain(struct intel_display *display, enum pipe pipe)
+{
+	return pipe - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A;
+}
+
+enum intel_display_power_domain
+intel_display_power_transcoder_domain(struct intel_display *display, enum transcoder trans)
+{
+	if (trans == TRANSCODER_EDP)
+		return POWER_DOMAIN_TRANSCODER_EDP;
+
+	return trans - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A;
+}
+
 static const struct intel_ddi_port_domains *
 intel_port_domains_for_port(struct intel_display *display, enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 1b53d67f9b60..ee02bc7111c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -12,7 +12,9 @@
 #include "intel_wakeref.h"
 
 enum aux_ch;
+enum pipe;
 enum port;
+enum transcoder;
 struct i915_power_well;
 struct intel_display;
 struct intel_encoder;
@@ -117,14 +119,6 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
-#define POWER_DOMAIN_PIPE(pipe) \
-	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_A))
-#define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
-	((enum intel_display_power_domain)((pipe) - PIPE_A + POWER_DOMAIN_PIPE_PANEL_FITTER_A))
-#define POWER_DOMAIN_TRANSCODER(tran) \
-	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
-	 (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWER_DOMAIN_TRANSCODER_A))
-
 struct intel_power_domain_mask {
 	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
 };
@@ -270,6 +264,12 @@ intel_display_power_put_all_in_set(struct intel_display *display,
 
 void intel_display_power_debug(struct intel_display *display, struct seq_file *m);
 
+enum intel_display_power_domain
+intel_display_power_pipe_domain(struct intel_display *display, enum pipe pipe);
+enum intel_display_power_domain
+intel_display_power_pipe_panel_fitter_domain(struct intel_display *display, enum pipe pipe);
+enum intel_display_power_domain
+intel_display_power_transcoder_domain(struct intel_display *display, enum transcoder trans);
 enum intel_display_power_domain
 intel_display_power_ddi_lanes_domain(struct intel_display *display, enum port port);
 enum intel_display_power_domain
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 10e26c3db946..322d4ca7cf7d 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -598,7 +598,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 		return -EINVAL;
 	}
 
-	power_domain = POWER_DOMAIN_PIPE(pipe);
+	power_domain = intel_display_power_pipe_domain(display, pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref) {
 		drm_dbg_kms(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index ab5bc8a08f0f..09f1b2f959f2 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -457,7 +457,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
@@ -881,7 +881,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
@@ -1216,7 +1216,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 6e7151346382..928fa69f65e9 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -357,6 +357,7 @@ enum intel_display_power_domain
 intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = &i915->display;
 	enum pipe pipe = crtc->pipe;
 
 	/*
@@ -373,7 +374,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
 	if (DISPLAY_VER(i915) == 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 	else if (is_pipe_dsc(crtc, cpu_transcoder))
-		return POWER_DOMAIN_PIPE(pipe);
+		return intel_display_power_pipe_domain(display, pipe);
 	else
 		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 110f66dd5cf0..4fe6fb64292c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -925,7 +925,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
+	power_domain = intel_display_power_pipe_domain(display, plane->pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 10a1daad28eb..58b934907005 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -843,7 +843,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 	intel_wakeref_t wakeref;
 	enum plane_id plane_id;
 
-	power_domain = POWER_DOMAIN_PIPE(pipe);
+	power_domain = intel_display_power_pipe_domain(display, pipe);
 	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return;
-- 
2.48.1

