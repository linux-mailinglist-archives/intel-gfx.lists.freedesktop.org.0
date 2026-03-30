Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AqTGSMNy2msDQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:11 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A07D362773
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 01:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC62E10E804;
	Mon, 30 Mar 2026 23:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NZxQVNdG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E6010E7F6;
 Mon, 30 Mar 2026 23:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774914848; x=1806450848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GYPmPuqLogTM9b0jLF4YfnYvVcHMQzVcrEpqO9OQpuw=;
 b=NZxQVNdG5cEdTJJDhqAVqrJqotGu2UFOxEYvxS0UL129YhGykm8RgJD3
 AfLb0nOoHEfJUfDWgSjKrxvm6oRa83yrrsk3DAAm2XVg9+oRhdwwKiFw6
 QmjztE+oyjlVsAiLH+2uuiWHLmdPTUEuCuTf1uhsclQFLIX0KUKeIgWaB
 EdhC7yIO2zN9+EO6djBIoPwN288qSDY//VxrsA+Zk9ee2aYNL71hEMkqG
 Vo9XsZLIUGvrHBLJ+3yMIvX6BKqitltN0FZ4LUzh3ZXL1EQ1YSf9RoRMW
 nbSuSYoeTCPGELJIhgZwXKeE+RiApN5g3aP//pudQCp4O2EixqJmWFXXs A==;
X-CSE-ConnectionGUID: KS7XakYxT7eIgWOyjYaM+w==
X-CSE-MsgGUID: /tEeb5AlR9O7KabXpJi/nQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="75979251"
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="75979251"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:08 -0700
X-CSE-ConnectionGUID: 3rzbjOQgToK4t1slqNZ2vw==
X-CSE-MsgGUID: /uYMFeC1QgCs6FowR69Dcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,150,1770624000"; d="scan'208";a="225208219"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.155])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2026 16:54:07 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: [PATCH 5/9] drm/i915/dp: Validate "4:2:0 also" modes twice
Date: Tue, 31 Mar 2026 02:53:35 +0300
Message-ID: <20260330235339.29479-6-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:dkim,intel.com:email,collabora.com:email]
X-Rspamd-Queue-Id: 1A07D362773
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

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 114 +++++++++++++-----------
 1 file changed, 61 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 230b45acde29..86319bf09a19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1320,12 +1320,10 @@ intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
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
 
 	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
 	if (intel_dp->dfp.pcon_max_frl_bw) {
@@ -1350,25 +1348,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
 	    target_clock > intel_dp->dfp.max_dotclock)
 		return MODE_CLOCK_HIGH;
 
-	sink_format = intel_dp_sink_format(connector, mode);
-
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
@@ -1464,15 +1446,14 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
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
@@ -1480,29 +1461,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -1600,7 +1558,57 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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

