Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2D361FEE0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED9610E3F1;
	Mon,  7 Nov 2022 19:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4638910E3E9
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 19:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850380; x=1699386380;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pCUuyRgSrtXm372nIHML2EBp/iPiZr+nxBbR5MxviZc=;
 b=RhNyHCbWVbKylRwOGiy5AkVOAXhANvFQ2kiII6btKhdV7P/qtKtEZFMi
 JVW+z1urz82usPBqkpFYE8As+2Kth2SdfGXCKX03u+1XLavgmuMmufyHH
 28+tKFMWYR0N/KwdtqIgwUfs5KkgOtpLDVpfZgRiAm5a0xheYVsF8j0d3
 4O8GPhHZ/XXL0OAm7hM7Wog1TQ+9Gn3FLwbmzZpaZZAcV2jMyo09xm4cd
 veGC+0UJR0ZOGPpbpCuiLSamlzd599PAhQl8PXV5BR+3iRsTW3q5b5dhb
 viD5Zy8Nq03/9jZNb3neQYmqPql0DzOtj/vc77c0O2dvL58Z+xzxqpapg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="337229188"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="337229188"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:46:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="965296810"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="965296810"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga005.fm.intel.com with SMTP; 07 Nov 2022 11:46:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Nov 2022 21:46:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 21:46:03 +0200
Message-Id: <20221107194604.15227-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
References: <20221107194604.15227-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Move has_hdmi_sink out from
 intel_hdmi_compute_config()
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

We'll be wanting to compute has_hdmi_sink a bit differently
for some platforms. To that end compute it in the encoder
.compute_config_hook() before we call intel_hdmi_compute_config().
intel_hdmi_compute_has_hdmi_sink() will do the basic lifting
beyond any platform specific stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c   |  3 +++
 drivers/gpu/drm/i915/display/intel_ddi.c  |  3 +++
 drivers/gpu/drm/i915/display/intel_hdmi.c | 14 ++++++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.h |  3 +++
 4 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 3d09359d7337..fd23aa03cdc4 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -87,6 +87,9 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	if (HAS_PCH_SPLIT(i915))
 		crtc_state->has_pch_encoder = true;
 
+	crtc_state->has_hdmi_sink =
+		intel_hdmi_compute_has_hdmi_sink(encoder, crtc_state, conn_state);
+
 	return intel_hdmi_compute_config(encoder, crtc_state, conn_state);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e95bde5cf060..5ebfbe7b81b4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3638,6 +3638,9 @@ static int intel_ddi_compute_config(struct intel_encoder *encoder,
 		pipe_config->cpu_transcoder = TRANSCODER_EDP;
 
 	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_HDMI)) {
+		pipe_config->has_hdmi_sink =
+			intel_hdmi_compute_has_hdmi_sink(encoder, pipe_config, conn_state);
+
 		ret = intel_hdmi_compute_config(encoder, pipe_config, conn_state);
 	} else {
 		ret = intel_dp_compute_config(encoder, pipe_config, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 31927f8238d1..2425a9f59b90 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2237,11 +2237,20 @@ static bool intel_hdmi_is_cloned(const struct intel_crtc_state *crtc_state)
 		!is_power_of_2(crtc_state->uapi.encoder_mask);
 }
 
+bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state,
+				      const struct drm_connector_state *conn_state)
+{
+	struct intel_hdmi *hdmi = enc_to_intel_hdmi(encoder);
+
+	return intel_has_hdmi_sink(hdmi, conn_state) &&
+		!intel_hdmi_is_cloned(crtc_state);
+}
+
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state)
 {
-	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	struct drm_connector *connector = conn_state->connector;
@@ -2252,9 +2261,6 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 		return -EINVAL;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	pipe_config->has_hdmi_sink =
-		intel_has_hdmi_sink(intel_hdmi, conn_state) &&
-		!intel_hdmi_is_cloned(pipe_config);
 
 	if (pipe_config->has_hdmi_sink)
 		pipe_config->has_infoframe = true;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
index 774dda2376ed..dd08b4004c59 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.h
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
@@ -23,6 +23,9 @@ union hdmi_infoframe;
 
 void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 			       struct intel_connector *intel_connector);
+bool intel_hdmi_compute_has_hdmi_sink(struct intel_encoder *encoder,
+				      const struct intel_crtc_state *crtc_state,
+				      const struct drm_connector_state *conn_state);
 int intel_hdmi_compute_config(struct intel_encoder *encoder,
 			      struct intel_crtc_state *pipe_config,
 			      struct drm_connector_state *conn_state);
-- 
2.37.4

