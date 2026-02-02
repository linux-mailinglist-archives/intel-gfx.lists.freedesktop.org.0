Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEkLHSeCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19EA8CB406
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685E310E453;
	Mon,  2 Feb 2026 10:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hE5naHIh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37E810E455;
 Mon,  2 Feb 2026 10:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029603; x=1801565603;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mhmRa2pLABy9aFag3d2UAUNgc+W+yKMiE3ck+s+0kXY=;
 b=hE5naHIhoL8/yf0yX6ay7wVEfMmVYe2iYSt5JodrhgpWT+XwSBnnuT0U
 Rsn15z7rZdw/8G5mqIiXUKkMdRTMoiUWYsBO6J4WGMFdeSW44oeX1Np8l
 qmbjE1jL6qPHgxbNLkGefH3o/42FIOk5HYShtgdTZI13JhZqH9NdgzXtX
 Dd0PrmwthqYE389uDun9qwMz2dWuoU90YzI2/6/MOSBq6q10g21QrB3AQ
 Je68YQ3OHKQqx0oGEbQxYuPSFhG7depjj4Ab0lHDtZ5BOT4PutWdO7I3w
 v1R/YFiWIWAIB29zTWpo6V0G3VCAIBEPfaF8cN92tcZh6Xlt2c4+c3t0U g==;
X-CSE-ConnectionGUID: 0iT2apPvSFWnvoXZTt3RXQ==
X-CSE-MsgGUID: /2MRRlpyTaeh+P8IYkQUmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385013"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385013"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:23 -0800
X-CSE-ConnectionGUID: iLfZUhm8SLqpdUubSYt1OA==
X-CSE-MsgGUID: amRV6QffQcyOKOEc6Xzzuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419794"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:22 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/17] drm/i915/dp: Rework pipe joiner logic in compute_config
Date: Mon,  2 Feb 2026 16:07:19 +0530
Message-ID: <20260202103731.357416-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 19EA8CB406
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
index 17803b3f9a21..3e2868c5013c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2803,33 +2803,24 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
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
@@ -2852,7 +2843,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     0, false);
-		if (ret)
+
+		if (ret || adjusted_mode->crtc_clock > max_dotclk)
 			dsc_needed = true;
 	}
 
@@ -2877,6 +2869,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 						  conn_state, &limits, 64);
 		if (ret < 0)
 			return ret;
+
+		if (adjusted_mode->crtc_clock > max_dotclk)
+			return -EINVAL;
 	}
 
 	drm_dbg_kms(display->drm,
@@ -2892,6 +2887,67 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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

