Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5699156FF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5F710E55A;
	Mon, 24 Jun 2024 19:11:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xo+RLCDE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040A210E55A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256272; x=1750792272;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=i4aXizVjGhr/gqnJUEAIAJkZKqffxmgITuMbARbPlV8=;
 b=Xo+RLCDEoNZ1d4SpeetG5wcJ7yqB40sZWnXIESU7+g7h09ca64PYId97
 3HWJ39T+HIGitu9Aw04z76sY31TAF2gfBcM3EbtAqAOPcj01Al2WorpQC
 i15m2x3/tunnxus+daSDgauKuEDaSmWdroCXg9PL+FkMrq+oXTWEwbp2R
 sbecxO43VpfnaYDq9NRsC87jM29X2AGjqgT51uiLoeNGC1TzLmf86IUT6
 lN7R712QzL8ajabGIULpBNKVSZwMlAeCVvOTMvX+GR80ugdXYC4mspvgC
 ufQQ8Odxr6GF1B2sWntFlqPoQuYVAPLRUmVy1rGM7NzChCHChEdPFozT5 Q==;
X-CSE-ConnectionGUID: pkKRdNIUTT2DyBqs3wT6ow==
X-CSE-MsgGUID: f28PMUnPTiyY3WAc6Abhyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374230"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374230"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:11:11 -0700
X-CSE-ConnectionGUID: sDTwthYgTvyUaJ73nwjXRQ==
X-CSE-MsgGUID: khrtXSXvTNuCa8Qx/2HasQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43372004"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:11:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:11:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/14] drm/i915/dsb: s/dsb/dsb_color_vblank/
Date: Mon, 24 Jun 2024 22:10:31 +0300
Message-ID: <20240624191032.27333-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

We'll soon utilize several DSBs during the commit. To that end
rename the current crtc_state->dsb to crtc_state->dsb_color_vblank
to better reflect its role (color managemnent stuff programmed during
vblank).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c   |  4 +--
 drivers/gpu/drm/i915/display/intel_color.c    | 36 +++++++++----------
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_types.h    |  4 +--
 4 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index 76aa10b6f647..55ce71be41ec 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -276,7 +276,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crtc)
 	crtc_state->do_async_flip = false;
 	crtc_state->fb_bits = 0;
 	crtc_state->update_planes = 0;
-	crtc_state->dsb = NULL;
+	crtc_state->dsb_color_vblank = NULL;
 
 	return &crtc_state->uapi;
 }
@@ -310,7 +310,7 @@ intel_crtc_destroy_state(struct drm_crtc *crtc,
 {
 	struct intel_crtc_state *crtc_state = to_intel_crtc_state(state);
 
-	drm_WARN_ON(crtc->dev, crtc_state->dsb);
+	drm_WARN_ON(crtc->dev, crtc_state->dsb_color_vblank);
 
 	__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
 	intel_crtc_free_hw_state(crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 7ac50aacec73..27acbf92d60f 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1313,8 +1313,8 @@ static void ilk_lut_write(const struct intel_crtc_state *crtc_state,
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (crtc_state->dsb)
-		intel_dsb_reg_write(crtc_state->dsb, reg, val);
+	if (crtc_state->dsb_color_vblank)
+		intel_dsb_reg_write(crtc_state->dsb_color_vblank, reg, val);
 	else
 		intel_de_write_fw(i915, reg, val);
 }
@@ -1337,15 +1337,15 @@ static void ilk_load_lut_8(const struct intel_crtc_state *crtc_state,
 	 * unless we either write each entry twice,
 	 * or use non-posted writes
 	 */
-	if (crtc_state->dsb)
-		intel_dsb_nonpost_start(crtc_state->dsb);
+	if (crtc_state->dsb_color_vblank)
+		intel_dsb_nonpost_start(crtc_state->dsb_color_vblank);
 
 	for (i = 0; i < 256; i++)
 		ilk_lut_write(crtc_state, LGC_PALETTE(pipe, i),
 			      i9xx_lut_8(&lut[i]));
 
-	if (crtc_state->dsb)
-		intel_dsb_nonpost_end(crtc_state->dsb);
+	if (crtc_state->dsb_color_vblank)
+		intel_dsb_nonpost_end(crtc_state->dsb_color_vblank);
 }
 
 static void ilk_load_lut_10(const struct intel_crtc_state *crtc_state,
@@ -1870,7 +1870,7 @@ void intel_color_load_luts(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	if (crtc_state->dsb)
+	if (crtc_state->dsb_color_vblank)
 		return;
 
 	i915->display.funcs.color->load_luts(crtc_state);
@@ -1890,8 +1890,8 @@ void intel_color_commit_arm(const struct intel_crtc_state *crtc_state)
 
 	i915->display.funcs.color->color_commit_arm(crtc_state);
 
-	if (crtc_state->dsb)
-		intel_dsb_commit(crtc_state->dsb, true);
+	if (crtc_state->dsb_color_vblank)
+		intel_dsb_commit(crtc_state->dsb_color_vblank, true);
 }
 
 void intel_color_post_update(const struct intel_crtc_state *crtc_state)
@@ -1919,33 +1919,33 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
 	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
 		return;
 
-	crtc_state->dsb = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
-	if (!crtc_state->dsb)
+	crtc_state->dsb_color_vblank = intel_dsb_prepare(state, crtc, INTEL_DSB_0, 1024);
+	if (!crtc_state->dsb_color_vblank)
 		return;
 
 	i915->display.funcs.color->load_luts(crtc_state);
 
-	intel_dsb_finish(crtc_state->dsb);
+	intel_dsb_finish(crtc_state->dsb_color_vblank);
 }
 
 void intel_color_cleanup_commit(struct intel_crtc_state *crtc_state)
 {
-	if (!crtc_state->dsb)
+	if (!crtc_state->dsb_color_vblank)
 		return;
 
-	intel_dsb_cleanup(crtc_state->dsb);
-	crtc_state->dsb = NULL;
+	intel_dsb_cleanup(crtc_state->dsb_color_vblank);
+	crtc_state->dsb_color_vblank = NULL;
 }
 
 void intel_color_wait_commit(const struct intel_crtc_state *crtc_state)
 {
-	if (crtc_state->dsb)
-		intel_dsb_wait(crtc_state->dsb);
+	if (crtc_state->dsb_color_vblank)
+		intel_dsb_wait(crtc_state->dsb_color_vblank);
 }
 
 bool intel_color_uses_dsb(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->dsb;
+	return crtc_state->dsb_color_vblank;
 }
 
 static bool intel_can_preload_luts(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 592483651b3c..05a2a6942000 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7510,7 +7510,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 *
 		 * FIXME get rid of this funny new->old swapping
 		 */
-		old_crtc_state->dsb = fetch_and_zero(&new_crtc_state->dsb);
+		old_crtc_state->dsb_color_vblank = fetch_and_zero(&new_crtc_state->dsb_color_vblank);
 	}
 
 	/* Underruns don't always raise interrupts, so check manually */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 8713835e2307..bd079cd77bda 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1396,8 +1396,8 @@ struct intel_crtc_state {
 	/* Only valid on TGL+ */
 	enum transcoder mst_master_transcoder;
 
-	/* For DSB related info */
-	struct intel_dsb *dsb;
+	/* For DSB based color LUT updates */
+	struct intel_dsb *dsb_color_vblank;
 
 	u32 psr2_man_track_ctl;
 
-- 
2.44.2

