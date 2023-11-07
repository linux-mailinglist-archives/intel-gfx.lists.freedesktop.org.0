Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7377E7E321B
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 01:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2628810E489;
	Tue,  7 Nov 2023 00:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4853F10E489
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 00:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699316114; x=1730852114;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rTvim+IxdgIwYSmho5PE+TOCtXtydvZPzNkI2rGHceQ=;
 b=LHbq6kX7DG1id4bb8DItdxkg60XV8AHISTQDaYb3KCx/VWbNfMdVDCqu
 CnjcEIioW+MpPtR/I3AfdYc02RCMSwrd291wFKj5p8g8jJy45JUhZw+pj
 00iY6/xZGs+QDQ8mszKSAl3RYUlGXPUyH1/gMzV+1zgVNiFTlq547C60K
 dgMh8QGUG+9JlfDHKyeATOsiwmcQzPIwzpnDPZGLLd3CgozVLMGK/JnuH
 SEXgD1yrN7seYEMUGywzVXJ6S4SEDOgQIw+4zQuD0io9lp5wKkaMdCl9t
 6ljGgyX+wUFpTJkHMrOE+t75ldOdj6KRO8c3oWnlltkWPSH/qNbbOmin6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="369596203"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="369596203"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853177998"
X-IronPort-AV: E=Sophos;i="6.03,282,1694761200"; d="scan'208";a="853177998"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 16:15:13 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Nov 2023 02:15:01 +0200
Message-Id: <20231107001505.3370108-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231030155843.2251023-22-imre.deak@intel.com>
References: <20231030155843.2251023-22-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 21/30] drm/i915/dp_mst: Handle the Synaptics
 HBlank expansion quirk
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

The Synaptics MST hubs expose some sink EDID modes with a reduced HBLANK
period, presumedly to save BW, which the hub expands before forwarding
the stream to the sink. In particular a 4k mode with a standard CVT
HBLANK period is exposed with either a CVT reduced blank RBv1,v2 (80,
160 pixel) or a non-CVT 56 pixel HBLANK period. The DP standard
describes the above HBLANK expansion functionality, but it requires
enabling this explicitly, whereas these hubs apply the expansion
transparently.

In some TBT docks with such a Synaptics hub (DELL WD22TB4) the above modes
will work okay until DSC decompression is enabled in the hub for the given
sink, but after this the same mode will not work reliably in decompressed
mode. In another TBT dock (Thinkpad 40B0) the above modes will not work
in uncompressed/18bpp mode (regardless of whether DSC decompression was
enabled before or not).

As a workaround force enable DSC for such modes.  Apply the WA when the
HBLANK period is 300ns or below, matching the above tested modes with a
533.25MHz dotclock and maximum 160 HBLANK pixels.

OTOH DSC for these modes will only work above a certain compressed bpp
threshold which depends on the link rate, so apply this limit as well
in the workaround.

On platforms, pipe/port configurations where DSC is not supported, for
instance on ICL where DSC/MST is still work-in-progress, limit the
minimum link bpp to 24.

Apply the workaround only for Synaptics hubs which support the HBLANK
expansion.

v2:
- Apply the WA whenever the HBLANK period is 300ns or below.
v3:
- Clarify in the commit log the failure modes of the different docks.
- Handle platforms/pipe/port configurations without DSC support.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 133 +++++++++++++++++-
 2 files changed, 131 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 047fe3f8905ac..6c2f18ef543e4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -624,6 +624,8 @@ struct intel_connector {
 		struct drm_dp_aux *dsc_decompression_aux;
 		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
 		u8 fec_capability;
+
+		u8 dsc_hblank_expansion_quirk:1;
 	} dp;
 
 	/* Work struct to schedule a uevent on link train failure */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4d0827a3cd9b1..4f066a868b9a2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -378,8 +378,91 @@ intel_dp_mst_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	return DISPLAY_VER(i915) >= 12 && intel_dsc_source_support(crtc_state);
 }
 
+static int mode_hblank_period_ns(const struct drm_display_mode *mode)
+{
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
+						 NSEC_PER_SEC / 1000),
+				     mode->crtc_clock);
+}
+
+static bool
+hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
+				 const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!connector->dp.dsc_hblank_expansion_quirk)
+		return false;
+
+	if (mode_hblank_period_ns(adjusted_mode) > 300)
+		return false;
+
+	return true;
+}
+
+static bool
+adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
+					     const struct intel_crtc_state *crtc_state,
+					     struct link_config_limits *limits,
+					     bool dsc)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int min_bpp_x16 = limits->link.min_bpp_x16;
+
+	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state))
+		return true;
+
+	if (!dsc) {
+		if (intel_dp_mst_dsc_source_support(crtc_state)) {
+			drm_dbg_kms(&i915->drm,
+				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
+				    crtc->base.base.id, crtc->base.name,
+				    connector->base.base.id, connector->base.name);
+			return false;
+		}
+
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to 24 due to hblank expansion quirk\n",
+			    crtc->base.base.id, crtc->base.name,
+			    connector->base.base.id, connector->base.name);
+
+		if (limits->link.max_bpp_x16 < to_bpp_x16(24))
+			return false;
+
+		limits->link.min_bpp_x16 = to_bpp_x16(24);
+
+		return true;
+	}
+
+	drm_WARN_ON(&i915->drm, limits->min_rate != limits->max_rate);
+
+	if (limits->max_rate < 540000)
+		min_bpp_x16 = to_bpp_x16(13);
+	else if (limits->max_rate < 810000)
+		min_bpp_x16 = to_bpp_x16(10);
+
+	if (limits->link.min_bpp_x16 >= min_bpp_x16)
+		return true;
+
+	drm_dbg_kms(&i915->drm,
+		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " BPP_X16_FMT " in DSC mode due to hblank expansion quirk\n",
+		    crtc->base.base.id, crtc->base.name,
+		    connector->base.base.id, connector->base.name,
+		    BPP_X16_ARGS(min_bpp_x16));
+
+	if (limits->link.max_bpp_x16 < min_bpp_x16)
+		return false;
+
+	limits->link.min_bpp_x16 = min_bpp_x16;
+
+	return true;
+}
+
 static bool
 intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
+				   const struct intel_connector *connector,
 				   struct intel_crtc_state *crtc_state,
 				   bool dsc,
 				   struct link_config_limits *limits)
@@ -407,10 +490,16 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 
 	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
 
-	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       crtc_state,
-						       dsc,
-						       limits);
+	if (!intel_dp_compute_config_link_bpp_limits(intel_dp,
+						     crtc_state,
+						     dsc,
+						     limits))
+		return false;
+
+	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
+							    crtc_state,
+							    limits,
+							    dsc);
 }
 
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
@@ -420,6 +509,8 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
 	struct intel_dp *intel_dp = &intel_mst->primary->dp;
+	const struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct link_config_limits limits;
@@ -435,6 +526,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	dsc_needed = intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
+							 connector,
 							 pipe_config,
 							 false,
 							 &limits);
@@ -460,6 +552,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			return -EINVAL;
 
 		if (!intel_dp_mst_compute_config_limits(intel_dp,
+							connector,
 							pipe_config,
 							true,
 							&limits))
@@ -1236,6 +1329,36 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], connector);
 }
 
+static bool detect_dsc_hblank_expansion_quirk(const struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct drm_dp_desc desc;
+	u8 dpcd[DP_RECEIVER_CAP_SIZE];
+
+	if (!connector->dp.dsc_decompression_aux)
+		return false;
+
+	if (drm_dp_read_desc(connector->dp.dsc_decompression_aux,
+			     &desc, true) < 0)
+		return false;
+
+	if (!drm_dp_has_quirk(&desc,
+			      DP_DPCD_QUIRK_HBLANK_EXPANSION_REQUIRES_DSC))
+		return false;
+
+	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd) < 0)
+		return false;
+
+	if (!(dpcd[DP_RECEIVE_PORT_0_CAP_0] & DP_HBLANK_EXPANSION_CAPABLE))
+		return false;
+
+	drm_dbg_kms(&i915->drm,
+		    "[CONNECTOR:%d:%s] DSC HBLANK expansion quirk detected\n",
+		    connector->base.base.id, connector->base.name);
+
+	return true;
+}
+
 static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 							struct drm_dp_mst_port *port,
 							const char *pathprop)
@@ -1265,6 +1388,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	 */
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
 	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
+	intel_connector->dp.dsc_hblank_expansion_quirk =
+		detect_dsc_hblank_expansion_quirk(intel_connector);
 
 	connector = &intel_connector->base;
 	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
-- 
2.39.2

