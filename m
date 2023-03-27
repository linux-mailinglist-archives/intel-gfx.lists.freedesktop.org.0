Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9456CA629
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 15:39:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242BA10E5D6;
	Mon, 27 Mar 2023 13:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD70A10E5D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 13:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679924386; x=1711460386;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8t5ADBHGWQUspl02YPLmyvypR2DywS2ceYIMZPPypC0=;
 b=cIx1Y09ox/HKy1g1TbtqRbO3ibDiIQbWYzPFYgKygH9XDFJJgyMBN5hQ
 68qr7QAIvOsv9dxwCOmpDVtTRSc8s75b4IUWIL7NZFg7MltC4HjxMaH9b
 X8nEfkWAjCmq+x39CaF0Th5hbA2JqxAAr9Bu7wIuXTLeRwuibKX8a/XNb
 Jnb+Mypr5hwv98rC/njnJBBsJ5sjL2UxuzTAWj+QRuwVElZ9iei1HzVp0
 0jzBccM0SBrKOovmgeB7R6dJq7CmtQkZy7VWkXdxGCMkqv1WuwxU4kkNX
 YL9MV+hx3aRQTwopnsE0O9+lw+H67oCNm2mgxkTknDp3zv/Eljmpsc+7c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="337765880"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="337765880"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 06:39:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="676971872"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="676971872"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 27 Mar 2023 06:39:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Mar 2023 16:39:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Mar 2023 16:39:41 +0300
Message-Id: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ips: Make IPS debugfs per-crtc
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

IPS is a per-pipe feature, so let's move the debugfs stuff
under the crtc directory, and only register it when IPS
is actually available.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/hsw_ips.c            | 15 +++++++--------
 drivers/gpu/drm/i915/display/hsw_ips.h            |  3 +--
 .../gpu/drm/i915/display/intel_display_debugfs.c  |  2 +-
 3 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
index 2910f5d0f3e2..47209c858c32 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.c
+++ b/drivers/gpu/drm/i915/display/hsw_ips.c
@@ -270,12 +270,10 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
 
 static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
+	struct intel_crtc *crtc = m->private;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	intel_wakeref_t wakeref;
 
-	if (!HAS_IPS(i915))
-		return -ENODEV;
-
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 
 	seq_printf(m, "Enabled by kernel parameter: %s\n",
@@ -297,10 +295,11 @@ static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
 
 DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
 
-void hsw_ips_debugfs_register(struct drm_i915_private *i915)
+void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	if (!hsw_crtc_supports_ips(crtc))
+		return;
 
-	debugfs_create_file("i915_ips_status", 0444, minor->debugfs_root,
-			    i915, &hsw_ips_debugfs_status_fops);
+	debugfs_create_file("i915_ips_status", 0444, crtc->base.debugfs_entry,
+			    crtc, &hsw_ips_debugfs_status_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i915/display/hsw_ips.h
index 7ed6061874f7..4eb83b350791 100644
--- a/drivers/gpu/drm/i915/display/hsw_ips.h
+++ b/drivers/gpu/drm/i915/display/hsw_ips.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -23,6 +22,6 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 int hsw_ips_compute_config(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc);
 void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
-void hsw_ips_debugfs_register(struct drm_i915_private *i915);
+void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc);
 
 #endif /* __HSW_IPS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index cc5026272558..d5715ccc37f0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1092,7 +1092,6 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 ARRAY_SIZE(intel_display_debugfs_list),
 				 minor->debugfs_root, minor);
 
-	hsw_ips_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(i915);
 	intel_hpd_debugfs_register(i915);
@@ -1461,6 +1460,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
 	crtc_updates_add(crtc);
 	intel_drrs_crtc_debugfs_add(crtc);
 	intel_fbc_crtc_debugfs_add(crtc);
+	hsw_ips_crtc_debugfs_add(crtc);
 
 	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
 			    &i915_current_bpc_fops);
-- 
2.39.2

