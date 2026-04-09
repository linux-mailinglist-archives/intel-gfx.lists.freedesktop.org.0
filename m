Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SGxzKFt812mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B253C90F1
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E5D10E789;
	Thu,  9 Apr 2026 10:15:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZUw2jabm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E707910E78E;
 Thu,  9 Apr 2026 10:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729752; x=1807265752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KKgulhhNT3unMauFJPyq12YGZsVyhfr5j8zcYyVJ7uQ=;
 b=ZUw2jabm38VI8wLUxtTtAK0+cBj0dn9mValz6X2W0LxabgySFOQVbpMV
 KoR6eJNVKUdLKpCka7ekP97aKHxGVgPzlg7KGZIeK3VVcVEQzmjjFerTA
 9tY0GiYPevQNUsUROlyv1/K4GfhdaXTII4GZ8JXS9SUnWmf5SxPTn6+N/
 t2bVDtPLtGwijcDj/8vik54efWifMN3wuXv3oaQcHEGrGNg0HgvFAfEqG
 +qENmFMTMXDiICii0MmyQjDyu2Lwo4Xp4LvNayIKUlf3DL+pE7T+M/8YI
 g2Qab1Ema1IQcqQuaxjeg5h8OIXYzkF6ISk8vGhkvaX4PYtDG4yXtPRBK Q==;
X-CSE-ConnectionGUID: rlJzi9dwRNe25p2tJ6d26A==
X-CSE-MsgGUID: Pnl/m5CDQFm+bQ8YLrualg==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87354250"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87354250"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:52 -0700
X-CSE-ConnectionGUID: dzieg5mgTFiSZjaRAlQIrA==
X-CSE-MsgGUID: qVqHxq8GSoitLPnA73uOdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252065408"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 2/9] drm/i915/hdmi: Restructure the sink/output format
 selection
Date: Thu,  9 Apr 2026 13:15:32 +0300
Message-ID: <20260409101539.22032-3-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 54B253C90F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_hdmi_compute_output_format() is a bit of a mess. Try to
restructure it into a more readable form.

Right now we basically have two main code paths:
- YCbCr 4:2:0 only modes
- everything else including YCbCr 4:2:0 also modes

Those two basically do the same two steps (try 4:2:0 and try 4:4:4)
but in opposite orders. Let's write that out in a more explicit
if-else form. And since I'm running out of function names I'll
rename the function with that high level logic into
intel_hdmi_compute_formats() and it will call (the new)
intel_hdmi_compute_output_format() with an explicit sink_format
as needed.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 112 ++++++++++++++--------
 1 file changed, 70 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0d88eaefbe52..9c241d93166c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2021,6 +2021,30 @@ intel_hdmi_mode_clock_valid(struct drm_connector *_connector, int clock,
 	return status;
 }
 
+static enum drm_mode_status
+intel_hdmi_sink_format_valid(struct intel_connector *connector,
+			     const struct drm_display_mode *mode,
+			     bool has_hdmi_sink,
+			     enum intel_output_format sink_format)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	switch (sink_format) {
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		if (!has_hdmi_sink ||
+		    !connector->base.ycbcr_420_allowed ||
+		    !drm_mode_is_420(info, mode))
+			return MODE_NO_420;
+
+		return MODE_OK;
+	case INTEL_OUTPUT_FORMAT_RGB:
+		return MODE_OK;
+	default:
+		MISSING_CASE(sink_format);
+		return MODE_BAD;
+	}
+}
+
 static enum drm_mode_status
 intel_hdmi_mode_valid(struct drm_connector *_connector,
 		      const struct drm_display_mode *mode)
@@ -2246,20 +2270,6 @@ static bool intel_hdmi_has_audio(struct intel_encoder *encoder,
 		return intel_conn_state->force_audio == HDMI_AUDIO_ON;
 }
 
-static enum intel_output_format
-intel_hdmi_sink_format(const struct intel_crtc_state *crtc_state,
-		       struct intel_connector *connector,
-		       bool ycbcr_420_output)
-{
-	if (!crtc_state->has_hdmi_sink)
-		return INTEL_OUTPUT_FORMAT_RGB;
-
-	if (connector->base.ycbcr_420_allowed && ycbcr_420_output)
-		return INTEL_OUTPUT_FORMAT_YCBCR420;
-	else
-		return INTEL_OUTPUT_FORMAT_RGB;
-}
-
 static enum intel_output_format
 intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
 {
@@ -2268,37 +2278,55 @@ intel_hdmi_output_format(const struct intel_crtc_state *crtc_state)
 
 static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 					    struct intel_crtc_state *crtc_state,
-					    const struct drm_connector_state *conn_state,
-					    bool respect_downstream_limits)
+					    struct intel_connector *connector,
+					    bool respect_downstream_limits,
+					    enum intel_output_format sink_format)
 {
-	struct intel_display *display = to_intel_display(encoder);
-	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	const struct drm_display_info *info = &connector->base.display_info;
-	bool ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
-	int ret;
 
-	crtc_state->sink_format =
-		intel_hdmi_sink_format(crtc_state, connector, ycbcr_420_only);
-
-	if (ycbcr_420_only && crtc_state->sink_format != INTEL_OUTPUT_FORMAT_YCBCR420) {
-		drm_dbg_kms(display->drm,
-			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	}
+	if (intel_hdmi_sink_format_valid(connector, adjusted_mode,
+					 crtc_state->has_hdmi_sink, sink_format) != MODE_OK)
+		return -EINVAL;
 
+	crtc_state->sink_format = sink_format;
 	crtc_state->output_format = intel_hdmi_output_format(crtc_state);
-	ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
-	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-		    !crtc_state->has_hdmi_sink ||
-		    !connector->base.ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(info, adjusted_mode))
-			return ret;
-
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		crtc_state->output_format = intel_hdmi_output_format(crtc_state);
-		ret = intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
+
+	return intel_hdmi_compute_clock(encoder, crtc_state, respect_downstream_limits);
+}
+
+static int intel_hdmi_compute_formats(struct intel_encoder *encoder,
+				      struct intel_crtc_state *crtc_state,
+				      const struct drm_connector_state *conn_state,
+				      bool respect_downstream_limits)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	const struct drm_display_info *info = &connector->base.display_info;
+	int ret;
+
+	if (drm_mode_is_420_only(info, adjusted_mode)) {
+		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+						       respect_downstream_limits,
+						       INTEL_OUTPUT_FORMAT_YCBCR420);
+
+		if (ret) {
+			drm_dbg_kms(display->drm,
+				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
+
+			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+							       respect_downstream_limits,
+							       INTEL_OUTPUT_FORMAT_RGB);
+		}
+	} else {
+		ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+						       respect_downstream_limits,
+						       INTEL_OUTPUT_FORMAT_RGB);
+
+		if (ret && drm_mode_is_420_also(info, adjusted_mode))
+			ret = intel_hdmi_compute_output_format(encoder, crtc_state, connector,
+							       respect_downstream_limits,
+							       INTEL_OUTPUT_FORMAT_YCBCR420);
 	}
 
 	return ret;
@@ -2375,9 +2403,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
 	 */
-	ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, true);
+	ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, true);
 	if (ret)
-		ret = intel_hdmi_compute_output_format(encoder, pipe_config, conn_state, false);
+		ret = intel_hdmi_compute_formats(encoder, pipe_config, conn_state, false);
 	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "unsupported HDMI clock (%d kHz), rejecting mode\n",
-- 
2.52.0

