Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JB3IYVRcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 335B650D31
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B598410E6BB;
	Wed, 21 Jan 2026 04:09:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UaOxABI+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B44010E6B2;
 Wed, 21 Jan 2026 04:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968577; x=1800504577;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jfYJL5ossQh80OhJ1YXhEyBl2UdO8cIZryZDtsteUuA=;
 b=UaOxABI+QV/saJYLh6lm2rYnEH9CwtZ9i7m6GoFBQHI2f0LOI2PLWzWU
 558S6mCT3WVxGRjbP8Ho4A5Giq3E8gSH/0z3Ojtf2Z/S/45oKgiFM7nBd
 AbYRgGw+ZpiRk+rXo65PrQN6tAg0TybRzkX8U3xXNlgUT6w1Gc6q1nc6o
 6XCXxBLuzLT2rH296HmBtnNpcRTVzOPkojULPzrJPhaJkayDkTCg0Glc0
 Tva2CfDUN4e+YAP3+0TuqmoEt+1wpywhkjm7+MSsu5mUE+AdZtJ8fETNa
 YY8EHbBR/WwRSqqMvSakHqp469uEe/gOEjF567I7zTAtfa4pUoAeq0DoW A==;
X-CSE-ConnectionGUID: 0JxZGHleRt+1tfJpXRc9vQ==
X-CSE-MsgGUID: cH6moOLNSA+ioQf65xVDqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299959"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299959"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:37 -0800
X-CSE-ConnectionGUID: 96CLLUojSKyaA04yd7kGhw==
X-CSE-MsgGUID: jRQawZlRTIiwsElgQSqMSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330968"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 08/14] drm/i915/dp_mst: Rework pipe joiner logic in mode_valid
Date: Wed, 21 Jan 2026 09:23:24 +0530
Message-ID: <20260121035330.2793386-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
References: <20260121035330.2793386-1-ankit.k.nautiyal@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 335B650D31
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Refactor the logic to get the number of joined pipes. Start with a single
pipe and incrementally try additional pipes only if needed. While DSC
overhead is not yet computed here, this restructuring prepares the code to
support that in follow-up changes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |   1 -
 drivers/gpu/drm/i915/display/intel_dp.h     |   1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 100 ++++++++++++--------
 3 files changed, 64 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d96d9ac1e830..2ead783129f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1378,7 +1378,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
-static
 int intel_dp_hdisplay_limit(struct intel_display *display)
 {
 	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a27e3b5829bd..e5913fba0143 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -232,5 +232,6 @@ int intel_dp_compute_config_late(struct intel_encoder *encoder,
 				 struct drm_connector_state *conn_state);
 int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 			       bool assume_all_enabled);
+int intel_dp_hdisplay_limit(struct intel_display *display);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8a42da2588eb..3b1825161d18 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -92,6 +92,13 @@
  * registers.
  */
 
+static const enum joiner_type joiner_candidates[] = {
+	FORCED_JOINER,
+	NO_JOINER,
+	BIG_JOINER,
+	ULTRA_JOINER,
+};
+
 /* From fake MST stream encoder to primary encoder */
 static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
 {
@@ -1420,7 +1427,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
 	struct drm_dp_mst_port *port = connector->mst.port;
 	const int min_bpp = 18;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
@@ -1428,6 +1434,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	bool dsc = false;
 	int target_clock = mode->clock;
 	int num_joined_pipes;
+	int i;
 
 	if (drm_connector_is_unregistered(&connector->base)) {
 		*status = MODE_ERROR;
@@ -1480,47 +1487,66 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
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
+	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
+		enum joiner_type joiner = joiner_candidates[i];
 
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc) {
 		*status = MODE_CLOCK_HIGH;
-		return 0;
-	}
 
-	if (mode_rate > max_rate && !dsc) {
-		*status = MODE_CLOCK_HIGH;
-		return 0;
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
+		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display)))
+			break;
+
+		if (mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
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
+		if (mode->clock <= max_dotclk) {
+			*status = MODE_OK;
+			break;
+		}
 	}
 
-	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
-
-	if (*status != MODE_OK)
-		return 0;
-
-	max_dotclk *= num_joined_pipes;
-
-	if (mode->clock <= max_dotclk)
-		*status = MODE_OK;
-
 	return 0;
 }
 
-- 
2.45.2

