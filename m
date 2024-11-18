Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3AD9D1392
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 15:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EF410E4F3;
	Mon, 18 Nov 2024 14:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="et9/SgRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D00F010E4F3;
 Mon, 18 Nov 2024 14:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731941358; x=1763477358;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JQk3IUyTedWd4g9L3P/WCCqDkhWr5kdNg3IGrxq1A1k=;
 b=et9/SgRaeADErVk5BLB39ju0AI8GtWZZLXaL6c6Uup1CTRSOn6pSXAZ/
 2jUEoh9YFOqPSnDcF3H2Yb0ablEID+Ou/QcIVNJFWQewCa0uA+YWvQN8z
 MBbSN3HakjJ5NZG3KLedSOBaflVDYadRsflUEcFQ1MuqzNod67vA3sIwP
 XLqAQyAmk7H7X+rXz710lKA2WWs5YjEcSUii+FIjDG2yKTW4tZTIk6Rdk
 e4D2wupYHE4PRaYEGYJSQDSdqAx8u24sNzSgm1H55EMazgOF1+McX+5aM
 uES2Evm5wF5w3JfNzsuTtvKXqtH5ImLJKIOwxxuie9PkD0W/LMhPdYuQQ g==;
X-CSE-ConnectionGUID: CwUl8LKzR2u30H0JyWipFw==
X-CSE-MsgGUID: 6nLv5BPyRnGXKVKJZy0r2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="42414855"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="42414855"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:17 -0800
X-CSE-ConnectionGUID: cJjTyTlgTvuthfiwZIwxDQ==
X-CSE-MsgGUID: oWL2qNzKRvC+p2+ZOH220Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="120184629"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 06:49:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [PATCH 01/11] drm/i915/mst: pass intel_dp around in mst stream helpers
Date: Mon, 18 Nov 2024 16:48:56 +0200
Message-Id: <3bb9bd3e28ed7c19e4743d57e30e0be36075c800.1731941270.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731941270.git.jani.nikula@intel.com>
References: <cover.1731941270.git.jani.nikula@intel.com>
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

All of the functions in question operate on the primary encoder, and
more specifically the primary intel_dp, so pass it around instead of the
encoder for less ambiguity.

Suggested-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 ++++++++++-----------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index df7edcfe885b..acc580415628 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -179,16 +179,15 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
 					    num_joined_pipes);
 }
 
-static int mst_stream_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
+static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      int max_bpp, int min_bpp,
 					      struct link_config_limits *limits,
 					      struct drm_connector_state *conn_state,
 					      int step, bool dsc)
 {
-	struct intel_display *display = to_intel_display(encoder);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_atomic_state *state = crtc_state->uapi.state;
-	struct intel_dp *intel_dp = to_primary_dp(encoder);
 	struct drm_dp_mst_topology_state *mst_state;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -331,7 +330,7 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
 	return slots;
 }
 
-static int mst_stream_compute_link_config(struct intel_encoder *encoder,
+static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *crtc_state,
 					  struct drm_connector_state *conn_state,
 					  struct link_config_limits *limits)
@@ -342,7 +341,7 @@ static int mst_stream_compute_link_config(struct intel_encoder *encoder,
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
 	 * YUV420 is only half of the pipe bpp value.
 	 */
-	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state,
+	slots = mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
 						   fxp_q4_to_int(limits->link.max_bpp_x16),
 						   fxp_q4_to_int(limits->link.min_bpp_x16),
 						   limits,
@@ -354,12 +353,12 @@ static int mst_stream_compute_link_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
+static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      struct drm_connector_state *conn_state,
 					      struct link_config_limits *limits)
 {
-	struct intel_display *display = to_intel_display(encoder);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int slots = -EINVAL;
@@ -424,7 +423,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
 	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(i915, min_compressed_bpp,
 							    crtc_state->pipe_bpp);
 
-	slots = mst_stream_find_vcpi_slots_for_bpp(encoder, crtc_state, max_compressed_bpp,
+	slots = mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
 						   min_compressed_bpp, limits,
 						   conn_state, 1, true);
 
@@ -434,12 +433,11 @@ static int mst_stream_dsc_compute_link_config(struct intel_encoder *encoder,
 	return 0;
 }
 
-static int mst_stream_update_slots(struct intel_encoder *encoder,
+static int mst_stream_update_slots(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *crtc_state,
 				   struct drm_connector_state *conn_state)
 {
-	struct intel_display *display = to_intel_display(encoder);
-	struct intel_dp *intel_dp = to_primary_dp(encoder);
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
 	struct drm_dp_mst_topology_state *topology_state;
 	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
@@ -632,7 +630,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 						  pipe_config, false, &limits);
 
 	if (!dsc_needed) {
-		ret = mst_stream_compute_link_config(encoder, pipe_config,
+		ret = mst_stream_compute_link_config(intel_dp, pipe_config,
 						     conn_state, &limits);
 
 		if (ret == -EDEADLK)
@@ -668,7 +666,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		 */
 		drm_dbg_kms(display->drm, "Trying to find VCPI slots in DSC mode\n");
 
-		ret = mst_stream_dsc_compute_link_config(encoder, pipe_config,
+		ret = mst_stream_dsc_compute_link_config(intel_dp, pipe_config,
 							 conn_state, &limits);
 		if (ret < 0)
 			return ret;
@@ -681,7 +679,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	ret = mst_stream_update_slots(encoder, pipe_config, conn_state);
+	ret = mst_stream_update_slots(intel_dp, pipe_config, conn_state);
 	if (ret)
 		return ret;
 
-- 
2.39.5

