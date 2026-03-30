Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGRNFxUNy2msDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:53:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADB336274E
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:53:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9016B10E7DE;
	Mon, 30 Mar 2026 23:53:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gsOi41hm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1364610E7DE;
 Mon, 30 Mar 2026 23:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774914834; x=1806450834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oIVwqtJOgen6jR1ETaJ7nVuK7ERyRn5JOCG/y1K9OcM=;
 b=gsOi41hmaTtGeAaQKSInbpdF58mkhXT/gEmj9uWlt1LcjybK1+y3lOvJ
 Q6DQy+FxU6T0lmsNL+kc3NvN/BfC+3Oq5N/6d4zyj2Dm7RoMsy7J5iRV6
 HM2ULqf8qhIIV8AG7j51TF3M1URX2jr5KLi/3u/68pTeFeEKLdce0vIna
 5fKKbgD0fYa1wIVepkYu3ZSLadu6QYGgGW6dT7sLdGY/+S0AprK5Uyykj
 C5yMNx0c+ixwTfpfmjRxWKb7/MkKbM7943KxuRo0Qo2oc/sVF2SUqRJWr
 ck+9CPfPWpT7Z/58FP10dn+fx6Y6WzxUPCIevzrGuX1ftWC6gbMLr2sie Q==;
X-CSE-ConnectionGUID: yDMOIMcwRMevWIIV5UB/pQ==
X-CSE-MsgGUID: xDcpuYt8QZ2p318TZ+umOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75979238"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75979238"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:53:54 -0700
X-CSE-ConnectionGUID: 5OFsWCgGSASdOE1k5+nnOw==
X-CSE-MsgGUID: Oq85zvIgRNiSeUlNJ/QsWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="225208180"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:53:53 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 2/9] drm/i915/hdmi: Restructure the sink/output format
 selection
Date: Tue, 31 Mar 2026 02:53:32 +0300
Message-ID: <20260330235339.29479-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
References: <20260330235339.29479-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 0ADB336274E
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
intel_hdmi_compute_formats() and it will call (the new) with
intel_hdmi_compute_output_format() with an explicit sink_format
as needed.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 112 ++++++++++++++--------
 1 file changed, 70 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 072b0554cc24..16873fc7bcb9 100644
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

