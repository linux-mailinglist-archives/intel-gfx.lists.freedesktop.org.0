Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C226B42F3E0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C146ED99;
	Fri, 15 Oct 2021 13:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973036ED99
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="288777713"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="288777713"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="492560899"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 15 Oct 2021 06:39:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:04 +0300
Message-Id: <20211015133921.4609-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/20] drm/i915/hdmi: Introduce
 intel_hdmi_tmds_clock()
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

Rename intel_hdmi_port_clock() into intel_hdmi_tmds_clock(), and
move the 4:2:0 TMDS clock halving into intel_hdmi_tmds_clock() so
the callers don't have to worry about such details.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 25 +++++++++++------------
 1 file changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 37ce8a621973..e97c83535965 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1868,8 +1868,12 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 	return MODE_OK;
 }
 
-static int intel_hdmi_port_clock(int clock, int bpc)
+static int intel_hdmi_tmds_clock(int clock, int bpc, bool ycbcr420_output)
 {
+	/* YCBCR420 TMDS rate requirement is half the pixel clock */
+	if (ycbcr420_output)
+		clock /= 2;
+
 	/*
 	 * Need to adjust the port link by:
 	 *  1.5x for 12bpc
@@ -1932,25 +1936,22 @@ intel_hdmi_mode_clock_valid(struct drm_connector *connector, int clock,
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	enum drm_mode_status status;
 
-	if (ycbcr420_output)
-		clock /= 2;
-
 	/* check if we can do 8bpc */
-	status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 8),
+	status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 8, ycbcr420_output),
 				       true, has_hdmi_sink);
 
 	/* if we can't do 8bpc we may still be able to do 12bpc */
 	if (status != MODE_OK &&
 	    intel_hdmi_source_bpc_possible(i915, 12) &&
 	    intel_hdmi_sink_bpc_possible(connector, 12, has_hdmi_sink, ycbcr420_output))
-		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 12),
+		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 12, ycbcr420_output),
 					       true, has_hdmi_sink);
 
 	/* if we can't do 8,12bpc we may still be able to do 10bpc */
 	if (status != MODE_OK &&
 	    intel_hdmi_source_bpc_possible(i915, 10) &&
 	    intel_hdmi_sink_bpc_possible(connector, 10, has_hdmi_sink, ycbcr420_output))
-		status = hdmi_port_clock_valid(hdmi, intel_hdmi_port_clock(clock, 10),
+		status = hdmi_port_clock_valid(hdmi, intel_hdmi_tmds_clock(clock, 10, ycbcr420_output),
 					       true, has_hdmi_sink);
 
 	return status;
@@ -2057,12 +2058,13 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
 				  int clock)
 {
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
+	bool ycbcr420_output = intel_hdmi_is_ycbcr420(crtc_state);
 	int bpc;
 
 	for (bpc = 12; bpc >= 10; bpc -= 2) {
 		if (hdmi_deep_color_possible(crtc_state, bpc) &&
 		    hdmi_port_clock_valid(intel_hdmi,
-					  intel_hdmi_port_clock(clock, bpc),
+					  intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output),
 					  true, crtc_state->has_hdmi_sink) == MODE_OK)
 			return bpc;
 	}
@@ -2082,13 +2084,10 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		clock *= 2;
 
-	/* YCBCR420 TMDS rate requirement is half the pixel clock */
-	if (intel_hdmi_is_ycbcr420(crtc_state))
-		clock /= 2;
-
 	bpc = intel_hdmi_compute_bpc(encoder, crtc_state, clock);
 
-	crtc_state->port_clock = intel_hdmi_port_clock(clock, bpc);
+	crtc_state->port_clock = intel_hdmi_tmds_clock(clock, bpc,
+						       intel_hdmi_is_ycbcr420(crtc_state));
 
 	/*
 	 * pipe_bpp could already be below 8bpc due to
-- 
2.32.0

