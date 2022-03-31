Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DB34ED883
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4429110F324;
	Thu, 31 Mar 2022 11:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772CA10F2F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726132; x=1680262132;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u0bjacnViyS3rSDfvzpgGIm3UWyDdtnbMhna7Guc9O4=;
 b=dOJuhAXX1U4OKQcCrY51gtbQQl2CNn3qs6MZCChq/8zniYyt4KeFVCZ1
 BRO8O0iHL/fKjxgDK9NrMRFzo43U3X5lvTrncXXu7QnNhr2ul8gCpmxHr
 gc2kxQpHmZ2zhTSZOMohqDPEARcXgb3AcbnRr+ClNyFSXzjbYMAzDu2d9
 TDSOyj93G8pq+p+1TIBVwdAQ9aQqkkoXe0nvNjsgVAyFrKUczBVVkMWl5
 2AXgv7dLeGCWTB3P85ARu1b7L3aOZiN6JTIb9TQ4gMO7tuwp8R6nAfxPk
 iNQwqc0AYSo8Z+Ntw/TC6h9NfmTLofCX44Nruzmmj6R2dVHnGC5/Mzde0 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259985498"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259985498"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="586387232"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 31 Mar 2022 04:28:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:20 +0300
Message-Id: <20220331112822.11462-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/11] drm/i915: Move
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
index abfdaa0c7382..da1fd626c3fb 100644
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
@@ -1770,6 +1769,60 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
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
@@ -1878,8 +1931,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
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

