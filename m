Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALhGC7CYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4EAB2E07
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505DE10E8C1;
	Thu, 29 Jan 2026 17:28:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvaMxVfK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E035C10E8C1;
 Thu, 29 Jan 2026 17:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707691; x=1801243691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=U9BOgvrYrVv1vy4GUtEKEyWk2TIihTehQ5Ny1j2i+TQ=;
 b=gvaMxVfKjbMLFPKwrvSPrghHOitbF6snPN1YF+c+MWbr+0eVaIhi7lIN
 xo/cYIdgW/NrgiYTUKJmQubOLFmCc7qeGY+lTU5J7wittgGs9g9i8OIIP
 4Ql4naAylbK9lzs8Lu5bBhcb9BZrOFw7KtQd3xed1316dYaxjqYBthRdM
 NE52UZa0+n15dN59FJQPmQ0i5zRPfYdQQEbMZsm5ZbNi52nHHegHYcAMJ
 UmGLQc2F6+DQyeESjEoG+htapbSLplPed8JcJHtMSoEtph4unRD2gQmCZ
 XfETsx/Pb+nhZ4waZxhZAddGTQrUXeCvgi+brNf2exziq3dDxXZyCCzIT Q==;
X-CSE-ConnectionGUID: Vc877WbFSXWrCos1Bl428Q==
X-CSE-MsgGUID: 9ZCMCTqzTzuqwy1pgerAhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926918"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926918"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:11 -0800
X-CSE-ConnectionGUID: qmq5DSQUTfeaVACXFI2y6g==
X-CSE-MsgGUID: mv7QrbKLRdKv2OQk79WRww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361075"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/16] drm/i915/dp: Introduce helper to check pixel rate
 against dotclock limits
Date: Thu, 29 Jan 2026 22:41:50 +0530
Message-ID: <20260129171154.3898077-13-ankit.k.nautiyal@intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CF4EAB2E07
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
index ae1aef445cf7..d31e92cc0104 100644
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
 	 * over candidate pipe counts and evaluate each combination.
 	 */
 	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
-
 		status = MODE_CLOCK_HIGH;
 
 		if (connector->force_joined_pipes &&
@@ -1543,9 +1553,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (target_clock > max_dotclk)
+		if (!intel_dp_dotclk_valid(display,
+					   target_clock,
+					   num_joined_pipes))
 			continue;
 
 		status = MODE_OK;
@@ -2775,12 +2785,10 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
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
@@ -2804,7 +2812,10 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 							     fxp_q4_from_int(pipe_config->pipe_bpp),
 							     0, false);
 
-		if (ret || adjusted_mode->crtc_clock > max_dotclk)
+		if (ret ||
+		    !intel_dp_dotclk_valid(display,
+					   adjusted_mode->crtc_clock,
+					   num_joined_pipes))
 			dsc_needed = true;
 	}
 
@@ -2830,7 +2841,9 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
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
index c0d854b107b5..129ea3e3916e 100644
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
 
@@ -1528,8 +1531,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
-		int max_dotclk = display->cdclk.max_dotclk_freq;
-
 		*status = MODE_CLOCK_HIGH;
 
 		if (connector->force_joined_pipes &&
@@ -1574,9 +1575,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
-		max_dotclk *= num_joined_pipes;
-
-		if (mode->clock > max_dotclk)
+		if (!intel_dp_dotclk_valid(display,
+					   mode->clock,
+					   num_joined_pipes))
 			*status = MODE_CLOCK_HIGH;
 
 		if (status == MODE_OK)
-- 
2.45.2

