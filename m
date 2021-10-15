Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F2342F3DF
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2E16E323;
	Fri, 15 Oct 2021 13:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE6006E2EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="251359299"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="251359299"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="488433793"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 15 Oct 2021 06:39:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:02 +0300
Message-Id: <20211015133921.4609-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/20] drm/i915/hdmi: Split
 intel_hdmi_bpc_possible() to source vs. sink pair
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_hdmi_bpc_possible() is used by the DP code as well where
the native HDMI source limits do not apply. So let's split this
into a pair of functions: one for the source vs. one for the sink.

This is basically reverting some of commit 41828125acd6 ("drm/i915:
Move platform checks into intel_hdmi_bpc_possible()") slightly,
but in a nicer form. I guess I forgot at the time that the DP side
uses this too.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 38 ++++++++++++++++-------
 1 file changed, 26 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index d2e61f6c6e08..d7196494cc27 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1873,18 +1873,29 @@ static int intel_hdmi_port_clock(int clock, int bpc)
 	return clock * bpc / 8;
 }
 
-static bool intel_hdmi_bpc_possible(struct drm_connector *connector,
-				    int bpc, bool has_hdmi_sink, bool ycbcr420_output)
+static bool intel_hdmi_source_bpc_possible(struct drm_i915_private *i915, int bpc)
+{
+	switch (bpc) {
+	case 12:
+		return !HAS_GMCH(i915);
+	case 10:
+		return DISPLAY_VER(i915) >= 11;
+	case 8:
+		return true;
+	default:
+		MISSING_CASE(bpc);
+		return false;
+	}
+}
+
+static bool intel_hdmi_sink_bpc_possible(struct drm_connector *connector,
+					 int bpc, bool has_hdmi_sink, bool ycbcr420_output)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct drm_display_info *info = &connector->display_info;
 	const struct drm_hdmi_info *hdmi = &info->hdmi;
 
 	switch (bpc) {
 	case 12:
-		if (HAS_GMCH(i915))
-			return false;
-
 		if (!has_hdmi_sink)
 			return false;
 
@@ -1893,9 +1904,6 @@ static bool intel_hdmi_bpc_possible(struct drm_connector *connector,
 		else
 			return info->edid_hdmi_dc_modes & DRM_EDID_HDMI_DC_36;
 	case 10:
-		if (DISPLAY_VER(i915) < 11)
-			return false;
-
 		if (!has_hdmi_sink)
 			return false;
 
@@ -1915,6 +1923,7 @@ static enum drm_mode_status
 intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 			    bool has_hdmi_sink, bool ycbcr420_output)
 {
+	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status;
 
@@ -1927,13 +1936,15 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 
 	/* if we can't do 8bpc we may still be able to do 12bpc */
 	if (status != MODE_OK &&
-	    intel_hdmi_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420_output))
+	    intel_hdmi_source_bpc_possible(i915, 12) &&
+	    intel_hdmi_sink_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420_output))
 		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
 					       true, has_hdmi_sink);
 
 	/* if we can't do 8,12bpc we may still be able to do 10bpc */
 	if (status != MODE_OK &&
-	    intel_hdmi_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420_output))
+	    intel_hdmi_source_bpc_possible(i915, 10) &&
+	    intel_hdmi_sink_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420_output))
 		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
 					       true, has_hdmi_sink);
 
@@ -1999,7 +2010,7 @@ bool intel_hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 		if (connector_state->crtc != crtc_state->uapi.crtc)
 			continue;
 
-		if (!intel_hdmi_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
+		if (!intel_hdmi_sink_bpc_possible(connector, bpc, has_hdmi_sink, ycbcr420_output))
 			return false;
 	}
 
@@ -2014,6 +2025,9 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 
+	if (!intel_hdmi_source_bpc_possible(dev_priv, bpc))
+		return false;
+
 	/*
 	 * HDMI deep color affects the clocks, so it's only possible
 	 * when not cloning with other encoder types.
-- 
2.32.0

