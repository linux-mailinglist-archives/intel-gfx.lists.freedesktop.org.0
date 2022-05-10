Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9653F52126C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B81B610F081;
	Tue, 10 May 2022 10:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C1F610F081
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179372; x=1683715372;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=C9isfv/CieYwkwRHScwhmsCyD7GHCrNySX+O1f8ZGNo=;
 b=Lbx8ofQO6DSXy8xsFiSc4+BF6rN1fuCO0a4+mIr5QsBiyGodfjLpYB4n
 1gUlhG/6DsTpMgb40YRz6r7Xm4RH9P9rgJGpJTneIJtEIatQKVZDQxsbe
 bOsik01srWCuB5akcP8nQUV0lDesFf0/4bWaSn6IENpzGSdm8kKLoNv2z
 JD4r4HutWamK3JE7Rf7se7cGtgIjlmFlSdkTfUSM7WQ9fjcwRg078lc7a
 uBh4X0Z/zWhijwWOWhMgFkKGw7jBika2WfRhBZl999CtRHggux5LoSxiZ
 r7p4O3Y55HMVWIRzKqAffoSlLZtlHECRVY6KX+KSGNf7sb46uOShrAQeJ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256870690"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256870690"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="623413787"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 10 May 2022 03:42:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:29 +0300
Message-Id: <20220510104242.6099-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/15] drm/i915: Extract
 intel_edp_fixup_vbt_bpp()
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

We have the same "override eDP VBT bpp with the current bpp" code
duplciated in two places. Extract it to a helper function.

TODO: Having this in .get_config() is pretty ugly. Should probably
try to move it somewhere else (setup_hw_state()/etc.)...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c    | 22 ++-------------------
 drivers/gpu/drm/i915/display/intel_ddi.c | 22 ++-------------------
 drivers/gpu/drm/i915/display/intel_dp.c  | 25 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h  |  1 +
 4 files changed, 30 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5a957acebfd6..82ad8fe7440c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -395,26 +395,8 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 		intel_dotclock_calculate(pipe_config->port_clock,
 					 &pipe_config->dp_m_n);
 
-	if (intel_dp_is_edp(intel_dp) && dev_priv->vbt.edp.bpp &&
-	    pipe_config->pipe_bpp > dev_priv->vbt.edp.bpp) {
-		/*
-		 * This is a big fat ugly hack.
-		 *
-		 * Some machines in UEFI boot mode provide us a VBT that has 18
-		 * bpp and 1.62 GHz link bandwidth for eDP, which for reasons
-		 * unknown we fail to light up. Yet the same BIOS boots up with
-		 * 24 bpp and 2.7 GHz link. Use the same bpp as the BIOS uses as
-		 * max, not what it tells us to use.
-		 *
-		 * Note: This will still be broken if the eDP panel is not lit
-		 * up by the BIOS, and thus we can't get the mode at module
-		 * load.
-		 */
-		drm_dbg_kms(&dev_priv->drm,
-			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
-			    pipe_config->pipe_bpp, dev_priv->vbt.edp.bpp);
-		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
-	}
+	if (intel_dp_is_edp(intel_dp))
+		intel_edp_fixup_vbt_bpp(encoder, pipe_config->pipe_bpp);
 }
 
 static void
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 9e6fa59eabba..333871cf3a2c 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3433,26 +3433,8 @@ static void intel_ddi_get_config(struct intel_encoder *encoder,
 	pipe_config->has_audio =
 		intel_ddi_is_audio_enabled(dev_priv, cpu_transcoder);
 
-	if (encoder->type == INTEL_OUTPUT_EDP && dev_priv->vbt.edp.bpp &&
-	    pipe_config->pipe_bpp > dev_priv->vbt.edp.bpp) {
-		/*
-		 * This is a big fat ugly hack.
-		 *
-		 * Some machines in UEFI boot mode provide us a VBT that has 18
-		 * bpp and 1.62 GHz link bandwidth for eDP, which for reasons
-		 * unknown we fail to light up. Yet the same BIOS boots up with
-		 * 24 bpp and 2.7 GHz link. Use the same bpp as the BIOS uses as
-		 * max, not what it tells us to use.
-		 *
-		 * Note: This will still be broken if the eDP panel is not lit
-		 * up by the BIOS, and thus we can't get the mode at module
-		 * load.
-		 */
-		drm_dbg_kms(&dev_priv->drm,
-			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
-			    pipe_config->pipe_bpp, dev_priv->vbt.edp.bpp);
-		dev_priv->vbt.edp.bpp = pipe_config->pipe_bpp;
-	}
+	if (encoder->type == INTEL_OUTPUT_EDP)
+		intel_edp_fixup_vbt_bpp(encoder, pipe_config->pipe_bpp);
 
 	ddi_dotclock_get(pipe_config);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8637959b5de2..7db71bcd4c4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2710,6 +2710,31 @@ static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
 		    DRM_MODE_ARG(mode));
 }
 
+void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp)
+{
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+
+	if (dev_priv->vbt.edp.bpp && pipe_bpp > dev_priv->vbt.edp.bpp) {
+		/*
+		 * This is a big fat ugly hack.
+		 *
+		 * Some machines in UEFI boot mode provide us a VBT that has 18
+		 * bpp and 1.62 GHz link bandwidth for eDP, which for reasons
+		 * unknown we fail to light up. Yet the same BIOS boots up with
+		 * 24 bpp and 2.7 GHz link. Use the same bpp as the BIOS uses as
+		 * max, not what it tells us to use.
+		 *
+		 * Note: This will still be broken if the eDP panel is not lit
+		 * up by the BIOS, and thus we can't get the mode at module
+		 * load.
+		 */
+		drm_dbg_kms(&dev_priv->drm,
+			    "pipe has %d bpp for eDP panel, overriding BIOS-provided max %d bpp\n",
+			    pipe_bpp, dev_priv->vbt.edp.bpp);
+		dev_priv->vbt.edp.bpp = pipe_bpp;
+	}
+}
+
 static void intel_edp_mso_init(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index d457e17bdc57..e794d910df56 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -63,6 +63,7 @@ enum irqreturn intel_dp_hpd_pulse(struct intel_digital_port *dig_port,
 void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
 			    const struct drm_connector_state *conn_state);
 void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
+void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct drm_i915_private *dev_priv);
 void intel_dp_mst_resume(struct drm_i915_private *dev_priv);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
-- 
2.35.1

