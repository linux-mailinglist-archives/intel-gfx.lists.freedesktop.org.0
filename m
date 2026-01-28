Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DkBKMMbemlS2QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:59 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4525DA2B1F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:22:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF2910E6F4;
	Wed, 28 Jan 2026 14:22:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vq2IltX2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 254B510E6F1;
 Wed, 28 Jan 2026 14:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769610176; x=1801146176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HXOIMGcqcteFyNiGjCmgQapT72zS+X4q6DNRUGSoe0M=;
 b=Vq2IltX2KO3QLfjPuZAuMw6HkTUpn6ZjNTUkv5U/kL8DDLaL2/0N3peS
 c726SZiWRBHQb1FQaazdZw8iKvleKaSR+DJn8vO6QUXozb1sixixxKHVJ
 Gm9PmTexVaNg8cGt9JFHsnsjjJGywhr6eyLw3oU2pn4ey5hLvnJp6BRyX
 R40WK6F0C2Sp+TcTCLtqmAHV0jd1vHtItr1rj+bqM08KoFoklBd4QLc+l
 eGCc0YUnaG1CePb7EmIWMqDUfgXecdXAAt0TaRnUroIB8Qtfunr4BeOLd
 ORGsSHIIimHCobA0bGKpj7Cwc+cyk2vak4Ch6n2RbVNBFcuupULwkOHvC Q==;
X-CSE-ConnectionGUID: H5FZu4c8TpWDrcOMkD5eiw==
X-CSE-MsgGUID: +QG8bpGsR4OKHSAmWg0PoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="58400942"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="58400942"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:56 -0800
X-CSE-ConnectionGUID: l5iU4ASOTGyGstm3WksO+Q==
X-CSE-MsgGUID: alTqZHufRZi8ei8nTwRIfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245881400"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:22:54 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, imre.deak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/16] drm/i915/dp: Account for DSC slice overhead
Date: Wed, 28 Jan 2026 19:36:33 +0530
Message-ID: <20260128140636.3527799-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
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
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 4525DA2B1F
X-Rspamd-Action: no action

Account for DSC slice overhead bubbles and adjust the pixel rate while
checking the pixel rate against the max dotclock limits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_vdsc.c   |  1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h   |  3 +++
 5 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0acb3b64cf27..c1ff92367808 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1451,6 +1451,8 @@ bool intel_dp_can_join(struct intel_display *display,
 
 bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int target_clock,
+			   int htotal,
+			   int dsc_slice_count,
 			   int num_joined_pipes)
 {
 	int max_dotclk = display->cdclk.max_dotclk_freq;
@@ -1458,6 +1460,12 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 
 	effective_dotclk_limit = max_dotclk * num_joined_pipes;
 
+	if (dsc_slice_count)
+		target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
+									 target_clock,
+									 htotal,
+									 dsc_slice_count);
+
 	return target_clock <= effective_dotclk_limit;
 }
 
@@ -1592,8 +1600,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
+		if (!dsc)
+			dsc_slice_count = 0;
+
 		if (intel_dp_dotclk_valid(display,
 					  target_clock,
+					  mode->htotal,
+					  dsc_slice_count,
 					  num_joined_pipes)) {
 			status = MODE_OK;
 			break;
@@ -2827,6 +2840,7 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	struct link_config_limits limits;
 	bool dsc_needed, joiner_needs_dsc;
+	int dsc_slice_count = 0;
 	int ret = 0;
 
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
@@ -2878,10 +2892,15 @@ intel_dp_compute_link_for_joined_pipes(struct intel_encoder *encoder,
 			return ret;
 	}
 
+	if (pipe_config->dsc.compression_enable)
+		dsc_slice_count = intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
+
 	max_dotclk *= num_joined_pipes;
 
 	if (!intel_dp_dotclk_valid(display,
 				   adjusted_mode->crtc_clock,
+				   adjusted_mode->crtc_htotal,
+				   dsc_slice_count,
 				   num_joined_pipes))
 		return -EINVAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 78fa8eaba4ac..beef480b7672 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -230,6 +230,8 @@ bool intel_dp_can_join(struct intel_display *display,
 		       int num_joined_pipes);
 bool intel_dp_dotclk_valid(struct intel_display *display,
 			   int target_clock,
+			   int htotal,
+			   int dsc_slice_count,
 			   int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index f433a01dcfcb..bdf2f09fa03e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -702,6 +702,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 	pipe_config->has_pch_encoder = false;
 
 	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+		int dsc_slice_count = 0;
 
 		ret = -EINVAL;
 
@@ -731,8 +732,12 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
+		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, pipe_config);
+
 		if (intel_dp_dotclk_valid(display,
 					  adjusted_mode->clock,
+					  adjusted_mode->htotal,
+					  dsc_slice_count,
 					  num_joined_pipes)) {
 			ret = 0;
 			break;
@@ -1531,6 +1536,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	}
 
 	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
+		int dsc_slice_count = 0;
 
 		*status = MODE_CLOCK_HIGH;
 
@@ -1556,6 +1562,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 			 */
 			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       mode->clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			if (!drm_dp_is_uhbr_rate(max_link_clock))
 				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
@@ -1580,6 +1591,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 		if (intel_dp_dotclk_valid(display,
 					  mode->clock,
+					  mode->htotal,
+					  dsc_slice_count,
 					  num_joined_pipes)) {
 			*status = MODE_OK;
 			break;
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

