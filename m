Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020269D3AD7
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A88FC10E73C;
	Wed, 20 Nov 2024 12:43:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Swufmp46";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52FD10E73A;
 Wed, 20 Nov 2024 12:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732106609; x=1763642609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YbCMy1GQpo9dKdseJElflxEtXADmHFOCC0OUwVdV1jM=;
 b=Swufmp46mWzWaODQqveT+VhiQvss75aj7dK/kLhlKeFcAi5wsRqnh+Jc
 3PRIBQQ5mbvKCzRxjxB40DDNdqJ5QSrqwwONgJIAYUrjaeR/J/QvxI7Qs
 H3FkpkZXcIIyyXZLvAksHbQ2NVvU09sBpELt1gDujum751AdF0QUCl9zY
 LjoQLdrzESiXI4Fn/QiGF3NK7lt4XOh+AfKnsNcZC9HQo5t3FI+rAKp64
 FiUP7bdffDkMEk4vmIaT8amoEeBF1i6Fc3b/oPkLIBbaYmDKm1USXdMFg
 CIWoUZVuqsD/wvC1ayDeaell+01+bIabFf5kn/ESRaA73R0JhzkGMjM2r A==;
X-CSE-ConnectionGUID: EKxYek8ARDi5p3bhIj+kNQ==
X-CSE-MsgGUID: aL6WH2X3SViE9kuuI+WtxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42783311"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42783311"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:29 -0800
X-CSE-ConnectionGUID: hfjmx22rQb6M/GANCDgGyg==
X-CSE-MsgGUID: LIYdEqv5TAiRWS+v2Yeeug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="94363425"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:43:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Imre Deak <imre.deak@intel.com>
Subject: [CI 01/11] drm/i915/mst: pass intel_dp around in mst stream helpers
Date: Wed, 20 Nov 2024 14:43:09 +0200
Message-Id: <165ee8b723c42bcdeb3adf6a1b34ea09371e5d64.1732106557.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732106557.git.jani.nikula@intel.com>
References: <cover.1732106557.git.jani.nikula@intel.com>
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
Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 ++++++++++-----------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f058360a2641..dab50a1ed15b 100644
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

