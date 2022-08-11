Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D81258FEEF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F76B3D54;
	Thu, 11 Aug 2022 15:13:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EF38B3CE6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230805; x=1691766805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wi4JnM9gEtkyVI2uItACnf2XFClayq43DpZ+5hOxkec=;
 b=FdUIrV7nhKmcIa+i8NblmobTwO2gR8YaNfjYp2IEu2a80yWQ7w1xKckK
 qe+5uxI3PmLcuqsp1V4ulUMwFQm0c5xVNqrOfx0RjK0Cg0xLBAP+ZUIlk
 IGt5ibE1IEnuffa+gXvX4qETxcWr9Dw2QlevG286lt1EGln0DLfOLhqQa
 SYoKfOvrw6EY6H9Id6pffW9B9vmXPBz4qqkqSQFmqc+My4/IjsGySJ4Zf
 jQ+R0cn7rWtPtpNeQOVfD18TChMtGgueACiLHhPVzX+0zXrmDHOdUBTc9
 kzzR/3U//YInO7aPlwMUVYurSA5bIYQQdXzYkyEV6EL41EebcWMgFZaoN A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377663042"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="377663042"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="673726793"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:08:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:18 +0300
Message-Id: <4db433656df2476e337ad9b0e2db0c5704a3c8c4.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/39] drm/i915: move fdi_funcs to display.funcs
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display related members under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_fdi.c          | 8 ++++----
 drivers/gpu/drm/i915/i915_drv.h                   | 4 ----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a6843ebcca5a..7dbffaebd9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -15,6 +15,7 @@ struct intel_clock_gating_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
+struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 
@@ -69,6 +70,9 @@ struct intel_display {
 
 		/* pm display functions */
 		const struct intel_wm_funcs *wm;
+
+		/* fdi display functions */
+		const struct intel_fdi_funcs *fdi;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 67d2484afbaa..03ad5f5c8417 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -113,7 +113,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	dev_priv->fdi_funcs->fdi_link_train(crtc, crtc_state);
+	dev_priv->display.funcs.fdi->fdi_link_train(crtc, crtc_state);
 }
 
 /* units of 100MHz */
@@ -1066,11 +1066,11 @@ void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 	if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->fdi_funcs = &ilk_funcs;
+		dev_priv->display.funcs.fdi = &ilk_funcs;
 	} else if (IS_SANDYBRIDGE(dev_priv)) {
-		dev_priv->fdi_funcs = &gen6_funcs;
+		dev_priv->display.funcs.fdi = &gen6_funcs;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		dev_priv->fdi_funcs = &ivb_funcs;
+		dev_priv->display.funcs.fdi = &ivb_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 69a8cce48fc4..8a9f2bf24186 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -89,7 +89,6 @@ struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
-struct intel_fdi_funcs;
 struct intel_gmbus;
 struct intel_limit;
 struct intel_overlay;
@@ -482,9 +481,6 @@ struct drm_i915_private {
 	/* unbound hipri wq for page flips/plane updates */
 	struct workqueue_struct *flip_wq;
 
-	/* fdi display functions */
-	const struct intel_fdi_funcs *fdi_funcs;
-
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-- 
2.34.1

