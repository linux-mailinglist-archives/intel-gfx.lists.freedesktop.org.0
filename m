Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DB84A85B1
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D466210F97C;
	Thu,  3 Feb 2022 14:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA6F10F97F
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:03:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896988; x=1675432988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z+9yJgq1EiMgrbZVDLHzLuVVUCY1T61/KUTims9Mm6s=;
 b=TVhAAsdb9SjPJknyWGVt3wD2QJzMxwcv/Gs/ATZ/gP9qCdakgDCG396H
 WS0Ua1C/f/Vpy9/TUJ9htno6PyqQA5LMYWxH2zRMDtqCdoocJfO6g5NYI
 VJfFF6l8OO3rSbs0pIwwx/YUOUKHUeE2Tp5VdgEKIImxURTmmTrEg/rNp
 vDOUVwLpDp0JWMUQRJwEJddtIldQxBbNGpgI9V1IbaOg1GVtNRd4dBITp
 jW/p4ho/lONhWJcdpatHoIULjI5g+0jO2zH3vRp01yM56MZ2EBMWMjFpI
 2IzxPhM/LFTF6imMDvGQBjL4+nffjBktOpG92gPbS9fLOsyqdo1dgY+Ky g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="248362766"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248362766"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:52 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="699321735"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:29 +0200
Message-Id: <9a10dbca7ad298dde62b83f76e0df43a67bceeef.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/hpd: hide struct
 intel_hotplug_funcs
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

With intel_hpd_irq_setup() in i915_irq.c, struct intel_hotplug_funcs is
also only needed there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  7 +------
 drivers/gpu/drm/i915/i915_drv.h              |  5 +----
 drivers/gpu/drm/i915/i915_irq.c              | 10 ++++++++++
 drivers/gpu/drm/i915/i915_irq.h              |  1 +
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 912b7003dcfa..8204126d17f9 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -24,6 +24,7 @@
 #include <linux/kernel.h>
 
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "intel_display_types.h"
 #include "intel_hotplug.h"
 
@@ -213,12 +214,6 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 	}
 }
 
-static void intel_hpd_irq_setup(struct drm_i915_private *i915)
-{
-	if (i915->display_irqs_enabled && i915->hotplug_funcs)
-		i915->hotplug_funcs->hpd_irq_setup(i915);
-}
-
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index cac18b57808e..e13e0188530e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -121,6 +121,7 @@ struct intel_crtc;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
+struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 struct intel_limit;
 struct intel_overlay;
@@ -321,10 +322,6 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
-struct intel_hotplug_funcs {
-	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
-};
-
 struct intel_fdi_funcs {
 	void (*fdi_link_train)(struct intel_crtc *crtc,
 			       const struct intel_crtc_state *crtc_state);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c05eb09d8a66..4e97d22ff081 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4347,6 +4347,10 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 	return ret;
 }
 
+struct intel_hotplug_funcs {
+	void (*hpd_irq_setup)(struct drm_i915_private *i915);
+};
+
 #define HPD_FUNCS(platform)					 \
 static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
 	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
@@ -4361,6 +4365,12 @@ HPD_FUNCS(spt);
 HPD_FUNCS(ilk);
 #undef HPD_FUNCS
 
+void intel_hpd_irq_setup(struct drm_i915_private *i915)
+{
+	if (i915->display_irqs_enabled && i915->hotplug_funcs)
+		i915->hotplug_funcs->hpd_irq_setup(i915);
+}
+
 /**
  * intel_irq_init - initializes irq support
  * @dev_priv: i915 device instance
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index 0eb90d271fa7..82639d9d7e82 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -37,6 +37,7 @@ i915_disable_pipestat(struct drm_i915_private *dev_priv, enum pipe pipe,
 void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv);
 void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv);
 
+void intel_hpd_irq_setup(struct drm_i915_private *i915);
 void i915_hotplug_interrupt_update(struct drm_i915_private *dev_priv,
 				   u32 mask,
 				   u32 bits);
-- 
2.30.2

