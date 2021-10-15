Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70ABE42F3E1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 15:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0475A6ED9D;
	Fri, 15 Oct 2021 13:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8FA6E323
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 13:39:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="251359302"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="251359302"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 06:39:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="627301446"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 15 Oct 2021 06:39:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 16:39:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Oct 2021 16:39:03 +0300
Message-Id: <20211015133921.4609-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
References: <20211015133921.4609-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/20] drm/i915/hdmi: Introduce
 intel_hdmi_is_ycbr420()
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

Introduce a small helper which given the crtc state tells us
whether we're output YCbCr 4:2:0 or not. For native HDMI this
is rather simple as we just look at the output_format. But I
think the helper is beneficial since with DP HDMI DFPs we're
going to need a more complex variant, and I want to unify the
DP and HDMI sides of that as much as possible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index d7196494cc27..37ce8a621973 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1799,6 +1799,11 @@ static bool intel_has_hdmi_sink(struct intel_hdmi *hdmi,
 		READ_ONCE(to_intel_digital_connector_state(conn_state)->force_audio) != HDMI_AUDIO_OFF_DVI;
 }
 
+static bool intel_hdmi_is_ycbcr420(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420;
+}
+
 static int hdmi_port_clock_limit(struct intel_hdmi *hdmi,
 				 bool respect_downstream_limits,
 				 bool has_hdmi_sink)
@@ -2036,7 +2041,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 		return false;
 
 	/* Display Wa_1405510057:icl,ehl */
-	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 &&
+	if (intel_hdmi_is_ycbcr420(crtc_state) &&
 	    bpc == 10 && DISPLAY_VER(dev_priv) == 11 &&
 	    (adjusted_mode->crtc_hblank_end -
 	     adjusted_mode->crtc_hblank_start) % 8 == 2)
@@ -2044,8 +2049,7 @@ static bool hdmi_deep_color_possible(const struct intel_crtc_state *crtc_state,
 
 	return intel_hdmi_deep_color_possible(crtc_state, bpc,
 					      crtc_state->has_hdmi_sink,
-					      crtc_state->output_format ==
-					      INTEL_OUTPUT_FORMAT_YCBCR420);
+					      intel_hdmi_is_ycbcr420(crtc_state));
 }
 
 static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
@@ -2079,7 +2083,7 @@ static int intel_hdmi_compute_clock(struct intel_encoder *encoder,
 		clock *= 2;
 
 	/* YCBCR420 TMDS rate requirement is half the pixel clock */
-	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+	if (intel_hdmi_is_ycbcr420(crtc_state))
 		clock /= 2;
 
 	bpc = intel_hdmi_compute_bpc(encoder, crtc_state, clock);
@@ -2176,7 +2180,7 @@ static int intel_hdmi_compute_output_format(struct intel_encoder *encoder,
 
 	ret = intel_hdmi_compute_clock(encoder, crtc_state);
 	if (ret) {
-		if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420 &&
+		if (!intel_hdmi_is_ycbcr420(crtc_state) &&
 		    connector->ycbcr_420_allowed &&
 		    drm_mode_is_420_also(&connector->display_info, adjusted_mode)) {
 			crtc_state->output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
@@ -2221,7 +2225,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (ret)
 		return ret;
 
-	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+	if (intel_hdmi_is_ycbcr420(pipe_config)) {
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
 			return ret;
-- 
2.32.0

