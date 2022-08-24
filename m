Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D63D59FB24
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:19:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49CECB52AD;
	Wed, 24 Aug 2022 13:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04EAAB51D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347105; x=1692883105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zb3PBjT6iTuiQ55p4A3UHAtHV5uMN0GS7UDFpQVjkqk=;
 b=khhwHd/C+P/TlcBSSyKrXrbl13GMO46hXNo5Hdj76QVUY+txJTDvto+g
 ZsgsUiCtStByBsB5Z1VUzryPaYzidXluEmYhqahQyh4NxjOwmABP5byH/
 eIeddIHpbuxU2fZdARiNmZdwxas8tlocqTmJxs0CMDJ5mpYrihksWFA/P
 mWWKSxLjQ3//j/0M0mbp6bXed34dOoqahBOI2+F4jKgLqje4x3UD81bgw
 CLYyPVHfBl0rwcpZEyLPmsafOLZ/ddAAFTAmKz4hYNZ99RZskDMohY4Ym
 GUfc03BijMATTcHnnylNYCpFWj9KoGsZLsLnnyb6tlpt7CmFaQ4+AWbsb w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="355690556"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="355690556"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:18:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="752081113"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:18:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:57 +0300
Message-Id: <0697f08fda1f9541e14ce3e1678ec513bb317263.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 31/38] drm/i915: move dbuf under display
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display dbuf related members under drm_i915_private display
sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
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
index 3d2e1b14e186..b061deb21df1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -299,6 +299,13 @@ struct intel_display {
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
index 48c46ab9982b..b95fbd05ac01 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1061,14 +1061,14 @@ void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
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
@@ -1076,7 +1076,7 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	 * figure out later which slices we have and what we need.
 	 */
 	gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
-				dev_priv->dbuf.enabled_slices);
+				dev_priv->display.dbuf.enabled_slices);
 }
 
 static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index a358ce9e4bcd..c8b741dd05ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -946,7 +946,7 @@ static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
 static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 {
 	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
-	u8 enabled_dbuf_slices = dev_priv->dbuf.enabled_slices;
+	u8 enabled_dbuf_slices = dev_priv->display.dbuf.enabled_slices;
 
 	drm_WARN(&dev_priv->drm,
 		 hw_enabled_dbuf_slices != enabled_dbuf_slices,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index def782794184..aed386dce96a 100644
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
index df36b058d258..6ec48944772b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -280,13 +280,6 @@ struct drm_i915_private {
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
index c39497fa5035..8c95fbf48053 100644
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

