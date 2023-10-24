Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 923F17D449F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B04F010E2C8;
	Tue, 24 Oct 2023 01:09:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF00110E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109765; x=1729645765;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y1N5GYw70dtbtb7A8Q+YO1gQ/zjL3MMPqXNQ6jcTWXw=;
 b=HZxdYVqTUx9YjQlUXMu5+DlrAWvFp2w8BV0cQy1YYFf0hIRKMkd6idtR
 BpSHaqSV29o+y95UaEJCQEPcqaqBJHkir4nN1V/Z0MOJ0O3cmu7lPyci9
 QfPkIExvtFA/A3laVHr3tKvUGvo/vYC/eLojVyhbotcKQfVudjCZZ8LQ9
 28DEfNqiHJ3ClMR9WNOGNlsA33lf3lm7UlUyfkTWornhLZbzRflXr79E5
 jSS7KRvlUWFpt7A1nLUoII7ZsWyfnmQC+wEyHwFjfEW7Y2SmdEYiIQfO1
 lYMzEVKUtPiNGW275dylXzoiW+ITQfCMHWZ1VvDYSKRb5DJsFAv4gLLjJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304383"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304383"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870138"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870138"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:24 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:16 +0300
Message-Id: <20231024010925.3949910-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/29] drm/i915/dp_mst: Handle the Synaptics
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
HBLANK period is exposed with either a CVT reduced blank RBv1 (80 pixel)
or a non-CVT 56 pixel HBLANK period. The DP standard describes the above
HBLANK expansion functionality, but it requires enabling this explicitly,
whereas these hubs apply the expansion transparently.

Such modes will work okay until DSC decompression is enabled in the hub
for the given sink, but after this the same mode will not work reliably
in decompressed mode. As a workaround force enable DSC for such modes.
OTOH DSC for these modes will only work above a certain compressed bpp
threshold which depends on the link rate, so apply this limit as well
in the workaround.

Apply the workaround only for Synaptics hubs which support the HBLANK
expansion.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 109 +++++++++++++++++-
 2 files changed, 107 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 65ea37fe8cff3..409dbf8a2a1cd 100644
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
index a1ea75cd5ea84..9124e9cdf4c79 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -345,8 +345,69 @@ static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
 	return 0;
 }
 
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
+	if (adjusted_mode->htotal - adjusted_mode->hdisplay > 80)
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
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC required by hblank expansion quirk\n",
+			    crtc->base.base.id, crtc->base.name,
+			    connector->base.base.id, connector->base.name);
+		return false;
+	}
+
+	drm_WARN_ON(&i915->drm, limits->min_rate != limits->max_rate);
+
+	if (limits->max_rate < 540000)
+		min_bpp_x16 = to_bpp_x16(13);
+	else if (limits->max_rate < 810000)
+		min_bpp_x16 = to_bpp_x16(10);
+
+	if (limits->link.min_bpp_x16 < min_bpp_x16) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s][CONNECTOR:%d:%s] Increasing link min bpp to " BPP_X16_FMT " due to hblank expansion quirk\n",
+			    crtc->base.base.id, crtc->base.name,
+			    connector->base.base.id, connector->base.name,
+			    BPP_X16_ARGS(min_bpp_x16));
+
+		if (limits->link.max_bpp_x16 < min_bpp_x16)
+			return false;
+
+		limits->link.min_bpp_x16 = min_bpp_x16;
+	}
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
@@ -374,10 +435,16 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 
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
@@ -404,6 +471,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 
 	dsc_needed = intel_dp->force_dsc_en ||
 		     !intel_dp_mst_compute_config_limits(intel_dp,
+							 connector,
 							 pipe_config,
 							 false,
 							 &limits);
@@ -426,6 +494,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(intel_dp->force_dsc_en));
 
 		if (!intel_dp_mst_compute_config_limits(intel_dp,
+							connector,
 							pipe_config,
 							true,
 							&limits))
@@ -1205,6 +1274,36 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
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
@@ -1245,6 +1344,8 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	 */
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
 	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
+	intel_connector->dp.dsc_hblank_expansion_quirk =
+		detect_dsc_hblank_expansion_quirk(intel_connector);
 
 	for_each_pipe(dev_priv, pipe) {
 		struct drm_encoder *enc =
-- 
2.39.2

