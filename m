Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wP3FNX5RcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:34 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A1E50D22
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF77710E6B9;
	Wed, 21 Jan 2026 04:09:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZsOxv2cY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E8F10E6B2;
 Wed, 21 Jan 2026 04:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968571; x=1800504571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OWs44ATnZjwMVebrALqGLtEmFgKDVAMsrfGvhNRo/oY=;
 b=ZsOxv2cYKcS4Mm/irsk8VUMnoOMlM1WxILXAyFIil/QHAAW8siloFwy7
 GKsiovsnB2z9of4Xo/q7BWGIqPhnfF1mgH/uRa+9FQjfJ/Of5c1+7JWjp
 l1Sx/A0dw54aW+xTu0sge10TScsFYN7PLpcIca/KC9xXA0gWA1LdXQfJ9
 SkXGPM84tK/bMfPFV9ozMDvbkCEboIJF9RYN0ZkMhoUuZkbDuKtCAL8s+
 sKCyVZ0cjh4gySPbPW31pPbpZuJxrW42lS4wAm1dJZIyLZYm9DF94FCeS
 u91SX3PqLkNc8kMPnHOJJUUWTwryxYUeC+wY95Y89yr2TkHfK4GxVvmPX g==;
X-CSE-ConnectionGUID: Fty1VZ0RRJ6AudDndoMhcg==
X-CSE-MsgGUID: E2ZbF1BkR0ip4FE/ngXiKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299951"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299951"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:31 -0800
X-CSE-ConnectionGUID: VcvLlR87QTioHsH5TysWiQ==
X-CSE-MsgGUID: fs+kExl5REWqnUDuTE0vGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330947"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:31 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 05/14] drm/i915/dp: Rework pipe joiner logic in compute_config
Date: Wed, 21 Jan 2026 09:23:21 +0530
Message-ID: <20260121035330.2793386-6-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 55A1E50D22
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, the number of joined pipes are determined early in the flow,
which limits flexibility for accounting DSC slice overhead. To address
this, recompute the joined pipe count during DSC configuration.

Refactor intel_dp_dsc_compute_config() to iterate over joiner candidates
and select the minimal joiner configuration that satisfies the mode
requirements. This prepares the logic for future changes that will
consider DSC slice overhead.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 102 +++++++++++++++++++-----
 1 file changed, 84 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 02381f84fa58..d96d9ac1e830 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2790,33 +2790,20 @@ bool intel_dp_joiner_needs_dsc(struct intel_display *display,
 }
 
 static int
-intel_dp_compute_link_config(struct intel_encoder *encoder,
-			     struct intel_crtc_state *pipe_config,
-			     struct drm_connector_state *conn_state,
-			     bool respect_downstream_limits)
+_intel_dp_compute_link_config(struct intel_encoder *encoder,
+			      struct intel_crtc_state *pipe_config,
+			      struct drm_connector_state *conn_state,
+			      bool respect_downstream_limits)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
+	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	const struct drm_display_mode *adjusted_mode =
-		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
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
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -2879,6 +2866,85 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
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
+	int ret = 0;
+	int i;
+
+	if (crtc_state->fec_enable &&
+	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
+		return -EINVAL;
+
+	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
+		enum joiner_type joiner = joiner_candidates[i];
+		int max_dotclk = display->cdclk.max_dotclk_freq;
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
+		ret = _intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+						    respect_downstream_limits);
+		if (ret)
+			continue;
+
+		max_dotclk *= num_joined_pipes;
+
+		if (adjusted_mode->crtc_clock <= max_dotclk) {
+			ret = 0;
+			break;
+		}
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

