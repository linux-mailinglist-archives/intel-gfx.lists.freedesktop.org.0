Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0398D41BA9E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 00:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352896E9C2;
	Tue, 28 Sep 2021 22:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04DF56E9C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Sep 2021 22:58:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10121"; a="212074122"
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="212074122"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2021 15:58:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,330,1624345200"; d="scan'208";a="519320603"
Received: from pop-mobl1.ger.corp.intel.com (HELO localhost) ([10.249.36.249])
 by fmsmga008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Sep 2021 15:58:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@gmail.com>, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Wed, 29 Sep 2021 01:57:46 +0300
Message-Id: <07523b1e46cd10adb2991ed4d2619b542a48c1ce.1632869550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1632869550.git.jani.nikula@intel.com>
References: <cover.1632869550.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/24] drm/i915/pm: drop get_fifo_size vfunc.
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

The i845_update_wm code was always calling the i845 variant,
and the i9xx_update_wm had only a choice between i830 and i9xx
paths, hardly worth the vfunc overhead.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h |  2 --
 drivers/gpu/drm/i915/intel_pm.c | 20 +++++++++++---------
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 804c2a470e94..db0aa5bb4d18 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -330,8 +330,6 @@ struct drm_i915_display_funcs {
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe);
 	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
-	int (*get_fifo_size)(struct drm_i915_private *dev_priv,
-			     enum i9xx_plane_id i9xx_plane);
 	int (*compute_pipe_wm)(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 97b68bbbc689..0e0309733c79 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -2342,7 +2342,10 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 	else
 		wm_info = &i830_a_wm_info;
 
-	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_A);
+	if (DISPLAY_VER(dev_priv) == 2)
+		fifo_size = i830_get_fifo_size(dev_priv, PLANE_A);
+	else
+		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_A);
 	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_A);
 	if (intel_crtc_active(crtc)) {
 		const struct drm_display_mode *pipe_mode =
@@ -2369,7 +2372,10 @@ static void i9xx_update_wm(struct intel_crtc *unused_crtc)
 	if (DISPLAY_VER(dev_priv) == 2)
 		wm_info = &i830_bc_wm_info;
 
-	fifo_size = dev_priv->display.get_fifo_size(dev_priv, PLANE_B);
+	if (DISPLAY_VER(dev_priv) == 2)
+		fifo_size = i830_get_fifo_size(dev_priv, PLANE_B);
+	else
+		fifo_size = i9xx_get_fifo_size(dev_priv, PLANE_B);
 	crtc = intel_get_crtc_for_plane(dev_priv, PLANE_B);
 	if (intel_crtc_active(crtc)) {
 		const struct drm_display_mode *pipe_mode =
@@ -2485,7 +2491,7 @@ static void i845_update_wm(struct intel_crtc *unused_crtc)
 	pipe_mode = &crtc->config->hw.pipe_mode;
 	planea_wm = intel_calculate_wm(pipe_mode->crtc_clock,
 				       &i845_wm_info,
-				       dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
+				       i845_get_fifo_size(dev_priv, PLANE_A),
 				       4, pessimal_latency_ns);
 	fwater_lo = intel_uncore_read(&dev_priv->uncore, FW_BLC) & ~0xfff;
 	fwater_lo |= (3<<8) | planea_wm;
@@ -8052,15 +8058,11 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 		dev_priv->display.update_wm = i965_update_wm;
 	} else if (DISPLAY_VER(dev_priv) == 3) {
 		dev_priv->display.update_wm = i9xx_update_wm;
-		dev_priv->display.get_fifo_size = i9xx_get_fifo_size;
 	} else if (DISPLAY_VER(dev_priv) == 2) {
-		if (INTEL_NUM_PIPES(dev_priv) == 1) {
+		if (INTEL_NUM_PIPES(dev_priv) == 1)
 			dev_priv->display.update_wm = i845_update_wm;
-			dev_priv->display.get_fifo_size = i845_get_fifo_size;
-		} else {
+		else
 			dev_priv->display.update_wm = i9xx_update_wm;
-			dev_priv->display.get_fifo_size = i830_get_fifo_size;
-		}
 	} else {
 		drm_err(&dev_priv->drm,
 			"unexpected fall-through in %s\n", __func__);
-- 
2.30.2

