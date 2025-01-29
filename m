Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 374A1A21F89
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7E6A10E80E;
	Wed, 29 Jan 2025 14:47:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F1ZD4NMM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B1010E80F;
 Wed, 29 Jan 2025 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162021; x=1769698021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yP926WW/y2fyUVg+ck2Vhf7zLAb7f+mJuC86X5d6Tew=;
 b=F1ZD4NMMqSpTXXeVpO7XfFEdrsyWlb/omEVXf2j+46vO3goqzWeTe+8q
 0lkfpoa8yaAzM1CiFwA5vHpL9a78Q7fZGz7wF//g06btWIi5ridOFhq3l
 nNnBeccHydTinAHX30ZwIOtptlR1Bb1QNLN7Il1OAfOkSg62mKA2DNPVK
 a2N+DR70qm/U9mpu2ylDpirsjichSflJduMPco9U8wdVrc1+nHSZofgPn
 SukHcndGKslnqy54lA5u2jN0oL5M55H0VEIRd+ewxoPpryN5BxUS/lPMt
 gdZUQIhjmp8IQvezSYWtgPtyKH531izKm0l9hBfxC+LgSA9LsJ77V4wQ5 w==;
X-CSE-ConnectionGUID: GOSbMhdRQMemGmI1EvlXeQ==
X-CSE-MsgGUID: u1/C2X5JR8uT6Ksa+yoM5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040626"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040626"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:01 -0800
X-CSE-ConnectionGUID: sXQUjBQFT+W68Uf0PhxH/w==
X-CSE-MsgGUID: mB/vCNMoSLyZd2I/fMq0gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113057024"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:46:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 3/6] drm/i915/mst: change where lane_count and port_clock are
 set
Date: Wed, 29 Jan 2025 16:46:35 +0200
Message-Id: <101ce3fc6afff55d966336f3ab72090317750f82.1738161945.git.jani.nikula@intel.com>
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

Semantically mst_stream_find_vcpi_slots_for_bpp() does not seem like the
place to make decisions about lane_count and port_clock. Move them to
the callers, and remove the limits parameter that becomes unused.

This leads to slight duplication, but a) this makes further refactoring
easier, and b) also the SST code sets link parameters in different
places for uncompressed and compressed paths.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 98d7cdddfead..ea1b05224c06 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -362,7 +362,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 					      struct intel_crtc_state *crtc_state,
 					      int max_bpp, int min_bpp,
-					      const struct link_config_limits *limits,
 					      struct drm_connector_state *conn_state,
 					      int step, bool dsc)
 {
@@ -373,9 +372,6 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
 	if (IS_ERR(mst_state))
 		return PTR_ERR(mst_state);
 
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
-
 	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
 						      crtc_state->lane_count);
 
@@ -388,6 +384,9 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
+	crtc_state->lane_count = limits->max_lane_count;
+	crtc_state->port_clock = limits->max_rate;
+
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
 	 * YUV420 is only half of the pipe bpp value.
@@ -395,7 +394,6 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
 						  fxp_q4_to_int(limits->link.max_bpp_x16),
 						  fxp_q4_to_int(limits->link.min_bpp_x16),
-						  limits,
 						  conn_state, 2 * 3, false);
 }
 
@@ -453,8 +451,11 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
 							    crtc_state->pipe_bpp);
 
+	crtc_state->lane_count = limits->max_lane_count;
+	crtc_state->port_clock = limits->max_rate;
+
 	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
-						  min_compressed_bpp, limits,
+						  min_compressed_bpp,
 						  conn_state, 1, true);
 }
 
-- 
2.39.5

