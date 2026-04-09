Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MK4PMG1812mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:16:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419943C9109
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB43910E78A;
	Thu,  9 Apr 2026 10:16:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CvcRWaZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD1410E78A;
 Thu,  9 Apr 2026 10:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729770; x=1807265770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TFN6Opi6nnxQ6eNNJ1APENv3QJ7uMAXvqhPrfJ+1CBo=;
 b=CvcRWaZRmLArQWPU1Sq9nhuwK63DnKri58drWumCfm8ORxhaK/oe5FoT
 nmJCjAnyNyqhGyjcxSWqnE/ZNNCk6qgvJQoF03juj+eM3CcK4XOENITtL
 bHwDOD4PplejI2TO/uxE4rUO0tYkhZjP78cP3X35W+kU42nVHokn9iRfg
 KbtulsLu5odYMH7V1YVfZY50YuvQdLiaDR0cnbxNTyd9K1Qrj3vjDkiVD
 A63yVfT8hnNo9voOqdx39iULylUvdx9a7Tu3pBNSgBCrUDNk6L9BwXfPn
 imyqWzJ4H4BO9oA2PWh45U6FarYHO33v2pXmGWzg62lZMLCli+r89+jdb w==;
X-CSE-ConnectionGUID: vRKb73FcSOO4OoEp1vmrtQ==
X-CSE-MsgGUID: +wlRJ0q0TqaIQP4kVpPdjg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87354268"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87354268"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:16:07 -0700
X-CSE-ConnectionGUID: uy3oLFdSSQyqowyszorz5A==
X-CSE-MsgGUID: mN5Ue6hUSOePvrc+xJ0Avw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252065502"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:16:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 5/9] drm/i915/dp: Validate "4:2:0 also" modes twice
Date: Thu,  9 Apr 2026 13:15:35 +0300
Message-ID: <20260409101539.22032-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
References: <20260409101539.22032-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 419943C9109
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we only validate "4:2:0 also" modes as RGB. But
if that fails we could perhaps still use the mode in with
4:2:0 output. All we have to do is retry the validation with
the different sink format.

So far we did the double validation only so far as it affects
PCON TMDS clock limits. But validating everything twice seems
a bit more sane.

Note that intel_dp_output_format() might still end up picking
RGB for the actual output format (and letting PCON deal with
the YCbCr conversion). So I suppose we could still fail the
validation due to that, and forcing even the output format
to 4:2:0 might solve it on a third try. But we'd need the
same fallback logic in intel_dp_compute_config(). For now
this seems sufficient.

v2: Pass output_format to intel_dp_mode_min_link_bpp_x16()
    Add TODO about remaining issues
    Nuke intel_dp_sink_format()

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 151 ++++++++++++------------
 1 file changed, 78 insertions(+), 73 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index ed5841f224ee..99672341f43e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1234,28 +1234,11 @@ int intel_dp_output_format_link_bpp_x16(enum intel_output_format output_format,
 	return fxp_q4_from_int(pipe_bpp);
 }
 
-static enum intel_output_format
-intel_dp_sink_format(struct intel_connector *connector,
-		     const struct drm_display_mode *mode)
-{
-	const struct drm_display_info *info = &connector->base.display_info;
-
-	if (drm_mode_is_420_only(info, mode))
-		return INTEL_OUTPUT_FORMAT_YCBCR420;
-
-	return INTEL_OUTPUT_FORMAT_RGB;
-}
-
 static int
 intel_dp_mode_min_link_bpp_x16(struct intel_connector *connector,
-			       const struct drm_display_mode *mode)
+			       const struct drm_display_mode *mode,
+			       enum intel_output_format output_format)
 {
-	enum intel_output_format output_format, sink_format;
-
-	sink_format = intel_dp_sink_format(connector, mode);
-
-	output_format = intel_dp_output_format(connector, sink_format);
-
 	return intel_dp_output_format_link_bpp_x16(output_format,
 						   intel_dp_min_bpp(output_format));
 }
@@ -1329,14 +1312,10 @@ static int frl_required_bw(int clock, int bpc,
 static enum drm_mode_status
 intel_dp_mode_valid_downstream(struct intel_connector *connector,
 			       const struct drm_display_mode *mode,
-			       int target_clock)
+			       int target_clock,
+			       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	const struct drm_display_info *info = &connector->base.display_info;
-	enum drm_mode_status status;
-	enum intel_output_format sink_format;
-
-	sink_format = intel_dp_sink_format(connector, mode);
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -1361,22 +1340,8 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 		return MODE_CLOCK_HIGH;
 
 	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
-	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-					   8, sink_format, true);
-
-	if (status != MODE_OK) {
-		if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-		    !connector->base.ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(info, mode))
-			return status;
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
-						   8, sink_format, true);
-		if (status != MODE_OK)
-			return status;
-	}
-
-	return MODE_OK;
+	return intel_dp_tmds_clock_valid(intel_dp, target_clock,
+					 8, sink_format, true);
 }
 
 static enum drm_mode_status
@@ -1472,15 +1437,14 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
 }
 
 static enum drm_mode_status
-intel_dp_mode_valid(struct drm_connector *_connector,
-		    const struct drm_display_mode *mode)
+intel_dp_mode_valid_format(struct intel_connector *connector,
+			   const struct drm_display_mode *mode,
+			   int target_clock,
+			   enum intel_output_format sink_format)
 {
-	struct intel_display *display = to_intel_display(_connector->dev);
-	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	enum intel_output_format sink_format, output_format;
-	const struct drm_display_mode *fixed_mode;
-	int target_clock = mode->clock;
+	enum intel_output_format output_format;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
 	u16 dsc_max_compressed_bpp = 0;
 	enum drm_mode_status status;
@@ -1488,29 +1452,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	int num_joined_pipes;
 	int link_bpp_x16;
 
-	status = intel_cpu_transcoder_mode_valid(display, mode);
-	if (status != MODE_OK)
-		return status;
-
-	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
-		return MODE_H_ILLEGAL;
-
-	if (mode->clock < 10000)
-		return MODE_CLOCK_LOW;
-
-	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
-		return MODE_H_ILLEGAL;
-
-	fixed_mode = intel_panel_fixed_mode(connector, mode);
-	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
-		status = intel_panel_mode_valid(connector, mode);
-		if (status != MODE_OK)
-			return status;
-
-		target_clock = fixed_mode->clock;
-	}
-
-	sink_format = intel_dp_sink_format(connector, mode);
 	output_format = intel_dp_output_format(connector, sink_format);
 
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
@@ -1518,7 +1459,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
-	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode);
+	link_bpp_x16 = intel_dp_mode_min_link_bpp_x16(connector, mode,
+						      output_format);
 	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
 					   target_clock, mode->hdisplay,
 					   link_bpp_x16, 0);
@@ -1608,7 +1550,70 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_dp_mode_valid_downstream(connector, mode, target_clock);
+	return intel_dp_mode_valid_downstream(connector, mode,
+					      target_clock, sink_format);
+}
+
+static enum drm_mode_status
+intel_dp_mode_valid(struct drm_connector *_connector,
+		    const struct drm_display_mode *mode)
+{
+	struct intel_display *display = to_intel_display(_connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	const struct drm_display_info *info = &connector->base.display_info;
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	const struct drm_display_mode *fixed_mode;
+	int target_clock = mode->clock;
+	enum drm_mode_status status;
+
+	status = intel_cpu_transcoder_mode_valid(display, mode);
+	if (status != MODE_OK)
+		return status;
+
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		return MODE_H_ILLEGAL;
+
+	if (mode->clock < 10000)
+		return MODE_CLOCK_LOW;
+
+	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
+	fixed_mode = intel_panel_fixed_mode(connector, mode);
+	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
+		status = intel_panel_mode_valid(connector, mode);
+		if (status != MODE_OK)
+			return status;
+
+		target_clock = fixed_mode->clock;
+	}
+
+	/*
+	 * TODO: Even when using a 4:2:0 sink_format intel_dp_output_format()
+	 * will always choose a 4:4:4 output_format if the DFP can do the
+	 * 4:4:4->4:2:0 conversion for us. Thus a mode may still be rejected
+	 * if we only have enough DP link bandwidth for 4:2:0 but not for
+	 * 4:4:4. Another attempt with an explicit 4:2:0 output_format might
+	 * be needed here. intel_dp_compute_config() would need the same
+	 * logic, or else the actual modeset would still fail.
+	 *
+	 * Also a lot of the checks only depend on output_format but not
+	 * sink_format, so we are potentially doing redundant work by
+	 * testing the same output_format for two different sink_formats.
+	 */
+	if (drm_mode_is_420_only(info, mode)) {
+		status = intel_dp_mode_valid_format(connector, mode, target_clock,
+						    INTEL_OUTPUT_FORMAT_YCBCR420);
+	} else {
+		status = intel_dp_mode_valid_format(connector, mode, target_clock,
+						    INTEL_OUTPUT_FORMAT_RGB);
+
+		if (status != MODE_OK && drm_mode_is_420_also(info, mode))
+			status = intel_dp_mode_valid_format(connector, mode, target_clock,
+							    INTEL_OUTPUT_FORMAT_YCBCR420);
+	}
+
+	return status;
 }
 
 bool intel_dp_source_supports_tps3(struct intel_display *display)
-- 
2.52.0

