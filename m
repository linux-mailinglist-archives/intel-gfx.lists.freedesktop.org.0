Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0420FB1A389
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C06510E51D;
	Mon,  4 Aug 2025 13:38:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GEWqqvBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E8A10E51D;
 Mon,  4 Aug 2025 13:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314733; x=1785850733;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HqqP/92ZThvGnSlowhOY2NChWB/WNaImyaWJWFFC1wc=;
 b=GEWqqvBe+2ojq083t0KYwZLTqQPDMCQ8FFcvnZNseDlYNSNN0pR6VDTn
 kLoLbwALxRAnTMxyuz8IXmMj6TkaFs4LAD/GNnP3JQvYbyNSzBq28ADfN
 2KFf/HQZmr9sok4eI3w+28QpxVb3iqtTBstOd/zw++fiBbor5EZsZhOh5
 ppPvFxFnQX2uzOuQlGzglPLc7hC+NeoUnZkNJduAaoPhHPO3ttquxRCEc
 3un6sWzffEljxshk1KrOhChuqk3RV9GI4CQQfP6HUY+NcFP1VWzX/0mqT
 qenPWyuApQ5rHqAYmfK0PkOQ3eFWVMcRBWywRevXHpl71xTBqjCX8u/TI A==;
X-CSE-ConnectionGUID: QVyXWwyuTXKM9Zyuy5QJtA==
X-CSE-MsgGUID: 1DRiOOtyTNGBoaqs1FGslQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447382"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447382"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:53 -0700
X-CSE-ConnectionGUID: OPu0rbWTTFS48uim812GSg==
X-CSE-MsgGUID: q2fSPzL2RVef/yanDoapGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430656"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 07/15] drm/i915/psr: Add function to compute max link-wake
 latency
Date: Mon,  4 Aug 2025 18:54:32 +0530
Message-ID: <20250804132441.990441-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Introduce a helper to compute the max link wake latency when using
Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.

This will be used to compute the minimum guardband so that the link wake
latencies are accounted and these features work smoothly for higher
refresh rate panels.

Bspec: 70151, 71477
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 64 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_psr.h |  3 ++
 2 files changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6bd3454bb00e..6cdaff3ccc9f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -33,6 +33,7 @@
 #include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_cursor_regs.h"
+#include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_irq.h"
@@ -4249,3 +4250,66 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 {
 	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
 }
+
+static
+int intel_psr_compute_aux_wake_latency(struct intel_dp *intel_dp,
+				       struct intel_crtc_state *crtc_state)
+{
+#define TFW_EXIT_LATENCY_MS		20000
+#define FAST_WAKE_LATENCY_MS		12000 /* Preamble: 8us; PHY wake: 4us */
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int aux_wake_latency_us;
+	int io_buffer_wake_ms;
+
+	io_buffer_wake_ms = intel_encoder_is_c10phy(encoder) ? 9790 : 14790;
+
+	aux_wake_latency_us =
+		DIV_ROUND_UP(io_buffer_wake_ms + TFW_EXIT_LATENCY_MS + FAST_WAKE_LATENCY_MS, 1000);
+
+	return aux_wake_latency_us;
+}
+
+static
+int intel_psr_compute_auxless_latency(struct intel_crtc_state *crtc_state)
+{
+#define PHY_ESTABLISHMENT_PERIOD_MS	50000
+#define LFPS_PERIOD_MS			800
+#define SILENCE_MAX_MS			180
+	int linkrate_mhz = crtc_state->port_clock / 1000;
+	int clock_data_switch_ms;
+	int auxless_latency_us;
+	int time_ml_phy_lock_ms;
+	int num_ml_phy_lock;
+	/*
+	 * TPS4 length = 252
+	 * tML_PHY_LOCK = TPS4 Length * ( 10 / (Link Rate in MHz) )
+	 * Number ML_PHY_LOCK = ( 7 + CEILING(6.5us / tML_PHY_LOCK ) + 1)
+	 * t2 = Number ML_PHY_LOCK * tML_PHY_LOCK
+	 * tCDS term  = 2 * t2
+	 * =>tCDS_term  = 2 * (7 * (252 * (10 /linkrate))+6.5)
+	 */
+	time_ml_phy_lock_ms = (1000 * 252 * 10) / linkrate_mhz;
+	num_ml_phy_lock = 7 + DIV_ROUND_UP(6500 * 1000, time_ml_phy_lock_ms) / 1000 + 1;
+	clock_data_switch_ms = 2 * time_ml_phy_lock_ms * num_ml_phy_lock;
+
+	auxless_latency_us = (LFPS_PERIOD_MS  + SILENCE_MAX_MS + PHY_ESTABLISHMENT_PERIOD_MS +
+			      clock_data_switch_ms) / 1000;
+
+	return auxless_latency_us;
+}
+
+int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *crtc_state,
+					    bool assume_all_enabled)
+{
+	int aux_wake_latency = 0;
+	int auxless_latency = 0;
+
+	if (assume_all_enabled || crtc_state->has_sel_update)
+		auxless_latency = intel_psr_compute_aux_wake_latency(intel_dp, crtc_state);
+
+	if (assume_all_enabled || crtc_state->has_panel_replay)
+		aux_wake_latency = intel_psr_compute_auxless_latency(crtc_state);
+
+	return max(auxless_latency, aux_wake_latency);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 9b061a22361f..c58d29620b49 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -81,5 +81,8 @@ void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
 bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
 				   const struct intel_crtc_state *crtc_state);
+int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
+					    struct intel_crtc_state *crtc_state,
+					    bool assume_all_enabled);
 
 #endif /* __INTEL_PSR_H__ */
-- 
2.45.2

