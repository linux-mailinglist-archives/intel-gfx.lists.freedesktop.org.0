Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EA0A55130
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EAF10EA15;
	Thu,  6 Mar 2025 16:35:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bObW7EYc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69CD810EA12
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278911; x=1772814911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rkmq/kdMOqfLNZf89yA/3BTKot0bCh6UcSAFrPI0kc0=;
 b=bObW7EYcgvRqPz11X2J0/vdzJt0FapvDJ419JjCUqBwo87f2qP6YC6rR
 Uq8bUsMN5I33as8sl+uQdy6IiDeNnJjcSH5ct+Zpo8gr7RbDX6sT8W5YT
 QtEo/1ajBDstJ7AJEMVu0MHydF0OkQ4bQ8s+CsPnr/il5Gd47v7p3vISR
 EKLe6bsv94lXT+hRGs+5N0fn0yrsLLyry1ImHFfxLr8NkGIqugpTWThy1
 hmLkMbl2D8J3VVpPORJtqxLxNcaFeJ+Vb6viuDsSJw85JsjS+Gqr18Frv
 1MHQKgFo6eFe0ADHcFseONgdzkfUX30Y+hNjhJ8mkBwES8lbI5iHBnnEd A==;
X-CSE-ConnectionGUID: zpMZQBUWTXSk5b/C8r5UMg==
X-CSE-MsgGUID: thuZuZapQL6zqDSc5mFIbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704394"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704394"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:35:11 -0800
X-CSE-ConnectionGUID: aOMEY4BlTkuu5nH3CUdv1Q==
X-CSE-MsgGUID: +YQCHazoT5K/jSWzAkUVsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289223"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:35:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:35:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 15/18] drm/i915: Split wm sanitize from readout
Date: Thu,  6 Mar 2025 18:34:17 +0200
Message-ID: <20250306163420.3961-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

I'll need to move the wm readout to an earlier point in the
sequence (since the bw state readout will need ddb information
from the wm readout). But (at least for now) the wm sanitation
will need to stay put as it needs to also sanitize things for
any pipes/planes we disable later during the hw state takeover.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c         | 18 ++++--------------
 .../gpu/drm/i915/display/intel_display_core.h  |  1 +
 .../gpu/drm/i915/display/intel_modeset_setup.c |  1 +
 drivers/gpu/drm/i915/display/intel_wm.c        |  6 ++++++
 drivers/gpu/drm/i915/display/intel_wm.h        |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c   |  7 +++----
 6 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 497850a6ac81..7c80e37c1c5f 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -3902,12 +3902,6 @@ static void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void g4x_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
-{
-	g4x_wm_get_hw_state(i915);
-	g4x_wm_sanitize(i915);
-}
-
 static void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
 	struct vlv_wm_values *wm = &dev_priv->display.wm.vlv;
@@ -4055,12 +4049,6 @@ static void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
 	mutex_unlock(&dev_priv->display.wm.wm_mutex);
 }
 
-static void vlv_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
-{
-	vlv_wm_get_hw_state(i915);
-	vlv_wm_sanitize(i915);
-}
-
 /*
  * FIXME should probably kill this and improve
  * the real watermark readout/sanitation instead
@@ -4122,14 +4110,16 @@ static const struct intel_wm_funcs vlv_wm_funcs = {
 	.initial_watermarks = vlv_initial_watermarks,
 	.optimize_watermarks = vlv_optimize_watermarks,
 	.atomic_update_watermarks = vlv_atomic_update_fifo,
-	.get_hw_state = vlv_wm_get_hw_state_and_sanitize,
+	.get_hw_state = vlv_wm_get_hw_state,
+	.sanitize = vlv_wm_sanitize,
 };
 
 static const struct intel_wm_funcs g4x_wm_funcs = {
 	.compute_watermarks = g4x_compute_watermarks,
 	.initial_watermarks = g4x_initial_watermarks,
 	.optimize_watermarks = g4x_optimize_watermarks,
-	.get_hw_state = g4x_wm_get_hw_state_and_sanitize,
+	.get_hw_state = g4x_wm_get_hw_state,
+	.sanitize = g4x_wm_sanitize,
 };
 
 static const struct intel_wm_funcs pnv_wm_funcs = {
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 7360ad39b1cc..eeb7ae3eaea8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -91,6 +91,7 @@ struct intel_wm_funcs {
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct drm_i915_private *i915);
+	void (*sanitize)(struct drm_i915_private *i915);
 };
 
 struct intel_audio_state {
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 70fad9f89cea..03c0facfad7a 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -991,6 +991,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	intel_dpll_sanitize_state(display);
 
 	intel_wm_get_hw_state(i915);
+	intel_wm_sanitize(i915);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index d7dc49aecd27..f00f4cfc58e5 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -108,6 +108,12 @@ void intel_wm_get_hw_state(struct drm_i915_private *i915)
 		return i915->display.funcs.wm->get_hw_state(i915);
 }
 
+void intel_wm_sanitize(struct drm_i915_private *i915)
+{
+	if (i915->display.funcs.wm->sanitize)
+		return i915->display.funcs.wm->sanitize(i915);
+}
+
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index e97cdca89a5c..7d3a447054b3 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -25,6 +25,7 @@ void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 int intel_compute_global_watermarks(struct intel_atomic_state *state);
 void intel_wm_get_hw_state(struct drm_i915_private *i915);
+void intel_wm_sanitize(struct drm_i915_private *i915);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
 			    const struct intel_plane_state *plane_state);
 void intel_print_wm_latency(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index da7ffcfd9478..0bd7aa3b2877 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3837,10 +3837,8 @@ static void skl_dbuf_sanitize(struct drm_i915_private *i915)
 	}
 }
 
-static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i915)
+static void skl_wm_sanitize(struct drm_i915_private *i915)
 {
-	skl_wm_get_hw_state(i915);
-
 	skl_mbus_sanitize(i915);
 	skl_dbuf_sanitize(i915);
 }
@@ -4016,7 +4014,8 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 static const struct intel_wm_funcs skl_wm_funcs = {
 	.compute_global_watermarks = skl_compute_wm,
-	.get_hw_state = skl_wm_get_hw_state_and_sanitize,
+	.get_hw_state = skl_wm_get_hw_state,
+	.sanitize = skl_wm_sanitize,
 };
 
 void skl_wm_init(struct drm_i915_private *i915)
-- 
2.45.3

