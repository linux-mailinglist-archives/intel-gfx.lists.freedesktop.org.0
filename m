Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNsrDV5812mXOggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3913C90F8
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 12:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D6910E799;
	Thu,  9 Apr 2026 10:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WVl/Svm3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF69810E799;
 Thu,  9 Apr 2026 10:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775729756; x=1807265756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6ChfB512KifocCwTXkpxS1usdvVHqGeNOtOr3MVhk80=;
 b=WVl/Svm3WdNFbeTvCTQS1pgOooX6F5/j8oKT9CU1PLW2p45dgz8j2qT6
 vyJEz5+BJRnh5abMIzFwd2daSXiJ4/PjNyeidPs7lyfGqh3FRgT+NEy1V
 CCbae2MtCBbj+YkbZqUhvK8eRFG155VR0cGCbo2+wWVw8Y1BhcsX6D7j0
 CNeOF2JgdKMwU/tPnIXx3acDPKv4IUMvHyhF4+cJOK0SjV3PCVPshmMMD
 VfMkgDBJv8OiPNADy6cdtB5hE1dkTliKPc3t20cZy1vG3+/oSFe7P0Mmi
 EE+mo5CUL+TjvL9juHUkfElGeaQHEMYLCGHyrYU0hqfzOgauEGbpS8XKL g==;
X-CSE-ConnectionGUID: vrJtzRXiSuanyZ5cZZ3ZAA==
X-CSE-MsgGUID: X+lbGi1ZTiOAFV5iv56CUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87354255"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87354255"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:55 -0700
X-CSE-ConnectionGUID: QApgZJbITKqW3D0WgA0BfA==
X-CSE-MsgGUID: 7gRuU09ZShqLqxORuFYwrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252065441"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.245.216])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 03:15:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 3/9] drm/i915/hdmi: Restructure 4:2:0 vs. 4:4:4 mode
 validation
Date: Thu,  9 Apr 2026 13:15:33 +0300
Message-ID: <20260409101539.22032-4-ville.syrjala@linux.intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: BA3913C90F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Restructure the HDMI mode validation to resemble the new
intel_hdmi_compute_formats(). Keeping the two in sync helps
to avoid different bugs in each.

The main difference between mode_valid() and
intel_hdmi_compute_formats() is that we don't want the
Hail Mary RGB fallback for "4:2:0 only" modes.

Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 60 ++++++++++++-----------
 1 file changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 9c241d93166c..79093d8fc2e6 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2045,6 +2045,27 @@ intel_hdmi_sink_format_valid(struct intel_connector *connector,
 	}
 }
 
+static enum drm_mode_status
+intel_hdmi_mode_valid_format(struct intel_connector *connector,
+			     const struct drm_display_mode *mode,
+			     int clock, bool has_hdmi_sink,
+			     enum intel_output_format sink_format)
+{
+	struct intel_display *display = to_intel_display(connector);
+	enum drm_mode_status status;
+
+	status = intel_hdmi_sink_format_valid(connector, mode,
+					      has_hdmi_sink, sink_format);
+	if (status != MODE_OK)
+		return status;
+
+	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
+	if (status != MODE_OK)
+		return status;
+
+	return intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
+}
+
 static enum drm_mode_status
 intel_hdmi_mode_valid(struct drm_connector *_connector,
 		      const struct drm_display_mode *mode)
@@ -2052,12 +2073,11 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(connector);
+	const struct drm_display_info *info = &connector->base.display_info;
 	enum drm_mode_status status;
 	int clock = mode->clock;
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	bool has_hdmi_sink = intel_has_hdmi_sink(hdmi, connector->base.state);
-	bool ycbcr_420_only;
-	enum intel_output_format sink_format;
 
 	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
@@ -2084,36 +2104,20 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
 	if (clock > 600000)
 		return MODE_CLOCK_HIGH;
 
-	ycbcr_420_only = drm_mode_is_420_only(&connector->base.display_info, mode);
+	if (drm_mode_is_420_only(info, mode)) {
+		status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
+						      INTEL_OUTPUT_FORMAT_YCBCR420);
+	} else {
+		status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
+						      INTEL_OUTPUT_FORMAT_RGB);
 
-	if (ycbcr_420_only)
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-	else
-		sink_format = INTEL_OUTPUT_FORMAT_RGB;
-
-	status = intel_pfit_mode_valid(display, mode, sink_format, 0);
+		if (status != MODE_OK && drm_mode_is_420_also(info, mode))
+			status = intel_hdmi_mode_valid_format(connector, mode, clock, has_hdmi_sink,
+							      INTEL_OUTPUT_FORMAT_YCBCR420);
+	}
 	if (status != MODE_OK)
 		return status;
 
-	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
-	if (status != MODE_OK) {
-		if (ycbcr_420_only ||
-		    !connector->base.ycbcr_420_allowed ||
-		    !drm_mode_is_420_also(&connector->base.display_info, mode))
-			return status;
-
-		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
-
-		status = intel_pfit_mode_valid(display, mode, sink_format, 0);
-		if (status != MODE_OK)
-			return status;
-
-		status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink,
-						     sink_format);
-		if (status != MODE_OK)
-			return status;
-	}
-
 	return intel_mode_valid_max_plane_size(display, mode, 1);
 }
 
-- 
2.52.0

