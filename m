Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0804773BA1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 17:53:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 124D310E3F4;
	Tue,  8 Aug 2023 15:53:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C5C310E1CC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 15:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691510021; x=1723046021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3RcwbR9gdc3v2Xb/NBA//H49iYPyXBpsk2IOfe7QTrk=;
 b=SGLoFf9QadehbAgRGuoncv0NnVi03hqcVkFOB0JidkWFGuap4GMgToqN
 ajULI7cOkbVYGXJMC8nkfgMW0+QBRc9F2as1fM9xpkK5MhuZczQMWyQMR
 BWeEfFRRrFgaTF5WPEHgkCRN8vD08BnpvNOfS+brth+fQMjrknX408NBD
 vdiGKQ+rSZydhe66BQm1XOc93yv66CztGtEsW+Cnst7+hVmmX52DucDP9
 EILYQeCA36zFVXLSEeT5g1E86Rx/ZOHE54OjObsf4MCk/Y+x1R57eCEcw
 6RWTynvDVRV8jtiwfb/vr4n5XGinNFmnEU/VaVrtjvb5b1hjuWvrJ6Wyq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="355798189"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="355798189"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874788053"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 08:53:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Aug 2023 18:53:28 +0300
Message-Id: <45c247c9f5104f3e25bd8913644402a11ec3afaf.1691509966.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1691509966.git.jani.nikula@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/irq: add dedicated
 intel_display_irq_init()
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

Continue splitting display from the rest.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_driver.c |  2 ++
 .../gpu/drm/i915/display/intel_display_irq.c    | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_display_irq.h    |  2 ++
 drivers/gpu/drm/i915/i915_irq.c                 | 17 -----------------
 4 files changed, 21 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index b909814ae02b..8f144d4d3c39 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -28,6 +28,7 @@
 #include "intel_crtc.h"
 #include "intel_display_debugfs.h"
 #include "intel_display_driver.h"
+#include "intel_display_irq.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dkl_phy.h"
@@ -177,6 +178,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_display_irq_init(i915);
 	intel_dkl_phy_init(i915);
 	intel_color_init_hooks(i915);
 	intel_init_cdclk_hooks(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index e6f172cc665a..168f6d4ce208 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1699,3 +1699,20 @@ void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			   GEN11_DISPLAY_IRQ_ENABLE);
 }
 
+void intel_display_irq_init(struct drm_i915_private *i915)
+{
+	i915->drm.vblank_disable_immediate = true;
+
+	/*
+	 * Most platforms treat the display irq block as an always-on power
+	 * domain. vlv/chv can disable it at runtime and need special care to
+	 * avoid writing any of the display block registers outside of the power
+	 * domain. We defer setting up the display irqs in this case to the
+	 * runtime pm.
+	 */
+	i915->display_irqs_enabled = true;
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		i915->display_irqs_enabled = false;
+
+	intel_hotplug_irq_init(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 874893f4f16d..8a2d069d3aac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -78,4 +78,6 @@ void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_
 void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
 void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
+void intel_display_irq_init(struct drm_i915_private *i915);
+
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 512fc0ef94a4..1723c215dcf6 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1343,23 +1343,6 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 	/* pre-gen11 the guc irqs bits are in the upper 16 bits of the pm reg */
 	if (HAS_GT_UC(dev_priv) && GRAPHICS_VER(dev_priv) < 11)
 		to_gt(dev_priv)->pm_guc_events = GUC_INTR_GUC2HOST << 16;
-
-	if (!HAS_DISPLAY(dev_priv))
-		return;
-
-	dev_priv->drm.vblank_disable_immediate = true;
-
-	/* Most platforms treat the display irq block as an always-on
-	 * power domain. vlv/chv can disable it at runtime and need
-	 * special care to avoid writing any of the display block registers
-	 * outside of the power domain. We defer setting up the display irqs
-	 * in this case to the runtime pm.
-	 */
-	dev_priv->display_irqs_enabled = true;
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		dev_priv->display_irqs_enabled = false;
-
-	intel_hotplug_irq_init(dev_priv);
 }
 
 /**
-- 
2.39.2

