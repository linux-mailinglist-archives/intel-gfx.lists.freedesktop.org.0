Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C0F777940
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 15:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7813010E523;
	Thu, 10 Aug 2023 13:08:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFB410E532;
 Thu, 10 Aug 2023 13:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691672902; x=1723208902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5pQ/XqvtwYzPv/DsMWrp19iqzyGzttqvzoUla8hshG0=;
 b=Hdpxd3ZZEO0c/7DLx+rIqoEZsdXVoF42UAl1lyzE2FjOnJFuk78t7PoR
 kpe8oQ9FXZPJkWI+bwj9eBZdHSPX9420UJNDS5CwRGMHI8g95GJ8OJ4Qf
 Oh1RkE2joGUlbqNlgs+THgueRyZjA0Z9BAL6EM0uvgGTIOeTiWhnnDc3r
 G79TjhTTvxfQOYoSIkRShzgXEtR8E6+bnUL08tVg822yvDod5Nr/fNHjk
 VJM5XFg0IMWghKusqoiDsbm8WlT6mIygjQ3yWVKM9y1YEEhgZWItizcfm
 bq4XGwOyvxbaPI4CFZ0tZToUW5b8WkTrUAFWllvzeX1nuqKmGgg8/E0BC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="356358671"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="356358671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 06:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10797"; a="709143703"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="709143703"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 06:07:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 10 Aug 2023 18:33:19 +0530
Message-Id: <20230810130319.3708392-21-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230810130319.3708392-1-ankit.k.nautiyal@intel.com>
References: <20230810130319.3708392-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 20/20] drm/i915: Query compressed bpp properly
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
 drivers/gpu/drm/i915/display/intel_dp.c     | 20 +++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 47 +++++++++------------
 3 files changed, 36 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9e904bb4ac5c..bdaa2249409d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1789,7 +1789,7 @@ u16 intel_dp_dsc_max_sink_compressed_bppx16(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
+int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 {
 	/* From Mandatory bit rate range Support Table 2-157 (DP v2.0) */
 	switch (pipe_config->output_format) {
@@ -1806,9 +1806,9 @@ static int dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config)
 	return 0;
 }
 
-static int dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
-				       struct intel_crtc_state *pipe_config,
-				       int bpc)
+int intel_dp_dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *pipe_config,
+					 int bpc)
 {
 	return intel_dp_dsc_max_sink_compressed_bppx16(intel_dp,
 						       pipe_config, bpc) >> 4;
@@ -1921,11 +1921,13 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int dsc_joiner_max_bpp;
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(intel_dp,
+								pipe_config,
+								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
@@ -2074,11 +2076,13 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	pipe_config->lane_count = limits->max_lane_count;
 
 	dsc_src_min_bpp = dsc_src_min_compressed_bpp();
-	dsc_sink_min_bpp = dsc_sink_min_compressed_bpp(pipe_config);
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(pipe_config);
 	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
 
 	dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
-	dsc_sink_max_bpp = dsc_sink_max_compressed_bpp(intel_dp, pipe_config, pipe_bpp / 3);
+	dsc_sink_max_bpp = intel_dp_dsc_sink_max_compressed_bpp(intel_dp,
+								pipe_config,
+								pipe_bpp / 3);
 	dsc_max_bpp = dsc_sink_max_bpp ? min(dsc_sink_max_bpp, dsc_src_max_bpp) : dsc_src_max_bpp;
 
 	/* Compressed BPP should be less than the Input DSC bpp */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 788a577ebe16..f29e48028f39 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -114,6 +114,10 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
 					enum intel_output_format output_format,
 					u32 pipe_bpp,
 					u32 timeslots);
+int intel_dp_dsc_sink_min_compressed_bpp(struct intel_crtc_state *pipe_config);
+int intel_dp_dsc_sink_max_compressed_bpp(struct intel_dp *intel_dp,
+					 struct intel_crtc_state *pipe_config,
+					 int bpc);
 u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 				int mode_clock, int mode_hdisplay,
 				bool bigjoiner);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 3eb085fbc7c8..06a456517383 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -101,6 +101,9 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 							      crtc_state->lane_count);
 	}
 
+	drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d max bpp %d\n",
+		    min_bpp, max_bpp);
+
 	for (bpp = max_bpp; bpp >= min_bpp; bpp -= step) {
 		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
 
@@ -194,8 +197,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	u8 dsc_bpc[3] = {0};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
 	u8 dsc_max_bpc;
-	bool need_timeslot_recalc = false;
-	u32 last_compressed_bpp;
+	int min_compressed_bpp, max_compressed_bpp;
 
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
 	if (DISPLAY_VER(i915) >= 12)
@@ -231,34 +233,25 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 	if (max_bpp > sink_max_bpp)
 		max_bpp = sink_max_bpp;
 
-	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_bpp,
-						     min_bpp, limits,
-						     conn_state, 2 * 3, true);
-
-	if (slots < 0)
-		return slots;
-
-	last_compressed_bpp = crtc_state->dsc.compressed_bpp;
+	max_compressed_bpp = intel_dp_dsc_sink_max_compressed_bpp(intel_dp,
+								  crtc_state,
+								  max_bpp / 3);
+	min_compressed_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state);
+	drm_dbg_kms(&i915->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
+		    min_compressed_bpp, max_compressed_bpp);
 
-	crtc_state->dsc.compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915,
-									last_compressed_bpp,
-									crtc_state->pipe_bpp);
+	/* Align compressed bpps according to our own constraints */
+	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, max_compressed_bpp,
+							    crtc_state->pipe_bpp);
+	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
+							    crtc_state->pipe_bpp);
 
-	if (crtc_state->dsc.compressed_bpp != last_compressed_bpp)
-		need_timeslot_recalc = true;
+	slots = intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
+						     min_compressed_bpp, limits,
+						     conn_state, 1, true);
 
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
+	if (slots < 0)
+		return slots;
 
 	intel_link_compute_m_n(crtc_state->dsc.compressed_bpp,
 			       crtc_state->lane_count,
-- 
2.40.1

