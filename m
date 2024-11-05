Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 759EA9BC6BD
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 08:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A6C310E528;
	Tue,  5 Nov 2024 07:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZGyTdz6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5D7910E528;
 Tue,  5 Nov 2024 07:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730790980; x=1762326980;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PJF8es8eRCBF+iotQytzntNbm7TyWQeMAoZ8oCX2PXo=;
 b=ZGyTdz6jVTIe0Evt2zIcyQUJDKyhSJMUbEWtuIsf9jrHZpmcFYj275ZW
 pA9e6DZdSVT8EGa0/f2GjHBG/Gh711NziAkZTHMHm8OatGMvoSgmu38mL
 NLP2aic7+Up7rZUTk0fOrVADLWBhk8wM192sEIwccfUDpBImNniIPJL6W
 u667oJqLhnC1kOltLZk0ouKU9JE0BDp2b3pPmDJfRR1FcK0FM6WvT/kWS
 nrJvzZdk+V9tDBz9gpfRq6aYUgdDYl7uWzPKgdTd9ZBE8ywVUVvPNBJAl
 gSDi+y0msvPfG0qbAK/H+Fy3ijI7h0mlNV7L/ytbQoLh7hjymH/D1H+Am Q==;
X-CSE-ConnectionGUID: yDn9SXwUQM+4OPL/yyw6Qw==
X-CSE-MsgGUID: s4pnISbtS5eFxVhiCrZqLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34449542"
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="34449542"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:20 -0800
X-CSE-ConnectionGUID: WQ3jwFxiS9yk1GvTu+56Rg==
X-CSE-MsgGUID: YG1dtlP5TeaGEN5a0FN7pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,259,1725346800"; d="scan'208";a="87835544"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO vgovind2-mobl3..)
 ([10.245.245.146])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 23:16:18 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: [PATCH 1/8] drm/i915/display: update intel_enabled_dbuf_slices_mask
 to use intel_display
Date: Tue,  5 Nov 2024 09:15:53 +0200
Message-Id: <20241105071600.235338-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241105071600.235338-1-vinod.govindapillai@intel.com>
References: <20241105071600.235338-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Update intel_enabled_dbuf_slices_mask to use intel_display instead
of drm_i915_private object. This is a prepratory patch for the next
patch in the series, where all intel_de_read calls in skl_watermarks.c
are updated to use intel_display instead of drm_i915_private.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c            | 9 +++++----
 drivers/gpu/drm/i915/display/skl_watermark.h            | 3 ++-
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 2766fd9208b0..62e0faffca40 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1090,7 +1090,7 @@ static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
 	u8 slices_mask;
 
 	dev_priv->display.dbuf.enabled_slices =
-		intel_enabled_dbuf_slices_mask(dev_priv);
+		intel_enabled_dbuf_slices_mask(&dev_priv->display);
 
 	slices_mask = BIT(DBUF_S1) | dev_priv->display.dbuf.enabled_slices;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f0131dd853de..f792db191fcf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -973,7 +973,7 @@ static bool gen9_dc_off_power_well_enabled(struct drm_i915_private *dev_priv,
 
 static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 {
-	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(dev_priv);
+	u8 hw_enabled_dbuf_slices = intel_enabled_dbuf_slices_mask(&dev_priv->display);
 	u8 enabled_dbuf_slices = dev_priv->display.dbuf.enabled_slices;
 
 	drm_WARN(&dev_priv->drm,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3b0e87edbacf..d9d7238f0fb4 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -52,13 +52,13 @@ struct skl_wm_params {
 	u32 dbuf_block_size;
 };
 
-u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
+u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
 {
 	u8 enabled_slices = 0;
 	enum dbuf_slice slice;
 
-	for_each_dbuf_slice(i915, slice) {
-		if (intel_de_read(i915, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
+	for_each_dbuf_slice(display, slice) {
+		if (intel_de_read(display, DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
 			enabled_slices |= BIT(slice);
 	}
 
@@ -3126,6 +3126,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 			   struct intel_crtc *crtc)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	struct skl_hw_state {
@@ -3149,7 +3150,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
 
-	hw_enabled_slices = intel_enabled_dbuf_slices_mask(i915);
+	hw_enabled_slices = intel_enabled_dbuf_slices_mask(display);
 
 	if (DISPLAY_VER(i915) >= 11 &&
 	    hw_enabled_slices != i915->display.dbuf.enabled_slices)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e73baec94873..990793e36272 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -17,11 +17,12 @@ struct intel_atomic_state;
 struct intel_bw_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_plane;
 struct skl_pipe_wm;
 struct skl_wm_level;
 
-u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
+u8 intel_enabled_dbuf_slices_mask(struct intel_display *display);
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
 void intel_sagv_post_plane_update(struct intel_atomic_state *state);
-- 
2.34.1

