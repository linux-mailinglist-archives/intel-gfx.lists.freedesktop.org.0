Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yH8fERBtfGkSMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC48AB869E
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0130610E93C;
	Fri, 30 Jan 2026 08:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PfrbfAXh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DB310E937;
 Fri, 30 Jan 2026 08:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762060; x=1801298060;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aG4d8v5Q3JG/4Tey+INN5TUEYBLg6/l7eBiYpMTiO3M=;
 b=PfrbfAXhKBWFYhv5/+vRD/z4AiYvaO3YqKYXGwByjEgyCx/DIdUYXl6j
 9odYavbJ02srK7kSVDbA411SY1P4S/LKOQjWeOWo8g98BCzpe6Inplnbl
 MN15xNkqmxmWnhjrddplgvnrdCVklv9FNC67yUh2NNVWvnQCAOtcnijjT
 SNOojl6O4Zuq14Gj6U7NeOqkuQp2qFcwAVJyfw6Fvrr8yJxIBq8Iyh2hZ
 uWTBjqFnrWQNveeL4Kk86td55DnJyowHEFodo5NNTToHw3hbF4u3gRhJx
 hWXwLr/FiqkH6jBqFvAIeC6QmbshQ6chynBr9tYPu7AmqCzYNEsBfVW22 A==;
X-CSE-ConnectionGUID: pQs546gcRpqEnAG59+6nxA==
X-CSE-MsgGUID: 9nso9qe6S8Ks9mGkW5mq/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636648"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636648"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:16 -0800
X-CSE-ConnectionGUID: u1cA6jw4Tga8Cr2ISMHr3A==
X-CSE-MsgGUID: n46t7D05TSGEUuz41/p4gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910083"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:14 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/17] drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
Date: Fri, 30 Jan 2026 13:48:03 +0530
Message-ID: <20260130081812.32087-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: EC48AB869E
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 86 ++++++++++++---------
 3 files changed, 52 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 85e84f7748d3..2a31543ce4d1 100644
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
index fc9367cc42ec..6414fc8fb4a4 100644
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
@@ -1480,47 +1479,60 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
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
+		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
+			continue;
+
+		if (mode_rate > max_rate && !dsc)
+			continue;
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

