Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7217FA21F8B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD3910E811;
	Wed, 29 Jan 2025 14:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3/Dc5F2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E7E310E80D;
 Wed, 29 Jan 2025 14:47:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162033; x=1769698033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tudEvmVQjjNxF+akQaMOL98RsQRRgUM+odbMFaBftmQ=;
 b=Y3/Dc5F2wvEOKoRTR92cpKNbLG7GlLH4WlQq4BndYklLBKIlqfRSRyTO
 +9A5pCbfYVyVD6jF32IRb1nDle+qwYTYuO9E8B2a7Z6rVzhqNABzofKFF
 Abs9LDwnEcHU3VxOlYWAyV8TcPNA8fUxmfwiIvCA9DNhNR69oYG+mTTe/
 sW+U9uP+5EYMBzXB+4RbSMU2uqNjKXCEkyJqxg0Vx2ImkPEHZcMpgY6PL
 91EoAK9DCJ47kPLYaWuPIsQnoA494Sf3Kd8gd89K4timuwYAqTiGCbbUE
 l3aDI7U51clTvXP2QJ/pNnlmuSr1vN8utUas0yf4bbcT/60KRAMdodn5E Q==;
X-CSE-ConnectionGUID: s/RUqtOeSwGf4NGbAjWrXQ==
X-CSE-MsgGUID: KQ9asNeIQ+SE1pQA+tijhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040672"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040672"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:11 -0800
X-CSE-ConnectionGUID: NoQCAeRgRT+2eOhRaOZKUA==
X-CSE-MsgGUID: iEO1U+sSRKKIhbVI/ZM46g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113057065"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 5/6] drm/i915/mst: remove unnecessary
 mst_stream_find_vcpi_slots_for_bpp()
Date: Wed, 29 Jan 2025 16:46:37 +0200
Message-Id: <abdd205087dc2ab0bdae09d7374d5f262f605aba.1738161945.git.jani.nikula@intel.com>
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

mst_stream_find_vcpi_slots_for_bpp() has become a thin wrapper that
merely juggles parameters around. Remove it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++++---------------
 1 file changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8786c8751c82..a4ed4f379d1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -366,16 +366,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
-					      struct intel_crtc_state *crtc_state,
-					      int max_bpp, int min_bpp,
-					      struct drm_connector_state *conn_state,
-					      int step, bool dsc)
-{
-	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
-					      min_bpp, max_bpp, step, dsc);
-}
-
 static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct intel_crtc_state *crtc_state,
 					  struct drm_connector_state *conn_state,
@@ -388,10 +378,10 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
 	 * YUV420 is only half of the pipe bpp value.
 	 */
-	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state,
-						  fxp_q4_to_int(limits->link.max_bpp_x16),
-						  fxp_q4_to_int(limits->link.min_bpp_x16),
-						  conn_state, 2 * 3, false);
+	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
+					      fxp_q4_to_int(limits->link.min_bpp_x16),
+					      fxp_q4_to_int(limits->link.max_bpp_x16),
+					      2 * 3, false);
 }
 
 static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
@@ -451,9 +441,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 
-	return mst_stream_find_vcpi_slots_for_bpp(intel_dp, crtc_state, max_compressed_bpp,
-						  min_compressed_bpp,
-						  conn_state, 1, true);
+	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
+					      min_compressed_bpp, max_compressed_bpp, 1, true);
 }
 
 static int mst_stream_update_slots(struct intel_dp *intel_dp,
-- 
2.39.5

