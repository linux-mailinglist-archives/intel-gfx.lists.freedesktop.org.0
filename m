Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CE77D44A7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:10:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A6510E2AE;
	Tue, 24 Oct 2023 01:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3241010E2C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109777; x=1729645777;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=35YGti+12PbLss01tPYIGJNxmLeqIHUE9mmm3NvaG7s=;
 b=h6fZ3e0dc5LabPKrvGJ3qz1amiJly39aVeJMpCcDQ4y6fbphB9v+DeRI
 WQ/whckLG6Vy+tVh2NpaH3XpiNa5Jkcp4wzy88mvceRHLRDlebBnmT0gD
 A9LgvqZkKEmSve83gYQqOtUc7dUEH40z8VzE/S6WqtubYgn2QzvYqlLsk
 ZfmfXDErWHbaXxnYlrhF8XobNuOpteHV5Db6zq0+DerPP4VMRnjVAa2gS
 MbA5aPfV3aEHcPj+zbM5NP/l/ALpqzT0W3yyGiT0T3Slvgf71PHnaTzV6
 iIRoU1XpBD1Kpl/yrk0SiQVLXVqrRMJc7or4Bi488TJdrxuqaqT4OBEye w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304414"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304414"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870197"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870197"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:35 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:25 +0300
Message-Id: <20231024010925.3949910-30-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 29/29] drm/i915: Query compressed bpp properly
 using correct DPCD and DP Spec info
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

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Currently we seem to be using wrong DPCD register for reading
compressed bpps, reading min/max input bpc instead of compressed bpp.
Fix that, so that we now apply min/max compressed bpp limitations we
get from DP Spec Table 2-157 DP v2.0 and/or correspondent DPCD
register DP_DSC_MAX_BITS_PER_PIXEL_LOW/HIGH.

This might also allow us to get rid of an ugly compressed bpp
recalculation, which we had to add to make some MST hubs usable.

v2: - Fix operator precedence
v3: - Added debug info about compressed bpps
v4: - Don't try to intersect Sink input bpp and compressed bpps.
v5: - Decrease step while looking for suitable compressed bpp to
      accommodate.
v6: - Use helper for getting min and max compressed_bpp (Ankit)
v7: - Fix checkpatch warning (Ankit)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++---
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 54 ++++++++++-----------
 3 files changed, 41 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 969f19484c53c..c926478621753 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1811,7 +1811,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(const struct intel_connector *connec
 	return 0;
 }
 
-static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -1828,9 +1828,9 @@ static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 	return 0;
 }
 
-static int dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
-				       struct intel_crtc_state *pipe_config,
-				       int bpc)
+int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
+					 struct intel_crtc_state *pipe_config,
+					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(connector,
 						       pipe_config, bpc) >> 4;
@@ -1944,12 +1944,14 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_joiner_max_bpp;
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+								pipe_config,
+								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
@@ -2104,12 +2106,14 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->lane_count = limits->max_lane_count;
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 	dsc_min_bpp = max(dsc_min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(connector, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+								pipe_config,
+								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 75ffab92bba41..af535b3f03ae9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -126,6 +126,10 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
+int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
+int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
+					 struct intel_crtc_state *pipe_config,
+					 int bpc);
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index d6c52906ac6c3..457ace825d931 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -157,6 +157,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 						      crtc_state->port_clock,
 						      crtc_state->lane_count);
 
+	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
+		    min_bpp, max_bpp);
+
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		struct intel_link_m_n remote_m_n;
 		int link_bpp;
@@ -246,8 +249,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
 	u8 dsc_max_bpc;
-	bool need_timeslot_recalc = false;
-	u32 last_compressed_bpp;
+	int min_compressed_bpp, max_compressed_bpp;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -283,38 +285,32 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	if (max_bpp > sink_max_bpp)
 		max_bpp = sink_max_bpp;
 
-	min_bpp = max(min_bpp, to_bpp_int_roundup(limits->link.min_bpp_x16));
-	max_bpp = min(max_bpp, to_bpp_int(limits->link.max_bpp_x16));
+	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(connector,
+								  crtc_state,
+								  max_bpp / 3);
+	max_compressed_bpp = min(max_compressed_bpp,
+				 to_bpp_int(limits->link.max_bpp_x16));
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
-						     min_bpp, limits,
-						     conn_state, 2 * 3, true);
+	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
+	min_compressed_bpp = max(min_compressed_bpp,
+				 to_bpp_int_roundup(limits->link.min_bpp_x16));
+
+	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
+		    min_compressed_bpp, max_compressed_bpp);
+
+	/* Align compressed bpps according to our own constraints */
+	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp,
+							    crtc_state->pipe_bpp);
+	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
+							    crtc_state->pipe_bpp);
+
+	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
+						     min_compressed_bpp, limits,
+						     conn_state, 1, true);
 
 	if (slots < 0)
 		return slots;
 
-	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
-
-	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
-									last_compressed_bpp,
-									crtc_state->pipe_bpp);
-
-	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
-		need_timeslot_recalc = true;
-
-	/*
-	 * Apparently some MST hubs dislike if vcpi slots are not matching precisely
-	 * the actual compressed bpp we use.
-	 */
-	if (need_timeslot_recalc) {
-		slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
-							     crtc_state->dsc.compressed_bpp,
-							     crtc_state->dsc.compressed_bpp,
-							     limits, conn_state, 2 * 3, true);
-		if (slots < 0)
-			return slots;
-	}
-
 	return 0;
 }
 static int intel_dp_mst_update_slots(struct intel_encoder *encoder,
-- 
2.39.2

