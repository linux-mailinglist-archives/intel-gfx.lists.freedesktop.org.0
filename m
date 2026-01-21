Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MF5wKX1RcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5221050D1B
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA1E210E6B0;
	Wed, 21 Jan 2026 04:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eom6fOJ6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B7B10E6B4;
 Wed, 21 Jan 2026 04:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968569; x=1800504569;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=STWS2OIEB62W66JLEF9Peh0fa6DOrhDsyZeQVUSICdU=;
 b=eom6fOJ6QO0RJJ38E0NP4E3xxgwm74v3FPTFEqSsipKAZnDe3xpnh3Xd
 NT4iVrYqy5A7OQEHDwrCVSslid652kaXyTqcjBNqyPfZced0iQPOZKMT5
 BySYDqbyC9JtrfR+McCYY/ii+oFTVnSm2kIJJFpEUuqUuEaCy1TslGQk3
 st0QlKj0TWCO/aofDtpBh0KjbbaEesIxJl5188nnvTdbJyHcdTywib5hi
 El3NEalcyN9smuPmZmzPnRHd+Ro2cbnYGXjZv2/9Y1FwU8JsVJEdNA5Uw
 UaNB+MKGTWiK3asCsg7mgozxwer3nHngvcUEmzgspfxxFeRKb5AEuDppe A==;
X-CSE-ConnectionGUID: Kh/PH3iYQxiL96rewyYdDg==
X-CSE-MsgGUID: bfmr6Go2RZS0Ya5G+8bywQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299950"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299950"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:29 -0800
X-CSE-ConnectionGUID: fhHrJWzRQtma94qhCzb3+A==
X-CSE-MsgGUID: CoWwE9CHSRe7ubLZzNJhug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330941"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/14] drm/i915/dp: Rework pipe joiner logic in mode_valid
Date: Wed, 21 Jan 2026 09:23:20 +0530
Message-ID: <20260121035330.2793386-5-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 5221050D1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently in intel_dp_mode_valid(), we compute the number of joined pipes
required before deciding whether DSC is needed. This ordering prevents us
from accounting for DSC-related overhead when determining pipe
requirements.

Refactor the logic to start with a single pipe and incrementally try
additional pipes only if needed. While DSC overhead is not yet computed
here, this restructuring prepares the code to support that in a follow-up
changes.

Additionally, if a forced joiner configuration is present, we first check
whether it satisfies the bandwidth and timing constraints. If it does not,
we fall back to evaluating configurations with 1, 2, or 4 pipes joined
and prune or keep the mode accordingly.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 144 +++++++++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h |   7 ++
 2 files changed, 96 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fc7d48460a52..02381f84fa58 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -107,6 +107,13 @@
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
+static const enum joiner_type joiner_candidates[] = {
+	FORCED_JOINER,
+	NO_JOINER,
+	BIG_JOINER,
+	ULTRA_JOINER,
+};
+
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
  * @intel_dp: DP struct
@@ -1445,13 +1452,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
 	bool dsc = false;
 	int num_joined_pipes;
 	int link_bpp_x16;
+	int i;
 
 	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
@@ -1488,67 +1495,94 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   target_clock, mode->hdisplay,
 					   link_bpp_x16, 0);
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
-
-	if (target_clock > max_dotclk)
-		return MODE_CLOCK_HIGH;
-
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
-	if (status != MODE_OK)
-		return status;
-
-	if (intel_dp_has_dsc(connector)) {
-		int pipe_bpp;
-
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
-
-		/*
-		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-		 * integer value since we support only integer values of bpp.
-		 */
-		if (intel_dp_is_edp(intel_dp)) {
-			dsc_max_compressed_bpp =
-				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
-
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
-
-			dsc = dsc_max_compressed_bpp && dsc_slice_count;
-		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			unsigned long bw_overhead_flags = 0;
-
-			if (!drm_dp_is_uhbr_rate(max_link_clock))
-				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
-
-			dsc = intel_dp_mode_valid_with_dsc(connector,
-							   max_link_clock, max_lanes,
-							   target_clock, mode->hdisplay,
-							   num_joined_pipes,
-							   output_format, pipe_bpp,
-							   bw_overhead_flags);
+	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
+		enum joiner_type joiner = joiner_candidates[i];
+
+		status = MODE_CLOCK_HIGH;
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
+		    (joiner == ULTRA_JOINER && !HAS_ULTRAJOINER(display)))
+			break;
+
+		if (mode->hdisplay > num_joined_pipes * intel_dp_hdisplay_limit(display))
+			continue;
+
+		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+		if (status != MODE_OK)
+			continue;
+
+		if (intel_dp_has_dsc(connector)) {
+			int pipe_bpp;
+
+			/*
+			 * TBD pass the connector BPC,
+			 * for now U8_MAX so that max BPC on that platform would be picked
+			 */
+			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+
+			/*
+			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+			 * integer value since we support only integer values of bpp.
+			 */
+			if (intel_dp_is_edp(intel_dp)) {
+				dsc_max_compressed_bpp =
+					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+
+				dsc_slice_count =
+					intel_dp_dsc_get_slice_count(connector,
+								     target_clock,
+								     mode->hdisplay,
+								     num_joined_pipes);
+
+				dsc = dsc_max_compressed_bpp && dsc_slice_count;
+			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
+				unsigned long bw_overhead_flags = 0;
+
+				if (!drm_dp_is_uhbr_rate(max_link_clock))
+					bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+
+				dsc = intel_dp_mode_valid_with_dsc(connector,
+								   max_link_clock, max_lanes,
+								   target_clock, mode->hdisplay,
+								   num_joined_pipes,
+								   output_format, pipe_bpp,
+								   bw_overhead_flags);
+			}
+		}
+
+		if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
+			continue;
+
+		if (mode_rate > max_rate && !dsc)
+			continue;
+
+		status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
+		if (status != MODE_OK)
+			continue;
+
+		max_dotclk *= num_joined_pipes;
+
+		if (target_clock <= max_dotclk) {
+			status = MODE_OK;
+			break;
 		}
 	}
 
-	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
-		return MODE_CLOCK_HIGH;
-
-	status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
 	if (status != MODE_OK)
 		return status;
 
-	if (mode_rate > max_rate && !dsc)
-		return MODE_CLOCK_HIGH;
-
 	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
+
 }
 
 bool intel_dp_source_supports_tps3(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 25bfbfd291b0..a27e3b5829bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -24,6 +24,13 @@ struct intel_display;
 struct intel_dp;
 struct intel_encoder;
 
+enum joiner_type {
+	FORCED_JOINER = -1,
+	NO_JOINER = 0,		/* 1 pipe */
+	BIG_JOINER = 1,		/* 2 pipes */
+	ULTRA_JOINER = 2,	/* 4 pipes */
+};
+
 struct link_config_limits {
 	int min_rate, max_rate;
 	int min_lane_count, max_lane_count;
-- 
2.45.2

