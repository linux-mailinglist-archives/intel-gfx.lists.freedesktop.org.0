Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5B8A446C6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 17:49:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2789510E75C;
	Tue, 25 Feb 2025 16:49:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZ6ws6XF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B6FE10E75B;
 Tue, 25 Feb 2025 16:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740502168; x=1772038168;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iR4LHRCOvvp9vC1divI1kMcyXtTJbgE3bez3UVFZ27Q=;
 b=VZ6ws6XF91bjRbRV61L8cpX7HgZZUWG26mypqVCbLY6Pq21aRfe/YWYq
 6rc6cBHT5KZ7Hcz02FFc8PLsBzm4vaLtWawlU/bW4RPu+D4SNF1ZVPJBL
 LQYsl7SqaYDvgnsuPF1sWFDWfa+5ccxxRVEYFkGoP/whKW+Zi7AvLeYfA
 xO5Eut64ZU1xfclObTp3M+O9vxdVxJJeY0MLxlxaJylqZhxdZoFSGh+fA
 SQ9ORXTcjFV3DPejerOfJn9+GnJ2Grp7+UXEdUhXFr6OEwDKhSeeBYPYP
 QbgTL/7FjZ8hKYWe0fz15kR3aYugreMwXeseY7sm9fnGTw2nutycOFWS5 Q==;
X-CSE-ConnectionGUID: h4eVc74GQQOngn58vBi8gg==
X-CSE-MsgGUID: WI+mqJKCRF+5b9KEFYtNFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41454402"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41454402"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:28 -0800
X-CSE-ConnectionGUID: vG8pktO2Q5av/XTfyAT8Sg==
X-CSE-MsgGUID: pA0xCxeSRX2MX0dK44yF9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116930160"
Received: from monicael-mobl3 (HELO localhost) ([10.245.246.246])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 08:49:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 02/12] drm/i915/debugfs: continue display debugfs struct
 intel_display conversion
Date: Tue, 25 Feb 2025 18:49:03 +0200
Message-Id: <e1262dc019d42ed0e294606fc875427bda336cb9.1740502116.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1740502116.git.jani.nikula@intel.com>
References: <cover.1740502116.git.jani.nikula@intel.com>
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

Nudge intel_display_debugfs.[ch] conversion to struct intel_display
forward.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  | 26 +++++++------------
 .../drm/i915/display/intel_display_debugfs.h  |  6 ++---
 .../drm/i915/display/intel_display_driver.c   |  2 +-
 3 files changed, 13 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9de7e512c0ab..7ee90cd8ed2d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -49,11 +49,6 @@ static struct intel_display *node_to_intel_display(struct drm_info_node *node)
 	return to_intel_display(node->minor->dev);
 }
 
-static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
-{
-	return to_i915(node->minor->dev);
-}
-
 static int intel_display_caps(struct seq_file *m, void *data)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
@@ -85,8 +80,8 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 
 static int i915_sr_status(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
 	struct intel_display *display = node_to_intel_display(m->private);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 	bool sr_enabled = false;
 
@@ -102,7 +97,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 	else if (display->platform.i915gm)
 		sr_enabled = intel_de_read(display, INSTPM) & INSTPM_SELF_EN;
 	else if (display->platform.pineview)
-		sr_enabled = intel_de_read(display, DSPFW3(dev_priv)) & PINEVIEW_SELF_REFRESH_EN;
+		sr_enabled = intel_de_read(display, DSPFW3(display)) & PINEVIEW_SELF_REFRESH_EN;
 	else if (display->platform.valleyview || display->platform.cherryview)
 		sr_enabled = intel_de_read(display, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
@@ -157,8 +152,7 @@ static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
 
 static int i915_power_domain_info(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_display *display = &i915->display;
+	struct intel_display *display = node_to_intel_display(m->private);
 
 	intel_display_power_debug(display, m);
 
@@ -588,7 +582,7 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 static int i915_display_info(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
-	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_crtc *crtc;
 	struct drm_connector *connector;
 	struct drm_connector_list_iter conn_iter;
@@ -713,14 +707,13 @@ intel_lpsp_power_well_enabled(struct intel_display *display,
 static int i915_lpsp_status(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
-	struct drm_i915_private *i915 = node_to_i915(m->private);
 	bool lpsp_enabled = false;
 
 	if (DISPLAY_VER(display) >= 13 || IS_DISPLAY_VER(display, 9, 10)) {
 		lpsp_enabled = !intel_lpsp_power_well_enabled(display, SKL_DISP_PW_2);
 	} else if (IS_DISPLAY_VER(display, 11, 12)) {
 		lpsp_enabled = !intel_lpsp_power_well_enabled(display, ICL_DISP_PW_3);
-	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
+	} else if (display->platform.haswell || display->platform.broadwell) {
 		lpsp_enabled = !intel_lpsp_power_well_enabled(display, HSW_DISP_PW_GLOBAL);
 	} else {
 		seq_puts(m, "LPSP: not supported\n");
@@ -836,10 +829,10 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 	{"i915_lpsp_status", i915_lpsp_status, 0},
 };
 
-void intel_display_debugfs_register(struct drm_i915_private *i915)
+void intel_display_debugfs_register(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_fifo_underrun_reset", 0644, minor->debugfs_root,
 			    display, &i915_fifo_underrun_reset_ops);
@@ -865,7 +858,6 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = m->private;
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_encoder *encoder = intel_attached_encoder(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	int connector_type = connector->base.connector_type;
 	bool lpsp_capable = false;
 
@@ -892,7 +884,7 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
 				(connector_type == DRM_MODE_CONNECTOR_DSI ||
 				 connector_type == DRM_MODE_CONNECTOR_eDP ||
 				 connector_type == DRM_MODE_CONNECTOR_DisplayPort));
-	else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
+	else if (display->platform.haswell || display->platform.broadwell)
 		lpsp_capable = connector_type == DRM_MODE_CONNECTOR_eDP;
 
 	seq_printf(m, "LPSP: %s\n", lpsp_capable ? "capable" : "incapable");
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.h b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
index e1f479b7acd1..82af2f608111 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.h
@@ -6,16 +6,16 @@
 #ifndef __INTEL_DISPLAY_DEBUGFS_H__
 #define __INTEL_DISPLAY_DEBUGFS_H__
 
-struct drm_i915_private;
 struct intel_connector;
 struct intel_crtc;
+struct intel_display;
 
 #ifdef CONFIG_DEBUG_FS
-void intel_display_debugfs_register(struct drm_i915_private *i915);
+void intel_display_debugfs_register(struct intel_display *display);
 void intel_connector_debugfs_add(struct intel_connector *connector);
 void intel_crtc_debugfs_add(struct intel_crtc *crtc);
 #else
-static inline void intel_display_debugfs_register(struct drm_i915_private *i915) {}
+static inline void intel_display_debugfs_register(struct intel_display *display) {}
 static inline void intel_connector_debugfs_add(struct intel_connector *connector) {}
 static inline void intel_crtc_debugfs_add(struct intel_crtc *crtc) {}
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index b72b07329fbf..aa394f574575 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -550,7 +550,7 @@ void intel_display_driver_register(struct intel_display *display)
 
 	intel_audio_register(display);
 
-	intel_display_debugfs_register(i915);
+	intel_display_debugfs_register(display);
 
 	/*
 	 * We need to coordinate the hotplugs with the asynchronous
-- 
2.39.5

