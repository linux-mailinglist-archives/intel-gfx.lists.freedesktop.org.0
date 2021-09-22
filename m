Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D40AB414BF9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 16:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7EF6EC01;
	Wed, 22 Sep 2021 14:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93C566EC01
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Sep 2021 14:31:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10114"; a="223252310"
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="223252310"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:03 -0700
X-IronPort-AV: E=Sophos;i="5.85,314,1624345200"; d="scan'208";a="550270409"
Received: from vidyaram-mobl1.gar.corp.intel.com (HELO localhost)
 ([10.251.218.73])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 07:31:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Wed, 22 Sep 2021 17:29:37 +0300
Message-Id: <f279d2de59a6a81bf4781d68c6f0af99681cb79c.1632320821.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632320821.git.jani.nikula@intel.com>
References: <cover.1632320821.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/24] drm/i915: split fdi link training from
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

