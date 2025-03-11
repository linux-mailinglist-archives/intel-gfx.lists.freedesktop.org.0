Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98000A5CB8F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 18:06:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D858C10E5EC;
	Tue, 11 Mar 2025 17:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzaYhIH7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA12710E5CD;
 Tue, 11 Mar 2025 17:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741712756; x=1773248756;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=msGPXD+bykrzmTsUGWZXZUJftW0bb5quVkem370FWn0=;
 b=lzaYhIH7bXXufynjvpMp5EPHRqMmi0OlzRWel1WaZ6Eq6oqgKvC+FXR2
 +rDMUUX/PC9E/K0PRxzvP/X8LpZKTkm5H5+6gmOMaX3kmtlRGc0sfGoTL
 7L17UaSOU0Lm0N5TeGOgEcKfk2Nj7cUHNjItTgYgDuT1LwYFBTTIwLGnC
 TzApkbzrIFRljbY5IXLUX3lN03u0SaWYyi5mtFy0MwEgcj/Y/waOvW2Wc
 1I9EzsBn37421YsmbmDpNJ5zgSp+W/uz6lO7Vo4a1jgBJeA5/HgwGTHVH
 rrqytmYbApC7zxrOY/vTLKaINPBkKffWe357xengEii0sIAZoG+fnW8lS w==;
X-CSE-ConnectionGUID: Gy1SE0XmSce6w7Ps+GKJ1w==
X-CSE-MsgGUID: zBfe/0N6Sru/BNqH6UjdVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53405665"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="53405665"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:56 -0700
X-CSE-ConnectionGUID: FVl3DfGjRFmpBTLwqxom9g==
X-CSE-MsgGUID: KisvGi72RTusPaNuo73dcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="157581930"
Received: from lstrano-mobl6.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 10:05:55 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 11 Mar 2025 14:04:51 -0300
Subject: [PATCH v5 2/3] drm/i915/display: Convert intel_bw.c externally to
 intel_display
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250311-xe3lpd-bandwidth-update-v5-2-a95a9d90ad71@intel.com>
References: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
In-Reply-To: <20250311-xe3lpd-bandwidth-update-v5-0-a95a9d90ad71@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>
X-Mailer: b4 0.14.2
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

We already have internal interface for intel_bw.c converted to use
intel_display. Now convert the external interface as well.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c            | 25 +++++++++-------------
 drivers/gpu/drm/i915/display/intel_bw.h            |  9 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  3 +--
 .../gpu/drm/i915/display/intel_display_driver.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c       | 10 +++++----
 drivers/gpu/drm/i915/i915_driver.c                 |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c            |  2 +-
 7 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 6f805af32926d3608929655de97699747d7a5798..bda080d9ed4cfd1804fab818ac489dbe0bfaf640 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -151,17 +151,17 @@ static bool is_sagv_enabled(struct intel_display *display, u16 points_mask)
 			      ICL_PCODE_REQ_QGV_PT_MASK);
 }
 
-int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
+int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 
 	if (DISPLAY_VER(display) >= 14)
 		return 0;
 
 	/* bspec says to keep retrying for at least 1 ms */
-	ret = skl_pcode_request(&dev_priv->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
+	ret = skl_pcode_request(&i915->uncore, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
 				points_mask,
 				ICL_PCODE_REP_QGV_MASK | ADLS_PCODE_REP_PSF_MASK,
 				ICL_PCODE_REP_QGV_SAFE | ADLS_PCODE_REP_PSF_SAFE,
@@ -747,10 +747,8 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
 	return display->bw.max[idx].deratedbw[qgv_point];
 }
 
-void intel_bw_init_hw(struct drm_i915_private *dev_priv)
+void intel_bw_init_hw(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
-
 	if (!HAS_DISPLAY(display))
 		return;
 
@@ -940,7 +938,6 @@ static unsigned int icl_max_bw_psf_gv_point_mask(struct intel_display *display)
 static void icl_force_disable_sagv(struct intel_display *display,
 				   struct intel_bw_state *bw_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int qgv_points = icl_max_bw_qgv_point_mask(display, 0);
 	unsigned int psf_points = icl_max_bw_psf_gv_point_mask(display);
 
@@ -951,7 +948,7 @@ static void icl_force_disable_sagv(struct intel_display *display,
 	drm_dbg_kms(display->drm, "Forcing SAGV disable: mask 0x%x\n",
 		    bw_state->qgv_points_mask);
 
-	icl_pcode_restrict_qgv_points(i915, bw_state->qgv_points_mask);
+	icl_pcode_restrict_qgv_points(display, bw_state->qgv_points_mask);
 }
 
 static int mtl_find_qgv_points(struct intel_display *display,
@@ -1244,10 +1241,9 @@ intel_bw_dbuf_min_cdclk(struct intel_display *display,
 	return DIV_ROUND_UP(total_max_bw, 64);
 }
 
-int intel_bw_min_cdclk(struct drm_i915_private *i915,
+int intel_bw_min_cdclk(struct intel_display *display,
 		       const struct intel_bw_state *bw_state)
 {
-	struct intel_display *display = &i915->display;
 	enum pipe pipe;
 	int min_cdclk;
 
@@ -1263,7 +1259,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	struct intel_bw_state *new_bw_state = NULL;
 	const struct intel_bw_state *old_bw_state = NULL;
 	const struct intel_cdclk_state *cdclk_state;
@@ -1297,8 +1292,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			return ret;
 	}
 
-	old_min_cdclk = intel_bw_min_cdclk(dev_priv, old_bw_state);
-	new_min_cdclk = intel_bw_min_cdclk(dev_priv, new_bw_state);
+	old_min_cdclk = intel_bw_min_cdclk(display, old_bw_state);
+	new_min_cdclk = intel_bw_min_cdclk(display, new_bw_state);
 
 	/*
 	 * No need to check against the cdclk state if
@@ -1501,9 +1496,9 @@ static const struct intel_global_state_funcs intel_bw_funcs = {
 	.atomic_destroy_state = intel_bw_destroy_state,
 };
 
-int intel_bw_init(struct drm_i915_private *i915)
+int intel_bw_init(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_bw_state *state;
 
 	state = kzalloc(sizeof(*state), GFP_KERNEL);
diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
index 3313e4eac4f00dc5be0a290219c488216a2ae1f8..c18126c83d2e458daaaef0cda82be46974c5d500 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.h
+++ b/drivers/gpu/drm/i915/display/intel_bw.h
@@ -12,7 +12,6 @@
 #include "intel_display_power.h"
 #include "intel_global_state.h"
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
@@ -72,14 +71,14 @@ intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
 struct intel_bw_state *
 intel_atomic_get_bw_state(struct intel_atomic_state *state);
 
-void intel_bw_init_hw(struct drm_i915_private *dev_priv);
-int intel_bw_init(struct drm_i915_private *dev_priv);
+void intel_bw_init_hw(struct intel_display *display);
+int intel_bw_init(struct intel_display *display);
 int intel_bw_atomic_check(struct intel_atomic_state *state);
-int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
+int icl_pcode_restrict_qgv_points(struct intel_display *display,
 				  u32 points_mask);
 int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
 			    bool *need_cdclk_calc);
-int intel_bw_min_cdclk(struct drm_i915_private *i915,
+int intel_bw_min_cdclk(struct intel_display *display,
 		       const struct intel_bw_state *bw_state);
 void intel_bw_update_hw_state(struct intel_display *display);
 void intel_bw_crtc_disable_noatomic(struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 2a8749a0213e74dbd5cf5f8c94ff5e32226c45fe..984fd9f98c9f77777f903456f5838179a774af5e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2808,7 +2808,6 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	const struct intel_bw_state *bw_state;
@@ -2836,7 +2835,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 
 	bw_state = intel_atomic_get_new_bw_state(state);
 	if (bw_state) {
-		min_cdclk = intel_bw_min_cdclk(dev_priv, bw_state);
+		min_cdclk = intel_bw_min_cdclk(display, bw_state);
 
 		if (cdclk_state->bw_min_cdclk != min_cdclk) {
 			int ret;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 31740a677dd807a5cffaad3696268e22b829b70a..5ad2f4090a2db41f984ab3dc0f64e608f0b61fb4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -259,7 +259,7 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
-	ret = intel_bw_init(i915);
+	ret = intel_bw_init(display);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2d0de1c63308fc293e7f0f13ed6489b18928bf58..008919d4d3792ba1ff38c70418c48241aafe1796 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -249,7 +249,8 @@ static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
 
 static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bw_state *old_bw_state =
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
@@ -276,12 +277,13 @@ static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
 	 * time. Also masking should be done before updating the configuration
 	 * and unmasking afterwards.
 	 */
-	icl_pcode_restrict_qgv_points(i915, new_mask);
+	icl_pcode_restrict_qgv_points(display, new_mask);
 }
 
 static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bw_state *old_bw_state =
 		intel_atomic_get_old_bw_state(state);
 	const struct intel_bw_state *new_bw_state =
@@ -308,7 +310,7 @@ static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
 	 * time. Also masking should be done before updating the configuration
 	 * and unmasking afterwards.
 	 */
-	icl_pcode_restrict_qgv_points(i915, new_mask);
+	icl_pcode_restrict_qgv_points(display, new_mask);
 }
 
 void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index ce3cc93ea211bb8c7805d56ae5e67b371fb5fba9..6507dcfe4bf534db83c501606efaf39079fb6b68 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -578,7 +578,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	 */
 	intel_dram_detect(dev_priv);
 
-	intel_bw_init_hw(dev_priv);
+	intel_bw_init_hw(display);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 0b0aca7a25afd09a9dab089249f89d33dc1c06a9..7fb6028ae73c4ecb283406e953063c62e346812a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -147,7 +147,7 @@ int xe_display_init_early(struct xe_device *xe)
 	 */
 	intel_dram_detect(xe);
 
-	intel_bw_init_hw(xe);
+	intel_bw_init_hw(display);
 
 	intel_display_device_info_runtime_init(display);
 

-- 
2.48.1

