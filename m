Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OkZLQ5tfGkSMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FB1B8687
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA62C10E933;
	Fri, 30 Jan 2026 08:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K682RVYA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0133910E92F;
 Fri, 30 Jan 2026 08:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762059; x=1801298059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YqFu+rTFVIXeTnhxLnGk2OjuneTqvIutYF5AOu1rbrU=;
 b=K682RVYAWOr3Xzf9vZC8ZEpj9hT207h98+dbHuH/Id7qBhMYdjFuUXGY
 htGRDAhYDsmXDuXXIyF8iCmzedf7BaKzFUXstyjbREQ9KaqwsEK71wSNQ
 isvYsuxWs3Z3MpGMp8UM9rQpw4Vjmv6xXb3NP7l9bKrYS5FXqCCxy5S3v
 TCbO40x0pjAEAz136wJsXLtT9tEKDmgpyTMkc8Von0NkvP5AvaiG+5Ee4
 zBHviCqPSH9B3K9ZxYhKJr+PLL9fpo5N9eC3yplmqK1PWgLfaqpUjvh8p
 QQ+/JEHiytrauYcbtmTzXdPQxQmAksPHG5tVVwRKlNYbKXUaURZoVeyrJ g==;
X-CSE-ConnectionGUID: 37eO6DHrTCChYOVIzh1Emg==
X-CSE-MsgGUID: f8F0iaQjSkKnYH5v+EXrdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636633"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636633"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:07 -0800
X-CSE-ConnectionGUID: EHV8c8mdSpuf56MT8X2CUQ==
X-CSE-MsgGUID: OZHj+BBwSlmrajtKewVQFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910052"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:06 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/17] drm/i915/dp: Rework pipe joiner logic in mode_valid
Date: Fri, 30 Jan 2026 13:47:59 +0530
Message-ID: <20260130081812.32087-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
References: <20260130081812.32087-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 66FB1B8687
X-Rspamd-Action: no action

Currently in intel_dp_mode_valid(), we compute the number of joined pipes
required before deciding whether DSC is needed. This ordering prevents us
from accounting for DSC-related overhead when determining pipe
requirements.

It is not possible to first decide whether DSC is needed and then compute
the required number of joined pipes, because the two depend on each other:

 - DSC need is a function of the pipe count (e.g., 4‑pipe always requires
   DSC; 2‑pipe may require it if uncompressed joiner is unavailable).

 - Whether a given pipe‑join configuration is sufficient depends on
   effective bandwidth, which itself changes when DSC is used.

As a result, the only correct approach is to iterate candidate pipe counts.

So, refactor the logic to start with a single pipe and incrementally try
additional pipes only if needed. While DSC overhead is not yet computed
here, this restructuring prepares the code to support that in a follow-up
changes.

If a forced joiner configuration is present, we just check for that
configuration. If it fails, we bailout and return instead of trying with
other joiner configurations.

v2:
 - Iterate over number of pipes to be joined instead of joiner
   candidates. (Jani)
 - Document the rationale of iterating over number of joined pipes.
   (Imre)
v3:
 - In case the force joiner configuration doesn't work, do not fallback
   to the normal routine, bailout instead of trying other joiner
   configurations. (Imre)
v4:
 - Use num_joined_pipes instead of num_pipes. (Imre)
 - Inititialize status before the loops starts. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 135 ++++++++++++++++--------
 1 file changed, 89 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4c3a1b6d0015..dbe63efc1694 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1434,6 +1434,23 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 	return true;
 }
 
+static
+bool intel_dp_can_join(struct intel_display *display,
+		       int num_joined_pipes)
+{
+	switch (num_joined_pipes) {
+	case 1:
+		return true;
+	case 2:
+		return HAS_BIGJOINER(display) ||
+		       HAS_UNCOMPRESSED_JOINER(display);
+	case 4:
+		return HAS_ULTRAJOINER(display);
+	default:
+		return false;
+	}
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1445,7 +1462,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	u16 dsc_max_compressed_bpp = 0;
 	u8 dsc_slice_count = 0;
 	enum drm_mode_status status;
@@ -1488,66 +1504,93 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 					   target_clock, mode->hdisplay,
 					   link_bpp_x16, 0);
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     mode->hdisplay, target_clock);
-	max_dotclk *= num_joined_pipes;
+	/*
+	 * We cannot determine the required pipe‑join count before knowing whether
+	 * DSC is needed, nor can we determine DSC need without knowing the pipe
+	 * count.
+	 * Because of this dependency cycle, the only correct approach is to iterate
+	 * over candidate pipe counts and evaluate each combination.
+	 */
+	status = MODE_CLOCK_HIGH;
+	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+		int max_dotclk = display->cdclk.max_dotclk_freq;
 
-	if (target_clock > max_dotclk)
-		return MODE_CLOCK_HIGH;
+		if (connector->force_joined_pipes &&
+		    num_joined_pipes != connector->force_joined_pipes)
+			continue;
 
-	status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
-	if (status != MODE_OK)
-		return status;
+		if (!intel_dp_can_join(display, num_joined_pipes))
+			continue;
 
-	if (intel_dp_has_dsc(connector)) {
-		int pipe_bpp;
+		if (mode->hdisplay > num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+			continue;
 
-		/*
-		 * TBD pass the connector BPC,
-		 * for now U8_MAX so that max BPC on that platform would be picked
-		 */
-		pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
+		status = intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes);
+		if (status != MODE_OK)
+			continue;
 
-		/*
-		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-		 * integer value since we support only integer values of bpp.
-		 */
-		if (intel_dp_is_edp(intel_dp)) {
-			dsc_max_compressed_bpp =
-				drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
+		if (intel_dp_has_dsc(connector)) {
+			int pipe_bpp;
 
-			dsc_slice_count =
-				intel_dp_dsc_get_slice_count(connector,
-							     target_clock,
-							     mode->hdisplay,
-							     num_joined_pipes);
+			/*
+			 * TBD pass the connector BPC,
+			 * for now U8_MAX so that max BPC on that platform would be picked
+			 */
+			pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
-			dsc = dsc_max_compressed_bpp && dsc_slice_count;
-		} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
-			unsigned long bw_overhead_flags = 0;
+			/*
+			 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+			 * integer value since we support only integer values of bpp.
+			 */
+			if (intel_dp_is_edp(intel_dp)) {
+				dsc_max_compressed_bpp =
+					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
 
-			if (!drm_dp_is_uhbr_rate(max_link_clock))
-				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
+				dsc_slice_count =
+					intel_dp_dsc_get_slice_count(connector,
+								     target_clock,
+								     mode->hdisplay,
+								     num_joined_pipes);
 
-			dsc = intel_dp_mode_valid_with_dsc(connector,
-							   max_link_clock, max_lanes,
-							   target_clock, mode->hdisplay,
-							   num_joined_pipes,
-							   output_format, pipe_bpp,
-							   bw_overhead_flags);
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
 		}
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
+		if (target_clock > max_dotclk) {
+			status = MODE_CLOCK_HIGH;
+			continue;
+		}
+
+		break;
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
 }
 
-- 
2.45.2

