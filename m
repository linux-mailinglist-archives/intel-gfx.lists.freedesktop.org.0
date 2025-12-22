Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C8DCD5FD7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 13:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5271410E64E;
	Mon, 22 Dec 2025 12:34:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIX+aI3Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF1310E64E;
 Mon, 22 Dec 2025 12:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766406868; x=1797942868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6taoh4JzhOMo93DCGXJjrN7ht0a389S/QPVr2ej3YdY=;
 b=XIX+aI3ZdoAyql15BqFVnJc5MFBjglbbJlZmUUQ+0CL6KS0f4rwG+qAY
 1BgsuYSfPzdm0L15H69akYoCqaeHgsBS3EQKU2eJmTjDHhGkz4z85J2aO
 6WbYq2VnJs+8wCLi8+pDLObkwaHbbRSBv0XEPbsBFE2GKnr7hGNmdHeWW
 Y9g6nW/KOfO5TY5XpxJX9FZYfD4GoWnw42eyhvQ/ebhDUzdOqjuf8jUsv
 N0RnmsUQ36cvTTWYpSXr4Ld681YevauTHxtFRlX5E8YjfyU5FF3pU/Dko
 zvs7gGIC/gAjAyoPqZu11k/6/zXLh0n3wsdzRS9jYE06JFZHSFSao+esz g==;
X-CSE-ConnectionGUID: 1ZS6/RbbQXiUCBg4gmmHxg==
X-CSE-MsgGUID: Pi/i83AqTuC5uBq55eSpgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11649"; a="72121844"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="72121844"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:28 -0800
X-CSE-ConnectionGUID: 2NWX/+3ZQj+nukgi0JoDVg==
X-CSE-MsgGUID: 7DRFZVCLRTuV63zkljeUGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="203984570"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 04:34:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 4/4] drm/i915/display: use to_intel_uncore() to avoid
 i915_drv.h
Date: Mon, 22 Dec 2025 14:34:03 +0200
Message-ID: <44a5d526a097ab9276e60162263fa8cd23325ce7.1766406794.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1766406794.git.jani.nikula@intel.com>
References: <cover.1766406794.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

A number of places that include i915_drv.h only need it to get from
display to i915 to uncore. We have to_intel_uncore() for that, use it to
avoid the i915_drv.h include.

v2: Rebase

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c       | 17 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c      | 19 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c |  4 +-
 drivers/gpu/drm/i915/display/intel_dram.c    | 42 +++++++++-----------
 drivers/gpu/drm/i915/display/intel_rom.c     |  8 ++--
 drivers/gpu/drm/i915/display/intel_vblank.c  | 13 +++---
 6 files changed, 48 insertions(+), 55 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 167277cd8877..39dfceb438ae 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -7,7 +7,6 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "i9xx_wm_regs.h"
@@ -17,6 +16,7 @@
 #include "intel_display.h"
 #include "intel_display_regs.h"
 #include "intel_display_trace.h"
+#include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_fb.h"
 #include "intel_mchbar_regs.h"
@@ -1863,8 +1863,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 				   struct intel_crtc *crtc)
 {
 	struct intel_display *display = to_intel_display(crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_uncore *uncore = &dev_priv->uncore;
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	const struct vlv_fifo_state *fifo_state =
@@ -2743,12 +2742,12 @@ static void ilk_compute_wm_level(struct intel_display *display,
 
 static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u64 sskpd;
 
 	display->wm.num_levels = 5;
 
-	sskpd = intel_uncore_read64(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
 	if (wm[0] == 0)
@@ -2761,12 +2760,12 @@ static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
 
 static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 sskpd;
 
 	display->wm.num_levels = 4;
 
-	sskpd = intel_uncore_read(&i915->uncore, MCH_SSKPD);
+	sskpd = intel_uncore_read(uncore, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
 	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
@@ -2776,12 +2775,12 @@ static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
 
 static void ilk_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 mltr;
 
 	display->wm.num_levels = 3;
 
-	mltr = intel_uncore_read(&i915->uncore, MLTR_ILK);
+	mltr = intel_uncore_read(uncore, MLTR_ILK);
 
 	/* ILK primary LP0 latency is 700 ns */
 	wm[0] = 7;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d27835ed49c2..4ee3f5172f4e 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -6,7 +6,6 @@
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_bw.h"
 #include "intel_crtc.h"
@@ -75,11 +74,11 @@ static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
 					  struct intel_qgv_point *sp,
 					  int point)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 dclk_ratio, dclk_reference;
 	u32 val;
 
-	val = intel_uncore_read(&i915->uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
+	val = intel_uncore_read(uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
 	dclk_ratio = REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
 	if (val & DG1_QCLK_REFERENCE)
 		dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
@@ -87,18 +86,18 @@ static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
 		dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
 	sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
 
-	val = intel_uncore_read(&i915->uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
+	val = intel_uncore_read(uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 	if (val & DG1_GEAR_TYPE)
 		sp->dclk *= 2;
 
 	if (sp->dclk == 0)
 		return -EINVAL;
 
-	val = intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
+	val = intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
 	sp->t_rp = REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
 	sp->t_rdpre = REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
 
-	val = intel_uncore_read(&i915->uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
+	val = intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
 	sp->t_rcd = REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
 	sp->t_ras = REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
 
@@ -212,14 +211,12 @@ static int icl_pcode_restrict_qgv_points(struct intel_display *display,
 static int mtl_read_qgv_point_info(struct intel_display *display,
 				   struct intel_qgv_point *sp, int point)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val, val2;
 	u16 dclk;
 
-	val = intel_uncore_read(&i915->uncore,
-				MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
-	val2 = intel_uncore_read(&i915->uncore,
-				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
+	val = intel_uncore_read(uncore, MTL_MEM_SS_INFO_QGV_POINT_LOW(point));
+	val2 = intel_uncore_read(uncore, MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
 	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
 	sp->dclk = DIV_ROUND_CLOSEST(16667 * dclk, 1000);
 	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 32de0bab0982..4d843edda72f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7381,7 +7381,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
@@ -7591,7 +7591,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 * so enable debugging for the next modeset - and hope we catch
 		 * the culprit.
 		 */
-		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
+		intel_uncore_arm_unclaimed_mmio_detection(uncore);
 	}
 	/*
 	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index 019a722a38bf..170de304fe96 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -8,7 +8,6 @@
 #include <drm/drm_managed.h>
 #include <drm/drm_print.h>
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
@@ -58,18 +57,18 @@ const char *intel_dram_type_str(enum intel_dram_type type)
 
 static enum intel_dram_type pnv_dram_type(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 
-	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
+	return intel_uncore_read(uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
 		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
 }
 
 static unsigned int pnv_mem_freq(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 tmp;
 
-	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
+	tmp = intel_uncore_read(uncore, CLKCFG);
 
 	switch (tmp & CLKCFG_MEM_MASK) {
 	case CLKCFG_MEM_533:
@@ -85,10 +84,10 @@ static unsigned int pnv_mem_freq(struct intel_display *display)
 
 static unsigned int ilk_mem_freq(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u16 ddrpll;
 
-	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
+	ddrpll = intel_uncore_read16(uncore, DDRMPLL1);
 	switch (ddrpll & 0xff) {
 	case 0xc:
 		return 800000;
@@ -158,7 +157,7 @@ unsigned int intel_mem_freq(struct intel_display *display)
 
 static unsigned int i9xx_fsb_freq(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 fsb;
 
 	/*
@@ -169,7 +168,7 @@ static unsigned int i9xx_fsb_freq(struct intel_display *display)
 	 * don't know which registers have that information,
 	 * and all the relevant docs have gone to bit heaven :(
 	 */
-	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
+	fsb = intel_uncore_read(uncore, CLKCFG) & CLKCFG_FSB_MASK;
 
 	if (display->platform.pineview || display->platform.mobile) {
 		switch (fsb) {
@@ -214,10 +213,10 @@ static unsigned int i9xx_fsb_freq(struct intel_display *display)
 
 static unsigned int ilk_fsb_freq(struct intel_display *display)
 {
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u16 fsb;
 
-	fsb = intel_uncore_read16(&dev_priv->uncore, CSIPLL0) & 0x3ff;
+	fsb = intel_uncore_read16(uncore, CSIPLL0) & 0x3ff;
 
 	switch (fsb) {
 	case 0x00c:
@@ -484,7 +483,7 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
 static int
 skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	struct dram_channel_info ch0 = {}, ch1 = {};
 	u32 val;
 	int ret;
@@ -492,14 +491,12 @@ skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram
 	/* Assume 16Gb+ DIMMs are present until proven otherwise */
 	dram_info->has_16gb_dimms = true;
 
-	val = intel_uncore_read(&i915->uncore,
-				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
+	val = intel_uncore_read(uncore, SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
 	ret = skl_dram_get_channel_info(display, &ch0, 0, val);
 	if (ret == 0)
 		dram_info->num_channels++;
 
-	val = intel_uncore_read(&i915->uncore,
-				SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
+	val = intel_uncore_read(uncore, SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
 	ret = skl_dram_get_channel_info(display, &ch1, 1, val);
 	if (ret == 0)
 		dram_info->num_channels++;
@@ -530,11 +527,10 @@ skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram
 static enum intel_dram_type
 skl_get_dram_type(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val;
 
-	val = intel_uncore_read(&i915->uncore,
-				SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
+	val = intel_uncore_read(uncore, SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
 
 	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
 	case SKL_DRAM_DDR_TYPE_DDR3:
@@ -645,7 +641,7 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
 
 static int bxt_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val;
 	u8 valid_ranks = 0;
 	int i;
@@ -657,7 +653,7 @@ static int bxt_get_dram_info(struct intel_display *display, struct dram_info *dr
 		struct dram_dimm_info dimm;
 		enum intel_dram_type type;
 
-		val = intel_uncore_read(&i915->uncore, BXT_D_CR_DRP0_DUNIT(i));
+		val = intel_uncore_read(uncore, BXT_D_CR_DRP0_DUNIT(i));
 		if (val == 0xFFFFFFFF)
 			continue;
 
@@ -770,8 +766,8 @@ static int gen12_get_dram_info(struct intel_display *display, struct dram_info *
 
 static int xelpdp_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	u32 val = intel_uncore_read(uncore, MTL_MEM_SS_INFO_GLOBAL);
 
 	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
 	case 0:
diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
index 2f17dc856e7f..c8f615315310 100644
--- a/drivers/gpu/drm/i915/display/intel_rom.c
+++ b/drivers/gpu/drm/i915/display/intel_rom.c
@@ -3,7 +3,10 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "i915_drv.h"
+#include <linux/pci.h>
+
+#include <drm/drm_device.h>
+
 #include "i915_reg.h"
 
 #include "intel_rom.h"
@@ -41,7 +44,6 @@ static u16 spi_read16(struct intel_rom *rom, loff_t offset)
 
 struct intel_rom *intel_rom_spi(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
 	struct intel_rom *rom;
 	u32 static_region;
 
@@ -49,7 +51,7 @@ struct intel_rom *intel_rom_spi(struct drm_device *drm)
 	if (!rom)
 		return NULL;
 
-	rom->uncore = &i915->uncore;
+	rom->uncore = to_intel_uncore(drm);
 
 	static_region = intel_uncore_read(rom->uncore, SPI_STATIC_REGIONS);
 	static_region &= OPTIONROM_SPI_REGIONID_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 671f357c6563..d7028ac2c4bd 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -8,7 +8,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_drv.h"
 #include "intel_color.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
@@ -305,17 +304,17 @@ static int __intel_get_crtc_scanline(struct intel_crtc *crtc)
  */
 #ifdef I915
 static void intel_vblank_section_enter(struct intel_display *display)
-	__acquires(i915->uncore.lock)
+	__acquires(uncore->lock)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	spin_lock(&i915->uncore.lock);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	spin_lock(&uncore->lock);
 }
 
 static void intel_vblank_section_exit(struct intel_display *display)
-	__releases(i915->uncore.lock)
+	__releases(uncore->lock)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-	spin_unlock(&i915->uncore.lock);
+	struct intel_uncore *uncore = to_intel_uncore(display->drm);
+	spin_unlock(&uncore->lock);
 }
 #else
 static void intel_vblank_section_enter(struct intel_display *display)
-- 
2.47.3

