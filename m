Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EC6AD5944
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 16:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F18E10E69C;
	Wed, 11 Jun 2025 14:51:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C81+qc+5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 922EB10E69B;
 Wed, 11 Jun 2025 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749653487; x=1781189487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=94VC4xh8wz4vwt0uiYdJCIsQuuK0uZVy0uruRCcrDRw=;
 b=C81+qc+5xg8ZBh/0HV9Tiv4pbsuruPWDcgJbk3pq+lYVYDotrWI608gG
 E6FMLOLrEN4pDULgd9YKLUi9KXpF5xxeKblT4MkwBLiN2s4ylahUVooV3
 s2ZI85nfBwh83n9SjXZMMGGzz7HkkCmrzJCZnJm/ZP/1B2J9u5AVPeN11
 8DOctQj4yx/YO3b288mFkQRenFTY6vNjD5GtxNgoZSO4Gc7QH7iiI+CLC
 +8tdPgo8z7AiOY2tU/+LNJoaV6ihsII0Wi1XaJ2mkTq8gQ+zRKh+j5cl8
 ENjsZsXnekkH3HjAZeOR5ijMIaTBjfv5j7L5daf1CWykPWxHot0+ASGQP w==;
X-CSE-ConnectionGUID: D8q6tW8pTI6hk+bvu7EoBA==
X-CSE-MsgGUID: 7mMquyN7T8yckcoKrNRkrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51714032"
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="51714032"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:27 -0700
X-CSE-ConnectionGUID: 1mopczPtQMqhROYzwkn9Eg==
X-CSE-MsgGUID: KeEpkBErR5ylVS6BtzsiCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,228,1744095600"; d="scan'208";a="147122179"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 07:51:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/display: use drm->debugfs_root for creating
 debugfs files
Date: Wed, 11 Jun 2025 17:51:14 +0300
Message-Id: <0adf4248360449411bc6dd412df8d9194b4a5106.1749653355.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1749653354.git.jani.nikula@intel.com>
References: <cover.1749653354.git.jani.nikula@intel.com>
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

Since commit 0b30d57acafc ("drm/debugfs: rework debugfs directory
creation v5") we should be using drm->debugfs_root instead of
minor->debugfs_root for creating debugfs files.

As a rule of thumb, use a local variable when there are two or more
uses, otherwise just have the single reference inline.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c                 | 4 +---
 drivers/gpu/drm/i915/display/intel_cdclk.c                | 4 +---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c      | 6 +++---
 .../gpu/drm/i915/display/intel_display_debugfs_params.c   | 6 +++---
 drivers/gpu/drm/i915/display/intel_dmc.c                  | 4 +---
 drivers/gpu/drm/i915/display/intel_dp_test.c              | 3 +--
 drivers/gpu/drm/i915/display/intel_fbc.c                  | 3 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c              | 8 ++++----
 drivers/gpu/drm/i915/display/intel_opregion.c             | 4 +---
 drivers/gpu/drm/i915/display/intel_psr.c                  | 6 +++---
 drivers/gpu/drm/i915/display/intel_wm.c                   | 8 ++++----
 drivers/gpu/drm/i915/display/skl_watermark.c              | 6 +++---
 12 files changed, 26 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9ce41e689d50..5cfcf60f58d4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3743,8 +3743,6 @@ DEFINE_SHOW_ATTRIBUTE(intel_bios_vbt);
 
 void intel_bios_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_vbt", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_vbt", 0444, display->drm->debugfs_root,
 			    display, &intel_bios_vbt_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 38b3094b37d7..4a513361665b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3589,9 +3589,7 @@ DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
 
 void intel_cdclk_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_cdclk_info", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_cdclk_info", 0444, display->drm->debugfs_root,
 			    display, &i915_cdclk_info_fops);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index ce3f9810c42d..10dddec3796f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -820,14 +820,14 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
 
 void intel_display_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 
-	debugfs_create_file("i915_fifo_underrun_reset", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_fifo_underrun_reset", 0644, debugfs_root,
 			    display, &i915_fifo_underrun_reset_ops);
 
 	drm_debugfs_create_files(intel_display_debugfs_list,
 				 ARRAY_SIZE(intel_display_debugfs_list),
-				 minor->debugfs_root, minor);
+				 debugfs_root, display->drm->primary);
 
 	intel_bios_debugfs_register(display);
 	intel_cdclk_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
index 88914a1f3f62..9b5aa872b12a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -154,14 +154,14 @@ intel_display_debugfs_create_uint(const char *name, umode_t mode,
 /* add a subdirectory with files for each intel display param */
 void intel_display_debugfs_params(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 	struct dentry *dir;
 	char dirname[16];
 
 	snprintf(dirname, sizeof(dirname), "%s_params", display->drm->driver->name);
-	dir = debugfs_lookup(dirname, minor->debugfs_root);
+	dir = debugfs_lookup(dirname, debugfs_root);
 	if (!dir)
-		dir = debugfs_create_dir(dirname, minor->debugfs_root);
+		dir = debugfs_create_dir(dirname, debugfs_root);
 	if (IS_ERR(dir))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a10e56e7cf31..e9448ee932bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1448,9 +1448,7 @@ DEFINE_SHOW_ATTRIBUTE(intel_dmc_debugfs_status);
 
 void intel_dmc_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_dmc_info", 0444, display->drm->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 6ed5012c5fac..0ce72fd1c285 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -753,13 +753,12 @@ static const struct {
 
 void intel_dp_test_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
 		debugfs_create_file(intel_display_debugfs_files[i].name,
 				    0644,
-				    minor->debugfs_root,
+				    display->drm->debugfs_root,
 				    display,
 				    intel_display_debugfs_files[i].fops);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ec1ef8694c35..46d25fbcc455 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -2240,10 +2240,9 @@ void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
 /* FIXME: remove this once igt is on board with per-crtc stuff */
 void intel_fbc_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
 	struct intel_fbc *fbc;
 
 	fbc = display->fbc[INTEL_FBC_A];
 	if (fbc)
-		intel_fbc_debugfs_add(fbc, minor->debugfs_root);
+		intel_fbc_debugfs_add(fbc, display->drm->debugfs_root);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 74fe398663d6..61f67ec129d4 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -1333,12 +1333,12 @@ static const struct file_operations i915_hpd_short_storm_ctl_fops = {
 
 void intel_hpd_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 
-	debugfs_create_file("i915_hpd_storm_ctl", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_hpd_storm_ctl", 0644, debugfs_root,
 			    display, &i915_hpd_storm_ctl_fops);
-	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_hpd_short_storm_ctl", 0644, debugfs_root,
 			    display, &i915_hpd_short_storm_ctl_fops);
-	debugfs_create_bool("i915_ignore_long_hpd", 0644, minor->debugfs_root,
+	debugfs_create_bool("i915_ignore_long_hpd", 0644, debugfs_root,
 			    &display->hotplug.ignore_long_hpd);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5535cb799431..2c4feca1d61c 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1298,8 +1298,6 @@ DEFINE_SHOW_ATTRIBUTE(intel_opregion);
 
 void intel_opregion_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_opregion", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_opregion", 0444, display->drm->debugfs_root,
 			    display, &intel_opregion_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8bee2f592ae7..718ff558405d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4136,12 +4136,12 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
 
 void intel_psr_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 
-	debugfs_create_file("i915_edp_psr_debug", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_edp_psr_debug", 0644, debugfs_root,
 			    display, &i915_edp_psr_debug_fops);
 
-	debugfs_create_file("i915_edp_psr_status", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_edp_psr_status", 0444, debugfs_root,
 			    display, &i915_edp_psr_status_fops);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index bba82e888db2..0eac8ba344bc 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -390,15 +390,15 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 
 void intel_wm_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 
-	debugfs_create_file("i915_pri_wm_latency", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_pri_wm_latency", 0644, debugfs_root,
 			    display, &i915_pri_wm_latency_fops);
 
-	debugfs_create_file("i915_spr_wm_latency", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_spr_wm_latency", 0644, debugfs_root,
 			    display, &i915_spr_wm_latency_fops);
 
-	debugfs_create_file("i915_cur_wm_latency", 0644, minor->debugfs_root,
+	debugfs_create_file("i915_cur_wm_latency", 0644, debugfs_root,
 			    display, &i915_cur_wm_latency_fops);
 
 	skl_watermark_debugfs_register(display);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2c2371574d6f..efc613971190 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -4045,14 +4045,14 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
 void skl_watermark_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
+	struct dentry *debugfs_root = display->drm->debugfs_root;
 
 	if (HAS_IPC(display))
-		debugfs_create_file("i915_ipc_status", 0644, minor->debugfs_root,
+		debugfs_create_file("i915_ipc_status", 0644, debugfs_root,
 				    display, &skl_watermark_ipc_status_fops);
 
 	if (HAS_SAGV(display))
-		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root,
+		debugfs_create_file("i915_sagv_status", 0444, debugfs_root,
 				    display, &intel_sagv_status_fops);
 }
 
-- 
2.39.5

