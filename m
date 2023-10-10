Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F117A7BF9A0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7CB910E1E3;
	Tue, 10 Oct 2023 11:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6062910E1DF
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937082; x=1728473082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GVB7NHNzkHSjSpiku7WBQdQJRTjxWWOAKL7/5MeAxnc=;
 b=EVARB71IzIocXnyi26ZBcEUsRAFWprMgcOQWIMVxISUQsFg1mCdnRuoW
 7xPS8ueTQDUf1xQpjIjx7nd+9qdEsHiXPen6gt26x/lnUsxmlQqT5fOPh
 TLsZjco6WE+wb724U8b0zffgiQBNU1YIrZLvsyx+EdB8Zfw0gpfpP3T/N
 rMbywdCuH2fI8oAGpP0p1lrFl/CndoepZlXXywuhiddbT8fiM4XOfltje
 jI2O0Fhh6wGjIzkH3NJKatpGm6A05RzANlG6lrUylWgioZ4z2ljZTfQ1h
 9blzrdDdEHlyeIuu4gkZP9vC17EdNuZQWuz9zVneDuT4kgv5mKmMaTe9D A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387206347"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="387206347"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="757078040"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="757078040"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:24:41 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:25:03 +0300
Message-Id: <20231010112504.2156789-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-4-imre.deak@intel.com>
References: <20231006133727.1822579-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/19] drm/i915/dp_mst: Set connector DSC
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

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 +++++++++++++++++++++
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b2b0db5c24ec..2b9af92fb8cf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3483,8 +3483,8 @@ static void intel_dp_read_dsc_dpcd(struct drm_dp_aux *aux,
 		    dsc_dpcd);
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

