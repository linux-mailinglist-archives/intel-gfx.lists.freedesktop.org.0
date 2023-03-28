Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E5B6CBABD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 11:30:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C495410E441;
	Tue, 28 Mar 2023 09:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA4F10E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 09:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679995847; x=1711531847;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IwTUbs442E3Ggft+Ac+NRDQTS5UsNbQs/FKjB5+AoYQ=;
 b=AQ0G0Vbwe1Vda0ZkkGRXhKqScqQ/FeJe0VNnz29ATYfwMF8mms/hlj+b
 NdcZFOh5petspULy3aoUspbWxKM3xxghnOrGJ1DE9toZN+a+tBbYM/Dm4
 P4CySmo7anMDLmrOx8LXSfh3Xl0n8lYNECjaD4XMxRhkqnBjqvRLJg14j
 wAKZoA9Q0gcc+fwDjYS9tshTtizAxtt5A/qXXqNgv7I5Kb/o5AZkJBy9H
 R5SzzVPyUvRENTTVRud3HsiZ65tIN5izw2GB39aMbOTlTG7kc7tG7pmw6
 RUU4FLqL6QIBPRfhG8keqYhpZgxX/j1RUTiHAdbWrRuCso6LE9Y6hFC+n Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="403129423"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403129423"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 02:30:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="686343537"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="686343537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 28 Mar 2023 02:30:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Mar 2023 12:30:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Mar 2023 12:30:35 +0300
Message-Id: <20230328093042.7469-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Fix up whitespace in some display
 chicken registers
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

Fix a binch of whitespace issues in some display register
definitons. Only touching the bits alerayd using REG_BIT() &
co. here. The rest will come later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 70 ++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f80c36233a77..4ad10fe45686 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1367,8 +1367,8 @@
 
 #define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
 #define   ILK_FBCQ_DIS		(1 << 22)
-#define   ILK_PABSTRETCH_DIS	REG_BIT(21)
-#define   ILK_SABSTRETCH_DIS	REG_BIT(20)
+#define   ILK_PABSTRETCH_DIS		REG_BIT(21)
+#define   ILK_SABSTRETCH_DIS		REG_BIT(20)
 #define   IVB_PRI_STRETCH_MAX_MASK	REG_GENMASK(21, 20)
 #define   IVB_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 0)
 #define   IVB_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 1)
@@ -3502,7 +3502,7 @@
 #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
 #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
 #define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
-#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
+#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
 /*
  * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
  * valid values of: 6, 8, 10 BPC.
@@ -5499,8 +5499,8 @@
 # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
 
 #define CHICKEN_PAR1_1			_MMIO(0x42080)
-#define  IGNORE_KVMR_PIPE_A		REG_BIT(23)
-#define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
+#define   IGNORE_KVMR_PIPE_A		REG_BIT(23)
+#define   KBL_ARB_FILL_SPARE_22		REG_BIT(22)
 #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
 #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
 #define  DPA_MASK_VBLANK_SRD		(1 << 15)
@@ -5512,9 +5512,9 @@
 #define  KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	(1 << 14)
 
 #define CHICKEN_MISC_2		_MMIO(0x42084)
-#define  CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
-#define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
-#define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
+#define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
+#define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
+#define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
 #define  GLK_CL2_PWR_DOWN	(1 << 12)
 #define  GLK_CL1_PWR_DOWN	(1 << 11)
 #define  GLK_CL0_PWR_DOWN	(1 << 10)
@@ -5526,24 +5526,24 @@
 
 #define _CHICKEN_PIPESL_1_A	0x420b0
 #define _CHICKEN_PIPESL_1_B	0x420b4
-#define  HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
-#define  HSW_PRI_STRETCH_MAX_X8		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
-#define  HSW_PRI_STRETCH_MAX_X4		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
-#define  HSW_PRI_STRETCH_MAX_X2		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
-#define  HSW_PRI_STRETCH_MAX_X1		REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
-#define  HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
-#define  HSW_SPR_STRETCH_MAX_X8		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
-#define  HSW_SPR_STRETCH_MAX_X4		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
-#define  HSW_SPR_STRETCH_MAX_X2		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
-#define  HSW_SPR_STRETCH_MAX_X1		REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
+#define CHICKEN_PIPESL_1(pipe)	_MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
+#define   HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
+#define   HSW_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
+#define   HSW_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
+#define   HSW_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
+#define   HSW_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
+#define   HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
+#define   HSW_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
+#define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
+#define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
+#define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
 #define  HSW_FBCQ_DIS			(1 << 22)
 #define  BDW_DPRS_MASK_VBLANK_SRD	(1 << 0)
-#define  SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
-#define  SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
-#define  SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
-#define  SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
-#define  SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
-#define CHICKEN_PIPESL_1(pipe) _MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
+#define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
+#define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
+#define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
+#define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
+#define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
 
 #define _CHICKEN_TRANS_A	0x420c0
 #define _CHICKEN_TRANS_B	0x420c4
@@ -5563,17 +5563,17 @@
 						    _MTL_CHICKEN_TRANS_A, \
 						    _MTL_CHICKEN_TRANS_B)
 
-#define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
-#define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
-#define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
-#define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
-#define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
-#define  ADLP_1_BASED_X_GRANULARITY	REG_BIT(18)
-#define  DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
-#define  DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
-#define  DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
-#define  PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
-#define  PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
+#define   HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
+#define   HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
+#define   VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
+#define   FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
+#define   DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
+#define   ADLP_1_BASED_X_GRANULARITY	REG_BIT(18)
+#define   DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
+#define   DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
+#define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
+#define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
+#define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define  DISP_FBC_MEMORY_WAKE		(1 << 31)
-- 
2.39.2

