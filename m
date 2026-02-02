Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAcUEDSCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0019CB448
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC6610E43D;
	Mon,  2 Feb 2026 10:53:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hJdcdgB7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37F7B10E458;
 Mon,  2 Feb 2026 10:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029617; x=1801565617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ONJ/ciWZx2ZNC3EKL90rHbPHSgcSiE/yRWWVVA1ENJY=;
 b=hJdcdgB7EugvstqyENcldyh9wiS+8kLz6AeXCC7uHIf+wiAkZJHkul0r
 crIxPoZs1yhyrPBdHq/85pGqUokiB9sAuD21Ge44uiROhq78DGrS31U3j
 X/Cg0a/7kvRvFFTxETM9gNp397pqZ2HASfONWUDu/I0fFfTvNpgAAwSDP
 /xmPWLNfwv8g6P8ymUXXRUY8pQ66Z9XE8ZHyAa5Du5fkc+VmxJoeW327f
 8mB7+hUvu7UxFqLQf31KdLmkQ6FhuULSfh16kEYRj/Ew3XQOojxBMZPiS
 5jMIXXGTBHlBRPUaod/wXjNHsjoAtND9e4+0Vr+zgKv7lgrU2l4pIgZvO Q==;
X-CSE-ConnectionGUID: /+0MORqjTReXUgTBA099lA==
X-CSE-MsgGUID: ZOwUSrajSRqbq6U8IM1LQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385042"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385042"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:37 -0800
X-CSE-ConnectionGUID: qPiGP3DCTVezS+ZrEpn/Fg==
X-CSE-MsgGUID: LLz60e/JSa+313imCBOfmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419858"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/17] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Date: Mon,  2 Feb 2026 16:07:26 +0530
Message-ID: <20260202103731.357416-13-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: E0019CB448
X-Rspamd-Action: no action

Add intel_dp_dotclk_valid() helper, that checks the required pixel rate
against platform dotclock limit. With joined pipes the effective dotclock
limit depends upon the number of joined pipes.

Call the helper from the mode_valid phase and from the compute_config
phase where we need to check the limits for the given target clock for a
given joiner candidate.

v2: Rename the helper to intel_dp_dotclk_valid(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 +++++++------
 3 files changed, 35 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 933d4d71aef1..280062d3effc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1412,6 +1412,18 @@ bool intel_dp_can_join(struct intel_display *display,
 	}
 }
 
+bool intel_dp_dotclk_valid(struct intel_display *display,
+			   int target_clock,
+			   int num_joined_pipes)
+{
+	int max_dotclk = display->cdclk.max_dotclk_freq;
+	int effective_dotclk_limit;
+
+	effective_dotclk_limit = max_dotclk * num_joined_pipes;
+
+	return target_clock <= effective_dotclk_limit;
+}
+
 static enum drm_mode_status
 intel_dp_mode_valid(struct drm_connector *_connector,
 		    const struct drm_display_mode *mode)
@@ -1474,8 +1486,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	 */
 	status = MODE_CLOCK_HIGH;
 	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
-
 		if (connector->force_joined_pipes &&
 		    num_joined_pipes != connector->force_joined_pipes)
 			continue;
@@ -1543,9 +1553,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (target_clock > max_dotclk) {
+		if (!intel_dp_dotclk_valid(display,
+					   target_clock,
+					   num_joined_pipes)) {
 			status = MODE_CLOCK_HIGH;
 			continue;
 		}
@@ -2776,12 +2786,10 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	const struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
-	max_dotclk *= num_joined_pipes;
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -2805,7 +2813,10 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     0, false);
 
-		if (ret || adjusted_mode->crtc_clock > max_dotclk)
+		if (ret ||
+		    !intel_dp_dotclk_valid(display,
+					   adjusted_mode->crtc_clock,
+					   num_joined_pipes))
 			dsc_needed = true;
 	}
 
@@ -2831,7 +2842,9 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 		if (ret < 0)
 			return ret;
 
-		if (adjusted_mode->crtc_clock > max_dotclk)
+		if (!intel_dp_dotclk_valid(display,
+					   adjusted_mode->crtc_clock,
+					   num_joined_pipes))
 			return -EINVAL;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index ebaa35d23c9c..edeb09372d1e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -224,5 +224,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 int intel_dp_max_hdisplay_per_pipe(struct intel_display *display);
 bool intel_dp_can_join(struct intel_display *display,
 		       int num_joined_pipes);
+bool intel_dp_dotclk_valid(struct intel_display *display,
+			   int target_clock,
+			   int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 634720fec612..83fe389ea2dc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -606,12 +606,10 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		&pipe_config->hw.adjusted_mode;
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
-	int max_dotclk = display->cdclk.max_dotclk_freq;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
 	int ret = 0;
 
-	max_dotclk *= num_joined_pipes;
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
@@ -625,7 +623,10 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret == -EDEADLK)
 			return ret;
 
-		if (ret || adjusted_mode->clock > max_dotclk)
+		if (ret ||
+		    !intel_dp_dotclk_valid(display,
+					   adjusted_mode->clock,
+					   num_joined_pipes))
 			dsc_needed = true;
 	}
 
@@ -669,7 +670,9 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret)
 			return ret;
 
-		if (adjusted_mode->clock > max_dotclk)
+		if (!intel_dp_dotclk_valid(display,
+					   adjusted_mode->clock,
+					   num_joined_pipes))
 			return -EINVAL;
 	}
 
@@ -1525,8 +1528,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 	*status = MODE_CLOCK_HIGH;
 	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
-
 		if (connector->force_joined_pipes &&
 		    num_joined_pipes != connector->force_joined_pipes)
 			continue;
@@ -1571,9 +1572,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (mode->clock > max_dotclk) {
+		if (!intel_dp_dotclk_valid(display,
+					   mode->clock,
+					   num_joined_pipes)) {
 			*status = MODE_CLOCK_HIGH;
 			continue;
 		}
-- 
2.45.2

