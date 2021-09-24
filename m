Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F79D41713A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:48:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 966996EE11;
	Fri, 24 Sep 2021 11:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 746756EE11
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:48:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="222169927"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="222169927"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="475972950"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:29 +0300
Message-Id: <20210924114741.15940-12-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 12/24] drm/i915: split irq hotplug function from
 display vtable
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

This provide a service from irq to display, so make it separate

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hotplug.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h              |  9 ++++++++-
 drivers/gpu/drm/i915/i915_irq.c              | 14 +++++++-------
 3 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 47c85ac97c87..05f76aba4f8a 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -215,8 +215,8 @@ intel_hpd_irq_storm_switch_to_polling(struct drm_i915_private *dev_priv)
 
 static void intel_hpd_irq_setup(struct drm_i915_private *i915)
 {
-	if (i915->display_irqs_enabled && i915->display.hpd_irq_setup)
-		i915->display.hpd_irq_setup(i915);
+	if (i915->display_irqs_enabled && i915->hotplug_funcs.hpd_irq_setup)
+		i915->hotplug_funcs.hpd_irq_setup(i915);
 }
 
 static void intel_hpd_irq_storm_reenable_work(struct work_struct *work)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b0715d51be32..9aff1f32676a 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -384,6 +384,10 @@ struct intel_cdclk_funcs {
 	u8 (*calc_voltage_level)(int cdclk);
 };
 
+struct intel_hotplug_funcs {
+	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
+};
+
 struct drm_i915_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
@@ -401,7 +405,7 @@ struct drm_i915_display_funcs {
 
 	void (*fdi_link_train)(struct intel_crtc *crtc,
 			       const struct intel_crtc_state *crtc_state);
-	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
+
 	/* clock updates for mode set */
 	/* cursor updates */
 	/* render clock increase/decrease */
@@ -978,6 +982,9 @@ struct drm_i915_private {
 	/* pm display functions */
 	struct drm_i915_wm_disp_funcs wm_disp;
 
+	/* irq display functions */
+	struct intel_hotplug_funcs hotplug_funcs;
+
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 0a1681384c84..c35065f8f429 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -4395,20 +4395,20 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
 
 	if (HAS_GMCH(dev_priv)) {
 		if (I915_HAS_HOTPLUG(dev_priv))
-			dev_priv->display.hpd_irq_setup = i915_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = i915_hpd_irq_setup;
 	} else {
 		if (HAS_PCH_DG1(dev_priv))
-			dev_priv->display.hpd_irq_setup = dg1_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = dg1_hpd_irq_setup;
 		else if (DISPLAY_VER(dev_priv) >= 11)
-			dev_priv->display.hpd_irq_setup = gen11_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = gen11_hpd_irq_setup;
 		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-			dev_priv->display.hpd_irq_setup = bxt_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = bxt_hpd_irq_setup;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-			dev_priv->display.hpd_irq_setup = icp_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = icp_hpd_irq_setup;
 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
-			dev_priv->display.hpd_irq_setup = spt_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = spt_hpd_irq_setup;
 		else
-			dev_priv->display.hpd_irq_setup = ilk_hpd_irq_setup;
+			dev_priv->hotplug_funcs.hpd_irq_setup = ilk_hpd_irq_setup;
 	}
 }
 
-- 
2.30.2

