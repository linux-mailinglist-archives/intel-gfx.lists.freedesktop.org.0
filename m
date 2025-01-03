Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AB8A00A12
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C79C10E8CA;
	Fri,  3 Jan 2025 13:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gt98tCXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E355A10E8C9;
 Fri,  3 Jan 2025 13:53:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912395; x=1767448395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/q0tFjGcUbpWXfPwcN/jnXSinGdAZj/Kb5RtebRt8dE=;
 b=Gt98tCXigpq4I52IwwzsAVZRuHF2MP+phZMT/P6KZAA0/+N8ETCXpju3
 mbvfyaJBQHsu+DpyqyFDHG09PlgI7AHZR+UZpVNdcHsPYExg4U/y+/8d9
 pJYZug1rWHBx3WLpaK3V/RxbcpAc3NApcnaCOLW6wODPBzA7AhHCspad0
 rM+RDpXWO6vGy9zo6LQjAws/H6089B8LZBcPf5P+Ib3fKAMzoz28wc183
 qvbbmJ94KMeFG1LA+OrTBQKuiK5a2AkG2mJylgZG3zXi7A3dz1ibdZkSk
 HRXtn43mmcg/Th2sP748i898/nHkHTHvcva/Bnd4E60/K6/IK6MV1S6qH w==;
X-CSE-ConnectionGUID: DFgVgyWoQyOsPQ2F5ULc6w==
X-CSE-MsgGUID: GCXDhf8HQ+yTdlMd/tPujA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573816"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573816"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:15 -0800
X-CSE-ConnectionGUID: bTjsr10ZT7ucdyb0LndNHA==
X-CSE-MsgGUID: b3vteWeKRQW9oAsCByCnMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716732"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:53:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 06/16] drm/i915/mst: split out a helper for figuring out
 the TU
Date: Fri,  3 Jan 2025 15:52:29 +0200
Message-Id: <c3ea8370c9bd3cdc579159e68a63f4ed2fadc66a.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1735912293.git.jani.nikula@intel.com>
References: <cover.1735912293.git.jani.nikula@intel.com>
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

Extract intel_dp_mtp_tu_compute_config() for figuring out the TU. Move
the link configuration and mst state access to the callers. This will be
easier to adapt to 128b/132b SST.

v2: Don't add SST stuff here yet

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 53 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  7 +++
 2 files changed, 42 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5f1582ad9d41..e1d56a689962 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -209,31 +209,23 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
-static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
-					      struct intel_crtc_state *crtc_state,
-					      int max_bpp, int min_bpp,
-					      struct link_config_limits *limits,
-					      struct drm_connector_state *conn_state,
-					      int step, bool dsc)
+int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state,
+				   int max_bpp, int min_bpp,
+				   struct drm_connector_state *conn_state,
+				   int step, bool dsc)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct drm_dp_mst_topology_state *mst_state;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
+	fixed20_12 pbn_div;
 	int bpp, slots = -EINVAL;
 	int dsc_slice_count = 0;
 	int max_dpt_bpp;
 
-	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
-	if (IS_ERR(mst_state))
-		return PTR_ERR(mst_state);
-
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
-
 	if (dsc) {
 		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
 			return -EINVAL;
@@ -241,8 +233,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
 	}
 
-	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
-						      crtc_state->lane_count);
+	pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
+					   crtc_state->lane_count);
 
 	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
 	if (max_bpp > max_dpt_bpp) {
@@ -302,7 +294,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
 							      link_bpp_x16,
 							      remote_bw_overhead));
-		remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
+		remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
 
 		/*
 		 * Aligning the TUs ensures that symbols consisting of multiple
@@ -320,7 +312,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		 * allocated for the whole path and the TUs allocated for the
 		 * first branch device's link also applies here.
 		 */
-		pbn.full = remote_tu * mst_state->pbn_div.full;
+		pbn.full = remote_tu * pbn_div.full;
 
 		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
 		crtc_state->dp_m_n.tu = remote_tu;
@@ -355,6 +347,31 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
+					      struct intel_crtc_state *crtc_state,
+					      int max_bpp, int min_bpp,
+					      struct link_config_limits *limits,
+					      struct drm_connector_state *conn_state,
+					      int step, bool dsc)
+{
+	struct drm_atomic_state *state = crtc_state->uapi.state;
+	struct drm_dp_mst_topology_state *mst_state;
+
+	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
+	if (IS_ERR(mst_state))
+		return PTR_ERR(mst_state);
+
+	crtc_state->lane_count = limits->max_lane_count;
+	crtc_state->port_clock = limits->max_rate;
+
+	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
+						      crtc_state->lane_count);
+
+	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state,
+					      max_bpp, min_bpp,
+					      conn_state, step, dsc);
+}
+
 static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *crtc_state,
 					  struct drm_connector_state *conn_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index 8343804ce3f8..c6bdc1d190a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -8,6 +8,7 @@
 
 #include <linux/types.h>
 
+struct drm_connector_state;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -30,4 +31,10 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
 void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp);
 bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
 
+int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
+				   struct intel_crtc_state *crtc_state,
+				   int max_bpp, int min_bpp,
+				   struct drm_connector_state *conn_state,
+				   int step, bool dsc);
+
 #endif /* __INTEL_DP_MST_H__ */
-- 
2.39.5

