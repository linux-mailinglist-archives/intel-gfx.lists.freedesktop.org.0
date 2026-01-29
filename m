Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIweHLKYe2nOGAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 223C2B2E18
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 18:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC55710E8C8;
	Thu, 29 Jan 2026 17:28:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOuzekYw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA25210E8C5;
 Thu, 29 Jan 2026 17:28:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769707696; x=1801243696;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VLTybSIUHmLPIWYYfJAHjcaveJkTJ/NNOsiKW6Iy7ZE=;
 b=AOuzekYwcfDdD4Iu6f8HDyW2feV85HKUlyF7jW4RrRxePN5F8So+vXG/
 iexHt0Dkff3SmCZPXVMYHhNSwej5pqWO154SW0ehxUathh6xqBnZGJ1fW
 fbm92zaMc1BSArzQSLrlsFkHQYJaKTJX5wPn6mme2pRMTto6dP5cFNJcg
 P01321Bk8wXg/0DJ4Flg92fLThgbFvOATxku1ju6aLf1/p67qgmJUHWzb
 7rQ641N5EJMCP6Y3xrgkSn7I3fjPAod+XAq+0zr/G3FKaNQtL+E+YP6Xx
 Sd1e1QkKXcJobTGGP7IJwJZdlBh6oXPlYKftMsSotY9xsnSypX7rKeIV3 g==;
X-CSE-ConnectionGUID: tBkLjrMwSAiItvfYCIZrfQ==
X-CSE-MsgGUID: IRSFhf1RRpCZF+vhtyKurg==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="70926934"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="70926934"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:16 -0800
X-CSE-ConnectionGUID: FaEGn4dDRyCORP9CXtFwmg==
X-CSE-MsgGUID: yxs0z7ZrRru3Qe1vdqqFBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239361106"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 09:28:14 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/16] drm/i915/dp: Account for DSC slice overhead
Date: Thu, 29 Jan 2026 22:41:52 +0530
Message-ID: <20260129171154.3898077-15-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 223C2B2E18
X-Rspamd-Action: no action

Account for DSC slice overhead bubbles and adjust the pixel rate while
checking the pixel rate against the max dotclock limits.

v2: Add missing assignment for dsc_slice_count in
mst_connector_mode_valid_ctx(). (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c   |  1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
 5 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 69a87c5933b1..798a0d192b72 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1414,6 +1414,8 @@ bool intel_dp_can_join(struct intel_display *display,
 
 bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int target_clock,
+			   int htotal,
+			   int dsc_slice_count,
 			   int num_joined_pipes)
 {
 	int max_dotclk = display->cdclk.max_dotclk_freq;
@@ -1421,6 +1423,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 
 	effective_dotclk_limit = max_dotclk * num_joined_pipes;
 
+	if (dsc_slice_count)
+		target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
+									 target_clock,
+									 htotal,
+									 dsc_slice_count);
+
 	return target_clock <= effective_dotclk_limit;
 }
 
@@ -1553,8 +1561,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
+		if (!dsc)
+			dsc_slice_count = 0;
+
 		if (!intel_dp_dotclk_valid(display,
 					   target_clock,
+					   mode->htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			continue;
 
@@ -2787,6 +2800,7 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int dsc_slice_count = 0;
 	int ret = 0;
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
@@ -2815,6 +2829,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 		if (ret ||
 		    !intel_dp_dotclk_valid(display,
 					   adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			dsc_needed = true;
 	}
@@ -2841,8 +2857,12 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 		if (ret < 0)
 			return ret;
 
+		dsc_slice_count = intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
+
 		if (!intel_dp_dotclk_valid(display,
 					   adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			return -EINVAL;
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index edeb09372d1e..95a38763a367 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -226,6 +226,8 @@ bool intel_dp_can_join(struct intel_display *display,
 		       int num_joined_pipes);
 bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int target_clock,
+			   int htotal,
+			   int dsc_slice_count,
 			   int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 129ea3e3916e..1c4b3014ba33 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -608,6 +608,7 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		to_intel_connector(conn_state->connector);
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int dsc_slice_count = 0;
 	int ret = 0;
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
@@ -626,6 +627,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret ||
 		    !intel_dp_dotclk_valid(display,
 					   adjusted_mode->clock,
+					   adjusted_mode->htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			dsc_needed = true;
 	}
@@ -670,8 +673,12 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret)
 			return ret;
 
+		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, pipe_config);
+
 		if (!intel_dp_dotclk_valid(display,
 					   adjusted_mode->clock,
+					   adjusted_mode->htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			return -EINVAL;
 	}
@@ -1531,6 +1538,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	for (num_pipes = 1; num_pipes <= I915_MAX_PIPES; num_pipes++) {
+		int dsc_slice_count = 0;
+
 		*status = MODE_CLOCK_HIGH;
 
 		if (connector->force_joined_pipes &&
@@ -1553,6 +1562,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 			 */
 			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       mode->clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			if (!drm_dp_is_uhbr_rate(max_link_clock))
 				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
@@ -1575,8 +1589,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
+		if (!dsc)
+			dsc_slice_count = 0;
+
 		if (!intel_dp_dotclk_valid(display,
 					   mode->clock,
+					   mode->htotal,
+					   dsc_slice_count,
 					   num_joined_pipes))
 			*status = MODE_CLOCK_HIGH;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 642a89270d8e..7e53201b3cb1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1104,7 +1104,6 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
-static
 int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
 					      int pixel_rate, int htotal,
 					      int dsc_horizontal_slices)
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index aeb17670307b..f4d5b37293cf 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -41,5 +41,8 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
 unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
+					      int pixel_rate, int htotal,
+					      int dsc_horizontal_slices);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

