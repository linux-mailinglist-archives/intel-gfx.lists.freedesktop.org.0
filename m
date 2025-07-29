Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D280DB14BC3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:57:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4088710E5FE;
	Tue, 29 Jul 2025 09:57:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzMlolWi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8743710E1F0;
 Tue, 29 Jul 2025 09:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753783069; x=1785319069;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MTMX1cEBL1O3Nee6YlJzj07P19mKndsqUwNbZiyLtz0=;
 b=bzMlolWiBSzGUbFHv43EMtjwGWCmJsRJBbgfx+QNXPs3CjbbRaHx3Ezp
 13vnqYFljjHdkWpDO4M/QrzPcPXFWe6wx619asi5/9x1VnmAqKThep7Wo
 QFB8RlZnXUu+r+qbkjN4TIg7kxc7CAxX7ykhRURsTCzvjLm5C2XGWx3aZ
 Zjo2EaMgxcyMeBcD65oZxjCZ6mnL6hHBsR96YeXW8fguJNX1O+j1HBjVh
 Aa9J6PYMyeqSmdAHyGzpAcpqPZOyz8R9r39hEXCPRS5FNgzAkVBzquQ1r
 V1r239O8FCqx+vWCeP5qdIs4UdA4BlRGGNXPAciPC1UdPJVphj/IqokGz A==;
X-CSE-ConnectionGUID: ca/7/mEFSZmDcb0C4Qt3iw==
X-CSE-MsgGUID: lQE3QrzdQduQfzIvBK0wRg==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="81484974"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="81484974"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:49 -0700
X-CSE-ConnectionGUID: xaRTJJ+BTOWKDA4NUt3iUg==
X-CSE-MsgGUID: bh7/Pr0yR6ehrWiLzeDvKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="167962047"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:57:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/3] drm/i915/display: use drm->debugfs_root for creating
 debugfs files
Date: Tue, 29 Jul 2025 12:57:37 +0300
Message-Id: <e8268546ec2a2941a3dc43c2fdc60f678dc03fce.1753782998.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753782998.git.jani.nikula@intel.com>
References: <cover.1753782998.git.jani.nikula@intel.com>
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

Drop drm/drm_file.h include where possible.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c                | 4 +---
 drivers/gpu/drm/i915/display/intel_cdclk.c               | 4 +---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c     | 6 +++---
 .../gpu/drm/i915/display/intel_display_debugfs_params.c  | 7 +++----
 drivers/gpu/drm/i915/display/intel_dmc.c                 | 4 +---
 drivers/gpu/drm/i915/display/intel_dp_test.c             | 4 +---
 drivers/gpu/drm/i915/display/intel_fbc.c                 | 3 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c             | 8 ++++----
 drivers/gpu/drm/i915/display/intel_opregion.c            | 4 +---
 drivers/gpu/drm/i915/display/intel_psr.c                 | 6 +++---
 drivers/gpu/drm/i915/display/intel_wm.c                  | 9 ++++-----
 drivers/gpu/drm/i915/display/skl_watermark.c             | 7 +++----
 12 files changed, 26 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9c268bed091d..67d669f35509 100644
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
index 228aa64c1349..7c6541a233cf 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -3622,9 +3622,7 @@ DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
 
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
index 88914a1f3f62..de62b774272d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs_params.c
@@ -7,7 +7,6 @@
 #include <linux/kernel.h>
 
 #include <drm/drm_drv.h>
-#include <drm/drm_file.h>
 
 #include "intel_display_core.h"
 #include "intel_display_debugfs_params.h"
@@ -154,14 +153,14 @@ intel_display_debugfs_create_uint(const char *name, umode_t mode,
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
index 744f51c0eab8..77a0199f9ea5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1603,9 +1603,7 @@ DEFINE_SHOW_ATTRIBUTE(intel_dmc_debugfs_status);
 
 void intel_dmc_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_dmc_info", 0444, display->drm->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 6ed5012c5fac..5cfa1dd411da 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -6,7 +6,6 @@
 #include <drm/display/drm_dp.h>
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_edid.h>
-#include <drm/drm_file.h>
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
@@ -753,13 +752,12 @@ static const struct {
 
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
index e2e03af520b2..4c45632ab3e5 100644
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
index 265aa97fcc75..59cd867bb11d 100644
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
index 81efdb17fc0c..380314a3b4d9 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1299,8 +1299,6 @@ DEFINE_SHOW_ATTRIBUTE(intel_opregion);
 
 void intel_opregion_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = display->drm->primary;
-
-	debugfs_create_file("i915_opregion", 0444, minor->debugfs_root,
+	debugfs_create_file("i915_opregion", 0444, display->drm->debugfs_root,
 			    display, &intel_opregion_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6bd3454bb00e..1d70ae31b6dd 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -4132,12 +4132,12 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_edp_psr_debug_fops,
 
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
index bba82e888db2..f887a664fe22 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -5,7 +5,6 @@
 
 #include <linux/debugfs.h>
 
-#include <drm/drm_file.h>
 #include <drm/drm_print.h>
 
 #include "i9xx_wm.h"
@@ -390,15 +389,15 @@ static const struct file_operations i915_cur_wm_latency_fops = {
 
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
index 222c069fdadb..def5150231a4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -6,7 +6,6 @@
 #include <linux/debugfs.h>
 
 #include <drm/drm_blend.h>
-#include <drm/drm_file.h>
 #include <drm/drm_print.h>
 
 #include "soc/intel_dram.h"
@@ -4033,14 +4032,14 @@ DEFINE_SHOW_ATTRIBUTE(intel_sagv_status);
 
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

