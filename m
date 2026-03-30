Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wFsiKx4Ny2msDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5982C36276C
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9EC10E805;
	Mon, 30 Mar 2026 23:54:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ni1CQd8F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCF9210E7F6;
 Mon, 30 Mar 2026 23:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774914844; x=1806450844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zhrAcf0+uhkz2mQ+FdyZE6cyFPllU6PR775pKo8UoUE=;
 b=ni1CQd8FEAxXnGpXPtU7iq2bxmthBdxCtgybjtdXPsEEeoQexqbLNIgI
 6ilcdZdguV4ulAjJKERlercWneIBQ4wOkKmt8HgpwIc0EUSoHwlWpuMXh
 iRCqEZBleuyNUdYZNvCfdEA/C85POPN47B5Q86XNp0CcI3cmPHKi+aaNC
 yb1bVGbNKnjtzBW+ypi7gyXyND9+IrhVZm5svqx+PpGWM2IM3d9ul+FeN
 sonzvDBekjoN3XUVwPby3glCBOFeow9Upyfr70oOUmfQJ9svcOCaQ1iy2
 xHvt95qsOpLsSId8LfQ26U/BKmN+SVEzXeZD1vfkl5QoX5WiJ9KZu3ped A==;
X-CSE-ConnectionGUID: dx0GlusBTBuMqI7e2glQxg==
X-CSE-MsgGUID: Csw/tB3iRKawa0O66SHgEg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75979247"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75979247"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:04 -0700
X-CSE-ConnectionGUID: 1tbAGgPnTzCja3z+Qg5Xbg==
X-CSE-MsgGUID: kbeFamRURRuIDx4lTbocAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="225208201"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:02 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 4/9] drm/i915/dp: Restructure the sink/output format selection
Date: Tue, 31 Mar 2026 02:53:34 +0300
Message-ID: <20260330235339.29479-5-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 5982C36276C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure intel_dp_compute_output_format() to resemble the new
intel_hdmi_compute_output_formats().

Again, we basically have two main code paths:
- YCbCr 4:2:0 only modes
- everything else including YCbCr 4:2:0 also modes

Take the exact same approach with the DP code, making the
format selection much less convoluted.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 98 +++++++++++++++++--------
 1 file changed, 69 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4955bd8b11d7..230b45acde29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1371,6 +1371,28 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	return MODE_OK;
 }
 
+static enum drm_mode_status
+intel_dp_sink_format_valid(struct intel_connector *connector,
+			   const struct drm_display_mode *mode,
+			   enum intel_output_format sink_format)
+{
+	const struct drm_display_info *info = &connector->base.display_info;
+
+	switch (sink_format) {
+	case INTEL_OUTPUT_FORMAT_YCBCR420:
+		if (!connector->base.ycbcr_420_allowed ||
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
 int intel_dp_max_hdisplay_per_pipe(struct intel_display *display)
 {
 	return DISPLAY_VER(display) >= 30 ? 6144 : 5120;
@@ -3330,41 +3352,59 @@ static int
 intel_dp_compute_output_format(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       struct drm_connector_state *conn_state,
-			       bool respect_downstream_limits)
+			       bool respect_downstream_limits,
+			       enum intel_output_format sink_format)
 {
-	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	const struct drm_display_info *info = &connector->base.display_info;
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	bool ycbcr_420_only;
-	int ret;
 
-	ycbcr_420_only = drm_mode_is_420_only(info, adjusted_mode);
-
-	if (ycbcr_420_only && !connector->base.ycbcr_420_allowed) {
-		drm_dbg_kms(display->drm,
-			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
-	} else {
-		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
-	}
+	if (intel_dp_sink_format_valid(connector, adjusted_mode,
+				       sink_format) != MODE_OK)
+		return -EINVAL;
 
+	crtc_state->sink_format = sink_format;
 	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
 
-	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
-					   respect_downstream_limits);
-	if (ret) {
-		if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
-		    !connector->base.ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(info, adjusted_mode))
-			return ret;
-
-		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-		crtc_state->output_format = intel_dp_output_format(connector,
-								   crtc_state->sink_format);
-		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
-						   respect_downstream_limits);
+	return intel_dp_compute_link_config(encoder, crtc_state, conn_state,
+					    respect_downstream_limits);
+}
+
+static int
+intel_dp_compute_formats(struct intel_encoder *encoder,
+			 struct intel_crtc_state *crtc_state,
+			 struct drm_connector_state *conn_state,
+			 bool respect_downstream_limits)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int ret;
+
+	if (drm_mode_is_420_only(info, adjusted_mode)) {
+		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+						     respect_downstream_limits,
+						     INTEL_OUTPUT_FORMAT_YCBCR420);
+
+		if (ret) {
+			drm_dbg_kms(display->drm,
+				    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
+
+			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+							     respect_downstream_limits,
+							     INTEL_OUTPUT_FORMAT_RGB);
+		}
+	} else {
+		ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+						     respect_downstream_limits,
+						     INTEL_OUTPUT_FORMAT_RGB);
+
+		if (ret && drm_mode_is_420_also(info, adjusted_mode))
+			ret = intel_dp_compute_output_format(encoder, crtc_state, conn_state,
+							     respect_downstream_limits,
+							     INTEL_OUTPUT_FORMAT_YCBCR420);
 	}
 
 	return ret;
@@ -3539,9 +3579,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 	 * Try to respect downstream TMDS clock limits first, if
 	 * that fails assume the user might know something we don't.
 	 */
-	ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, true);
+	ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, true);
 	if (ret)
-		ret = intel_dp_compute_output_format(encoder, pipe_config, conn_state, false);
+		ret = intel_dp_compute_formats(encoder, pipe_config, conn_state, false);
 	if (ret)
 		return ret;
 
-- 
2.52.0

