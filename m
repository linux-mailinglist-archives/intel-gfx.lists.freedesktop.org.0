Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GK/lApRRcGlvXQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF23350D62
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 05:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470CB10E6CE;
	Wed, 21 Jan 2026 04:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pu9VX0PD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76B8B10E6C8;
 Wed, 21 Jan 2026 04:09:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768968587; x=1800504587;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Td31nHI/B1pvoNITBb1TKv2T8bbrJlTs8S802WS37zU=;
 b=Pu9VX0PDbeA5djKW0zdadRs78BanF7n0/3MDn3tI6HGGZjfmmO+sTh2w
 PNmkH0mh+5R4yP+2oyw8IjqVxF+xy5nZ9z2VVtind92LhtubpAfU1G9HK
 KExMaKlCIkJXONvMRUta4ZjPQXVACy0Tg/E5p/5qJUD61RZ6Nm03tiQyC
 teBU89kQKZv4QNRLzDo/5zjvpo7fdpDW3Sj0hLUayXOfIMgm7OJL9fRww
 i8SNpdI+o50MbwnngdFtoUV1lyAgkfCXNfeB8E06baYZUR6Xm/pafI2N4
 Py3/17Oy2FIpxfow2wqWjUzkJ1RRh3Sa+Gw5nl5jisctfovXoYDXtLb9T A==;
X-CSE-ConnectionGUID: uIU5mvjWQsKMqkDxRtfRmg==
X-CSE-MsgGUID: jWejjbNFSESZxD5/zw8X7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="81299973"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="81299973"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:47 -0800
X-CSE-ConnectionGUID: Fb9x+hgHRhax9ar6Iz5o/A==
X-CSE-MsgGUID: 3ah4I9x7RdaGY5b+aky0ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211330989"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 20:09:47 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/14] drm/i915/dp: Account for DSC slice overhead
Date: Wed, 21 Jan 2026 09:23:29 +0530
Message-ID: <20260121035330.2793386-14-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: AF23350D62
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 9f73a1307b6c..a6a1a803d860 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1442,6 +1442,8 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
 
 bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
 				     int target_clock,
+				     int htotal,
+				     int dsc_slice_count,
 				     int num_joined_pipes)
 {
 	int max_dotclk = display->cdclk.max_dotclk_freq;
@@ -1449,6 +1451,12 @@ bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
 
 	effective_dotclk_limit = max_dotclk * num_joined_pipes;
 
+	if (dsc_slice_count)
+		target_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
+									 target_clock,
+									 htotal,
+									 dsc_slice_count);
+
 	return target_clock <= effective_dotclk_limit;
 }
 
@@ -1579,8 +1587,13 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		if (status != MODE_OK)
 			continue;
 
+		if (!dsc)
+			dsc_slice_count = 0;
+
 		if (intel_dp_pixel_rate_fits_dotclk(display,
 						    target_clock,
+						    mode->htotal,
+						    dsc_slice_count,
 						    num_joined_pipes)) {
 			status = MODE_OK;
 			break;
@@ -2898,6 +2911,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
+		int dsc_slice_count = 0;
 
 		if (joiner == FORCED_JOINER) {
 			if (!connector->force_joined_pipes)
@@ -2939,8 +2953,13 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
+		if (crtc_state->dsc.compression_enable)
+			dsc_slice_count = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
+
 		if (intel_dp_pixel_rate_fits_dotclk(display,
 						    adjusted_mode->crtc_clock,
+						    adjusted_mode->crtc_htotal,
+						    dsc_slice_count,
 						    num_joined_pipes)) {
 			ret = 0;
 			break;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 0c1cd843bd0a..78b457b11f07 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -235,6 +235,8 @@ int intel_dp_sdp_min_guardband(const struct intel_crtc_state *crtc_state,
 int intel_dp_hdisplay_limit(struct intel_display *display);
 bool intel_dp_pixel_rate_fits_dotclk(struct intel_display *display,
 				     int target_clock,
+				     int htotal,
+				     int dsc_slice_count,
 				     int num_joined_pipes);
 
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7c957351467e..25d229843459 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -710,6 +710,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
+		int dsc_slice_count = 0;
 
 		ret = -EINVAL;
 
@@ -741,8 +742,12 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
 		if (ret)
 			continue;
 
+		dsc_slice_count = intel_dp_mst_dsc_get_slice_count(connector, pipe_config);
+
 		if (intel_dp_pixel_rate_fits_dotclk(display,
 						    adjusted_mode->clock,
+						    adjusted_mode->htotal,
+						    dsc_slice_count,
 						    num_joined_pipes)) {
 			ret = 0;
 			break;
@@ -1542,6 +1547,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 	for (i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		enum joiner_type joiner = joiner_candidates[i];
+		int dsc_slice_count = 0;
 
 		*status = MODE_CLOCK_HIGH;
 
@@ -1569,6 +1575,11 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 			 */
 			int pipe_bpp = intel_dp_dsc_compute_max_bpp(connector, U8_MAX);
 
+			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
+								       mode->clock,
+								       mode->hdisplay,
+								       num_joined_pipes);
+
 			if (!drm_dp_is_uhbr_rate(max_link_clock))
 				bw_overhead_flags |= DRM_DP_BW_OVERHEAD_FEC;
 
@@ -1593,6 +1604,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 
 		if (intel_dp_pixel_rate_fits_dotclk(display,
 						    mode->clock,
+						    mode->htotal,
+						    dsc_slice_count,
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

