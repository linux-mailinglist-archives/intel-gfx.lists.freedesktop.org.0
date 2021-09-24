Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6AE41713E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8BA6EE19;
	Fri, 24 Sep 2021 11:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE226EE19
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:49:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="309614405"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="309614405"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="436973879"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:49:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:33 +0300
Message-Id: <20210924114741.15940-16-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 16/24] drm/i915: constify hotplug function vtable.
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

From: Dave Airlie <airlied@redhat.com>

Use a macro to avoid mistakes, this type of macro is only used
in a couple of places.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  4 +--
 drivers/gpu/drm/i915/i915_drv.h              |  2 +-
 drivers/gpu/drm/i915/i915_irq.c              | 28 +++++++++++++++-----
 3 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 05f76aba4f8a..3c1cec953b42 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-	if (i915->display_irqs_enabled && i915->hotplug_funcs.hpd_irq_setup)
-		i915->hotplug_funcs.hpd_irq_setup(i915);
+	if (i915->display_irqs_enabled && i915->hotplug_funcs->hpd_irq_setup)
+		i915->hotplug_funcs->hpd_irq_setup(i915);
 }
 
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a31738dd6378..5f1eb471abd8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -988,7 +988,7 @@ struct drm_i915_private {
 	struct drm_i915_wm_disp_funcs wm_disp;
 
 	/* irq display functions */
-	struct intel_hotplug_funcs hotplug_funcs;
+	const struct intel_hotplug_funcs *hotplug_funcs;
 
 	/* fdi display functions */
 	const struct intel_fdi_funcs *fdi_funcs;
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index c35065f8f429..77680bca46ee 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4345,6 +4345,20 @@ static irqreturn_t i965_irq_handler(int irq, void *arg)
 	return ret;
 }
 
+#define HPD_FUNCS(platform)					 \
+static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
+	.hpd_irq_setup = platform##_hpd_irq_setup,		 \
+}
+
+HPD_FUNCS(i915);
+HPD_FUNCS(dg1);
+HPD_FUNCS(gen11);
+HPD_FUNCS(bxt);
+HPD_FUNCS(icp);
+HPD_FUNCS(spt);
+HPD_FUNCS(ilk);
+#undef HPD_FUNCS
+
 /**
  * intel_irq_init - initializes irq support
  * @dev_priv: i915 device instance
@@ -4395,20 +4409,20 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (I915_HAS_HOTPLUG(dev_priv))
-			dev_priv->hotplug_funcs.hpd_irq_setup = i915_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &i915_hpd_funcs;
 	} else {
 		if (HAS_PCH_DG1(dev_priv))
-			dev_priv->hotplug_funcs.hpd_irq_setup = dg1_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &dg1_hpd_funcs;
 		else if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->hotplug_funcs.hpd_irq_setup = gen11_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &gen11_hpd_funcs;
 		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-			dev_priv->hotplug_funcs.hpd_irq_setup = bxt_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &bxt_hpd_funcs;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-			dev_priv->hotplug_funcs.hpd_irq_setup = icp_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &icp_hpd_funcs;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-			dev_priv->hotplug_funcs.hpd_irq_setup = spt_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &spt_hpd_funcs;
 		else
-			dev_priv->hotplug_funcs.hpd_irq_setup = ilk_hpd_irq_setup;
+			dev_priv->hotplug_funcs = &ilk_hpd_funcs;
 	}
 }
 
-- 
2.30.2

