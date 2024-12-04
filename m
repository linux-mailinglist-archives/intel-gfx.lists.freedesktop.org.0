Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF1D9E3672
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 10:24:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC1110EC9A;
	Wed,  4 Dec 2024 09:24:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDwvsgPE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F85E10E49D;
 Wed,  4 Dec 2024 09:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733304252; x=1764840252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rWK4qrnhZWH09zMQqRH/T1ziXRMPSMFpsZWLhNJ1otA=;
 b=UDwvsgPEFIY5XHtLuQlzJsTTFuyqgZhYM5c4qyd2YiUp1CMED08InYpV
 HfjdJKRLAttjSSvRRf6RwK6FUfJbjD9HZ5V+lKhwWVC2ARpjel2c5EIag
 CCKGk18NKjHFHvGpkixS8ahARe1clhZUrno95TjXNdmOLRdRaN0BfQwJq
 tUDbuFPFjokSoP3hFnIUEyUTJ/TkqnQMSnrYE4qExpBKEvhb9Zi6JuucA
 G4y5tq0XI8YkfZMu3jZlaFH5cSmBotGJjEyB6+c9qh19iZ3w3ajzt3zFz
 xW3cxI8Ugbudyk3fdguDcr62emcWco3Ulukh9pNOQnL5TMstl9asDZHbf w==;
X-CSE-ConnectionGUID: vmbOG4b0RB+8lQJsqfa8NA==
X-CSE-MsgGUID: /bpVH450T+y08aBEu4N4iw==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="44038466"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="44038466"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:12 -0800
X-CSE-ConnectionGUID: fsxGR1CuRfKzmuhPKJXkJQ==
X-CSE-MsgGUID: PKICpcg0QqKXw0845EgIrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="93555146"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 01:24:10 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.nikula@linux.intel.com, imre.deak@intel.com
Subject: [PATCH 08/14] drm/i915/dp_mst: Use helpers to get dsc min/max input
 bpc
Date: Wed,  4 Dec 2024 14:56:36 +0530
Message-ID: <20241204092642.1835807-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Use helpers for source min/max input bpc with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 --
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++--------
 3 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index edfe084dca39..bff7441d2ddd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1780,7 +1780,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 	return -EINVAL;
 }
 
-static
 int intel_dp_dsc_max_src_input_bpc(struct intel_display *display)
 {
 	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
@@ -2183,7 +2182,6 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					   dsc_max_bpp, dsc_min_bpp, pipe_bpp, timeslots);
 }
 
-static
 int intel_dp_dsc_min_src_input_bpc(void)
 {
 	/* Min DSC Input BPC for ICL+ is 8 */
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4ae54e9718ce..4895b52d41e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -20,6 +20,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_digital_port;
+struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
@@ -207,5 +208,7 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 bool intel_dp_has_connector(struct intel_dp *intel_dp,
 			    const struct drm_connector_state *conn_state);
+int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
+int intel_dp_dsc_min_src_input_bpc(void);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9b64c8a0e55e..795594191717 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -365,17 +365,14 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	int i, num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
-	u8 dsc_max_bpc;
+	int dsc_max_bpc, dsc_min_bpc;
 	int min_compressed_bpp, max_compressed_bpp;
 
-	/* Max DSC Input BPC for ICL is 10 and for TGL+ is 12 */
-	if (DISPLAY_VER(display) >= 12)
-		dsc_max_bpc = min_t(u8, 12, conn_state->max_requested_bpc);
-	else
-		dsc_max_bpc = min_t(u8, 10, conn_state->max_requested_bpc);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(display);
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc();
 
-	max_bpp = min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
-	min_bpp = limits->pipe.min_bpp;
+	max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
+	min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
-- 
2.45.2

