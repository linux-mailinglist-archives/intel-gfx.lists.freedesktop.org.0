Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B047EB0C043
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jul 2025 11:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4822910E4C8;
	Mon, 21 Jul 2025 09:26:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zf+MH1S9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80DF910E4BF;
 Mon, 21 Jul 2025 09:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753089971; x=1784625971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ULpaSwj72kGCwNvZHnsZqm3GQS+TQgnmt5BwflIBdmA=;
 b=Zf+MH1S9lyH7DHTFeDztNf/aQfCioWOS8XhXmiwz7RRR5kKytMg/kWwg
 Q5MlbZjP6k50MT8j9DeWakWZBiLKabilGlKs5SyEEwMJI5JFmgQbQ9zoV
 SPeUbb2nOzPpILZ+7MmHfp/I5rSDJw4TMfc67e2dYvEPow6LGeXYbKt+U
 Ax/b+AcccdIMrsDcighxGsFf7uunfSKanlWhkZS706Agi1PRvo9cuBU/Y
 oYYepnJfCO2gTXmVc5Kdp1tstneyNAGIMldjPMGHsmjPffOb+6skQYq0y
 ZkC2/Lcg2PS2vy/fyEKEIrH3mE/l+gkzncfUBmWovryOj8qK1NNjoh/0V w==;
X-CSE-ConnectionGUID: cHhnOgBuR9+WbQ7Axe4W2w==
X-CSE-MsgGUID: E4wPsB/KThmWcWBZiCH/Pw==
X-IronPort-AV: E=McAfee;i="6800,10657,11498"; a="55455400"
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="55455400"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:11 -0700
X-CSE-ConnectionGUID: 5dfQBKxCTnO2hiE//qUqzg==
X-CSE-MsgGUID: TGboqkAVRLWbKx4O/Dwd4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,328,1744095600"; d="scan'208";a="163335175"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2025 02:26:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 9/9] drm/i915/dp: Extend intel_dp_can_support_m_n() for BMG
 M/N bypass
Date: Mon, 21 Jul 2025 14:45:29 +0530
Message-ID: <20250721091529.3864004-10-ankit.k.nautiyal@intel.com>
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

On BMG platforms, the standard M/N ratio limit of 10 can be bypassed
under specific conditions, as permitted by hardware capabilities.

Modify the helper intel_dp_can_support_m_n() to account for this by
checking whether the platform supports bypassing the limit.

During mode_valid phase, the check assumes that PIPE_A will be used to
allow the mode, where M/N ratio is with int the limits for the workaround.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  4 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c |  6 ++--
 3 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a5ab7d694dbe..fde373a3606a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1414,10 +1414,13 @@ intel_dp_get_max_m_n_ratio(void)
 }
 
 bool
-intel_dp_can_support_m_n(int pixel_clock,
-			 int link_rate)
+intel_dp_can_support_m_n(struct intel_display *display,
+			 struct intel_crtc_state *crtc_state,
+			 int pixel_clock, int link_rate)
 {
+	struct intel_crtc *crtc;
 	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
+	enum pipe pipe;
 	u32 link_m, link_n;
 	int m_n_ratio;
 
@@ -1426,7 +1429,20 @@ intel_dp_can_support_m_n(int pixel_clock,
 
 	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
 
-	return m_n_ratio <= max_m_n_ratio;
+	if (m_n_ratio <= max_m_n_ratio)
+		return true;
+
+	if (crtc_state) {
+		crtc = to_intel_crtc(crtc_state->uapi.crtc);
+		pipe = crtc->pipe;
+	} else {
+		pipe = PIPE_A;
+	}
+
+	if (intel_display_can_bypass_m_n_limit(display, m_n_ratio, pipe))
+		return true;
+
+	return false;
 }
 
 static enum drm_mode_status
@@ -1540,7 +1556,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	if (!intel_dp_can_support_m_n(target_clock, max_rate))
+	if (!intel_dp_can_support_m_n(display, NULL, target_clock, max_rate))
 		return MODE_CLOCK_HIGH;
 
 	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
@@ -1798,6 +1814,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 				  const struct drm_connector_state *conn_state,
 				  const struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(pipe_config);
 	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
 	int mode_rate, link_rate, link_avail;
 
@@ -1814,7 +1831,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 			    link_rate > limits->max_rate)
 				continue;
 
-			if (!intel_dp_can_support_m_n(clock, link_rate))
+			if (!intel_dp_can_support_m_n(display, pipe_config, clock, link_rate))
 				continue;
 
 			for (lane_count = limits->min_lane_count;
@@ -2001,6 +2018,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   int dsc_bpp_x16,
 				   int timeslots)
 {
+	struct intel_display *display = to_intel_display(pipe_config);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
 	int i;
@@ -2010,7 +2028,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
 
-		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
+		if (!intel_dp_can_support_m_n(display, pipe_config,
+					      adjusted_mode->clock,
 					      link_rate))
 			continue;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a197eb0a7fc6..7b7b950aeb61 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -215,7 +215,9 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
 
 int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
 void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
-bool intel_dp_can_support_m_n(int pixel_clock, int link_rate);
+bool intel_dp_can_support_m_n(struct intel_display *display,
+			      struct intel_crtc_state *crtc_state,
+			      int pixel_clock, int link_rate);
 void intel_dp_check_m_n_ratio(struct intel_crtc_state *crtc_state,
 			      struct intel_link_m_n *m_n);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 45b72a2c8588..a06901ad7a9f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -447,12 +447,14 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
-	if (!intel_dp_can_support_m_n(adjusted_mode->clock, crtc_state->port_clock))
+	if (!intel_dp_can_support_m_n(display, crtc_state, adjusted_mode->clock,
+				      crtc_state->port_clock))
 		return -EINVAL;
 
 	/*
@@ -1560,7 +1562,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	if (!intel_dp_can_support_m_n(mode->clock, max_rate)) {
+	if (!intel_dp_can_support_m_n(display, NULL, mode->clock, max_rate)) {
 		*status = MODE_CLOCK_HIGH;
 		return 0;
 	}
-- 
2.45.2

