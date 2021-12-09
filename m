Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1997146EF88
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:01:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FB510E631;
	Thu,  9 Dec 2021 16:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8188E10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 14:43:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="225377885"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="225377885"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 06:43:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="543613916"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 09 Dec 2021 06:43:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 16:43:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 16:43:10 +0200
Message-Id: <20211209144311.3221-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
References: <20211209144311.3221-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Use the correct plane source
 width in watermark calculations
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

Currently we sometimes use the plane destination width, or just the
pipe src width as the plane source width in the watermark calculatons.
Use the correct thing everywhere.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index b5d5b625a321..baa5f9fdf17c 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -1175,8 +1175,7 @@ static u16 g4x_compute_wm(const struct intel_crtc_state *crtc_state,
 
 	pixel_rate = crtc_state->pixel_rate;
 	htotal = pipe_mode->crtc_htotal;
-
-	width = drm_rect_width(&plane_state->uapi.dst);
+	width = drm_rect_width(&plane_state->uapi.src) >> 16;
 
 	if (plane->id == PLANE_CURSOR) {
 		wm = intel_wm_method2(pixel_rate, htotal, width, cpp, latency);
@@ -1683,7 +1682,7 @@ static u16 vlv_compute_wm_level(const struct intel_crtc_state *crtc_state,
 	cpp = plane_state->hw.fb->format->cpp[0];
 	pixel_rate = crtc_state->pixel_rate;
 	htotal = pipe_mode->crtc_htotal;
-	width = crtc_state->pipe_src_w;
+	width = drm_rect_width(&plane_state->uapi.src) >> 16;
 
 	if (plane->id == PLANE_CURSOR) {
 		/*
@@ -2277,12 +2276,12 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
 			crtc->base.primary->state->fb;
 		int pixel_rate = crtc->config->pixel_rate;
 		int htotal = pipe_mode->crtc_htotal;
-		int hdisplay = crtc->config->pipe_src_w;
+		int width = drm_rect_width(&crtc->base.primary->state->src) >> 16;
 		int cpp = fb->format->cpp[0];
 		int entries;
 
 		entries = intel_wm_method2(pixel_rate, htotal,
-					   hdisplay, cpp, sr_latency_ns / 100);
+					   width, cpp, sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, I915_FIFO_LINE_SIZE);
 		srwm = I965_FIFO_SIZE - entries;
 		if (srwm < 0)
@@ -2452,7 +2451,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 			enabled->base.primary->state->fb;
 		int pixel_rate = enabled->config->pixel_rate;
 		int htotal = pipe_mode->crtc_htotal;
-		int hdisplay = enabled->config->pipe_src_w;
+		int width = drm_rect_width(&enabled->base.primary->state->src) >> 16;
 		int cpp;
 		int entries;
 
@@ -2461,7 +2460,7 @@ static void i9xx_update_wm(struct drm_i915_private *dev_priv)
 		else
 			cpp = fb->format->cpp[0];
 
-		entries = intel_wm_method2(pixel_rate, htotal, hdisplay, cpp,
+		entries = intel_wm_method2(pixel_rate, htotal, width, cpp,
 					   sr_latency_ns / 100);
 		entries = DIV_ROUND_UP(entries, wm_info->cacheline_size);
 		drm_dbg_kms(&dev_priv->drm,
@@ -2596,7 +2595,7 @@ static u32 ilk_compute_pri_wm(const struct intel_crtc_state *crtc_state,
 
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
 				 crtc_state->hw.pipe_mode.crtc_htotal,
-				 drm_rect_width(&plane_state->uapi.dst),
+				 drm_rect_width(&plane_state->uapi.src) >> 16,
 				 cpp, mem_value);
 
 	return min(method1, method2);
@@ -2624,7 +2623,7 @@ static u32 ilk_compute_spr_wm(const struct intel_crtc_state *crtc_state,
 	method1 = ilk_wm_method1(crtc_state->pixel_rate, cpp, mem_value);
 	method2 = ilk_wm_method2(crtc_state->pixel_rate,
 				 crtc_state->hw.pipe_mode.crtc_htotal,
-				 drm_rect_width(&plane_state->uapi.dst),
+				 drm_rect_width(&plane_state->uapi.src) >> 16,
 				 cpp, mem_value);
 	return min(method1, method2);
 }
-- 
2.32.0

