Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 107BE7BB92C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0295510E4EC;
	Fri,  6 Oct 2023 13:37:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4EF810E4E9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599430; x=1728135430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=z5xApP8pE6wlLKry8xykL0h0kT/NesdF3hM4C95cm+c=;
 b=XqtIqXVOVRh4Y69V0ZFe8zlL6l+l60kWFyPJ6GSrBk9RPPXIamPaPPuq
 UTrgDIWp6Rsl0iODzjOnkiQe1FNRFxwaksIT4kv7F/mNt+VWhd+abQDe6
 MbmNPQ0WVy5pu0aNC1lYkpEFOayItQW5qP/6kVRHBs8wBGv/hAJ+qINgV
 fLXln231kt1/s5+kCSGI4N2UwgODiV3kQrNwrp6JXxz8Xh7iEoT9p65Ub
 K6IHRBUnX6ZQFGFM0b3YcaEmJqCxd834Tl93wHiuisu7coO0JrLNRa2m4
 Px8asXuOi/pQ1u7oIePqO9RElm+teBxRCjBxgja0B7myawFKo1tcP46gJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019081"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019081"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841367"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841367"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:11 +0300
Message-Id: <20231006133727.1822579-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/19] drm/i915/dp_mst: Set connector DSC
 capabilities and decompression AUX
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

Similarly to eDP and SST-DP connectors read out the DSC capabilities for
MST connectors as well. Atm these will match the root port's DSC caps
and only used after a follow-up change enables the decompression for
each stream separately (vs. the current way of enabling it only globally
in the first branch device downstream of the root port).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++++++++++++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c7dd65a27a1b0..6e6b3fe593453 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3467,8 +3467,8 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
 	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
 }
 
-static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
-				      struct intel_connector *connector)
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
+			       struct intel_connector *connector)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 2cf3681bac64a..bd9cb9680b4cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -162,4 +162,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 					bool dsc,
 					struct link_config_limits *limits);
 
+void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp,
+			       struct intel_connector *connector);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 73e3977364632..e01f669d2c8a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1126,6 +1126,21 @@ static int intel_dp_mst_add_properties(struct intel_dp *intel_dp,
 	return drm_connector_set_path_property(connector, pathprop);
 }
 
+static void
+intel_dp_mst_read_decompression_port_dsc_caps(struct intel_dp *intel_dp,
+					      struct intel_connector *connector)
+{
+	u8 dpcd_caps[DP_RECEIVER_CAP_SIZE];
+
+	if (!connector->dp.dsc_decompression_aux)
+		return;
+
+	if (drm_dp_read_dpcd_caps(connector->dp.dsc_decompression_aux, dpcd_caps) < 0)
+		return;
+
+	intel_dp_get_dsc_sink_cap(dpcd_caps[DP_DPCD_REV], intel_dp, connector);
+}
+
 static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
 							struct drm_dp_mst_port *port,
 							const char *pathprop)
@@ -1159,6 +1174,14 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 
 	drm_connector_helper_add(connector, &intel_dp_mst_connector_helper_funcs);
 
+	/*
+	 * TODO: set the AUX for the actual MST port decompressing the stream.
+	 * At the moment the driver only supports enabling this globally in the
+	 * first downstream MST branch, via intel_dp's (root port) AUX.
+	 */
+	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
+	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
+
 	for_each_pipe(dev_priv, pipe) {
 		struct drm_encoder *enc =
 			&intel_dp->mst_encoders[pipe]->base.base;
-- 
2.39.2

