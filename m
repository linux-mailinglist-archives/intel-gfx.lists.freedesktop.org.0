Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3605A68EC12
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 10:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4229110E73E;
	Wed,  8 Feb 2023 09:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AF310E732
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 09:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675849771; x=1707385771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ladS6a15OxJrLaieByadwdN9gjC8UX+GgWnZCBne5ao=;
 b=HDchH3O2IOmDB8JLh0nxMyAgnJvtwy89s1nV2+0L1JGXwRxcxy38F7ov
 iiwVG/xAxJSWwHmp9sNMnk9UyXAmQbplPOdknN7yc/oQjk4/NboMmVKCc
 rxoVI+/rJ74Oc06oWYtfmwdV/1f4HFFWJubSVbXCMFVUKXf4d4U6/a54X
 H7rnr9I8u1is35Cs5DZOV2xsXQqkxpQWgQX1kZzqEO5JOsWDRX5JfRFh0
 L6A9M/qx2ECq0sJ/i/EyWVQdCqoGAV8BGIH2MvxBWObc9kH+GM+1hS1gJ
 WKRlpLGLayyFcrxwt9N2987obH1XeuM9q9ijYGTsTC5xIrFIOUJlUKHqK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="357146070"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="357146070"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="755990568"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="755990568"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 01:49:21 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 11:48:45 +0200
Message-Id: <af392a89c7951cda25ff4bb347b093a70bc169e2.1675849634.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675849634.git.jani.nikula@intel.com>
References: <cover.1675849634.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/10] drm/i915/wm: add *_wm_num_levels()
 functions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add intel_wm_num_levels(), i9xx_wm_num_levels() and skl_wm_num_levels()
functions.

There's a difference between i9xx_wm_num_levels() and
g4x_wm_num_levels(), but leave that unresolved for now to avoid
functional changes.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c        | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/i9xx_wm.h        |  1 +
 .../drm/i915/display/intel_display_debugfs.c  | 19 +++----------------
 drivers/gpu/drm/i915/display/intel_wm.c       |  8 ++++++++
 drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  |  8 ++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
 7 files changed, 39 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 1247a23e29af..b5f75fe2f414 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2684,6 +2684,23 @@ int ilk_wm_max_level(const struct drm_i915_private *dev_priv)
 		return 2;
 }
 
+/* FIXME: reconcile the difference with g4x_wm_num_levels() */
+int i9xx_wm_num_levels(const struct drm_i915_private *i915)
+{
+	int num_levels;
+
+	if (IS_CHERRYVIEW(i915))
+		num_levels = 3;
+	else if (IS_VALLEYVIEW(i915))
+		num_levels = 1;
+	else if (IS_G4X(i915))
+		num_levels = 3;
+	else
+		num_levels = ilk_wm_max_level(i915) + 1;
+
+	return num_levels;
+}
+
 static bool ilk_increase_wm_latency(struct drm_i915_private *dev_priv,
 				    u16 wm[5], u16 min)
 {
diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.h b/drivers/gpu/drm/i915/display/i9xx_wm.h
index e5293a4ff540..62250e1f7931 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.h
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.h
@@ -13,6 +13,7 @@ struct intel_crtc_state;
 struct intel_plane_state;
 
 int ilk_wm_max_level(const struct drm_i915_private *i915);
+int i9xx_wm_num_levels(const struct drm_i915_private *i915);
 bool ilk_disable_lp_wm(struct drm_i915_private *i915);
 bool intel_set_memory_cxsr(struct drm_i915_private *i915, bool enable);
 void i9xx_wm_init(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 539dae1ec83c..4ab86cec683e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -30,6 +30,7 @@
 #include "intel_pm.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
+#include "intel_wm.h"
 #include "skl_watermark.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
@@ -1289,14 +1290,7 @@ static void wm_latency_show(struct seq_file *m, const u16 wm[8])
 	int level;
 	int num_levels;
 
-	if (IS_CHERRYVIEW(dev_priv))
-		num_levels = 3;
-	else if (IS_VALLEYVIEW(dev_priv))
-		num_levels = 1;
-	else if (IS_G4X(dev_priv))
-		num_levels = 3;
-	else
-		num_levels = ilk_wm_max_level(dev_priv) + 1;
+	num_levels = intel_wm_num_levels(dev_priv);
 
 	drm_modeset_lock_all(&dev_priv->drm);
 
@@ -1408,14 +1402,7 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 	int ret;
 	char tmp[32];
 
-	if (IS_CHERRYVIEW(dev_priv))
-		num_levels = 3;
-	else if (IS_VALLEYVIEW(dev_priv))
-		num_levels = 1;
-	else if (IS_G4X(dev_priv))
-		num_levels = 3;
-	else
-		num_levels = ilk_wm_max_level(dev_priv) + 1;
+	num_levels = intel_wm_num_levels(dev_priv);
 
 	if (len >= sizeof(tmp))
 		return -EINVAL;
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index be6ffb5f2d3b..8f8ab7978208 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -292,6 +292,14 @@ void intel_wm_sanitize(struct drm_i915_private *dev_priv)
 	drm_modeset_acquire_fini(&ctx);
 }
 
+int intel_wm_num_levels(const struct drm_i915_private *i915)
+{
+	if (DISPLAY_VER(i915) >= 9)
+		return skl_wm_num_levels(i915);
+	else
+		return i9xx_wm_num_levels(i915);
+}
+
 void intel_wm_init(struct drm_i915_private *i915)
 {
 	if (DISPLAY_VER(i915) >= 9)
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 80a99348bf6a..06257e19be6f 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -32,6 +32,7 @@ bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 void intel_print_wm_latency(struct drm_i915_private *i915,
 			    const char *name, const u16 wm[]);
 void intel_wm_sanitize(struct drm_i915_private *i915);
+int intel_wm_num_levels(const struct drm_i915_private *i915);
 void intel_wm_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_WM_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bb09fdca7161..9ff3f2000f37 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3278,6 +3278,14 @@ static const struct intel_wm_funcs skl_wm_funcs = {
 	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
 };
 
+int skl_wm_num_levels(const struct drm_i915_private *i915)
+{
+	if (HAS_HW_SAGV_WM(i915))
+		return 6;
+	else
+		return 8;
+}
+
 void skl_wm_init(struct drm_i915_private *i915)
 {
 	intel_sagv_init(i915);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index f03fd991b189..22002782aee5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -46,6 +46,7 @@ void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
 void skl_watermark_debugfs_register(struct drm_i915_private *i915);
 
+int skl_wm_num_levels(const struct drm_i915_private *i915);
 void skl_wm_init(struct drm_i915_private *i915);
 
 struct intel_dbuf_state {
-- 
2.34.1

