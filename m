Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FB0A45B16
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 11:01:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4AA10E8B6;
	Wed, 26 Feb 2025 10:01:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdIXRRBo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE3E810E8B6;
 Wed, 26 Feb 2025 10:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740564095; x=1772100095;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MFc+p01FjVlUrS579w3/ieQpqZv63eFooo546ALogvA=;
 b=PdIXRRBoKIeQ/wWgxF3AoKjeu5kk5JsmRPmCCD7yKGqrTPV+eDf6EKom
 AkZU3OVTwYq+JDdrT4Fc7HAPAgT+XqJLdqo+15Sl0qd4okI4ufH3nu/ce
 1yswEwnG4lrVvHPLG/EVkgO7Ks7H/3XGna+fkBS8rHCdVrUd6Md1k1UQq
 3i5wZ5T2ma7UkD1uzTRhN+SODWgVuCVcBxT69CpYKdfXrYDDv3AJh3tKL
 1nhvm14halX7xVS/Cm0fXMA0z2gps138kMbJFLEpaUe/R0fDKHuIZ+33N
 NoAb7P3yXQX5C6PgxImAKVXMSEb1ypDlFlzICxf7+6WWAjHfJCXsxe5y9 g==;
X-CSE-ConnectionGUID: aqqwLPv4Rh2G/5OEfSw0qw==
X-CSE-MsgGUID: VxhkWCEJRZCHF2Kf7hpGZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="58938416"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="58938416"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:35 -0800
X-CSE-ConnectionGUID: KkzlxF/ERd2ian0C+d5STQ==
X-CSE-MsgGUID: wiEX0xaQR3aTryvQbGjjlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="117577986"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 02:01:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/5] drm/i915/pfit: move ilk and i9xx pfit code to
 intel_pfit.[ch]
Date: Wed, 26 Feb 2025 12:01:08 +0200
Message-Id: <d1f18b2c0d0ae07a3f38fc859b10a9de2b9c5c24.1740564009.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740564009.git.jani.nikula@intel.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Group panel fitter code in one place. Rename *_get_pfit_config() to
*_pfit_get_config() while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c     |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c     |   1 +
 drivers/gpu/drm/i915/display/intel_display.c | 165 +------------------
 drivers/gpu/drm/i915/display/intel_display.h |   2 -
 drivers/gpu/drm/i915/display/intel_dp_mst.c  |   1 +
 drivers/gpu/drm/i915/display/intel_pfit.c    | 160 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pfit.h    |   6 +
 7 files changed, 173 insertions(+), 163 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 321580b095e7..76ffb3f8467c 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -54,6 +54,7 @@
 #include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
+#include "intel_pfit.h"
 
 /* Here's the desired hotplug mode */
 #define ADPA_HOTPLUG_BITS (ADPA_CRT_HOTPLUG_ENABLE |			\
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 8c8b53414da6..de6295b6416b 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -70,6 +70,7 @@
 #include "intel_lspcon.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_modeset_lock.h"
+#include "intel_pfit.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
 #include "intel_quirks.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 065fdf6dbb88..792ed952cd85 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -104,6 +104,7 @@
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
+#include "intel_pfit.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
@@ -819,36 +820,6 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	return encoder;
 }
 
-static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
-	enum pipe pipe = crtc->pipe;
-	int width = drm_rect_width(dst);
-	int height = drm_rect_height(dst);
-	int x = dst->x1;
-	int y = dst->y1;
-
-	if (!crtc_state->pch_pfit.enabled)
-		return;
-
-	/* Force use of hard-coded filter coefficients
-	 * as some pre-programmed values are broken,
-	 * e.g. x201.
-	 */
-	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
-		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
-				  PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
-	else
-		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
-				  PF_FILTER_MED_3x3);
-	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
-			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
-	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
-			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
-}
-
 static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
 {
 	if (crtc->overlay)
@@ -1773,22 +1744,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
 	}
 }
 
-void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-
-	/* To avoid upsetting the power well on haswell only disable the pfit if
-	 * it's in use. The hw state code will make sure we get this right. */
-	if (!old_crtc_state->pch_pfit.enabled)
-		return;
-
-	intel_de_write_fw(dev_priv, PF_CTL(pipe), 0);
-	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), 0);
-	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), 0);
-}
-
 static void ilk_crtc_disable(struct intel_atomic_state *state,
 			     struct intel_crtc *crtc)
 {
@@ -1856,32 +1811,6 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
 		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
 }
 
-static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-
-	if (!crtc_state->gmch_pfit.control)
-		return;
-
-	/*
-	 * The panel fitter should only be adjusted whilst the pipe is disabled,
-	 * according to register description and PRM.
-	 */
-	drm_WARN_ON(display->drm,
-		    intel_de_read(display, PFIT_CONTROL(display)) & PFIT_ENABLE);
-	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
-
-	intel_de_write(display, PFIT_PGM_RATIOS(display),
-		       crtc_state->gmch_pfit.pgm_ratios);
-	intel_de_write(display, PFIT_CONTROL(display),
-		       crtc_state->gmch_pfit.control);
-
-	/* Border color in case we don't scale up to the full screen. Black by
-	 * default, change to something else for debugging. */
-	intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
-}
-
 /* Prefer intel_encoder_is_combo() */
 bool intel_phy_is_combo(struct intel_display *display, enum phy phy)
 {
@@ -2190,20 +2119,6 @@ static void i9xx_crtc_enable(struct intel_atomic_state *state,
 		intel_crtc_wait_for_next_vblank(crtc);
 }
 
-static void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
-{
-	struct intel_display *display = to_intel_display(old_crtc_state);
-
-	if (!old_crtc_state->gmch_pfit.control)
-		return;
-
-	assert_transcoder_disabled(display, old_crtc_state->cpu_transcoder);
-
-	drm_dbg_kms(display->drm, "disabling pfit, current: 0x%08x\n",
-		    intel_de_read(display, PFIT_CONTROL(display)));
-	intel_de_write(display, PFIT_CONTROL(display), 0);
-}
-
 static void i9xx_crtc_disable(struct intel_atomic_state *state,
 			      struct intel_crtc *crtc)
 {
@@ -3040,43 +2955,6 @@ void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
 	intel_de_posting_read(dev_priv, TRANSCONF(dev_priv, cpu_transcoder));
 }
 
-static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
-{
-	if (IS_I830(dev_priv))
-		return false;
-
-	return DISPLAY_VER(dev_priv) >= 4 ||
-		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
-}
-
-static void i9xx_get_pfit_config(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe;
-	u32 tmp;
-
-	if (!i9xx_has_pfit(dev_priv))
-		return;
-
-	tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
-	if (!(tmp & PFIT_ENABLE))
-		return;
-
-	/* Check whether the pfit is attached to our pipe. */
-	if (DISPLAY_VER(dev_priv) >= 4)
-		pipe = REG_FIELD_GET(PFIT_PIPE_MASK, tmp);
-	else
-		pipe = PIPE_B;
-
-	if (pipe != crtc->pipe)
-		return;
-
-	crtc_state->gmch_pfit.control = tmp;
-	crtc_state->gmch_pfit.pgm_ratios =
-		intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
-}
-
 static enum intel_output_format
 bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 {
@@ -3168,7 +3046,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
 
-	i9xx_get_pfit_config(pipe_config);
+	i9xx_pfit_get_config(pipe_config);
 
 	i9xx_dpll_get_hw_state(crtc, &pipe_config->dpll_hw_state);
 
@@ -3451,41 +3329,6 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
 		      PIPE_LINK_N2(dev_priv, transcoder));
 }
 
-static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	u32 ctl, pos, size;
-	enum pipe pipe;
-
-	ctl = intel_de_read(dev_priv, PF_CTL(crtc->pipe));
-	if ((ctl & PF_ENABLE) == 0)
-		return;
-
-	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
-		pipe = REG_FIELD_GET(PF_PIPE_SEL_MASK_IVB, ctl);
-	else
-		pipe = crtc->pipe;
-
-	crtc_state->pch_pfit.enabled = true;
-
-	pos = intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
-	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
-
-	drm_rect_init(&crtc_state->pch_pfit.dst,
-		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
-		      REG_FIELD_GET(PF_WIN_YPOS_MASK, pos),
-		      REG_FIELD_GET(PF_WIN_XSIZE_MASK, size),
-		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
-
-	/*
-	 * We currently do not free assignments of panel fitters on
-	 * ivb/hsw (since we don't use the higher upscaling modes which
-	 * differentiates them) so just WARN about this case for now.
-	 */
-	drm_WARN_ON(&dev_priv->drm, pipe != crtc->pipe);
-}
-
 static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
@@ -3558,7 +3401,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	intel_get_transcoder_timings(crtc, pipe_config);
 	intel_get_pipe_src_size(crtc, pipe_config);
 
-	ilk_get_pfit_config(pipe_config);
+	ilk_pfit_get_config(pipe_config);
 
 	ret = true;
 
@@ -4133,7 +3976,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_scaler_get_config(pipe_config);
 		else
-			ilk_get_pfit_config(pipe_config);
+			ilk_pfit_get_config(pipe_config);
 	}
 
 	hsw_ips_get_config(pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e58daefc978e..7d36589a3d58 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -510,8 +510,6 @@ enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
 void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 				  struct intel_crtc_state *crtc_state);
-void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
-
 int bdw_get_pipe_misc_bpp(struct intel_crtc *crtc);
 unsigned int intel_plane_fence_y_offset(const struct intel_plane_state *plane_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 167e4a70ab12..e0070f41446e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -49,6 +49,7 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_link_bw.h"
+#include "intel_pfit.h"
 #include "intel_psr.h"
 #include "intel_vdsc.h"
 #include "skl_scaler.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
index 386ab57b9f8d..0a7609020c17 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.c
+++ b/drivers/gpu/drm/i915/display/intel_pfit.c
@@ -3,8 +3,10 @@
  * Copyright © 2024 Intel Corporation
  */
 
+#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i915_utils.h"
+#include "intel_de.h"
 #include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
@@ -552,3 +554,161 @@ int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 	else
 		return pch_panel_fitting(crtc_state, conn_state);
 }
+
+void ilk_pfit_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct drm_rect *dst = &crtc_state->pch_pfit.dst;
+	enum pipe pipe = crtc->pipe;
+	int width = drm_rect_width(dst);
+	int height = drm_rect_height(dst);
+	int x = dst->x1;
+	int y = dst->y1;
+
+	if (!crtc_state->pch_pfit.enabled)
+		return;
+
+	/* Force use of hard-coded filter coefficients
+	 * as some pre-programmed values are broken,
+	 * e.g. x201.
+	 */
+	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
+		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
+				  PF_FILTER_MED_3x3 | PF_PIPE_SEL_IVB(pipe));
+	else
+		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
+				  PF_FILTER_MED_3x3);
+	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
+			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
+	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
+			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
+}
+
+void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+
+	/* To avoid upsetting the power well on haswell only disable the pfit if
+	 * it's in use. The hw state code will make sure we get this right. */
+	if (!old_crtc_state->pch_pfit.enabled)
+		return;
+
+	intel_de_write_fw(dev_priv, PF_CTL(pipe), 0);
+	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), 0);
+	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), 0);
+}
+
+void ilk_pfit_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 ctl, pos, size;
+	enum pipe pipe;
+
+	ctl = intel_de_read(dev_priv, PF_CTL(crtc->pipe));
+	if ((ctl & PF_ENABLE) == 0)
+		return;
+
+	if (IS_IVYBRIDGE(dev_priv) || IS_HASWELL(dev_priv))
+		pipe = REG_FIELD_GET(PF_PIPE_SEL_MASK_IVB, ctl);
+	else
+		pipe = crtc->pipe;
+
+	crtc_state->pch_pfit.enabled = true;
+
+	pos = intel_de_read(dev_priv, PF_WIN_POS(crtc->pipe));
+	size = intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
+
+	drm_rect_init(&crtc_state->pch_pfit.dst,
+		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
+		      REG_FIELD_GET(PF_WIN_YPOS_MASK, pos),
+		      REG_FIELD_GET(PF_WIN_XSIZE_MASK, size),
+		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
+
+	/*
+	 * We currently do not free assignments of panel fitters on
+	 * ivb/hsw (since we don't use the higher upscaling modes which
+	 * differentiates them) so just WARN about this case for now.
+	 */
+	drm_WARN_ON(&dev_priv->drm, pipe != crtc->pipe);
+}
+
+void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!crtc_state->gmch_pfit.control)
+		return;
+
+	/*
+	 * The panel fitter should only be adjusted whilst the pipe is disabled,
+	 * according to register description and PRM.
+	 */
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, PFIT_CONTROL(display)) & PFIT_ENABLE);
+	assert_transcoder_disabled(display, crtc_state->cpu_transcoder);
+
+	intel_de_write(display, PFIT_PGM_RATIOS(display),
+		       crtc_state->gmch_pfit.pgm_ratios);
+	intel_de_write(display, PFIT_CONTROL(display),
+		       crtc_state->gmch_pfit.control);
+
+	/* Border color in case we don't scale up to the full screen. Black by
+	 * default, change to something else for debugging. */
+	intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
+}
+
+void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state)
+{
+	struct intel_display *display = to_intel_display(old_crtc_state);
+
+	if (!old_crtc_state->gmch_pfit.control)
+		return;
+
+	assert_transcoder_disabled(display, old_crtc_state->cpu_transcoder);
+
+	drm_dbg_kms(display->drm, "disabling pfit, current: 0x%08x\n",
+		    intel_de_read(display, PFIT_CONTROL(display)));
+	intel_de_write(display, PFIT_CONTROL(display), 0);
+}
+
+static bool i9xx_has_pfit(struct drm_i915_private *dev_priv)
+{
+	if (IS_I830(dev_priv))
+		return false;
+
+	return DISPLAY_VER(dev_priv) >= 4 ||
+		IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
+}
+
+void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe;
+	u32 tmp;
+
+	if (!i9xx_has_pfit(dev_priv))
+		return;
+
+	tmp = intel_de_read(dev_priv, PFIT_CONTROL(dev_priv));
+	if (!(tmp & PFIT_ENABLE))
+		return;
+
+	/* Check whether the pfit is attached to our pipe. */
+	if (DISPLAY_VER(dev_priv) >= 4)
+		pipe = REG_FIELD_GET(PFIT_PIPE_MASK, tmp);
+	else
+		pipe = PIPE_B;
+
+	if (pipe != crtc->pipe)
+		return;
+
+	crtc_state->gmch_pfit.control = tmp;
+	crtc_state->gmch_pfit.pgm_ratios =
+		intel_de_read(dev_priv, PFIT_PGM_RATIOS(dev_priv));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
index e7acaa61e1ac..ef34f9b49d09 100644
--- a/drivers/gpu/drm/i915/display/intel_pfit.h
+++ b/drivers/gpu/drm/i915/display/intel_pfit.h
@@ -11,5 +11,11 @@ struct intel_crtc_state;
 
 int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
 			      const struct drm_connector_state *conn_state);
+void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
+void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
+void ilk_pfit_get_config(struct intel_crtc_state *crtc_state);
+void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state);
+void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state);
+void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state);
 
 #endif /* __INTEL_PFIT_H__ */
-- 
2.39.5

