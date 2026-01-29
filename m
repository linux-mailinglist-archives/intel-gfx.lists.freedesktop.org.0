Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EOsNamYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772B3B2DEB
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2A8110E8B8;
	Thu, 29 Jan 2026 17:28:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gs8Ic0w4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4737D10E8B8;
 Thu, 29 Jan 2026 17:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707687; x=1801243687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i8AeqprQ5bnc7upYZf9AWUeEf05jx7/e+KIflBjI0tM=;
 b=gs8Ic0w4e0F1VAMaqO5443asxzFQvTpnd+oURpGHxiP3F0/GuJkn9Pfk
 f0xlOU78rXW796Htmn72Td02rU77iNyTxmZBHDxBukg1TRszLQJJnikDJ
 1p18EMThER0GAt/3Aj5wST3CSJOOPVM4a58g4cVkPn5Jw/owl4XqXUZkd
 YYBfjiWMNbhS7FGNknTkBMHhmJND7ZrSeG7J4kf/ht8BaMxWnLT7wUf+P
 IIZQ1rYCmv9OXhNLIWAJpBbl1C5adqNNJhLxHSunPXaaf1icEZ8hEqMtQ
 26Yy7lBZml5W07PqYcbqvXtwPgpImcODRsnrwCu9YjF3wMuJnJ+JBuMLp w==;
X-CSE-ConnectionGUID: Z7LofuHTTPiykhSdWtIEdQ==
X-CSE-MsgGUID: xUPNKShSQsq5czESkZpQTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926913"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926913"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:06 -0800
X-CSE-ConnectionGUID: 8g028eetTbCeeSVuBdloRw==
X-CSE-MsgGUID: uVqa0OqERpu+kkFNSd54+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361064"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:04 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/16] drm/i915/dp_mst: Rework pipe joiner logic in
 compute_config
Date: Thu, 29 Jan 2026 22:41:48 +0530
Message-ID: <20260129171154.3898077-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
References: <20260129171154.3898077-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 772B3B2DEB
X-Rspamd-Action: no action

Similar to the DP SST, refactor mst_stream_compute_config() to iterate
over joiner candidates and select the minimal joiner configuration that
satisfies the mode requirements. This prepares the logic for future changes
that will consider DSC slice overhead.

v2:
 - Move the check for dotclock in the new helper and check for both DSC and
   non-DSC case. In case the check fails for non-DSC, fallback to DSC
   configuration. (Imre)
 - Propagate the return value from the core helper:
   mst_stream_compute_link_for_joined_pipes(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 46 ++++++++++++++++-----
 1 file changed, 35 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 55b2ccb45e43..c0d854b107b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -602,12 +602,16 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
+	const struct drm_display_mode *adjusted_mode =
+		&pipe_config->hw.adjusted_mode;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
+	max_dotclk *= num_joined_pipes;
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -621,7 +625,7 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret == -EDEADLK)
 			return ret;
 
-		if (ret)
+		if (ret || adjusted_mode->clock > max_dotclk)
 			dsc_needed = true;
 	}
 
@@ -664,6 +668,9 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 						  pipe_config->dp_m_n.tu);
 		if (ret)
 			return ret;
+
+		if (adjusted_mode->clock > max_dotclk)
+			return -EINVAL;
 	}
 
 	if (ret)
@@ -689,7 +696,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	int num_joined_pipes;
-	int ret = 0;
+	int num_pipes;
+	int ret = -EINVAL;
 
 	if (pipe_config->fec_enable &&
 	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
@@ -702,16 +710,32 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 	pipe_config->has_pch_encoder = false;
 
-	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,
-						     adjusted_mode->crtc_hdisplay,
-						     adjusted_mode->crtc_clock);
-	if (num_joined_pipes > 1)
-		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
+	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
+		if (connector->force_joined_pipes &&
+		    num_pipes != connector->force_joined_pipes)
+			continue;
+
+		num_joined_pipes = num_pipes;
+
+		if (!intel_dp_can_join(display, num_joined_pipes))
+			continue;
+
+		if (adjusted_mode->hdisplay >
+		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
+			continue;
+
+		if (num_joined_pipes > 1)
+			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
+							    crtc->pipe);
+
+		ret = mst_stream_compute_link_for_joined_pipes(encoder,
+							       pipe_config,
+							       conn_state,
+							       num_joined_pipes);
+		if (!ret)
+			break;
+	}
 
-	ret = mst_stream_compute_link_for_joined_pipes(encoder,
-						       pipe_config,
-						       conn_state,
-						       num_joined_pipes);
 	if (ret)
 		return ret;
 
-- 
2.45.2

