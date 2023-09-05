Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E78F0792C4B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 19:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D31910E290;
	Tue,  5 Sep 2023 17:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D95710E290
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 17:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693934240; x=1725470240;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2rUf9UjttZuvEadguiAvLVmBRi8x/jzdE2dpN8wlL9s=;
 b=XmlS0t4d4+neYLbWDeHMu2cMcAMhCf0NGECc3rLzQQR5e35ape1Lyd0G
 GrZf46dvMGnohzMCGAbqt61Vrgxi11HlOieUs3/vF3Qsu7cvn2fTWGDi4
 wECC24X95+cjV7WPFSXwMSgHYSdx+4tZXfAJ3MR+3oe9y/mkI6vDXEJY3
 wr3bfcWiataFArIRqXBvJlJApE8gVkuDxvpJywle4Nq5ehpbtn5YG9w0s
 KAZQWc8hGtH/2WFZfiA8Q8mfqhYgw2+2VIDgav3ZOD+ovcHqij9HINQ6J
 4zIdC3h+40ulkVyXLsnMNOeEYuprJ9Q2nUK29bArrNjMnm9HYdKIvpdn4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="443244029"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="443244029"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:12:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="914920981"
X-IronPort-AV: E=Sophos;i="6.02,229,1688454000"; d="scan'208";a="914920981"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 10:12:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Sep 2023 20:11:27 +0300
Message-Id: <0dfebe37a391a5ceb8bfae8e16383f1e5aef815d.1693933849.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1693933849.git.jani.nikula@intel.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/dsc: use REG_BIT, REG_GENMASK,
 and friends for PPS0 and PPS1
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Use the register helper macros for PPS0 and PPS1 register contents.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 15 +++++------
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 27 ++++++++++---------
 2 files changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 126aff804e33..5c00f7ccad7f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -423,10 +423,10 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
 	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
 
 	/* PPS 0 */
-	pps_val = DSC_PPS0_VER_MAJ | vdsc_cfg->dsc_version_minor <<
-		DSC_PPS0_VER_MIN_SHIFT |
-		vdsc_cfg->bits_per_component << DSC_PPS0_BPC_SHIFT |
-		vdsc_cfg->line_buf_depth << DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
+	pps_val = DSC_PPS0_VER_MAJOR(1) |
+		DSC_PPS0_VER_MINOR(vdsc_cfg->dsc_version_minor) |
+		DSC_PPS0_BPC(vdsc_cfg->bits_per_component) |
+		DSC_PPS0_LINE_BUF_DEPTH(vdsc_cfg->line_buf_depth);
 	if (vdsc_cfg->dsc_version_minor == 2) {
 		pps_val |= DSC_PPS0_ALT_ICH_SEL;
 		if (vdsc_cfg->native_420)
@@ -857,9 +857,8 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	/* PPS 0 */
 	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 0);
 
-	vdsc_cfg->bits_per_component = (pps_temp & DSC_PPS0_BPC_MASK) >> DSC_PPS0_BPC_SHIFT;
-	vdsc_cfg->line_buf_depth =
-		(pps_temp & DSC_PPS0_LINE_BUF_DEPTH_MASK) >> DSC_PPS0_LINE_BUF_DEPTH_SHIFT;
+	vdsc_cfg->bits_per_component = REG_FIELD_GET(DSC_PPS0_BPC_MASK, pps_temp);
+	vdsc_cfg->line_buf_depth = REG_FIELD_GET(DSC_PPS0_LINE_BUF_DEPTH_MASK, pps_temp);
 	vdsc_cfg->block_pred_enable = pps_temp & DSC_PPS0_BLOCK_PREDICTION;
 	vdsc_cfg->convert_rgb = pps_temp & DSC_PPS0_COLOR_SPACE_CONVERSION;
 	vdsc_cfg->simple_422 = pps_temp & DSC_PPS0_422_ENABLE;
@@ -870,7 +869,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 	/* PPS 1 */
 	pps_temp = intel_dsc_pps_read_and_verify(crtc_state, 1);
 
-	vdsc_cfg->bits_per_pixel = pps_temp;
+	vdsc_cfg->bits_per_pixel = REG_FIELD_GET(DSC_PPS1_BPP_MASK, pps_temp);
 
 	if (vdsc_cfg->native_420)
 		vdsc_cfg->bits_per_pixel >>= 1;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index 92782de2b309..64f440fdc22b 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -73,22 +73,25 @@
 #define  ICL_DSC1_PPS(pipe, pps)		_MMIO(_ICL_DSC1_PPS_0(pipe) + ((pps) * 4))
 
 /* PPS 0 */
-#define   DSC_PPS0_NATIVE_422_ENABLE		BIT(23)
-#define   DSC_PPS0_NATIVE_420_ENABLE		BIT(22)
-#define   DSC_PPS0_ALT_ICH_SEL			(1 << 20)
-#define   DSC_PPS0_VBR_ENABLE			(1 << 19)
-#define   DSC_PPS0_422_ENABLE			(1 << 18)
-#define   DSC_PPS0_COLOR_SPACE_CONVERSION	(1 << 17)
-#define   DSC_PPS0_BLOCK_PREDICTION		(1 << 16)
-#define   DSC_PPS0_LINE_BUF_DEPTH_SHIFT		12
+#define   DSC_PPS0_NATIVE_422_ENABLE		REG_BIT(23)
+#define   DSC_PPS0_NATIVE_420_ENABLE		REG_BIT(22)
+#define   DSC_PPS0_ALT_ICH_SEL			REG_BIT(20)
+#define   DSC_PPS0_VBR_ENABLE			REG_BIT(19)
+#define   DSC_PPS0_422_ENABLE			REG_BIT(18)
+#define   DSC_PPS0_COLOR_SPACE_CONVERSION	REG_BIT(17)
+#define   DSC_PPS0_BLOCK_PREDICTION		REG_BIT(16)
 #define   DSC_PPS0_LINE_BUF_DEPTH_MASK		REG_GENMASK(15, 12)
-#define   DSC_PPS0_BPC_SHIFT			8
+#define   DSC_PPS0_LINE_BUF_DEPTH(depth)	REG_FIELD_PREP(DSC_PPS0_LINE_BUF_DEPTH_MASK, depth)
 #define   DSC_PPS0_BPC_MASK			REG_GENMASK(11, 8)
-#define   DSC_PPS0_VER_MIN_SHIFT		4
-#define   DSC_PPS0_VER_MAJ			(0x1 << 0)
+#define   DSC_PPS0_BPC(bpc)			REG_FIELD_PREP(DSC_PPS0_BPC_MASK, bpc)
+#define   DSC_PPS0_VER_MINOR_MASK		REG_GENMASK(7, 4)
+#define   DSC_PPS0_VER_MINOR(minor)		REG_FIELD_PREP(DSC_PPS0_VER_MINOR_MASK, minor)
+#define   DSC_PPS0_VER_MAJOR_MASK		REG_GENMASK(3, 0)
+#define   DSC_PPS0_VER_MAJOR(major)		REG_FIELD_PREP(DSC_PPS0_VER_MAJOR_MASK, major)
 
 /* PPS 1 */
-#define   DSC_PPS1_BPP(bpp)			((bpp) << 0)
+#define   DSC_PPS1_BPP_MASK			REG_GENMASK(9, 0)
+#define   DSC_PPS1_BPP(bpp)			REG_FIELD_PREP(DSC_PPS1_BPP_MASK, bpp)
 
 /* PPS 2 */
 #define   DSC_PPS2_PIC_WIDTH_MASK		REG_GENMASK(31, 16)
-- 
2.39.2

