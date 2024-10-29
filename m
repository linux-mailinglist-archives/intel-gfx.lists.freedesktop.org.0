Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EAFA9B4766
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 11:53:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BD6310E622;
	Tue, 29 Oct 2024 10:53:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tcoesl96";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C06C10E622;
 Tue, 29 Oct 2024 10:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730199184; x=1761735184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8mb6wfGH4T2L2FlwTDEEwUsAWYU84uzJbrGixymRlqc=;
 b=Tcoesl96wvZ0QfsxtcEvRMyw5mjviyi2i78yiNkKwZZXgYqns/liudEi
 ZGinjhJm75LmRrKlwXTYLcuN2zbGUkKC8D611ngYrZy8Dzt7t53Dkfuxo
 mUHtCpGJqLLY4kYNuy7T2ZQelDb62aop29GzY06remoostBdXU3jtEbLZ
 JE9Y3BKIgifep5nyOCK5Z5Af0o5YnlD+eEK3Gqd7cKp1VWQVZ90zcONcC
 rLuCwIa8EDVJ2i3TdaDN/k/ZtDYYPVqpXkexmfWPdbfR62hOhoeSZB49+
 iJO9bklurwyqZH7JVQ/c6Nz7zO1VFQvWLfQcV2vGWjxzJ4QFYKLEaozWh g==;
X-CSE-ConnectionGUID: +5znyv+mTYChWNfUCkaKcw==
X-CSE-MsgGUID: zf7fOpQHSgqFbBcQt8Vj7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="40449664"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="40449664"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:53:03 -0700
X-CSE-ConnectionGUID: oVXcv+ZXTA6crl/pW//MrA==
X-CSE-MsgGUID: f54J2OUmQG2p9dPG1SDeLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81832059"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 03:53:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/i915/crt: convert to struct intel_display
Date: Tue, 29 Oct 2024 12:52:57 +0200
Message-Id: <20241029105257.391572-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <c9a3af0788700d5b67813ef7075c2998f2655329.1730146000.git.jani.nikula@intel.com>
References: <c9a3af0788700d5b67813ef7075c2998f2655329.1730146000.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch CRT code over to it.

v2: Rebase

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      | 209 +++++++++---------
 drivers/gpu/drm/i915/display/intel_crt.h      |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  12 +-
 .../gpu/drm/i915/display/intel_pch_display.c  |   2 +-
 4 files changed, 122 insertions(+), 111 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8222b1c251db..74c1983fe07e 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -81,12 +81,13 @@ static struct intel_crt *intel_attached_crt(struct intel_connector *connector)
 	return intel_encoder_to_crt(intel_attached_encoder(connector));
 }
 
-bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_crt_port_enabled(struct intel_display *display,
 			    i915_reg_t adpa_reg, enum pipe *pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
-	val = intel_de_read(dev_priv, adpa_reg);
+	val = intel_de_read(display, adpa_reg);
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
@@ -100,6 +101,7 @@ bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
 static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 	intel_wakeref_t wakeref;
@@ -110,7 +112,7 @@ static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
 	if (!wakeref)
 		return false;
 
-	ret = intel_crt_port_enabled(dev_priv, crt->adpa_reg, pipe);
+	ret = intel_crt_port_enabled(display, crt->adpa_reg, pipe);
 
 	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
 
@@ -119,11 +121,11 @@ static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
 
 static unsigned int intel_crt_get_flags(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 	u32 tmp, flags = 0;
 
-	tmp = intel_de_read(dev_priv, crt->adpa_reg);
+	tmp = intel_de_read(display, crt->adpa_reg);
 
 	if (tmp & ADPA_HSYNC_ACTIVE_HIGH)
 		flags |= DRM_MODE_FLAG_PHSYNC;
@@ -168,13 +170,14 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 			       const struct intel_crtc_state *crtc_state,
 			       int mode)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	u32 adpa;
 
-	if (DISPLAY_VER(dev_priv) >= 5)
+	if (DISPLAY_VER(display) >= 5)
 		adpa = ADPA_HOTPLUG_BITS;
 	else
 		adpa = 0;
@@ -193,7 +196,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 		adpa |= ADPA_PIPE_SEL(crtc->pipe);
 
 	if (!HAS_PCH_SPLIT(dev_priv))
-		intel_de_write(dev_priv, BCLRPAT(dev_priv, crtc->pipe), 0);
+		intel_de_write(display, BCLRPAT(display, crtc->pipe), 0);
 
 	switch (mode) {
 	case DRM_MODE_DPMS_ON:
@@ -210,7 +213,7 @@ static void intel_crt_set_dpms(struct intel_encoder *encoder,
 		break;
 	}
 
-	intel_de_write(dev_priv, crt->adpa_reg, adpa);
+	intel_de_write(display, crt->adpa_reg, adpa);
 }
 
 static void intel_disable_crt(struct intel_atomic_state *state,
@@ -241,9 +244,10 @@ static void hsw_disable_crt(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *old_crtc_state,
 			    const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	drm_WARN_ON(&dev_priv->drm, !old_crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
 
 	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
 }
@@ -253,6 +257,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
@@ -272,7 +277,7 @@ static void hsw_post_disable_crt(struct intel_atomic_state *state,
 
 	hsw_fdi_disable(encoder);
 
-	drm_WARN_ON(&dev_priv->drm, !old_crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, !old_crtc_state->has_pch_encoder);
 
 	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, true);
 }
@@ -282,9 +287,10 @@ static void hsw_pre_pll_enable_crt(struct intel_atomic_state *state,
 				   const struct intel_crtc_state *crtc_state,
 				   const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
-	drm_WARN_ON(&dev_priv->drm, !crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
 
 	intel_set_pch_fifo_underrun_reporting(dev_priv, PIPE_A, false);
 }
@@ -294,11 +300,12 @@ static void hsw_pre_enable_crt(struct intel_atomic_state *state,
 			       const struct intel_crtc_state *crtc_state,
 			       const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
-	drm_WARN_ON(&dev_priv->drm, !crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
 
 	intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, false);
 
@@ -312,11 +319,12 @@ static void hsw_enable_crt(struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum pipe pipe = crtc->pipe;
 
-	drm_WARN_ON(&dev_priv->drm, !crtc_state->has_pch_encoder);
+	drm_WARN_ON(display->drm, !crtc_state->has_pch_encoder);
 
 	intel_ddi_enable_transcoder_func(encoder, crtc_state);
 
@@ -346,9 +354,10 @@ static enum drm_mode_status
 intel_crt_mode_valid(struct drm_connector *connector,
 		     struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	int max_dotclk = dev_priv->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 	int max_clock;
 
@@ -367,7 +376,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 		 * DAC limit supposedly 355 MHz.
 		 */
 		max_clock = 270000;
-	else if (IS_DISPLAY_VER(dev_priv, 3, 4))
+	else if (IS_DISPLAY_VER(display, 3, 4))
 		max_clock = 400000;
 	else
 		max_clock = 350000;
@@ -428,6 +437,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 				  struct intel_crtc_state *pipe_config,
 				  struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
@@ -450,7 +460,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_LPT(dev_priv)) {
 		/* TODO: Check crtc_state->max_link_bpp_x16 instead of bw_constrained */
 		if (pipe_config->bw_constrained && pipe_config->pipe_bpp < 24) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "LPT only supports 24bpp\n");
 			return -EINVAL;
 		}
@@ -470,6 +480,7 @@ static int hsw_crt_compute_config(struct intel_encoder *encoder,
 
 static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_device *dev = connector->dev;
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -483,36 +494,36 @@ static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 
 		crt->force_hotplug_required = false;
 
-		save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);
-		drm_dbg_kms(&dev_priv->drm,
+		save_adpa = adpa = intel_de_read(display, crt->adpa_reg);
+		drm_dbg_kms(display->drm,
 			    "trigger hotplug detect cycle: adpa=0x%x\n", adpa);
 
 		adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;
 		if (turn_off_dac)
 			adpa &= ~ADPA_DAC_ENABLE;
 
-		intel_de_write(dev_priv, crt->adpa_reg, adpa);
+		intel_de_write(display, crt->adpa_reg, adpa);
 
-		if (intel_de_wait_for_clear(dev_priv,
+		if (intel_de_wait_for_clear(display,
 					    crt->adpa_reg,
 					    ADPA_CRT_HOTPLUG_FORCE_TRIGGER,
 					    1000))
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "timed out waiting for FORCE_TRIGGER");
 
 		if (turn_off_dac) {
-			intel_de_write(dev_priv, crt->adpa_reg, save_adpa);
-			intel_de_posting_read(dev_priv, crt->adpa_reg);
+			intel_de_write(display, crt->adpa_reg, save_adpa);
+			intel_de_posting_read(display, crt->adpa_reg);
 		}
 	}
 
 	/* Check the status to see if both blue and green are on now */
-	adpa = intel_de_read(dev_priv, crt->adpa_reg);
+	adpa = intel_de_read(display, crt->adpa_reg);
 	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
 		ret = true;
 	else
 		ret = false;
-	drm_dbg_kms(&dev_priv->drm, "ironlake hotplug adpa=0x%x, result %d\n",
+	drm_dbg_kms(display->drm, "ironlake hotplug adpa=0x%x, result %d\n",
 		    adpa, ret);
 
 	return ret;
@@ -520,6 +531,7 @@ static bool ilk_crt_detect_hotplug(struct drm_connector *connector)
 
 static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_device *dev = connector->dev;
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(dev);
@@ -542,29 +554,29 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 	 */
 	reenable_hpd = intel_hpd_disable(dev_priv, crt->base.hpd_pin);
 
-	save_adpa = adpa = intel_de_read(dev_priv, crt->adpa_reg);
-	drm_dbg_kms(&dev_priv->drm,
+	save_adpa = adpa = intel_de_read(display, crt->adpa_reg);
+	drm_dbg_kms(display->drm,
 		    "trigger hotplug detect cycle: adpa=0x%x\n", adpa);
 
 	adpa |= ADPA_CRT_HOTPLUG_FORCE_TRIGGER;
 
-	intel_de_write(dev_priv, crt->adpa_reg, adpa);
+	intel_de_write(display, crt->adpa_reg, adpa);
 
-	if (intel_de_wait_for_clear(dev_priv, crt->adpa_reg,
+	if (intel_de_wait_for_clear(display, crt->adpa_reg,
 				    ADPA_CRT_HOTPLUG_FORCE_TRIGGER, 1000)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "timed out waiting for FORCE_TRIGGER");
-		intel_de_write(dev_priv, crt->adpa_reg, save_adpa);
+		intel_de_write(display, crt->adpa_reg, save_adpa);
 	}
 
 	/* Check the status to see if both blue and green are on now */
-	adpa = intel_de_read(dev_priv, crt->adpa_reg);
+	adpa = intel_de_read(display, crt->adpa_reg);
 	if ((adpa & ADPA_CRT_HOTPLUG_MONITOR_MASK) != 0)
 		ret = true;
 	else
 		ret = false;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "valleyview hotplug adpa=0x%x, result %d\n", adpa, ret);
 
 	if (reenable_hpd)
@@ -575,6 +587,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_connector *connector)
 
 static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u32 stat;
@@ -603,18 +616,18 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
 					      CRT_HOTPLUG_FORCE_DETECT,
 					      CRT_HOTPLUG_FORCE_DETECT);
 		/* wait for FORCE_DETECT to go off */
-		if (intel_de_wait_for_clear(dev_priv, PORT_HOTPLUG_EN(dev_priv),
+		if (intel_de_wait_for_clear(display, PORT_HOTPLUG_EN(display),
 					    CRT_HOTPLUG_FORCE_DETECT, 1000))
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "timed out waiting for FORCE_DETECT to go off");
 	}
 
-	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv));
+	stat = intel_de_read(display, PORT_HOTPLUG_STAT(display));
 	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
 		ret = true;
 
 	/* clear the interrupt we just generated, if any */
-	intel_de_write(dev_priv, PORT_HOTPLUG_STAT(dev_priv),
+	intel_de_write(display, PORT_HOTPLUG_STAT(display),
 		       CRT_HOTPLUG_INT_STATUS);
 
 	i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);
@@ -660,8 +673,7 @@ static int intel_crt_ddc_get_modes(struct drm_connector *connector,
 
 static bool intel_crt_detect_ddc(struct drm_connector *connector)
 {
-	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(crt->base.base.dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	const struct drm_edid *drm_edid;
 	bool ret = false;
 
@@ -674,15 +686,15 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
 		 * have to check the EDID input spec of the attached device.
 		 */
 		if (drm_edid_is_digital(drm_edid)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "CRT not detected via DDC:0x50 [EDID reports a digital panel]\n");
 		} else {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "CRT detected via DDC:0x50 [EDID]\n");
 			ret = true;
 		}
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "CRT not detected via DDC:0x50 [no valid EDID found]\n");
 	}
 
@@ -695,8 +707,6 @@ static enum drm_connector_status
 intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 {
 	struct intel_display *display = to_intel_display(&crt->base);
-	struct drm_device *dev = crt->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum transcoder cpu_transcoder = (enum transcoder)pipe;
 	u32 save_bclrpat;
 	u32 save_vtotal;
@@ -707,14 +717,14 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	u8 st00;
 	enum drm_connector_status status;
 
-	drm_dbg_kms(&dev_priv->drm, "starting load-detect on CRT\n");
+	drm_dbg_kms(display->drm, "starting load-detect on CRT\n");
 
-	save_bclrpat = intel_de_read(dev_priv,
-				     BCLRPAT(dev_priv, cpu_transcoder));
-	save_vtotal = intel_de_read(dev_priv,
-				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
-	vblank = intel_de_read(dev_priv,
-			       TRANS_VBLANK(dev_priv, cpu_transcoder));
+	save_bclrpat = intel_de_read(display,
+				     BCLRPAT(display, cpu_transcoder));
+	save_vtotal = intel_de_read(display,
+				    TRANS_VTOTAL(display, cpu_transcoder));
+	vblank = intel_de_read(display,
+			       TRANS_VBLANK(display, cpu_transcoder));
 
 	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
 	vactive = REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
@@ -723,25 +733,25 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	vblank_end = REG_FIELD_GET(VBLANK_END_MASK, vblank) + 1;
 
 	/* Set the border color to purple. */
-	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder), 0x500050);
+	intel_de_write(display, BCLRPAT(display, cpu_transcoder), 0x500050);
 
-	if (DISPLAY_VER(dev_priv) != 2) {
-		u32 transconf = intel_de_read(dev_priv,
-					      TRANSCONF(dev_priv, cpu_transcoder));
+	if (DISPLAY_VER(display) != 2) {
+		u32 transconf = intel_de_read(display,
+					      TRANSCONF(display, cpu_transcoder));
 
-		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANSCONF(display, cpu_transcoder),
 			       transconf | TRANSCONF_FORCE_BORDER);
-		intel_de_posting_read(dev_priv,
-				      TRANSCONF(dev_priv, cpu_transcoder));
+		intel_de_posting_read(display,
+				      TRANSCONF(display, cpu_transcoder));
 		/* Wait for next Vblank to substitue
 		 * border color for Color info */
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
-		st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
+		st00 = intel_de_read8(display, _VGA_MSR_WRITE);
 		status = ((st00 & (1 << 4)) != 0) ?
 			connector_status_connected :
 			connector_status_disconnected;
 
-		intel_de_write(dev_priv, TRANSCONF(dev_priv, cpu_transcoder),
+		intel_de_write(display, TRANSCONF(display, cpu_transcoder),
 			       transconf);
 	} else {
 		bool restore_vblank = false;
@@ -752,13 +762,13 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		* Yes, this will flicker
 		*/
 		if (vblank_start <= vactive && vblank_end >= vtotal) {
-			u32 vsync = intel_de_read(dev_priv,
-						  TRANS_VSYNC(dev_priv, cpu_transcoder));
+			u32 vsync = intel_de_read(display,
+						  TRANS_VSYNC(display, cpu_transcoder));
 			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
 
 			vblank_start = vsync_start;
-			intel_de_write(dev_priv,
-				       TRANS_VBLANK(dev_priv, cpu_transcoder),
+			intel_de_write(display,
+				       TRANS_VBLANK(display, cpu_transcoder),
 				       VBLANK_START(vblank_start - 1) |
 				       VBLANK_END(vblank_end - 1));
 			restore_vblank = true;
@@ -772,9 +782,9 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		/*
 		 * Wait for the border to be displayed
 		 */
-		while (intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) >= vactive)
+		while (intel_de_read(display, PIPEDSL(display, pipe)) >= vactive)
 			;
-		while ((dsl = intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe))) <= vsample)
+		while ((dsl = intel_de_read(display, PIPEDSL(display, pipe))) <= vsample)
 			;
 		/*
 		 * Watch ST00 for an entire scanline
@@ -784,15 +794,15 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 		do {
 			count++;
 			/* Read the ST00 VGA status register */
-			st00 = intel_de_read8(dev_priv, _VGA_MSR_WRITE);
+			st00 = intel_de_read8(display, _VGA_MSR_WRITE);
 			if (st00 & (1 << 4))
 				detect++;
-		} while ((intel_de_read(dev_priv, PIPEDSL(dev_priv, pipe)) == dsl));
+		} while ((intel_de_read(display, PIPEDSL(display, pipe)) == dsl));
 
 		/* restore vblank if necessary */
 		if (restore_vblank)
-			intel_de_write(dev_priv,
-				       TRANS_VBLANK(dev_priv, cpu_transcoder),
+			intel_de_write(display,
+				       TRANS_VBLANK(display, cpu_transcoder),
 				       vblank);
 		/*
 		 * If more than 3/4 of the scanline detected a monitor,
@@ -806,7 +816,7 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
 	}
 
 	/* Restore previous settings */
-	intel_de_write(dev_priv, BCLRPAT(dev_priv, cpu_transcoder),
+	intel_de_write(display, BCLRPAT(display, cpu_transcoder),
 		       save_bclrpat);
 
 	return status;
@@ -843,6 +853,7 @@ intel_crt_detect(struct drm_connector *connector,
 		 struct drm_modeset_acquire_ctx *ctx,
 		 bool force)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *intel_encoder = &crt->base;
@@ -850,7 +861,7 @@ intel_crt_detect(struct drm_connector *connector,
 	intel_wakeref_t wakeref;
 	int status;
 
-	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] force=%d\n",
+	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=%d\n",
 		    connector->base.id, connector->name,
 		    force);
 
@@ -860,7 +871,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (!intel_display_driver_check_access(dev_priv))
 		return connector->status;
 
-	if (dev_priv->display.params.load_detect_test) {
+	if (display->params.load_detect_test) {
 		wakeref = intel_display_power_get(dev_priv,
 						  intel_encoder->power_domain);
 		goto load_detect;
@@ -873,18 +884,18 @@ intel_crt_detect(struct drm_connector *connector,
 	wakeref = intel_display_power_get(dev_priv,
 					  intel_encoder->power_domain);
 
-	if (I915_HAS_HOTPLUG(dev_priv)) {
+	if (I915_HAS_HOTPLUG(display)) {
 		/* We can not rely on the HPD pin always being correctly wired
 		 * up, for example many KVM do not pass it through, and so
 		 * only trust an assertion that the monitor is connected.
 		 */
 		if (intel_crt_detect_hotplug(connector)) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "CRT detected via hotplug\n");
 			status = connector_status_connected;
 			goto out;
 		} else
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "CRT not detected via hotplug\n");
 	}
 
@@ -897,7 +908,7 @@ intel_crt_detect(struct drm_connector *connector,
 	 * broken monitor (without edid) to work behind a broken kvm (that fails
 	 * to have the right resistors for HP detection) needs to fix this up.
 	 * For now just bail out. */
-	if (I915_HAS_HOTPLUG(dev_priv)) {
+	if (I915_HAS_HOTPLUG(display)) {
 		status = connector_status_disconnected;
 		goto out;
 	}
@@ -917,10 +928,10 @@ intel_crt_detect(struct drm_connector *connector,
 	} else {
 		if (intel_crt_detect_ddc(connector))
 			status = connector_status_connected;
-		else if (DISPLAY_VER(dev_priv) < 4)
+		else if (DISPLAY_VER(display) < 4)
 			status = intel_crt_load_detect(crt,
 				to_intel_crtc(connector->state->crtc)->pipe);
-		else if (dev_priv->display.params.load_detect_test)
+		else if (display->params.load_detect_test)
 			status = connector_status_disconnected;
 		else
 			status = connector_status_unknown;
@@ -966,19 +977,19 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 
 void intel_crt_reset(struct drm_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
+	struct intel_display *display = to_intel_display(encoder->dev);
 	struct intel_crt *crt = intel_encoder_to_crt(to_intel_encoder(encoder));
 
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	if (DISPLAY_VER(display) >= 5) {
 		u32 adpa;
 
-		adpa = intel_de_read(dev_priv, crt->adpa_reg);
+		adpa = intel_de_read(display, crt->adpa_reg);
 		adpa &= ~ADPA_CRT_HOTPLUG_MASK;
 		adpa |= ADPA_HOTPLUG_BITS;
-		intel_de_write(dev_priv, crt->adpa_reg, adpa);
-		intel_de_posting_read(dev_priv, crt->adpa_reg);
+		intel_de_write(display, crt->adpa_reg, adpa);
+		intel_de_posting_read(display, crt->adpa_reg);
 
-		drm_dbg_kms(&dev_priv->drm, "crt adpa set to 0x%x\n", adpa);
+		drm_dbg_kms(display->drm, "crt adpa set to 0x%x\n", adpa);
 		crt->force_hotplug_required = true;
 	}
 
@@ -1008,9 +1019,9 @@ static const struct drm_encoder_funcs intel_crt_enc_funcs = {
 	.destroy = intel_encoder_destroy,
 };
 
-void intel_crt_init(struct drm_i915_private *dev_priv)
+void intel_crt_init(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct drm_connector *connector;
 	struct intel_crt *crt;
 	struct intel_connector *intel_connector;
@@ -1025,7 +1036,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	else
 		adpa_reg = ADPA;
 
-	adpa = intel_de_read(dev_priv, adpa_reg);
+	adpa = intel_de_read(display, adpa_reg);
 	if ((adpa & ADPA_DAC_ENABLE) == 0) {
 		/*
 		 * On some machines (some IVB at least) CRT can be
@@ -1035,11 +1046,11 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		 * take. So the only way to tell is attempt to enable
 		 * it and see what happens.
 		 */
-		intel_de_write(dev_priv, adpa_reg,
+		intel_de_write(display, adpa_reg,
 			       adpa | ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
-		if ((intel_de_read(dev_priv, adpa_reg) & ADPA_DAC_ENABLE) == 0)
+		if ((intel_de_read(display, adpa_reg) & ADPA_DAC_ENABLE) == 0)
 			return;
-		intel_de_write(dev_priv, adpa_reg, adpa);
+		intel_de_write(display, adpa_reg, adpa);
 	}
 
 	crt = kzalloc(sizeof(struct intel_crt), GFP_KERNEL);
@@ -1052,16 +1063,16 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		return;
 	}
 
-	ddc_pin = dev_priv->display.vbt.crt_ddc_pin;
+	ddc_pin = display->vbt.crt_ddc_pin;
 
 	connector = &intel_connector->base;
 	crt->connector = intel_connector;
-	drm_connector_init_with_ddc(&dev_priv->drm, connector,
+	drm_connector_init_with_ddc(display->drm, connector,
 				    &intel_crt_connector_funcs,
 				    DRM_MODE_CONNECTOR_VGA,
 				    intel_gmbus_get_adapter(display, ddc_pin));
 
-	drm_encoder_init(&dev_priv->drm, &crt->base.base, &intel_crt_enc_funcs,
+	drm_encoder_init(display->drm, &crt->base.base, &intel_crt_enc_funcs,
 			 DRM_MODE_ENCODER_DAC, "CRT");
 
 	intel_connector_attach_encoder(intel_connector, &crt->base);
@@ -1073,14 +1084,14 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	else
 		crt->base.pipe_mask = ~0;
 
-	if (DISPLAY_VER(dev_priv) != 2)
+	if (DISPLAY_VER(display) != 2)
 		connector->interlace_allowed = true;
 
 	crt->adpa_reg = adpa_reg;
 
 	crt->base.power_domain = POWER_DOMAIN_PORT_CRT;
 
-	if (I915_HAS_HOTPLUG(dev_priv) &&
+	if (I915_HAS_HOTPLUG(display) &&
 	    !dmi_check_system(intel_spurious_crt_detect)) {
 		crt->base.hpd_pin = HPD_CRT;
 		crt->base.hotplug = intel_encoder_hotplug;
@@ -1090,7 +1101,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	}
 	intel_connector->base.polled = intel_connector->polled;
 
-	if (HAS_DDI(dev_priv)) {
+	if (HAS_DDI(display)) {
 		assert_port_valid(dev_priv, PORT_E);
 
 		crt->base.port = PORT_E;
@@ -1134,8 +1145,8 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 		u32 fdi_config = FDI_RX_POLARITY_REVERSED_LPT |
 				 FDI_RX_LINK_REVERSAL_OVERRIDE;
 
-		dev_priv->display.fdi.rx_config = intel_de_read(dev_priv,
-								FDI_RX_CTL(PIPE_A)) & fdi_config;
+		display->fdi.rx_config = intel_de_read(display,
+						       FDI_RX_CTL(PIPE_A)) & fdi_config;
 	}
 
 	intel_crt_reset(&crt->base.base);
diff --git a/drivers/gpu/drm/i915/display/intel_crt.h b/drivers/gpu/drm/i915/display/intel_crt.h
index fe7690c2b948..e0abfe96a3d2 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.h
+++ b/drivers/gpu/drm/i915/display/intel_crt.h
@@ -10,20 +10,20 @@
 
 enum pipe;
 struct drm_encoder;
-struct drm_i915_private;
+struct intel_display;
 
 #ifdef I915
-bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
+bool intel_crt_port_enabled(struct intel_display *display,
 			    i915_reg_t adpa_reg, enum pipe *pipe);
-void intel_crt_init(struct drm_i915_private *dev_priv);
+void intel_crt_init(struct intel_display *display);
 void intel_crt_reset(struct drm_encoder *encoder);
 #else
-static inline bool intel_crt_port_enabled(struct drm_i915_private *dev_priv,
+static inline bool intel_crt_port_enabled(struct intel_display *display,
 					  i915_reg_t adpa_reg, enum pipe *pipe)
 {
 	return false;
 }
-static inline void intel_crt_init(struct drm_i915_private *dev_priv)
+static inline void intel_crt_init(struct intel_display *display)
 {
 }
 static inline void intel_crt_reset(struct drm_encoder *encoder)
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 406f9981898d..7b8011781026 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8148,7 +8148,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 	if (HAS_DDI(dev_priv)) {
 		if (intel_ddi_crt_present(dev_priv))
-			intel_crt_init(dev_priv);
+			intel_crt_init(display);
 
 		intel_bios_for_each_encoder(display, intel_ddi_init);
 
@@ -8163,7 +8163,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 * incorrect sharing of the PPS.
 		 */
 		intel_lvds_init(dev_priv);
-		intel_crt_init(dev_priv);
+		intel_crt_init(display);
 
 		dpd_is_edp = intel_dp_is_port_edp(dev_priv, PORT_D);
 
@@ -8194,7 +8194,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		bool has_edp, has_port;
 
 		if (IS_VALLEYVIEW(dev_priv) && dev_priv->display.vbt.int_crt_support)
-			intel_crt_init(dev_priv);
+			intel_crt_init(display);
 
 		/*
 		 * The DP_DETECTED bit is the latched state of the DDC
@@ -8240,14 +8240,14 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		vlv_dsi_init(dev_priv);
 	} else if (IS_PINEVIEW(dev_priv)) {
 		intel_lvds_init(dev_priv);
-		intel_crt_init(dev_priv);
+		intel_crt_init(display);
 	} else if (IS_DISPLAY_VER(dev_priv, 3, 4)) {
 		bool found = false;
 
 		if (IS_MOBILE(dev_priv))
 			intel_lvds_init(dev_priv);
 
-		intel_crt_init(dev_priv);
+		intel_crt_init(display);
 
 		if (intel_de_read(dev_priv, GEN3_SDVOB) & SDVO_DETECTED) {
 			drm_dbg_kms(&dev_priv->drm, "probing SDVOB\n");
@@ -8289,7 +8289,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (IS_I85X(dev_priv))
 			intel_lvds_init(dev_priv);
 
-		intel_crt_init(dev_priv);
+		intel_crt_init(display);
 		intel_dvo_init(dev_priv);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 5fbcb74aeac1..4210de87a0a2 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -86,7 +86,7 @@ static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
 	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
 
 	INTEL_DISPLAY_STATE_WARN(display,
-				 intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) && port_pipe == pipe,
+				 intel_crt_port_enabled(display, PCH_ADPA, &port_pipe) && port_pipe == pipe,
 				 "PCH VGA enabled on transcoder %c, should be disabled\n",
 				 pipe_name(pipe));
 
-- 
2.39.5

