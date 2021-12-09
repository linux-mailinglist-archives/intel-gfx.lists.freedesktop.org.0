Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B5746EFE1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389AE10F076;
	Thu,  9 Dec 2021 16:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A1910E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 14:43:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="237916807"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="237916807"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 06:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="480360067"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 09 Dec 2021 06:43:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 16:43:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 16:43:11 +0200
Message-Id: <20211209144311.3221-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
References: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use single_enabled_crtc() in
 i9xx_update_wm()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace the ad-hoc single_enabled_crtc() thing in i9xx_update_wm()
with the real thing, just like we do in the other legacy wm functions.
We can also nuke the extra 'enabled' variable.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 26 +++++++++++---------------
 1 file changed, 11 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index baa5f9fdf17c..26b81268d948 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2355,7 +2355,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	int cwm, srwm = 1;
 	int fifo_size;
 	int planea_wm, planeb_wm;
-	struct intel_crtc *crtc, *enabled = NULL;
+	struct intel_crtc *crtc;
 
 	if (IS_I945GM(dev_priv))
 		wm_info = &i945_wm_info;
@@ -2382,7 +2382,6 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		planea_wm = intel_calculate_wm(crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
-		enabled = crtc;
 	} else {
 		planea_wm = fifo_size - wm_info->guard_size;
 		if (planea_wm > (long)wm_info->max_wm)
@@ -2410,10 +2409,6 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		planeb_wm = intel_calculate_wm(crtc->config->pixel_rate,
 					       wm_info, fifo_size, cpp,
 					       pessimal_latency_ns);
-		if (enabled == NULL)
-			enabled = crtc;
-		else
-			enabled = NULL;
 	} else {
 		planeb_wm = fifo_size - wm_info->guard_size;
 		if (planeb_wm > (long)wm_info->max_wm)
@@ -2423,14 +2418,15 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	drm_dbg_kms(&dev_priv->drm,
 		    "FIFO watermarks - A: %d, B: %d\n", planea_wm, planeb_wm);
 
-	if (IS_I915GM(dev_priv) && enabled) {
+	crtc = single_enabled_crtc(dev_priv);
+	if (IS_I915GM(dev_priv) && crtc) {
 		struct drm_i915_gem_object *obj;
 
-		obj = intel_fb_obj(enabled->base.primary->state->fb);
+		obj = intel_fb_obj(crtc->base.primary->state->fb);
 
 		/* self-refresh seems busted with untiled */
 		if (!i915_gem_object_is_tiled(obj))
-			enabled = NULL;
+			crtc = NULL;
 	}
 
 	/*
@@ -2442,16 +2438,16 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	intel_set_memory_cxsr(dev_priv, false);
 
 	/* Calc sr entries for one plane configs */
-	if (HAS_FW_BLC(dev_priv) && enabled) {
+	if (HAS_FW_BLC(dev_priv) && crtc) {
 		/* self-refresh has much higher latency */
 		static const int sr_latency_ns = 6000;
 		const struct drm_display_mode *pipe_mode =
-			&enabled->config->hw.pipe_mode;
+			&crtc->config->hw.pipe_mode;
 		const struct drm_framebuffer *fb =
-			enabled->base.primary->state->fb;
-		int pixel_rate = enabled->config->pixel_rate;
+			crtc->base.primary->state->fb;
+		int pixel_rate = crtc->config->pixel_rate;
 		int htotal = pipe_mode->crtc_htotal;
-		int width = drm_rect_width(&enabled->base.primary->state->src) >> 16;
+		int width = drm_rect_width(&crtc->base.primary->state->src) >> 16;
 		int cpp;
 		int entries;
 
@@ -2490,7 +2486,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 	intel_uncore_write(&dev_priv->uncore, FW_BLC, fwater_lo);
 	intel_uncore_write(&dev_priv->uncore, FW_BLC2, fwater_hi);
 
-	if (enabled)
+	if (crtc)
 		intel_set_memory_cxsr(dev_priv, true);
 }
 
-- 
2.32.0

