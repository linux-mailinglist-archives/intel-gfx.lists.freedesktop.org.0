Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D02341713B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 13:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84E2C6EE14;
	Fri, 24 Sep 2021 11:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C6FF6EE14
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 11:49:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211133867"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="211133867"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:59 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="519318133"
Received: from avanhout-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.37.153])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 04:48:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Dave Airlie <airlied@redhat.com>
Date: Fri, 24 Sep 2021 14:47:30 +0300
Message-Id: <20210924114741.15940-13-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210924114741.15940-1-jani.nikula@intel.com>
References: <20210924114741.15940-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 13/24] drm/i915: split fdi link training from
 display vtable.
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

It may make sense to merge this with display again later,
however the fdi use of the vtable is limited to only a
few generations.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fdi.c |  8 ++++----
 drivers/gpu/drm/i915/i915_drv.h          | 11 ++++++++---
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index d20669e53663..f828bebe8962 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -15,7 +15,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	dev_priv->display.fdi_link_train(crtc, crtc_state);
+	dev_priv->fdi_funcs.fdi_link_train(crtc, crtc_state);
 }
 
 /* units of 100MHz */
@@ -1017,11 +1017,11 @@ void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 	if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->display.fdi_link_train = ilk_fdi_link_train;
+		dev_priv->fdi_funcs.fdi_link_train = ilk_fdi_link_train;
 	} else if (IS_SANDYBRIDGE(dev_priv)) {
-		dev_priv->display.fdi_link_train = gen6_fdi_link_train;
+		dev_priv->fdi_funcs.fdi_link_train = gen6_fdi_link_train;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		dev_priv->display.fdi_link_train = ivb_manual_fdi_link_train;
+		dev_priv->fdi_funcs.fdi_link_train = ivb_manual_fdi_link_train;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9aff1f32676a..62a7d67cbc2e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -388,6 +388,11 @@ struct intel_hotplug_funcs {
 	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 };
 
+struct intel_fdi_funcs {
+	void (*fdi_link_train)(struct intel_crtc *crtc,
+			       const struct intel_crtc_state *crtc_state);
+};
+
 struct drm_i915_display_funcs {
 	/* Returns the active state of the crtc, and if the crtc is active,
 	 * fills out the pipe-config with the hw state. */
@@ -403,9 +408,6 @@ struct drm_i915_display_funcs {
 	void (*commit_modeset_enables)(struct intel_atomic_state *state);
 	void (*commit_modeset_disables)(struct intel_atomic_state *state);
 
-	void (*fdi_link_train)(struct intel_crtc *crtc,
-			       const struct intel_crtc_state *crtc_state);
-
 	/* clock updates for mode set */
 	/* cursor updates */
 	/* render clock increase/decrease */
@@ -985,6 +987,9 @@ struct drm_i915_private {
 	/* irq display functions */
 	struct intel_hotplug_funcs hotplug_funcs;
 
+	/* fdi display functions */
+	struct intel_fdi_funcs fdi_funcs;
+
 	/* Display functions */
 	struct drm_i915_display_funcs display;
 
-- 
2.30.2

