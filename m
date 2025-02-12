Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D58A32BE2
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:37:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05A010E91F;
	Wed, 12 Feb 2025 16:37:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hsb0SYb7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A8C10E915;
 Wed, 12 Feb 2025 16:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378263; x=1770914263;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5BFDw1l2N0XCXFq7LS/cQ4PKQi9ZXy3StrqUrg7+aVQ=;
 b=hsb0SYb7EicZsX8NKtAXRwhzjwZcjPby/c5IoczZCNMQLW8ke7HywGsl
 diEROYGcBgfCXfqr97Hsu/uOfdmlvWXQMMGD+5lt9IvJSrUpnmeEQRq2E
 ufHxkSAO3+rf38Sa/iAx+tp7gzgRI17gQU0fIpGPjgZ6B17BsVU/jXodJ
 //YcjxyjuHFWHMFhn2ZYC+41njZtP+urk5DSiDNOe3ajuWT8pEJQcYmn6
 a8wYMMCl3yWGSWK9wh2r2PUbLqIj9rAKpPj25o3AUyqAAg+nt+yPfH0KY
 cfJ3ninRR25CRlIPmih6hyuNR1Vr/Xuew0VXyr+X+c/nd+d2yM/Bgxi/E Q==;
X-CSE-ConnectionGUID: jZrd2CjVTAW96/LzGYDlAw==
X-CSE-MsgGUID: OPqgsiRdT6i6ThCdCXqgjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="51479947"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="51479947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:41 -0800
X-CSE-ConnectionGUID: f2i7asRSRxSC1LpE5oG1pg==
X-CSE-MsgGUID: AVHOEl9ATK+BIj73viro9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113080736"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.167])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:37:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/14] drm/i915/display: convert
 intel_mode_valid_max_plane_size() to intel_display
Date: Wed, 12 Feb 2025 18:36:39 +0200
Message-Id: <6e7810c793ecc8ff6a31569830bf162156245668.1739378095.git.jani.nikula@intel.com>
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
pointer. Convert the intel_mode_valid_max_plane_size() helper to struct
intel_display, allowing further conversions elsewhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display.h | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 3 +--
 drivers/gpu/drm/i915/display/intel_dsi.c     | 8 ++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 +--
 6 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7a25c84bfbac..0450fdf9d4de 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8498,7 +8498,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct intel_display *displ
 }
 
 enum drm_mode_status
-intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
+intel_mode_valid_max_plane_size(struct intel_display *display,
 				const struct drm_display_mode *mode,
 				int num_joined_pipes)
 {
@@ -8508,7 +8508,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * intel_mode_valid() should be
 	 * sufficient on older platforms.
 	 */
-	if (DISPLAY_VER(dev_priv) < 9)
+	if (DISPLAY_VER(display) < 9)
 		return MODE_OK;
 
 	/*
@@ -8516,10 +8516,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
 	 * plane so let's not advertize modes that are
 	 * too big for that.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 30) {
+	if (DISPLAY_VER(display) >= 30) {
 		plane_width_max = 6144 * num_joined_pipes;
 		plane_height_max = 4800;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		plane_width_max = 5120 * num_joined_pipes;
 		plane_height_max = 4320;
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 08e28ea179d2..f702425df305 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -424,7 +424,7 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
 u32 intel_plane_fb_max_stride(struct drm_device *drm,
 			      u32 pixel_format, u64 modifier);
 enum drm_mode_status
-intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
+intel_mode_valid_max_plane_size(struct intel_display *display,
 				const struct drm_display_mode *mode,
 				int num_joined_pipes);
 enum drm_mode_status
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 61827b0fe95e..29970baaf03e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1396,7 +1396,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	struct intel_display *display = to_intel_display(_connector->dev);
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode;
 	int target_clock = mode->clock;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
@@ -1496,7 +1495,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (status != MODE_OK)
 		return status;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
+	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
 }
 
 bool intel_dp_source_supports_tps3(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 38804254980b..73a0a0f9b3d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1462,7 +1462,6 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(connector);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_dp *intel_dp = connector->mst_port;
 	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
 	struct drm_dp_mst_port *port = connector->port;
@@ -1565,7 +1564,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		return 0;
 	}
 
-	*status = intel_mode_valid_max_plane_size(i915, mode, num_joined_pipes);
+	*status = intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index c93a3cf75c52..403151175a87 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -60,14 +60,14 @@ int intel_dsi_get_modes(struct drm_connector *connector)
 enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 					  const struct drm_display_mode *mode)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_connector *intel_connector = to_intel_connector(connector);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_fixed_mode(intel_connector, mode);
-	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
+	int max_dotclk = display->cdclk.max_dotclk_freq;
 	enum drm_mode_status status;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	status = intel_panel_mode_valid(intel_connector, mode);
 	if (status != MODE_OK)
@@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 	if (fixed_mode->clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
+	return intel_mode_valid_max_plane_size(display, mode, 1);
 }
 
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 60572deeffb3..ed017d9de920 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2015,7 +2015,6 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum drm_mode_status status;
 	int clock = mode->clock;
 	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
@@ -2068,7 +2067,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
 			return status;
 	}
 
-	return intel_mode_valid_max_plane_size(dev_priv, mode, 1);
+	return intel_mode_valid_max_plane_size(display, mode, 1);
 }
 
 bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
-- 
2.39.5

