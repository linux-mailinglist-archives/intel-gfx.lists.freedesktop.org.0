Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5546416649
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 22:01:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDC916EDA4;
	Thu, 23 Sep 2021 20:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA4416EDA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 20:01:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="220732236"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="220732236"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 13:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="519086337"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 23 Sep 2021 13:01:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Sep 2021 23:01:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Sep 2021 23:01:07 +0300
Message-Id: <20210923200109.4459-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Introduce
 intel_panel_compute_config()
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

Let's introduce a compute_config() helper for fixed mode panels.
For now all it does is the fixed_mode->adjusted_mode copy.

Note that with sDVO we have to ask the external encoder chip
to spit out our actual display timings for us, so we won't
use intel_panel_compute_config() there.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c     |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dp.c    |  5 +++--
 drivers/gpu/drm/i915/display/intel_dvo.c   | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_lvds.c  |  5 +++--
 drivers/gpu/drm/i915/display/intel_panel.c | 11 +++++++++--
 drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
 drivers/gpu/drm/i915/display/vlv_dsi.c     |  4 +++-
 7 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 060bc8fb0d30..a6edd5241b14 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1666,14 +1666,15 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
 	struct intel_dsi *intel_dsi = container_of(encoder, struct intel_dsi,
 						   base);
 	struct intel_connector *intel_connector = intel_dsi->attached_connector;
-	const struct drm_display_mode *fixed_mode =
-		intel_connector->panel.fixed_mode;
 	struct drm_display_mode *adjusted_mode =
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
-	intel_panel_fixed_mode(fixed_mode, adjusted_mode);
+
+	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	if (ret)
+		return ret;
 
 	ret = intel_panel_fitting(pipe_config, conn_state);
 	if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2b8b495fc2a9..b5cd188ca520 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1757,8 +1757,9 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 		pipe_config->has_audio = intel_conn_state->force_audio == HDMI_AUDIO_ON;
 
 	if (intel_dp_is_edp(intel_dp) && intel_connector->panel.fixed_mode) {
-		intel_panel_fixed_mode(intel_connector->panel.fixed_mode,
-				       adjusted_mode);
+		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+		if (ret)
+			return ret;
 
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index f8fdc0386fd4..2eeb209afc64 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -256,6 +256,7 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 				    struct drm_connector_state *conn_state)
 {
 	struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_dvo->attached_connector->panel.fixed_mode;
 	struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
@@ -266,8 +267,13 @@ static int intel_dvo_compute_config(struct intel_encoder *encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	if (fixed_mode)
-		intel_panel_fixed_mode(fixed_mode, adjusted_mode);
+	if (fixed_mode) {
+		int ret;
+
+		ret = intel_panel_compute_config(connector, adjusted_mode);
+		if (ret)
+			return ret;
+	}
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 37e81bc71f7c..130e6ea61e11 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -444,8 +444,9 @@ static int intel_lvds_compute_config(struct intel_encoder *intel_encoder,
 	 * with the panel scaling set up to source from the H/VDisplay
 	 * of the original mode.
 	 */
-	intel_panel_fixed_mode(intel_connector->panel.fixed_mode,
-			       adjusted_mode);
+	ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+	if (ret)
+		return ret;
 
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index b2ad0f065218..77c1ca387de0 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -45,12 +45,19 @@ bool intel_panel_use_ssc(struct drm_i915_private *i915)
 		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
 }
 
-void intel_panel_fixed_mode(const struct drm_display_mode *fixed_mode,
-			    struct drm_display_mode *adjusted_mode)
+int intel_panel_compute_config(struct intel_connector *connector,
+			       struct drm_display_mode *adjusted_mode)
 {
+	const struct drm_display_mode *fixed_mode = connector->panel.fixed_mode;
+
+	if (!fixed_mode)
+		return 0;
+
 	drm_mode_copy(adjusted_mode, fixed_mode);
 
 	drm_mode_set_crtcinfo(adjusted_mode, 0);
+
+	return 0;
 }
 
 static bool is_downclock_mode(const struct drm_display_mode *downclock_mode,
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 71bad6d546fa..d50b3f7e9e58 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -31,6 +31,8 @@ intel_panel_mode_valid(struct intel_connector *connector,
 		       const struct drm_display_mode *mode);
 int intel_panel_fitting(struct intel_crtc_state *crtc_state,
 			const struct drm_connector_state *conn_state);
+int intel_panel_compute_config(struct intel_connector *connector,
+			       struct drm_display_mode *adjusted_mode);
 struct drm_display_mode *
 intel_panel_edid_downclock_mode(struct intel_connector *connector,
 				const struct drm_display_mode *fixed_mode);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index b0a2b6b96799..260e852245e9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -279,7 +279,9 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
 	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 
 	if (fixed_mode) {
-		intel_panel_fixed_mode(fixed_mode, adjusted_mode);
+		ret = intel_panel_compute_config(intel_connector, adjusted_mode);
+		if (ret)
+			return ret;
 
 		ret = intel_panel_fitting(pipe_config, conn_state);
 		if (ret)
-- 
2.32.0

