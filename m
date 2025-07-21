Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A249FB0C03D
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4154010E4BD;
	Mon, 21 Jul 2025 09:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnBRKnAO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF35310E4BD;
 Mon, 21 Jul 2025 09:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089957; x=1784625957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0hC6eHsmR3HiVk43WVJCkgg1fWK4GRGJqCr9yCJsYkc=;
 b=UnBRKnAOjoYTBZQyNaxd2G3k0f6M3h8Dpc+KVLXayADh+xwSmIcXEk2S
 uIzQllni6+5loafgNb79iMy4Af9U85QcyBmgOD/3K/x8p/o2qVV8l3ON+
 FGtvigwb9aFhUNnL+IhMhHqn3ns2/Ngb2tWhOYjAl2WQ1q7QLHhcGWD5P
 tupuB5DkN4SbqSZx4Gq9AEXTdZyrKA7yufW0Y1J53GzO9gNYJangk0hol
 HLDsIN3KhKUuEwcV1HYpzlb71eMlbY9KL550s5lE5TtKpbDcvR15M5jGW
 h+9qGe8+zRxqcxu353nbPzEyKySMAJdLvCI2CVH5aALn8qCPCCug5BYMC A==;
X-CSE-ConnectionGUID: 6drf5ah8RRyDMj9bAmvLow==
X-CSE-MsgGUID: L0dTBy4CSaqC7f98zWexiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455375"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455375"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:57 -0700
X-CSE-ConnectionGUID: s5jK29nOShqefMJTLwthBw==
X-CSE-MsgGUID: JiiKIhiDQ3eItMCuGHTzYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335147"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:25:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/9] drm/i915/dp_mst: Limit m/n ratio to 10 for MST
Date: Mon, 21 Jul 2025 14:45:23 +0530
Message-ID: <20250721091529.3864004-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
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

The hardware does not support DisplayPort configurations where the ceiling
of the Link M/Link N ratio exceeds 10. Enforce this constraint for MST
as well.

Add a check to reject mode for which where the M/N ratio exceeds the
supported limit. For MST, in compute config phase currently we use the
maximum link rate so just check if the M/N ratio is with in limit,
and bail out.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 ++++++++++++++++----
 3 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4245dd65b2af..a1077a7ba7da 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1413,7 +1413,7 @@ intel_dp_get_max_m_n_ratio(void)
 	return 10;
 }
 
-static bool
+bool
 intel_dp_can_support_m_n(int pixel_clock,
 			 int link_rate)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0657f5681196..16555a9c53c4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
+bool intel_dp_can_support_m_n(int pixel_clock, int link_rate);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 74497c9a0554..62da0cb70607 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -202,10 +202,10 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
 }
 
-static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-				     int overhead,
-				     int bpp_x16,
-				     struct intel_link_m_n *m_n)
+static int intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
+				    int overhead,
+				    int bpp_x16,
+				    struct intel_link_m_n *m_n)
 {
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
@@ -218,6 +218,8 @@ static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
 			       m_n);
 
 	m_n->tu = DIV_ROUND_UP_ULL(mul_u32_u32(m_n->data_m, 64), m_n->data_n);
+
+	return 0;
 }
 
 static int intel_dp_mst_calc_pbn(int pixel_clock, int bpp_x16, int bw_overhead)
@@ -445,6 +447,11 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 {
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+
+	if (!intel_dp_can_support_m_n(adjusted_mode->clock, crtc_state->port_clock))
+		return -EINVAL;
 
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
@@ -1551,6 +1558,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
+	if (!intel_dp_can_support_m_n(mode->clock, max_rate)) {
+		*status = MODE_CLOCK_HIGH;
+		return 0;
+	}
+
 	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
 	return 0;
 }
-- 
2.45.2

