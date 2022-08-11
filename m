Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B49D858FF04
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 17:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90BD5B329C;
	Thu, 11 Aug 2022 15:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED7CB3DA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 15:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660230911; x=1691766911;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Blc4EGKvawgkpuEiZ9/8K9yUcOQNwf2W72+pn6xo50=;
 b=cgf86QyvvXrvqmdk6NRfcFtf71r/Fg+4JLdCEllab4lLihVetUoX6x8I
 708t59AL+uf5Y1n3FGKfTLrxVtQr82qIfykDdpKiYHKZu7KVPWLlVPKUh
 lN9IJTDArcBtL3tohcFMm6fIgZZ2LvYkYR8VLYe5pECfT1hoV6hm3274L
 UirAExo6kW5K97YPYSuTJHblUs9C6Sa5rj1Z/cikkESWji72+7SzbBKR4
 EMJxdQPFKG2OAKHD94Vhg2cTNxgyQ2SI7N+rcRMRQB03giRXa73lOgiW4
 LG5gLIM7dEBZsbQ2/DbUQbtjeW9RHhdtpQX9+wVp03Gcw7VwYTd35azmD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="271758102"
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="271758102"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,230,1654585200"; d="scan'208";a="602197833"
Received: from gdogaru-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.102])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 08:10:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 18:07:43 +0300
Message-Id: <9da71a8354585be0a2cb3dedb91501cf15130bdb.1660230121.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660230121.git.jani.nikula@intel.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 32/39] drm/i915: move dbuf under display
 sub-struct
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
 drivers/gpu/drm/i915/display/intel_display_core.h  |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display_power.c |  6 +++---
 .../drm/i915/display/intel_display_power_well.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  4 ++--
 drivers/gpu/drm/i915/i915_drv.h                    |  7 -------
 drivers/gpu/drm/i915/intel_pm.c                    | 14 +++++++-------
 drivers/gpu/drm/i915/intel_pm.h                    |  4 ++--
 7 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index f3fc69d4b7e0..f942d156026a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -301,6 +301,13 @@ struct intel_display {
 		unsigned int max_cdclk_freq;
 	} cdclk;
 
+	struct {
+		/* The current hardware dbuf configuration */
+		u8 enabled_slices;
+
+		struct intel_global_obj obj;
+	} dbuf;
+
 	struct {
 		/* VLV/CHV/BXT/GLK DSI MMIO register base address */
 		u32 mmio_base;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9960b7f59146..3e2f4a3d03a4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1060,14 +1060,14 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 	for_each_dbuf_slice(dev_priv, slice)
 		gen9_dbuf_slice_set(dev_priv, slice, req_slices & BIT(slice));
 
-	dev_priv->dbuf.enabled_slices = req_slices;
+	dev_priv->display.dbuf.enabled_slices = req_slices;
 
 	mutex_unlock(&power_domains->lock);
 }
 
 static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 {
-	dev_priv->dbuf.enabled_slices =
+	dev_priv->display.dbuf.enabled_slices =
 		intel_enabled_dbuf_slices_mask(dev_priv);
 
 	/*
@@ -1075,7 +1075,7 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	 * figure out later which slices we have and what we need.
 	 */
 	gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
-				dev_priv->dbuf.enabled_slices);
+				dev_priv->display.dbuf.enabled_slices);
 }
 
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index bc8cf0ae623b..06569fc31493 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -945,7 +945,7 @@ static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
 static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 {
 	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
-	u8 enabled_dbuf_slices = dev_priv->dbuf.enabled_slices;
+	u8 enabled_dbuf_slices = dev_priv->display.dbuf.enabled_slices;
 
 	drm_WARN(&dev_priv->drm,
 		 hw_enabled_dbuf_slices != enabled_dbuf_slices,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 6efbbb85c8ed..7c75ad1b88a0 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -34,7 +34,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->dbuf.obj.state);
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc_state *crtc_state =
 		to_intel_crtc_state(crtc->base.state);
 	struct intel_plane *plane;
@@ -417,7 +417,7 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
 	struct intel_cdclk_state *cdclk_state =
 		to_intel_cdclk_state(i915->display.cdclk.obj.state);
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->dbuf.obj.state);
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	enum pipe pipe;
 	struct intel_crtc *crtc;
 	struct intel_encoder *encoder;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index acc04bf58be9..71ed89e91e88 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -279,13 +279,6 @@ struct drm_i915_private {
 	unsigned int hpll_freq;
 	unsigned int czclk_freq;
 
-	struct {
-		/* The current hardware dbuf configuration */
-		u8 enabled_slices;
-
-		struct intel_global_obj obj;
-	} dbuf;
-
 	/**
 	 * wq - Driver workqueue for GEM.
 	 *
diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 89eea3f9dd72..5b78147081b9 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -6546,7 +6546,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 {
 	struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
+		to_intel_dbuf_state(dev_priv->display.dbuf.obj.state);
 	struct intel_crtc *crtc;
 
 	if (HAS_MBUS_JOINING(dev_priv))
@@ -6602,13 +6602,13 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
 			    str_yes_no(dbuf_state->joined_mbus));
 	}
 
-	dbuf_state->enabled_slices = dev_priv->dbuf.enabled_slices;
+	dbuf_state->enabled_slices = dev_priv->display.dbuf.enabled_slices;
 }
 
 static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
 {
 	const struct intel_dbuf_state *dbuf_state =
-		to_intel_dbuf_state(i915->dbuf.obj.state);
+		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
 	struct intel_crtc *crtc;
 
@@ -7194,10 +7194,10 @@ void intel_wm_state_verify(struct intel_crtc *crtc,
 	hw_enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
 
 	if (DISPLAY_VER(dev_priv) >= 11 &&
-	    hw_enabled_slices != dev_priv->dbuf.enabled_slices)
+	    hw_enabled_slices != dev_priv->display.dbuf.enabled_slices)
 		drm_err(&dev_priv->drm,
 			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
-			dev_priv->dbuf.enabled_slices,
+			dev_priv->display.dbuf.enabled_slices,
 			hw_enabled_slices);
 
 	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
@@ -8314,7 +8314,7 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_global_state *dbuf_state;
 
-	dbuf_state = intel_atomic_get_global_obj_state(state, &dev_priv->dbuf.obj);
+	dbuf_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.dbuf.obj);
 	if (IS_ERR(dbuf_state))
 		return ERR_CAST(dbuf_state);
 
@@ -8329,7 +8329,7 @@ int intel_dbuf_init(struct drm_i915_private *dev_priv)
 	if (!dbuf_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->dbuf.obj,
+	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.dbuf.obj,
 				     &dbuf_state->base, &intel_dbuf_funcs);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
index 945503ae493e..3ee71831d1a4 100644
--- a/drivers/gpu/drm/i915/intel_pm.h
+++ b/drivers/gpu/drm/i915/intel_pm.h
@@ -77,9 +77,9 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
 
 #define to_intel_dbuf_state(x) container_of((x), struct intel_dbuf_state, base)
 #define intel_atomic_get_old_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
 #define intel_atomic_get_new_dbuf_state(state) \
-	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.dbuf.obj))
 
 int intel_dbuf_init(struct drm_i915_private *dev_priv);
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
-- 
2.34.1

