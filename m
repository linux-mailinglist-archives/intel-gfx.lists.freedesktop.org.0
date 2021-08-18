Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2A83F0167
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 12:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B0E6E519;
	Wed, 18 Aug 2021 10:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D01B895D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 10:11:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="195874878"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="195874878"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="449677248"
Received: from mdbadill-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.92])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 03:11:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Wed, 18 Aug 2021 13:11:09 +0300
Message-Id: <8c9bb23d92878deb1ecc75427ec6648bd3505816.1629281426.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629281426.git.jani.nikula@intel.com>
References: <cover.1629281426.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/fdi: move intel_fdi_link_freq() to
 intel_fdi.[ch]
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
 drivers/gpu/drm/i915/display/intel_display_types.h | 9 ---------
 drivers/gpu/drm/i915/display/intel_fdi.c           | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_fdi.h           | 4 ++++
 3 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 7b5d7b1ae501..c2725d07b930 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -2040,15 +2040,6 @@ static inline u32 i9xx_dpll_compute_fp(struct dpll *dpll)
 	return dpll->n << 16 | dpll->m1 << 8 | dpll->m2;
 }
 
-static inline u32 intel_fdi_link_freq(struct drm_i915_private *dev_priv,
-				      const struct intel_crtc_state *pipe_config)
-{
-	if (HAS_DDI(dev_priv))
-		return pipe_config->port_clock; /* SPLL */
-	else
-		return dev_priv->fdi_pll_freq;
-}
-
 static inline bool is_ccs_modifier(u64 modifier)
 {
 	return modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index e10b9cd8e86e..970a57369b05 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -95,6 +95,15 @@ static int ilk_check_fdi_lanes(struct drm_device *dev, enum pipe pipe,
 	}
 }
 
+u32 intel_fdi_link_freq(struct drm_i915_private *i915,
+			const struct intel_crtc_state *pipe_config)
+{
+	if (HAS_DDI(i915))
+		return pipe_config->port_clock; /* SPLL */
+	else
+		return i915->fdi_pll_freq;
+}
+
 int ilk_fdi_compute_config(struct intel_crtc *crtc,
 			   struct intel_crtc_state *pipe_config)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
index af01d2c173a8..fd63a6a53fca 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.h
+++ b/drivers/gpu/drm/i915/display/intel_fdi.h
@@ -6,12 +6,16 @@
 #ifndef _INTEL_FDI_H_
 #define _INTEL_FDI_H_
 
+#include <linux/types.h>
+
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_encoder;
 
 #define I915_DISPLAY_CONFIG_RETRY 1
+u32 intel_fdi_link_freq(struct drm_i915_private *i915,
+			const struct intel_crtc_state *pipe_config);
 int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
 			   struct intel_crtc_state *pipe_config);
 void intel_fdi_normal_train(struct intel_crtc *crtc);
-- 
2.20.1

