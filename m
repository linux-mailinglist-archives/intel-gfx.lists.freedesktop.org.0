Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCDcLTeCgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A70CB456
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 11:53:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1C1310E413;
	Mon,  2 Feb 2026 10:53:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LJ09UaPm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E80D10E413;
 Mon,  2 Feb 2026 10:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770029621; x=1801565621;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yahlz0BNJMld2UrYw5zd1AALHr0Mk11nbVwqWggHdCY=;
 b=LJ09UaPmAvrSpOlUD5jW9cdY2Pa2iqnEbF+1lq3ZOQknA+csS17GDu8X
 WXC7DtmHUF/yIce2JRtCyLEGZBZyytoHhWmyN5QsJnSmfZF2CT5weOZNn
 zryc6gp2NXAWP1Xuvnr4CpUs/Ema6I6zxyiCCzm255Y7xHKRQieQaBz78
 lGYDNNBwfT9hgbJz4CMazsJBZgHs+G2dU6b9ME3HylKtizS5UbcES0U/4
 xJhLCh2vSUrEa2sRmgOUPKl4ehcBxiKuM6bulvPRoH03xwoh0LIk5YDqs
 HtfsCV8zHRO8M5AHxCT3h9IfvGYk5VydFFx+Hx42jptFxIsoMCWxv22zT g==;
X-CSE-ConnectionGUID: 4I+sIENNSueF/uZzzq7AVQ==
X-CSE-MsgGUID: 1nBpy3o4TXWIoKsJ45/RLw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="70385053"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="70385053"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:41 -0800
X-CSE-ConnectionGUID: ZZq4m5EGTw2MCQHxZsIEUQ==
X-CSE-MsgGUID: qTw+qqlDS2e2U7TWAl9DWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="232419871"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:53:39 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/17] drm/i915/dp: Account for DSC slice overhead
Date: Mon,  2 Feb 2026 16:07:28 +0530
Message-ID: <20260202103731.357416-15-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 65A70CB456
X-Rspamd-Action: no action

Account for DSC slice overhead bubbles and adjust the pixel rate while
checking the pixel rate against the max dotclock limits.

v2: Add missing assignment for dsc_slice_count in
mst_connector_mode_valid_ctx(). (Imre)

v3: Explicitly pass dsc_slice_count as 0 for Non-DSC case. (Imre)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 20 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c   |  1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
 5 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ee7414206cc5..6329004f56bc 100644
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
 					   num_joined_pipes)) {
 			status = MODE_CLOCK_HIGH;
 			continue;
@@ -2816,6 +2829,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 		if (ret ||
 		    !intel_dp_dotclk_valid(display,
 					   adjusted_mode->crtc_clock,
+					   adjusted_mode->crtc_htotal,
+					   0,
 					   num_joined_pipes))
 			dsc_needed = true;
 	}
@@ -2826,6 +2841,8 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	}
 
 	if (dsc_needed) {
+		int dsc_slice_count;
+
 		drm_dbg_kms(display->drm,
 			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
@@ -2842,8 +2859,12 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
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
index 83fe389ea2dc..8bd3128add0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -626,6 +626,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 		if (ret ||
 		    !intel_dp_dotclk_valid(display,
 					   adjusted_mode->clock,
+					   adjusted_mode->htotal,
+					   0,
 					   num_joined_pipes))
 			dsc_needed = true;
 	}
@@ -637,6 +639,8 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
 
 	/* enable compression if the mode doesn't fit available BW */
 	if (dsc_needed) {
+		int dsc_slice_count;
+
 		drm_dbg_kms(display->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
@@ -670,8 +674,12 @@ static int mst_stream_compute_link_for_joined_pipes(struct intel_encoder *encode
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
@@ -1528,6 +1536,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 	*status = MODE_CLOCK_HIGH;
 	for (num_joined_pipes = 1; num_joined_pipes <= I915_MAX_PIPES; num_joined_pipes++) {
+		int dsc_slice_count = 0;
+
 		if (connector->force_joined_pipes &&
 		    num_joined_pipes != connector->force_joined_pipes)
 			continue;
@@ -1546,6 +1556,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 			 */
 			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       mode->clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			if (!drm_dp_is_uhbr_rate(max_link_clock))
 				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
@@ -1572,8 +1587,13 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		if (*status != MODE_OK)
 			continue;
 
+		if (!dsc)
+			dsc_slice_count = 0;
+
 		if (!intel_dp_dotclk_valid(display,
 					   mode->clock,
+					   mode->htotal,
+					   dsc_slice_count,
 					   num_joined_pipes)) {
 			*status = MODE_CLOCK_HIGH;
 			continue;
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

