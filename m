Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7C2A32BE1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B277810E918;
	Wed, 12 Feb 2025 16:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKcnJkOv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C0B10E918;
 Wed, 12 Feb 2025 16:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378262; x=1770914262;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KIJLisyfq7PgfqlMDkIvcjr24oZtxhBzG4XS1sa7GJI=;
 b=mKcnJkOvtHOcGx/F1ReyQyKT73TbkyPb44z+9D/uQ7F6Es57uXBAZz+i
 4KDf4h5DEzgX3RfUoORbv9vqfifPFTZP4hpd6+FLqRdGFIb81nWieDEu8
 mciD0MeT8lv0WLyAzvxvgCFbBBqh/byLfnla7J4gRJUTckH4BalYLZXvr
 qGcPLpK+vGNVOfx/BvGKmkk3nrl3SrLFONm+itc696ZUVxxwn97JhpjYm
 EChTUtyujKx/liBAJMdxPbW1spI92HApojeVP4oFVVePkIsFial3kZ73p
 ifNGq+tNZLlrVF09ih90o/e3udM6ioOy5lvMv177j2v/re3iwvOnrGA7q w==;
X-CSE-ConnectionGUID: B0V85XlpRaKJX0/u4hQpHg==
X-CSE-MsgGUID: Tn1uGrndSaGL4ca28zDirw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51479932"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51479932"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:40 -0800
X-CSE-ConnectionGUID: DGB01NbhSr6e5ROFo4jr+Q==
X-CSE-MsgGUID: MUMq817BT9ipLQoBiZCn5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080699"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/14] drm/i915/display: convert
 intel_cpu_transcoder_mode_valid() to intel_display
Date: Wed, 12 Feb 2025 18:36:38 +0200
Message-Id: <f9246a00a2e7aabaffb86f863915a4307e1fd3f8.1739378095.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
References: <cover.1739378095.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display is the main display device data
pointer. Convert the intel_cpu_transcoder_mode_valid()() helper to
struct intel_display, allowing further conversions elsewhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 4 ++--
 drivers/gpu/drm/i915/display/intel_crt.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_dvo.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c    | 6 +++---
 drivers/gpu/drm/i915/display/intel_sdvo.c    | 3 +--
 drivers/gpu/drm/i915/display/intel_tv.c      | 3 +--
 drivers/gpu/drm/i915/display/vlv_dsi.c       | 6 +++---
 12 files changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 0f2a19690c18..1f0ff4000658 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1460,10 +1460,10 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
 						 const struct drm_display_mode *mode)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	enum drm_mode_status status;
 
-	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 8eedae1d7684..321580b095e7 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -360,7 +360,7 @@ intel_crt_mode_valid(struct drm_connector *connector,
 	enum drm_mode_status status;
 	int max_clock;
 
-	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e1186f46088d..7a25c84bfbac 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8464,14 +8464,14 @@ enum drm_mode_status intel_mode_valid(struct drm_device *dev,
 	return MODE_OK;
 }
 
-enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *dev_priv,
+enum drm_mode_status intel_cpu_transcoder_mode_valid(struct intel_display *display,
 						     const struct drm_display_mode *mode)
 {
 	/*
 	 * Additional transcoder timing limits,
 	 * excluding BXT/GLK DSI transcoders.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 5) {
+	if (DISPLAY_VER(display) >= 5) {
 		if (mode->hdisplay < 64 ||
 		    mode->htotal - mode->hdisplay < 32)
 			return MODE_H_ILLEGAL;
@@ -8490,7 +8490,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
 	 * Cantiga+ cannot handle modes with a hsync front porch of 0.
 	 * WaPruneModeWithIncorrectHsyncOffset:ctg,elk,ilk,snb,ivb,vlv,hsw.
 	 */
-	if ((DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) &&
+	if ((DISPLAY_VER(display) >= 5 || display->platform.g4x) &&
 	    mode->hsync_start == mode->hdisplay)
 		return MODE_H_ILLEGAL;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 9439da737f5b..08e28ea179d2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -428,7 +428,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 				const struct drm_display_mode *mode,
 				int num_joined_pipes);
 enum drm_mode_status
-intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
+intel_cpu_transcoder_mode_valid(struct intel_display *display,
 				const struct drm_display_mode *mode);
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
 bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ed7d46143e9..61827b0fe95e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1407,7 +1407,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	bool dsc = false;
 	int num_joined_pipes;
 
-	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 459440dd6e87..38804254980b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1481,7 +1481,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	*status = intel_cpu_transcoder_mode_valid(i915, mode);
+	*status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (*status != MODE_OK)
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 29f8788fb26a..c16fb34b737d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -219,16 +219,16 @@ static enum drm_mode_status
 intel_dvo_mode_valid(struct drm_connector *_connector,
 		     const struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
-	int max_dotclk = to_i915(connector->base.dev)->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int target_clock = mode->clock;
 	enum drm_mode_status status;
 
-	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 015110fc57a2..60572deeffb3 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2023,7 +2023,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 	bool ycbcr_420_only;
 	enum intel_output_format sink_format;
 
-	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6b05db2c10ba..7ed8625193fe 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -394,14 +394,14 @@ static enum drm_mode_status
 intel_lvds_mode_valid(struct drm_connector *_connector,
 		      const struct drm_display_mode *mode)
 {
+	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(connector, mode);
-	int max_pixclk = to_i915(connector->base.dev)->display.cdclk.max_dotclk_freq;
+	int max_pixclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
-	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 1ae766212e8a..6e2d9929b4d7 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1943,7 +1943,6 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 		      const struct drm_display_mode *mode)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct intel_sdvo_connector *intel_sdvo_connector =
 		to_intel_sdvo_connector(connector);
@@ -1952,7 +1951,7 @@ intel_sdvo_mode_valid(struct drm_connector *connector,
 	enum drm_mode_status status;
 	int clock = mode->clock;
 
-	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index 7838c92f8ded..5dbe857ea85b 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -960,12 +960,11 @@ intel_tv_mode_valid(struct drm_connector *connector,
 		    const struct drm_display_mode *mode)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *i915 = to_i915(connector->dev);
 	const struct tv_mode *tv_mode = intel_tv_mode_find(connector->state);
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
-	status = intel_cpu_transcoder_mode_valid(i915, mode);
+	status = intel_cpu_transcoder_mode_valid(display, mode);
 	if (status != MODE_OK)
 		return status;
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index d68876fe782c..7414794889e9 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1543,12 +1543,12 @@ static const struct drm_encoder_funcs intel_dsi_funcs = {
 static enum drm_mode_status vlv_dsi_mode_valid(struct drm_connector *connector,
 					       const struct drm_display_mode *mode)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 
-	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		enum drm_mode_status status;
 
-		status = intel_cpu_transcoder_mode_valid(i915, mode);
+		status = intel_cpu_transcoder_mode_valid(display, mode);
 		if (status != MODE_OK)
 			return status;
 	}
-- 
2.39.5

