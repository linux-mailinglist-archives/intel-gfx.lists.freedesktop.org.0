Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F5E58FEFA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D368B3DC2;
	Thu, 11 Aug 2022 15:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F20B3DB8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230865; x=1691766865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yj/Ee5OAmTuLfAEkUEmLBEOcZDFRCAlgvoM0qKCBPgs=;
 b=ND5uTBuMWEoVVKLGyJXX/NXolEdLXWZIMJGYBJSpALvAyhHA4ZIuxjQs
 nMu+igFS4yhMqzT36atfmGvgFBPWBqlM1jgYx+sjFy6SIyLukwvxHQYoy
 l6TeYggLLFoONhvOyw2svaeU9VvL9blFGwZljzAxqQT0/b9U8S8GtwSUy
 3CzZb1Fz6AtFDGPuqKfcqFvhCj3Ol1fpD7dd731uMzZ+Ti/r//LW+NRKh
 bcLwsektKakflva3TW0V1fV1qnWg+xCZVu86Uy1lzJqCiHEpySjzLKASU
 oRWABxiMUjnv4P2LOjyGvWvqkfYTayZJqU7QWjkzJktIw88gofl/9AwiV w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="291373265"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="291373265"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="694923475"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:09:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:30 +0300
Message-Id: <d5c0376475b3aacba392a243df00416dda32ec5e.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 19/39] drm/i915: move and group sagv under
 display.sagv
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
 drivers/gpu/drm/i915/display/intel_bw.c       | 10 ++---
 .../gpu/drm/i915/display/intel_display_core.h | 11 ++++++
 drivers/gpu/drm/i915/i915_drv.h               |  9 -----
 drivers/gpu/drm/i915/intel_pm.c               | 38 +++++++++----------
 4 files changed, 35 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 79269d2c476b..4e60ad847eb0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -346,9 +346,9 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->sagv_status = I915_SAGV_ENABLED;
+		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -456,9 +456,9 @@ static int tgl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
 	 * as it will fail and pointless anyway.
 	 */
 	if (qi.num_points == 1)
-		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 	else
-		dev_priv->sagv_status = I915_SAGV_ENABLED;
+		dev_priv->display.sagv.status = I915_SAGV_ENABLED;
 
 	return 0;
 }
@@ -485,7 +485,7 @@ static void dg2_get_bw_info(struct drm_i915_private *i915)
 		bi->deratedbw[0] = deratedbw;
 	}
 
-	i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
+	i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 }
 
 static unsigned int icl_max_bw(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index a5cd3a3d440e..ab68c8799d1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -249,6 +249,17 @@ struct intel_display {
 		struct mutex mutex;
 	} pps;
 
+	struct {
+		enum {
+			I915_SAGV_UNKNOWN = 0,
+			I915_SAGV_DISABLED,
+			I915_SAGV_ENABLED,
+			I915_SAGV_NOT_CONTROLLED
+		} status;
+
+		u32 block_time_us;
+	} sagv;
+
 	/* Grouping using named structs. Keep sorted. */
 	struct intel_audio audio;
 	struct intel_dmc dmc;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3637ee4ca088..daa6266ef127 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -447,15 +447,6 @@ struct drm_i915_private {
 	struct i915_suspend_saved_registers regfile;
 	struct vlv_s0ix_state *vlv_s0ix_state;
 
-	enum {
-		I915_SAGV_UNKNOWN = 0,
-		I915_SAGV_DISABLED,
-		I915_SAGV_ENABLED,
-		I915_SAGV_NOT_CONTROLLED
-	} sagv_status;
-
-	u32 sagv_block_time_us;
-
 	struct dram_info {
 		bool wm_lv_0_adjust_needed;
 		u8 num_channels;
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 14134e57034e..f72481e85ebd 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3669,7 +3669,7 @@ static bool
 intel_has_sagv(struct drm_i915_private *dev_priv)
 {
 	return DISPLAY_VER(dev_priv) >= 9 && !IS_LP(dev_priv) &&
-		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display.sagv.status != I915_SAGV_NOT_CONTROLLED;
 }
 
 static u32
@@ -3700,7 +3700,7 @@ intel_sagv_block_time(struct drm_i915_private *dev_priv)
 static void intel_sagv_init(struct drm_i915_private *i915)
 {
 	if (!intel_has_sagv(i915))
-		i915->sagv_status = I915_SAGV_NOT_CONTROLLED;
+		i915->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 
 	/*
 	 * Probe to see if we have working SAGV control.
@@ -3709,21 +3709,21 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) < 11)
 		skl_sagv_disable(i915);
 
-	drm_WARN_ON(&i915->drm, i915->sagv_status == I915_SAGV_UNKNOWN);
+	drm_WARN_ON(&i915->drm, i915->display.sagv.status == I915_SAGV_UNKNOWN);
 
-	i915->sagv_block_time_us = intel_sagv_block_time(i915);
+	i915->display.sagv.block_time_us = intel_sagv_block_time(i915);
 
 	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
-		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
+		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us);
 
 	/* avoid overflow when adding with wm0 latency/etc. */
-	if (drm_WARN(&i915->drm, i915->sagv_block_time_us > U16_MAX,
+	if (drm_WARN(&i915->drm, i915->display.sagv.block_time_us > U16_MAX,
 		     "Excessive SAGV block time %u, ignoring\n",
-		     i915->sagv_block_time_us))
-		i915->sagv_block_time_us = 0;
+		     i915->display.sagv.block_time_us))
+		i915->display.sagv.block_time_us = 0;
 
 	if (!intel_has_sagv(i915))
-		i915->sagv_block_time_us = 0;
+		i915->display.sagv.block_time_us = 0;
 }
 
 /*
@@ -3744,7 +3744,7 @@ static void skl_sagv_enable(struct drm_i915_private *dev_priv)
 	if (!intel_has_sagv(dev_priv))
 		return;
 
-	if (dev_priv->sagv_status == I915_SAGV_ENABLED)
+	if (dev_priv->display.sagv.status == I915_SAGV_ENABLED)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
@@ -3759,14 +3759,14 @@ static void skl_sagv_enable(struct drm_i915_private *dev_priv)
 	 */
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
 		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
-		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
 		drm_err(&dev_priv->drm, "Failed to enable SAGV\n");
 		return;
 	}
 
-	dev_priv->sagv_status = I915_SAGV_ENABLED;
+	dev_priv->display.sagv.status = I915_SAGV_ENABLED;
 }
 
 static void skl_sagv_disable(struct drm_i915_private *dev_priv)
@@ -3776,7 +3776,7 @@ static void skl_sagv_disable(struct drm_i915_private *dev_priv)
 	if (!intel_has_sagv(dev_priv))
 		return;
 
-	if (dev_priv->sagv_status == I915_SAGV_DISABLED)
+	if (dev_priv->display.sagv.status == I915_SAGV_DISABLED)
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
@@ -3791,14 +3791,14 @@ static void skl_sagv_disable(struct drm_i915_private *dev_priv)
 	 */
 	if (IS_SKYLAKE(dev_priv) && ret == -ENXIO) {
 		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
-		dev_priv->sagv_status = I915_SAGV_NOT_CONTROLLED;
+		dev_priv->display.sagv.status = I915_SAGV_NOT_CONTROLLED;
 		return;
 	} else if (ret < 0) {
 		drm_err(&dev_priv->drm, "Failed to disable SAGV (%d)\n", ret);
 		return;
 	}
 
-	dev_priv->sagv_status = I915_SAGV_DISABLED;
+	dev_priv->display.sagv.status = I915_SAGV_DISABLED;
 }
 
 static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
@@ -5560,8 +5560,8 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
 
-	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->sagv_block_time_us)
-		result->can_sagv = latency >= dev_priv->sagv_block_time_us;
+	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->display.sagv.block_time_us)
+		result->can_sagv = latency >= dev_priv->display.sagv.block_time_us;
 }
 
 static void
@@ -5595,8 +5595,8 @@ static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_state,
 	struct skl_wm_level *levels = plane_wm->wm;
 	unsigned int latency = 0;
 
-	if (dev_priv->sagv_block_time_us)
-		latency = dev_priv->sagv_block_time_us + dev_priv->display.wm.skl_latency[0];
+	if (dev_priv->display.sagv.block_time_us)
+		latency = dev_priv->display.sagv.block_time_us + dev_priv->display.wm.skl_latency[0];
 
 	skl_compute_plane_wm(crtc_state, plane, 0, latency,
 			     wm_params, &levels[0],
-- 
2.34.1

