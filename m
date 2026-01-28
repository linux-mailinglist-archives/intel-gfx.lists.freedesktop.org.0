Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHPJKLcbemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57179A2AFC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD59310E6E9;
	Wed, 28 Jan 2026 14:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aqgTfsrU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 282BE10E6E7;
 Wed, 28 Jan 2026 14:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610164; x=1801146164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZsbVVuXZBwcIhWwCxsDXIm1vyzpNim4YsT56Dz2mSlY=;
 b=aqgTfsrUHbI2CkYIIIRrvMTu8BeTKH2im3KqVaLQ0MTrlFPUovyflzQ5
 TYvOKNrLNk2blZk8gB0Rc2+jeiyZ3/mn6Qzq3C2z5tPo+op1rK7QTrXR1
 NiG30hYHzJVVRTPnVNclcEN3qUJVuNtvcu8FMEaLu5+Jdha7tAb9TxgLF
 Eik9viluMXTHEbnG2DG5KKaqQlYeBt7Imk1fOxOYT1JdHFkeZlsTq+vkr
 9MB+tPmq3RQ5P/JrF1wLuP9TpYkvS3L5r9oP3oUaxfvakx7IEhpKDID4d
 OFjWKmMW4oXwEByegD1onb1ydu9Q3jvw0F0+9VnXjsL3eqGNRmTrcrltC w==;
X-CSE-ConnectionGUID: L/Ehc2aeQWmL5ilqkun+LA==
X-CSE-MsgGUID: /puGuf8XQsW2BSXSHShpdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400932"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400932"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:44 -0800
X-CSE-ConnectionGUID: F2/glUVbSYCmaNQGV4sKEQ==
X-CSE-MsgGUID: IsLj1AdxRmONSIgMPboNtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881369"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/16] drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
Date: Wed, 28 Jan 2026 19:36:28 +0530
Message-ID: <20260128140636.3527799-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 57179A2AFC
X-Rspamd-Action: no action

Refactor the logic to get the number of joined pipes. Start with a single
pipe and incrementally try additional pipes only if needed. While DSC
overhead is not yet computed here, this restructuring prepares the code to
support that in follow-up changes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  2 -
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 86 ++++++++++++---------
 3 files changed, 52 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f8986f0acc79..9bbd37ebd2ea 100644
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
index f47bf45d0bce..664004600564 100644
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
@@ -1428,6 +1427,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	bool dsc = false;
 	int target_clock = mode->clock;
 	int num_joined_pipes;
+	int num_pipes;
 
 	if (drm_connector_is_unregistered(&connector->base)) {
 		*status = MODE_ERROR;
@@ -1480,50 +1480,62 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-
-	if (intel_dp_has_dsc(connector) && drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
-
-		if (!drm_dp_is_uhbr_rate(max_link_clock))
-			bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
-
-		dsc = intel_dp_mode_valid_with_dsc(connector,
-						   max_link_clock, max_lanes,
-						   target_clock, mode->hdisplay,
-						   num_joined_pipes,
-						   INTEL_OUTPUT_FORMAT_RGB, pipe_bpp,
-						   bw_overhead_flags);
-	}
+	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
 
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
 
-	if (mode_rate > max_rate && !dsc) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
+		if (num_pipes == 0) {
+			if (!connector->force_joined_pipes)
+				continue;
+			num_joined_pipes = connector->force_joined_pipes;
+		} else {
+			num_joined_pipes = num_pipes;
+		}
 
-	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+		if (!intel_dp_can_join(display, num_joined_pipes))
+			continue;
 
-	if (*status != MODE_OK)
-		return 0;
+		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+			continue;
 
-	max_dotclk *= num_joined_pipes;
+		if (intel_dp_has_dsc(connector) &&
+		    drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+			/*
+			 * TBD pass the connector BPC,
+			 * for now U8_MAX so that max BPC on that platform would be picked
+			 */
+			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
-	if (mode->clock > max_dotclk) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
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
 
-	*status = MODE_OK;
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
+		if (mode->clock <= max_dotclk) {
+			*status = MODE_OK;
+			break;
+		}
+	}
 
 	return 0;
 }
-- 
2.45.2

