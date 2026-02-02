Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Co4MyyCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C66CB41C
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0088810E44C;
	Mon,  2 Feb 2026 10:53:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jFTGyFFb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797E410E23B;
 Mon,  2 Feb 2026 10:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029609; x=1801565609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mb2SKpBFAVVZHoshQbposjxm6kl06f2zxmwP6DYQIkY=;
 b=jFTGyFFbhZeXhCdt5l1LPTnDmzT2QDJ7pIvMe/gJJ4UUDrpKohuW+eRM
 U4YMvYRTYtvM2mviZ7QDRh0zP6EwOfTxG46m+SSIa5SgKSGfZ9a7I5MX6
 9iOjmxlQr8H4sQ/c/hB2j45c1X43dnUwxvIaY52EdueYdLBkv/+FDWCPT
 +tCu6F1R9Op6JbF59KqOkDj8rpQa644MPavz49l6a0DeQxvo/fIxAV7LL
 xefIoG98iSto7QtTxQiLNs49z1b7mbCOkv1MUaIgA8pg//+9YLM6cyKl1
 /XdA2AD+8n2htn/kgrol+S7a4zZDJAUhuQVTjoqnNvx1KUG1ssadNMdQl A==;
X-CSE-ConnectionGUID: 74wRZe9aRu2Rosg8/rfsKQ==
X-CSE-MsgGUID: FYbZfQ9bRiKF1jmjwGUxaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385025"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385025"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:29 -0800
X-CSE-ConnectionGUID: 3C1YKdWcRwOO1xfexoHOLA==
X-CSE-MsgGUID: TeifbQ5IT2qsiaAo/Dvi6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419828"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:27 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/17] drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
Date: Mon,  2 Feb 2026 16:07:22 +0530
Message-ID: <20260202103731.357416-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
References: <20260202103731.357416-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 79C66CB41C
X-Rspamd-Action: no action

Refactor the logic to get the number of joined pipes. Start with a single
pipe and incrementally try additional pipes only if needed. While DSC
overhead is not yet computed here, this restructuring prepares the code to
support that in follow-up changes.

v2:
 - Remove fallback in case force-joiner configuration fails. (Imre)
 - Drop redundant MODE_OK assignment (Imre)
v3:
 - Align with the changes in intel_dp_mode_valid(). (Imre)
v4:
 - Set MODE_CLOCK_HIGH on DSC/rate failures aligning with SST case. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 90 ++++++++++++---------
 3 files changed, 56 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3e2868c5013c..eecfbbddbb53 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1371,7 +1371,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
-static
 int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
 {
 	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
@@ -1434,7 +1433,6 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
-static
 bool intel_dp_can_join(struct intel_display *display,
 		       int num_joined_pipes)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 25bfbfd291b0..6d409c1998c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -225,5 +225,8 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct drm_connector_state *conn_state);
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled);
+int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
+bool intel_dp_can_join(struct intel_display *display,
+		       int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index fc9367cc42ec..5209cc1843ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1420,7 +1420,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
 	struct drm_dp_mst_port *port = connector->mst.port;
 	const int min_bpp = 18;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
@@ -1480,47 +1479,64 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
+	*status = MODE_CLOCK_HIGH;
+	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
 
-	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+		if (connector->force_joined_pipes &&
+		    num_joined_pipes != connector->force_joined_pipes)
+			continue;
 
-		if (!drm_dp_is_uhbr_rate(max_link_clock))
-			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+		if (!intel_dp_can_join(display, num_joined_pipes))
+			continue;
 
-		dsc = intel_dp_mode_valid_with_dsc(connector,
-						   max_link_clock, max_lanes,
-						   target_clock, mode->hdisplay,
-						   num_joined_pipes,
-						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
-						   bw_overhead_flags);
+		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+			continue;
+
+		if (intel_dp_has_dsc(connector) &&
+		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+			/*
+			 * TBD pass the connector BPC,
+			 * for now U8_MAX so that max BPC on that platform would be picked
+			 */
+			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+
+			if (!drm_dp_is_uhbr_rate(max_link_clock))
+				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+
+			dsc = intel_dp_mode_valid_with_dsc(connector,
+							   max_link_clock, max_lanes,
+							   target_clock, mode->hdisplay,
+							   num_joined_pipes,
+							   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
+							   bw_overhead_flags);
+		}
+
+		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
+			*status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		if (mode_rate > max_rate && !dsc) {
+			*status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+
+		if (*status != MODE_OK)
+			continue;
+
+		max_dotclk *= num_joined_pipes;
+
+		if (mode->clock > max_dotclk) {
+			*status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		break;
 	}
 
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
-
-	if (mode_rate > max_rate && !dsc) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
-
-	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
-
-	if (*status != MODE_OK)
-		return 0;
-
-	max_dotclk *= num_joined_pipes;
-
-	if (mode->clock > max_dotclk)
-		*status = MODE_CLOCK_HIGH;
-
 	return 0;
 }
 
-- 
2.45.2

