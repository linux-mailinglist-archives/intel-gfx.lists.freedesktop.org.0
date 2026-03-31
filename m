Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GBvxEqPry2l6MgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D68A836BF20
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 17:43:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B36210EA81;
	Tue, 31 Mar 2026 15:43:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIUPj+46";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AC310EA77;
 Tue, 31 Mar 2026 15:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774971809; x=1806507809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/obYv85U3MxUFN+xKyduqaHrBaHHyFGa0euPmPfnotI=;
 b=nIUPj+46LBsQmQ2NycdUzrto/QsubS6FS26MmR+E4N2vS8bRX67HCV9l
 iear6GAeB1lzZn7jqt2v8AGkMW2IHMv3NhCanlznLqDZAoSqlXNX8ojj1
 DGX3Ogwn5PXlSIyQ8fMTdC27KuzRImqj079P5ve8yR4+GvuNaAg9F1djM
 m00OmwzFU7+uFtcGlZIuwdxPQlGuzomZGKDbN9+p+28kida8XGzMCt6mV
 kSdI/NKzXcpIqF+jaixNdUPk3KzgKCG9rfWCfwPzMLDxXKMCDrVgt0+eG
 abn21dPSuDOe14BKUGHHOQoxLxFPiOLCttTP8rkueE4Bq4EP4SGSo4hys A==;
X-CSE-ConnectionGUID: IQcJLixwTvGF7kzTehPanA==
X-CSE-MsgGUID: y5RK0tDeSG+lEk0kO3Ycxg==
X-IronPort-AV: E=McAfee;i="6800,10657,11745"; a="75884140"
X-IronPort-AV: E=Sophos;i="6.23,152,1770624000"; d="scan'208";a="75884140"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:28 -0700
X-CSE-ConnectionGUID: dPWthJCoSzSKvMRqpQuwhg==
X-CSE-MsgGUID: pvLQNCklRhKlwHNeGMN45g==
X-ExtLoop1: 1
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.24])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 08:43:27 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 06/12] drm/i915/mchbar: Use intel_mchbar_read*() instead of
 intel_uncore_read*()
Date: Tue, 31 Mar 2026 18:42:53 +0300
Message-ID: <20260331154259.24600-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
References: <20260331154259.24600-1-ville.syrjala@linux.intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: D68A836BF20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Replace all the naked intel_uncore_read*() accesses to MCHBAR
registers with the dedicated intel_mchbar_read*().

v2: Rebase due to the intel_mchbar_read64_2x32() rename

Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c    | 10 ++++----
 drivers/gpu/drm/i915/display/intel_bw.c   | 11 ++++-----
 drivers/gpu/drm/i915/display/intel_dram.c | 29 ++++++++---------------
 3 files changed, 19 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 9e170e79dcf6..b0415d886ba3 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -19,6 +19,7 @@
 #include "intel_display_utils.h"
 #include "intel_dram.h"
 #include "intel_fb.h"
+#include "intel_mchbar.h"
 #include "intel_mchbar_regs.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
@@ -2742,12 +2743,11 @@ static void ilk_compute_wm_level(struct intel_display *display,
 
 static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u64 sskpd;
 
 	display->wm.num_levels = 5;
 
-	sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
+	sskpd = intel_mchbar_read64_2x32(display, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET64(SSKPD_NEW_WM0_MASK_HSW, sskpd);
 	if (wm[0] == 0)
@@ -2760,12 +2760,11 @@ static void hsw_read_wm_latency(struct intel_display *display, u16 wm[])
 
 static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 sskpd;
 
 	display->wm.num_levels = 4;
 
-	sskpd = intel_uncore_read(uncore, MCH_SSKPD);
+	sskpd = intel_mchbar_read(display, MCH_SSKPD);
 
 	wm[0] = REG_FIELD_GET(SSKPD_WM0_MASK_SNB, sskpd);
 	wm[1] = REG_FIELD_GET(SSKPD_WM1_MASK_SNB, sskpd);
@@ -2775,12 +2774,11 @@ static void snb_read_wm_latency(struct intel_display *display, u16 wm[])
 
 static void ilk_read_wm_latency(struct intel_display *display, u16 wm[])
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 mltr;
 
 	display->wm.num_levels = 3;
 
-	mltr = intel_uncore_read(uncore, MLTR_ILK);
+	mltr = intel_mchbar_read(display, MLTR_ILK);
 
 	/* ILK primary LP0 latency is 700 ns */
 	wm[0] = 7;
diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 18b80147ddc7..e6c8fd630294 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -15,9 +15,9 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dram.h"
+#include "intel_mchbar.h"
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
-#include "intel_uncore.h"
 #include "skl_watermark.h"
 
 struct intel_bw_state {
@@ -75,11 +75,10 @@ static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
 					  struct intel_qgv_point *sp,
 					  int point)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 dclk_ratio, dclk_reference;
 	u32 val;
 
-	val = intel_uncore_read(uncore, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
+	val = intel_mchbar_read(display, SA_PERF_STATUS_0_0_0_MCHBAR_PC);
 	dclk_ratio = REG_FIELD_GET(DG1_QCLK_RATIO_MASK, val);
 	if (val & DG1_QCLK_REFERENCE)
 		dclk_reference = 6; /* 6 * 16.666 MHz = 100 MHz */
@@ -87,18 +86,18 @@ static int dg1_mchbar_read_qgv_point_info(struct intel_display *display,
 		dclk_reference = 8; /* 8 * 16.666 MHz = 133 MHz */
 	sp->dclk = DIV_ROUND_UP((16667 * dclk_ratio * dclk_reference) + 500, 1000);
 
-	val = intel_uncore_read(uncore, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
+	val = intel_mchbar_read(display, SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
 	if (val & DG1_GEAR_TYPE)
 		sp->dclk *= 2;
 
 	if (sp->dclk == 0)
 		return -EINVAL;
 
-	val = intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
+	val = intel_mchbar_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR);
 	sp->t_rp = REG_FIELD_GET(DG1_DRAM_T_RP_MASK, val);
 	sp->t_rdpre = REG_FIELD_GET(DG1_DRAM_T_RDPRE_MASK, val);
 
-	val = intel_uncore_read(uncore, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
+	val = intel_mchbar_read(display, MCHBAR_CH0_CR_TC_PRE_0_0_0_MCHBAR_HIGH);
 	sp->t_rcd = REG_FIELD_GET(DG1_DRAM_T_RCD_MASK, val);
 	sp->t_ras = REG_FIELD_GET(DG1_DRAM_T_RAS_MASK, val);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
index f05796417485..05da74534a5a 100644
--- a/drivers/gpu/drm/i915/display/intel_dram.c
+++ b/drivers/gpu/drm/i915/display/intel_dram.c
@@ -14,9 +14,9 @@
 #include "intel_display_utils.h"
 #include "intel_display_regs.h"
 #include "intel_dram.h"
+#include "intel_mchbar.h"
 #include "intel_mchbar_regs.h"
 #include "intel_parent.h"
-#include "intel_uncore.h"
 #include "vlv_iosf_sb.h"
 
 struct dram_dimm_info {
@@ -59,18 +59,15 @@ const char *intel_dram_type_str(enum intel_dram_type type)
 
 static enum intel_dram_type pnv_dram_type(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
-
-	return intel_uncore_read(uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
+	return intel_mchbar_read(display, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
 		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
 }
 
 static unsigned int pnv_mem_freq(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 tmp;
 
-	tmp = intel_uncore_read(uncore, CLKCFG);
+	tmp = intel_mchbar_read(display, CLKCFG);
 
 	switch (tmp & CLKCFG_MEM_MASK) {
 	case CLKCFG_MEM_533:
@@ -86,10 +83,9 @@ static unsigned int pnv_mem_freq(struct intel_display *display)
 
 static unsigned int ilk_mem_freq(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u16 ddrpll;
 
-	ddrpll = intel_uncore_read16(uncore, DDRMPLL1);
+	ddrpll = intel_mchbar_read16(display, DDRMPLL1);
 	switch (ddrpll & 0xff) {
 	case 0xc:
 		return 800000;
@@ -159,7 +155,6 @@ unsigned int intel_mem_freq(struct intel_display *display)
 
 static unsigned int i9xx_fsb_freq(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 fsb;
 
 	/*
@@ -170,7 +165,7 @@ static unsigned int i9xx_fsb_freq(struct intel_display *display)
 	 * don't know which registers have that information,
 	 * and all the relevant docs have gone to bit heaven :(
 	 */
-	fsb = intel_uncore_read(uncore, CLKCFG) & CLKCFG_FSB_MASK;
+	fsb = intel_mchbar_read(display, CLKCFG) & CLKCFG_FSB_MASK;
 
 	if (display->platform.pineview || display->platform.mobile) {
 		switch (fsb) {
@@ -215,10 +210,9 @@ static unsigned int i9xx_fsb_freq(struct intel_display *display)
 
 static unsigned int ilk_fsb_freq(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u16 fsb;
 
-	fsb = intel_uncore_read16(uncore, CSIPLL0) & 0x3ff;
+	fsb = intel_mchbar_read16(display, CSIPLL0) & 0x3ff;
 
 	switch (fsb) {
 	case 0x00c:
@@ -485,7 +479,6 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
 static int
 skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	struct dram_channel_info ch0 = {}, ch1 = {};
 	u32 val;
 	int ret;
@@ -493,12 +486,12 @@ skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram
 	/* Assume 16Gb+ DIMMs are present until proven otherwise */
 	dram_info->has_16gb_dimms = true;
 
-	val = intel_uncore_read(uncore, SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
+	val = intel_mchbar_read(display, SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
 	ret = skl_dram_get_channel_info(display, &ch0, 0, val);
 	if (ret == 0)
 		dram_info->num_channels++;
 
-	val = intel_uncore_read(uncore, SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
+	val = intel_mchbar_read(display, SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
 	ret = skl_dram_get_channel_info(display, &ch1, 1, val);
 	if (ret == 0)
 		dram_info->num_channels++;
@@ -529,10 +522,9 @@ skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram
 static enum intel_dram_type
 skl_get_dram_type(struct intel_display *display)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val;
 
-	val = intel_uncore_read(uncore, SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
+	val = intel_mchbar_read(display, SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN);
 
 	switch (val & SKL_DRAM_DDR_TYPE_MASK) {
 	case SKL_DRAM_DDR_TYPE_DDR3:
@@ -643,7 +635,6 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
 
 static int bxt_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
 {
-	struct intel_uncore *uncore = to_intel_uncore(display->drm);
 	u32 val;
 	u8 valid_ranks = 0;
 	int i;
@@ -655,7 +646,7 @@ static int bxt_get_dram_info(struct intel_display *display, struct dram_info *dr
 		struct dram_dimm_info dimm;
 		enum intel_dram_type type;
 
-		val = intel_uncore_read(uncore, BXT_D_CR_DRP0_DUNIT(i));
+		val = intel_mchbar_read(display, BXT_D_CR_DRP0_DUNIT(i));
 		if (val == 0xFFFFFFFF)
 			continue;
 
-- 
2.52.0

