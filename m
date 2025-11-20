Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DF4C7290C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B2510E6FB;
	Thu, 20 Nov 2025 07:19:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPxV5jFR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B95E10E6FE;
 Thu, 20 Nov 2025 07:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623173; x=1795159173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zdG+3zQsWTlN9uV/7yE871CSlHOr1PnGyuEVO7DLInI=;
 b=KPxV5jFRhFLd1hnILiuhfE6R4e2FmQjziANSsrLooejgWltdAI7IGkGF
 gCf+amG4Lrc1bvRqfb3obTK51lEwLwHzT+FQ1yGw2/VGblAVMOoI9sl3h
 Sdb1yTXrf3n5PpNwJHc/lacSNY2dVnaD2E0bWV/aaHMCrvEOhNj98TYEj
 SBz5iphhNQqdNNun6+4rXUUOSnHNbxwO2ilXrbZXI6CnZUBCV6kNVOvit
 Vutfrv0AsFiNXEHgsjR2jGhy+RJfT1EtUnrP6So6r/TqeMbdUT87n7PzQ
 pE+bNv5NpGrohCP3nmcw93Z/kfDJmebsRvXSdNHP0nHyJzYpbVJEc4dca A==;
X-CSE-ConnectionGUID: 9Xc24rECQaiq6c5kGJSKEQ==
X-CSE-MsgGUID: vYd0spA0TwOW9Wn16KyqOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559107"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559107"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:33 -0800
X-CSE-ConnectionGUID: 5w9g634hRy+YwAyaZjk4ng==
X-CSE-MsgGUID: zF+gq0T4RoWFSm01WJBfdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073652"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/11] drm/i915/dp: Rework pipe joiner logic in compute_config
Date: Thu, 20 Nov 2025 12:36:36 +0530
Message-ID: <20251120070640.727040-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Currently, the number of joined pipes are determined early in the flow,
which limits flexibility for accounting DSC slice overhead. To address
this, recompute the joined pipe count during DSC configuration.

Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
and select the minimal joiner configuration that satisfies the mode
requirements. This prepares the logic for future changes that will
consider DSC slice overhead.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 70 +++++++++++++++++++++++--
 1 file changed, 65 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cc8011eaea6a..275f2f820110 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2466,11 +2466,12 @@ bool intel_dp_needs_8b10b_fec(const struct intel_crtc_state *crtc_state,
 	return dsc_enabled_on_crtc || intel_dsc_enabled_on_link(crtc_state);
 }
 
-int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
-				struct intel_crtc_state *pipe_config,
-				struct drm_connector_state *conn_state,
-				const struct link_config_limits *limits,
-				int timeslots)
+static
+int _intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
+				 struct intel_crtc_state *pipe_config,
+				 struct drm_connector_state *conn_state,
+				 const struct link_config_limits *limits,
+				 int timeslots)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector =
@@ -2571,6 +2572,65 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
+				struct intel_crtc_state *crtc_state,
+				struct drm_connector_state *conn_state,
+				const struct link_config_limits *limits,
+				int timeslots)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	int max_dotclk = display->cdclk.max_dotclk_freq;
+	int target_clock = adjusted_mode->clock;
+	int num_joined_pipes;
+	int ret = -EINVAL;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
+		enum joiner_type joiner = joiner_candidates[i];
+
+		if (joiner == FORCED_JOINER) {
+			if (!connector->force_joined_pipes)
+				continue;
+			num_joined_pipes = connector->force_joined_pipes;
+		} else {
+			num_joined_pipes = 1 << joiner;
+		}
+
+		if ((joiner >= NO_JOINER && !intel_dp_has_joiner(intel_dp)) ||
+		    (joiner == BIG_JOINER && !HAS_BIGJOINER(display)) ||
+		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display))) {
+			ret = -EINVAL;
+			break;
+		}
+
+		if (adjusted_mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
+			continue;
+
+		if (num_joined_pipes > 1)
+			crtc_state->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
+							   crtc->pipe);
+
+		ret = _intel_dp_dsc_compute_config(intel_dp, crtc_state,
+						   conn_state, limits, timeslots);
+		if (ret < 0)
+			continue;
+
+		max_dotclk *= num_joined_pipes;
+
+		if (target_clock <= max_dotclk)
+			return ret;
+
+		ret = -EINVAL;
+	}
+
+	crtc_state->joiner_pipes = 0;
+
+	return ret;
+}
+
 static int
 dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 				 const struct intel_crtc_state *crtc_state)
-- 
2.45.2

