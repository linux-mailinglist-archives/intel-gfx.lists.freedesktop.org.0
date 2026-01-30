Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YI2VCQ5tfGkSMgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAACBB8680
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 09:34:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E7610E935;
	Fri, 30 Jan 2026 08:34:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OEhWCVYD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0EE710E92D;
 Fri, 30 Jan 2026 08:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769762059; x=1801298059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1hxSJnX44Zbmj+a/rfY9I8i+WlGXE9NLzJ5PG2NiVjs=;
 b=OEhWCVYDdnK4hBUE8X3jxqpRBgxoFRlqJOxtLdTm3LN+wyb7ISi7lfGj
 1GUextrwoRqn+Lh19Dvcf1fM2buWtJHElf3btsBZAS9ijPKYUyH8O54W2
 Yj0gM81RGcb+vbpqhAbaX5MDLdcEC+FB7oy0NV8Pc5ynFnB4ieaQUFLml
 ks4DvYhKZoMZadyJJAW6VC696nR06FV95gCRcj9jfI8NL2WIzAzbndm7h
 Elk091ma+OM40h0OHXOYmJuWTkQwlDVEobf3nSNDC4TM39ngWqu7+cMCy
 3OB8XbXa3wIV2AHcrHfvM5AKQW1qigh6HZPG/L7zzow5mXS7LJzcKFALb w==;
X-CSE-ConnectionGUID: y4zuOoXdT4CtyrraSNmgyQ==
X-CSE-MsgGUID: 3KcJFC4jT/qDVgHblrjG5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="74636635"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="74636635"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:10 -0800
X-CSE-ConnectionGUID: yeuHzFs5R/2MiXabGa4CLQ==
X-CSE-MsgGUID: vSct310ARO2Li3KKbrGKNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="208910060"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 00:34:08 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/17] drm/i915/dp: Rework pipe joiner logic in compute_config
Date: Fri, 30 Jan 2026 13:48:00 +0530
Message-ID: <20260130081812.32087-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: CAACBB8680
X-Rspamd-Action: no action

Currently, the number of joined pipes are determined early in the flow,
which limits flexibility for accounting DSC slice overhead. To address
this, recompute the joined pipe count during DSC configuration.

Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
and select the minimal joiner configuration that satisfies the mode
requirements. This prepares the logic for future changes that will
consider DSC slice overhead.

v2:
 - Rename helper to intel_dp_compute_link_for_joined_pipes(). (Imre)
 - Move the check for max dotclock inside the helper so that if dotclock
   check fails for non DSC case for a given number of joined pipes, we
   are able to fallback to the DSC mode. (Imre)
v3:
 - Drop fallback to other joiner configurations, if the force joiner
   configuration fails. (Imre)
 - Check for maxdotclock limit for non-DSC case first and fall back to
   DSC if the check fails. (Imre)
 - Initialize ret to -EINVAL to handle case where we bail out early.
   (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 90 ++++++++++++++++++++-----
 1 file changed, 73 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dbe63efc1694..85e84f7748d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2799,33 +2799,24 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
 }
 
 static int
-intel_dp_compute_link_config(struct intel_encoder *encoder,
-			     struct intel_crtc_state *pipe_config,
-			     struct drm_connector_state *conn_state,
-			     bool respect_downstream_limits)
+intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
+				       struct intel_crtc_state *pipe_config,
+				       struct drm_connector_state *conn_state,
+				       bool respect_downstream_limits)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
-	int num_joined_pipes;
 	int ret = 0;
 
-	if (pipe_config->fec_enable &&
-	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
-		return -EINVAL;
-
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     adjusted_mode->crtc_hdisplay,
-						     adjusted_mode->crtc_clock);
-	if (num_joined_pipes > 1)
-		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
-
+	max_dotclk *= num_joined_pipes;
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -2848,7 +2839,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     0, false);
-		if (ret)
+
+		if (ret || adjusted_mode->crtc_clock > max_dotclk)
 			dsc_needed = true;
 	}
 
@@ -2873,6 +2865,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 						  conn_state, &limits, 64);
 		if (ret < 0)
 			return ret;
+
+		if (adjusted_mode->crtc_clock > max_dotclk)
+			return -EINVAL;
 	}
 
 	drm_dbg_kms(display->drm,
@@ -2888,6 +2883,67 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	return 0;
 }
 
+static int
+intel_dp_compute_link_config(struct intel_encoder *encoder,
+			     struct intel_crtc_state *crtc_state,
+			     struct drm_connector_state *conn_state,
+			     bool respect_downstream_limits)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	int num_joined_pipes;
+	int ret = -EINVAL;
+
+	if (crtc_state->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
+		return -EINVAL;
+
+	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+		if (connector->force_joined_pipes &&
+		    num_joined_pipes != connector->force_joined_pipes)
+			continue;
+
+		if (!intel_dp_can_join(display, num_joined_pipes))
+			continue;
+
+		if (adjusted_mode->hdisplay >
+		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+			continue;
+
+		/*
+		 * NOTE:
+		 * The crtc_state->joiner_pipes should have been set at the end
+		 * only if all the conditions are met. However that would mean
+		 * that num_joined_pipes is passed around to all helpers and
+		 * make them use it instead of using crtc_state->joiner_pipes
+		 * directly or indirectly (via intel_crtc_num_joined_pipes()).
+		 *
+		 * For now, setting crtc_state->joiner_pipes to the candidate
+		 * value to avoid the above churn and resetting it to 0, in case
+		 * no joiner candidate is found to be suitable for the given
+		 * configuration.
+		 */
+		if (num_joined_pipes > 1)
+			crtc_state->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
+							   crtc->pipe);
+
+		ret = intel_dp_compute_link_for_joined_pipes(encoder, crtc_state, conn_state,
+							     respect_downstream_limits);
+		if (ret == 0)
+			break;
+	}
+
+	if (ret < 0)
+		crtc_state->joiner_pipes = 0;
+
+	return ret;
+}
+
 bool intel_dp_limited_color_range(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
-- 
2.45.2

