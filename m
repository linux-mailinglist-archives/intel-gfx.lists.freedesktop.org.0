Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2BF9F09D1
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 11:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E4DF10EFB4;
	Fri, 13 Dec 2024 10:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apxuhD1L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1C2F10EFB1;
 Fri, 13 Dec 2024 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734086443; x=1765622443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=luBaj98RkW+49s/cCqsj8kUks2/fHrk6EvAtDlHsvdQ=;
 b=apxuhD1LmWQvZ9Rw8ycDcZ4kM6duzTUj0CPqUwwd/p6F7IzE5HlVIJ/Y
 jwGh9cq1zJiMiCB1+uf/vJebwNk0LUilkeu4kiuk/1MHh/GLUYlpAv/Qh
 cEE2Qek8E1OC/s83KlQxM7dTr+uDglPsv0frm4kenmoIrJUzV36KIygxO
 xBNl/9MTyzrtQ5ZYh///rNWyUi/f0LuzLWlVf6SXG7cbfbSo/wh4DHQfF
 Ttp7/VwoU178T3QqRI2pElNciTeb3LULSWLLwaZAaN7gRkWtqSJwz1lGc
 F3qemlU6E9tJYnhqo7e60w8qY1P63hsvLqa1SvEy2Ug6QopaUIc3qjFL+ g==;
X-CSE-ConnectionGUID: aLPuI1nwRam+4tKEhEHrKQ==
X-CSE-MsgGUID: Qiz1cZlISSmsXNhgG0uyTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671029"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="34671029"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:42 -0800
X-CSE-ConnectionGUID: UDNsuzosRumxGZ+dAsZ4jQ==
X-CSE-MsgGUID: I5sMYa05RM6Ten1W1sEYig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="97287446"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 02:40:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, imre.deak@intel.com, ville.syrjala@linux.intel.com,
 nagavenkata.srikanth.v@intel.com
Subject: [RFC v0 06/13] drm/i915/mst: add helper independent of MST for
 figuring out the TU
Date: Fri, 13 Dec 2024 12:39:50 +0200
Message-Id: <ba87442b99f439c4ee544743f9ea8d77b88a1ce3.1734085515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1734085515.git.jani.nikula@intel.com>
References: <cover.1734085515.git.jani.nikula@intel.com>
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

Extract intel_dp_mtp_tu_compute_config() independent of MST for figuring
out the TU. Move the link configuration and mst state access to the
callers. This should be usable for 128b/132b SST as well.

The name isn't great, and it's all a bit too interconnected instead of
having more generic building blocks, but should do the job.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 64 ++++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  7 +++
 2 files changed, 50 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5218b1f7679a..8ad42c757ddf 100644
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
@@ -320,15 +312,20 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 		 * allocated for the whole path and the TUs allocated for the
 		 * first branch device's link also applies here.
 		 */
-		pbn.full = remote_tu * mst_state->pbn_div.full;
+		pbn.full = remote_tu * pbn_div.full;
 		crtc_state->pbn = dfixed_trunc(pbn);
 
 		drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
 		crtc_state->dp_m_n.tu = remote_tu;
 
-		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
-						      connector->port,
-						      crtc_state->pbn);
+		if (intel_dp->is_mst)
+			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
+							      connector->port,
+							      crtc_state->pbn);
+		else
+			/* FIXME: cross-check against pbn_div? */
+			slots = crtc_state->dp_m_n.tu;
+
 		if (slots == -EDEADLK)
 			return slots;
 
@@ -356,6 +353,31 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
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

