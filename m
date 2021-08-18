Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 823D93F0165
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 12:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 690646E524;
	Wed, 18 Aug 2021 10:12:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CFC189533
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 10:11:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="203491238"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="203491238"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:39 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="488519751"
Received: from mdbadill-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.92])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 18 Aug 2021 13:11:08 +0300
Message-Id: <6f2c05005e4fa43a5572b02b3f41363725ffdb4f.1629281426.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629281426.git.jani.nikula@intel.com>
References: <cover.1629281426.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/panel: move intel_panel_use_ssc()
 out of headers
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

There's no performance reason to have it as static inline; move it out
of intel_display_types.h to reduce clutter and dependency on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 --------
 drivers/gpu/drm/i915/display/intel_panel.c         | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_panel.h         | 1 +
 4 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a257e5dc381c..f6f01946d30b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -92,6 +92,7 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_overlay.h"
+#include "intel_panel.h"
 #include "intel_pipe_crc.h"
 #include "intel_pm.h"
 #include "intel_pps.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6beeeeba1bed..7b5d7b1ae501 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2035,14 +2035,6 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
 	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;
 }
 
-static inline bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
-{
-	if (dev_priv->params.panel_use_ssc >= 0)
-		return dev_priv->params.panel_use_ssc != 0;
-	return dev_priv->vbt.lvds_use_ssc
-		&& !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);
-}
-
 static inline u32 i9xx_dpll_compute_fp(struct dpll *dpll)
 {
 	return dpll->n << 16 | dpll->m1 << 8 | dpll->m2;
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 7d7a60b4d2de..074a55f20bcd 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -41,6 +41,14 @@
 #include "intel_dsi_dcs_backlight.h"
 #include "intel_panel.h"
 
+bool intel_panel_use_ssc(struct drm_i915_private *i915)
+{
+	if (i915->params.panel_use_ssc >= 0)
+		return i915->params.panel_use_ssc != 0;
+	return i915->vbt.lvds_use_ssc
+		&& !(i915->quirks & QUIRK_LVDS_SSC_DISABLE);
+}
+
 void
 intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
 		       struct drm_display_mode *adjusted_mode)
diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
index 1d340f77bffc..d638c2b47c92 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.h
+++ b/drivers/gpu/drm/i915/display/intel_panel.h
@@ -25,6 +25,7 @@ int intel_panel_init(struct intel_panel *panel,
 void intel_panel_fini(struct intel_panel *panel);
 enum drm_connector_status
 intel_panel_detect(struct drm_connector *connector, bool force);
+bool intel_panel_use_ssc(struct drm_i915_private *i915);
 void intel_fixed_panel_mode(const struct drm_display_mode *fixed_mode,
 			    struct drm_display_mode *adjusted_mode);
 int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
-- 
2.20.1

