Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD051A21F8A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24E2310E80C;
	Wed, 29 Jan 2025 14:47:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TNcdrW46";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8AC10E80F;
 Wed, 29 Jan 2025 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162029; x=1769698029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2CQ4jOenFJUhRQX5hh7iUAULaQaRZqgAbkQw6tjcZhs=;
 b=TNcdrW46BWv6B4hYXe/5/1PuUX+2PDvQpl99q+jDm18BxX+yQ+0MSv+K
 jByAYoGsNTJmCcjTF6cU11ftb1QuG7QfhjXbf8mbFPO2ZhHPL0Awx5z5a
 mgIqRB2YFXZylDbmah5mXHJCN9tkHSwbRfFpScfWFGNmWKQ+SdNsH34SF
 BybcfgozouAGRs3GCJO/p2Bt7CYAyWS0YxEbFuNyv4V07Bp2jGwL7E9YU
 vNA/PmQGE4ohvC19Y/nR4RYsHEtH7YbY0UNQjVuT224QVJc+N8eNtbw1J
 glDzU6WveOTn/Qt6CmUPA7D6XXkhL+ArcoCuvraHniAHboI9pMwXdE1KM g==;
X-CSE-ConnectionGUID: mrIy7LnaTU6aixrmXSL+Ow==
X-CSE-MsgGUID: cPjorRLYRtqEQNa2LHxTsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040647"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040647"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:08 -0800
X-CSE-ConnectionGUID: u9FNSr7rQF69QLx7imacvw==
X-CSE-MsgGUID: V/dsfaSFR4+D6lrfxURkFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113057047"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 4/6] drm/i915/mst: handle mst pbn_div in
 intel_dp_mtp_tu_compute_config()
Date: Wed, 29 Jan 2025 16:46:36 +0200
Message-Id: <0cc1b507601c9964ebae7d50b1f90b1ce00acb11.1738161945.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738161945.git.jani.nikula@intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
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

Move mst_state->pbn_div calculation to intel_dp_mtp_tu_compute_config()
to allow further refactoring.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 31 ++++++++++-----------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ea1b05224c06..8786c8751c82 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -216,15 +216,25 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_atomic_state *state = crtc_state->uapi.state;
+	struct drm_dp_mst_topology_state *mst_state = NULL;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	fixed20_12 pbn_div;
+	bool is_mst = intel_dp->is_mst;
 	int bpp, slots = -EINVAL;
 	int dsc_slice_count = 0;
 	int max_dpt_bpp;
 
+	if (is_mst) {
+		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
+		if (IS_ERR(mst_state))
+			return PTR_ERR(mst_state);
+
+		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
+							      crtc_state->lane_count);
+	}
+
 	if (dsc) {
 		if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
 			return -EINVAL;
@@ -232,9 +242,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		crtc_state->fec_enable = !intel_dp_is_uhbr(crtc_state);
 	}
 
-	pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
-					   crtc_state->lane_count);
-
 	max_dpt_bpp = intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
 	if (max_bpp > max_dpt_bpp) {
 		drm_dbg_kms(display->drm, "Limiting bpp to max DPT bpp (%d -> %d)\n",
@@ -270,7 +277,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 					 link_bpp_x16,
 					 &crtc_state->dp_m_n);
 
-		if (intel_dp->is_mst) {
+		if (is_mst) {
 			int remote_bw_overhead;
 			int remote_tu;
 			fixed20_12 pbn;
@@ -295,7 +302,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 			pbn.full = dfixed_const(intel_dp_mst_calc_pbn(adjusted_mode->crtc_clock,
 								      link_bpp_x16,
 								      remote_bw_overhead));
-			remote_tu = DIV_ROUND_UP(pbn.full, pbn_div.full);
+			remote_tu = DIV_ROUND_UP(pbn.full, mst_state->pbn_div.full);
 
 			/*
 			 * Aligning the TUs ensures that symbols consisting of multiple
@@ -313,7 +320,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 			 * allocated for the whole path and the TUs allocated for the
 			 * first branch device's link also applies here.
 			 */
-			pbn.full = remote_tu * pbn_div.full;
+			pbn.full = remote_tu * mst_state->pbn_div.full;
 
 			drm_WARN_ON(display->drm, remote_tu < crtc_state->dp_m_n.tu);
 			crtc_state->dp_m_n.tu = remote_tu;
@@ -365,16 +372,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct drm_connector_state *conn_state,
 					      int step, bool dsc)
 {
-	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct drm_dp_mst_topology_state *mst_state;
-
-	mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst_mgr);
-	if (IS_ERR(mst_state))
-		return PTR_ERR(mst_state);
-
-	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
-						      crtc_state->lane_count);
-
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
 					      min_bpp, max_bpp, step, dsc);
 }
-- 
2.39.5

