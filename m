Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E9A4EAFE8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9277710EAFC;
	Tue, 29 Mar 2022 15:08:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E3710E8C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566492; x=1680102492;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=srz1JlbNSAY6SFV/yzq3VcRPH/OSYIMlsSXQGGGsrew=;
 b=TYIK/9iZa6XlJUuLXEIgoiy9gfbW+uNHfaLe3gdF35arlgU/rvrNTpIC
 yvSe2jiuVMBALJSvTr2mjlS9mPBgcM1otMMWyjp38UHSOlcvj+6qapDV9
 kBp0BRJXBLENpuitTtzpZcS6+r5w03XCXrgO0FL0o4geQSdbNYB2bkf5z
 tXHbapN/KKVKWt13Fo2HVI0csMvfuNMfkjot0DA29QY3Q6XeXp1L+eUxr
 E+8TlNxQtXp1ehx72kEhacysoPLgcn255wawXEFc+n7YqSo6hZf80OlnG
 IMJeUJ02dt70Zyti5e9OCrrL91hITJwj1MEuEDTDdHPh0h2fGgX0GW82E w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345707202"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345707202"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:08:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="649480099"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 29 Mar 2022 08:08:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:08:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:40 +0300
Message-Id: <20220329150742.31783-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/11] drm/i915: Move
 intel_drrs_compute_config() into intel_dp.c
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

intel_drrs_compute_config() is 100% DP specific. DRRS on other
types of encoders wouldn't do any of these M2/N2 calculations
etc. So let's move this into intel_dp.c so all the DP state
calculation is more concentrated into one place.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 59 +++++++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_drrs.c | 54 ---------------------
 drivers/gpu/drm/i915/display/intel_drrs.h |  3 --
 3 files changed, 56 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d57ef123ded5..92c0c24517b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -60,7 +60,6 @@
 #include "intel_dp_mst.h"
 #include "intel_dpio_phy.h"
 #include "intel_dpll.h"
-#include "intel_drrs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdcp.h"
 #include "intel_hdmi.h"
@@ -1765,6 +1764,60 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
 		intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static bool can_enable_drrs(struct intel_connector *connector,
+			    const struct intel_crtc_state *pipe_config,
+			    const struct drm_display_mode *downclock_mode)
+{
+	if (pipe_config->vrr.enable)
+		return false;
+
+	/*
+	 * DRRS and PSR can't be enable together, so giving preference to PSR
+	 * as it allows more power-savings by complete shutting down display,
+	 * so to guarantee this, intel_drrs_compute_config() must be called
+	 * after intel_psr_compute_config().
+	 */
+	if (pipe_config->has_psr)
+		return false;
+
+	return downclock_mode &&
+		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
+}
+
+static void
+intel_dp_drrs_compute_config(struct intel_connector *connector,
+			     struct intel_crtc_state *pipe_config,
+			     int output_bpp, bool constant_n)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct drm_display_mode *downclock_mode =
+		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
+	int pixel_clock;
+
+	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
+		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
+			intel_zero_m_n(&pipe_config->dp_m2_n2);
+		return;
+	}
+
+	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
+		pipe_config->msa_timing_delay = i915->vbt.edp.drrs_msa_timing_delay;
+
+	pipe_config->has_drrs = true;
+
+	pixel_clock = downclock_mode->clock;
+	if (pipe_config->splitter.enable)
+		pixel_clock /= pipe_config->splitter.link_count;
+
+	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
+			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
+			       constant_n, pipe_config->fec_enable);
+
+	/* FIXME: abstract this better */
+	if (pipe_config->splitter.enable)
+		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
+}
+
 int
 intel_dp_compute_config(struct intel_encoder *encoder,
 			struct intel_crtc_state *pipe_config,
@@ -1873,8 +1926,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	intel_vrr_compute_config(pipe_config, conn_state);
 	intel_psr_compute_config(intel_dp, pipe_config, conn_state);
-	intel_drrs_compute_config(intel_connector, pipe_config,
-				  output_bpp, constant_n);
+	intel_dp_drrs_compute_config(intel_connector, pipe_config,
+				     output_bpp, constant_n);
 	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
 	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp, pipe_config, conn_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 3ebea697f77a..166caf293f7b 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -61,60 +61,6 @@ const char *intel_drrs_type_str(enum drrs_type drrs_type)
 	return str[drrs_type];
 }
 
-static bool can_enable_drrs(struct intel_connector *connector,
-			    const struct intel_crtc_state *pipe_config,
-			    const struct drm_display_mode *downclock_mode)
-{
-	if (pipe_config->vrr.enable)
-		return false;
-
-	/*
-	 * DRRS and PSR can't be enable together, so giving preference to PSR
-	 * as it allows more power-savings by complete shutting down display,
-	 * so to guarantee this, intel_drrs_compute_config() must be called
-	 * after intel_psr_compute_config().
-	 */
-	if (pipe_config->has_psr)
-		return false;
-
-	return downclock_mode &&
-		intel_panel_drrs_type(connector) == DRRS_TYPE_SEAMLESS;
-}
-
-void
-intel_drrs_compute_config(struct intel_connector *connector,
-			  struct intel_crtc_state *pipe_config,
-			  int output_bpp, bool constant_n)
-{
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	const struct drm_display_mode *downclock_mode =
-		intel_panel_downclock_mode(connector, &pipe_config->hw.adjusted_mode);
-	int pixel_clock;
-
-	if (!can_enable_drrs(connector, pipe_config, downclock_mode)) {
-		if (intel_cpu_transcoder_has_m2_n2(i915, pipe_config->cpu_transcoder))
-			intel_zero_m_n(&pipe_config->dp_m2_n2);
-		return;
-	}
-
-	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
-		pipe_config->msa_timing_delay = i915->vbt.edp.drrs_msa_timing_delay;
-
-	pipe_config->has_drrs = true;
-
-	pixel_clock = downclock_mode->clock;
-	if (pipe_config->splitter.enable)
-		pixel_clock /= pipe_config->splitter.link_count;
-
-	intel_link_compute_m_n(output_bpp, pipe_config->lane_count, pixel_clock,
-			       pipe_config->port_clock, &pipe_config->dp_m2_n2,
-			       constant_n, pipe_config->fec_enable);
-
-	/* FIXME: abstract this better */
-	if (pipe_config->splitter.enable)
-		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
-}
-
 static void
 intel_drrs_set_refresh_rate_pipeconf(struct intel_crtc *crtc,
 				     enum drrs_refresh_rate refresh_rate)
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 084c3f4f8403..3ad1be1ad9c1 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -23,9 +23,6 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits);
-void intel_drrs_compute_config(struct intel_connector *connector,
-			       struct intel_crtc_state *pipe_config,
-			       int output_bpp, bool constant_n);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
 
 #endif /* __INTEL_DRRS_H__ */
-- 
2.34.1

