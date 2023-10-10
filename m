Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435207BF9A1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9AA110E1E4;
	Tue, 10 Oct 2023 11:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADBF710E1E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937083; x=1728473083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=155a0X9dnfmBFkcOJT9WJPneqLGkKbN5E8ye7USNoyU=;
 b=VWhzrViDFjTAYMqIDu8RKxcRHoN+NQ0QCQJCGT3ju+o5qwULMvC/v37i
 7MjO7IS/ZsJC5/czCgPJUM/q1DmOR4bZ9gd376FoQjfB8GYqeHRUdFirG
 DiA37i9VuP/LGl2nkuDe761U6ntWf1FUDaORNk2+NuHpWGyi6WY9RugnO
 AJP0w8mmrQEnQ62yAxFVhnyERfnGQva4ZNiJVstuQZxhpmO8mas0HivCy
 OYvgN789gLk+n3Mwy8cFFhDKuV0qN2v+kSyrjy1fetdP2rKg5vijf93BZ
 h2oVLlWGv8geipxetLLKpN94zc+itY4Iu4zH1x2uA4rbd/DN/fDa8DrCy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387206349"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="387206349"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="757078045"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="757078045"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:25:04 +0300
Message-Id: <20231010112504.2156789-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-20-imre.deak@intel.com>
References: <20231006133727.1822579-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 19/19] drm/i915/dp: Remove unused DSC caps
 from intel_dp
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

The previous patches converted all users of the DSC DPCD caps to look
these up from the connector, so remove the version stored in intel_dp.

A follow-up patchset will read out the MST connector specific
capabilities in intel_dp_add_mst_connector() ->
intel_dp_mst_read_decompression_port_dsc_caps().

v2:
- Rebased on intel_edp_get_dsc_sink_cap() addition in the patchset.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 --
 drivers/gpu/drm/i915/display/intel_dp.c       | 28 +++----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 4 files changed, 6 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d6600079bcf74..65ea37fe8cff3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1725,10 +1725,8 @@ struct intel_dp {
 	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
 	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
 	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
-	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
 	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
 	u8 lttpr_phy_caps[DP_MAX_LTTPR_COUNT][DP_LTTPR_PHY_CAP_SIZE];
-	u8 fec_capable;
 	u8 pcon_dsc_dpcd[DP_PCON_DSC_ENCODER_CAP_SIZE];
 	/* source rates */
 	int num_source_rates;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ef9cc6e8c88c..b801df1f2ee8f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3490,10 +3490,9 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
 }
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
-			       struct intel_connector *connector)
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
 	/*
 	 * Clear the cached register set to avoid using stale values
@@ -3518,27 +3517,14 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
 
 	drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
 		    connector->dp.fec_capability);
-
-	/*
-	 * TODO: remove the following intel_dp copies once all users
-	 * are converted to look up DSC DPCD/FEC capability via the
-	 * connector.
-	 */
-	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
-	       sizeof(intel_dp->dsc_dpcd));
-	intel_dp->fec_capable = connector->dp.fec_capability;
 }
 
-static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_dp *intel_dp,
-				       struct intel_connector *connector)
+static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
 {
 	if (edp_dpcd_rev < DP_EDP_14)
 		return;
 
 	intel_dp_read_dsc_dpcd(connector->dp.dsc_decompression_aux, connector->dp.dsc_dpcd);
-
-	memcpy(intel_dp->dsc_dpcd, connector->dp.dsc_dpcd,
-	       sizeof(intel_dp->dsc_dpcd));
 }
 
 static void intel_edp_mso_mode_fixup(struct intel_connector *connector,
@@ -3710,7 +3696,6 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 	/* Read the eDP DSC DPCD registers */
 	if (HAS_DSC(dev_priv))
 		intel_edp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
-					   intel_dp,
 					   connector);
 
 	/*
@@ -5406,11 +5391,6 @@ intel_dp_detect(struct drm_connector *connector,
 
 	if (status == connector_status_disconnected) {
 		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
-		/*
-		 * TODO: Remove clearing the DPCD in intel_dp, once all
-		 * user are converted to using the DPCD in connector.
-		 */
-		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
 		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
 
 		if (intel_dp->is_mst) {
@@ -5429,7 +5409,7 @@ intel_dp_detect(struct drm_connector *connector,
 	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
 	if (HAS_DSC(dev_priv))
 		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
-					  intel_dp, intel_connector);
+					  intel_connector);
 
 	intel_dp_configure_mst(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 51edb587e4d24..484aea215a251 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -163,7 +163,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					bool dsc,
 					struct link_config_limits *limits);
 
-void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
-			       struct intel_connector *connector);
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_connector *connector);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a065388c2199f..47f1efb50ea26 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1136,7 +1136,7 @@ intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
 	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd_caps) < 0)
 		return;
 
-	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], intel_dp, connector);
+	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], connector);
 }
 
 static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
-- 
2.39.2

