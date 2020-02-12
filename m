Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39215AB19
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 15:41:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877C16EAC4;
	Wed, 12 Feb 2020 14:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF2C6EAC4
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 14:41:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 06:41:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="406312444"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 06:41:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 16:40:58 +0200
Message-Id: <20200212144058.5686-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200212144058.5686-1-jani.nikula@intel.com>
References: <20200212144058.5686-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: switch vlv_suspend to use intel
 uncore register accessors
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer intel_uncore_* over I915_READ, I915_WRITE, and POSTING_READ.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/vlv_suspend.c | 237 +++++++++++++++--------------
 1 file changed, 121 insertions(+), 116 deletions(-)

diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index 05047fe7765f..43eb3797f867 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -102,80 +102,81 @@ struct vlv_s0ix_state {
  * a black-box for the driver. Further investigation is needed to reduce the
  * saved/restored registers even further, by following the same 3 criteria.
  */
-static void vlv_save_gunit_s0ix_state(struct drm_i915_private *dev_priv)
+static void vlv_save_gunit_s0ix_state(struct drm_i915_private *i915)
 {
-	struct vlv_s0ix_state *s = dev_priv->vlv_s0ix_state;
+	struct vlv_s0ix_state *s = i915->vlv_s0ix_state;
+	struct intel_uncore *uncore = &i915->uncore;
 	int i;
 
 	if (!s)
 		return;
 
 	/* GAM 0x4000-0x4770 */
-	s->wr_watermark		= I915_READ(GEN7_WR_WATERMARK);
-	s->gfx_prio_ctrl	= I915_READ(GEN7_GFX_PRIO_CTRL);
-	s->arb_mode		= I915_READ(ARB_MODE);
-	s->gfx_pend_tlb0	= I915_READ(GEN7_GFX_PEND_TLB0);
-	s->gfx_pend_tlb1	= I915_READ(GEN7_GFX_PEND_TLB1);
+	s->wr_watermark = intel_uncore_read(uncore, GEN7_WR_WATERMARK);
+	s->gfx_prio_ctrl = intel_uncore_read(uncore, GEN7_GFX_PRIO_CTRL);
+	s->arb_mode = intel_uncore_read(uncore, ARB_MODE);
+	s->gfx_pend_tlb0 = intel_uncore_read(uncore, GEN7_GFX_PEND_TLB0);
+	s->gfx_pend_tlb1 = intel_uncore_read(uncore, GEN7_GFX_PEND_TLB1);
 
 	for (i = 0; i < ARRAY_SIZE(s->lra_limits); i++)
-		s->lra_limits[i] = I915_READ(GEN7_LRA_LIMITS(i));
+		s->lra_limits[i] = intel_uncore_read(uncore, GEN7_LRA_LIMITS(i));
 
-	s->media_max_req_count	= I915_READ(GEN7_MEDIA_MAX_REQ_COUNT);
-	s->gfx_max_req_count	= I915_READ(GEN7_GFX_MAX_REQ_COUNT);
+	s->media_max_req_count = intel_uncore_read(uncore, GEN7_MEDIA_MAX_REQ_COUNT);
+	s->gfx_max_req_count = intel_uncore_read(uncore, GEN7_GFX_MAX_REQ_COUNT);
 
-	s->render_hwsp		= I915_READ(RENDER_HWS_PGA_GEN7);
-	s->ecochk		= I915_READ(GAM_ECOCHK);
-	s->bsd_hwsp		= I915_READ(BSD_HWS_PGA_GEN7);
-	s->blt_hwsp		= I915_READ(BLT_HWS_PGA_GEN7);
+	s->render_hwsp = intel_uncore_read(uncore, RENDER_HWS_PGA_GEN7);
+	s->ecochk = intel_uncore_read(uncore, GAM_ECOCHK);
+	s->bsd_hwsp = intel_uncore_read(uncore, BSD_HWS_PGA_GEN7);
+	s->blt_hwsp = intel_uncore_read(uncore, BLT_HWS_PGA_GEN7);
 
-	s->tlb_rd_addr		= I915_READ(GEN7_TLB_RD_ADDR);
+	s->tlb_rd_addr = intel_uncore_read(uncore, GEN7_TLB_RD_ADDR);
 
 	/* MBC 0x9024-0x91D0, 0x8500 */
-	s->g3dctl		= I915_READ(VLV_G3DCTL);
-	s->gsckgctl		= I915_READ(VLV_GSCKGCTL);
-	s->mbctl		= I915_READ(GEN6_MBCTL);
+	s->g3dctl = intel_uncore_read(uncore, VLV_G3DCTL);
+	s->gsckgctl = intel_uncore_read(uncore, VLV_GSCKGCTL);
+	s->mbctl = intel_uncore_read(uncore, GEN6_MBCTL);
 
 	/* GCP 0x9400-0x9424, 0x8100-0x810C */
-	s->ucgctl1		= I915_READ(GEN6_UCGCTL1);
-	s->ucgctl3		= I915_READ(GEN6_UCGCTL3);
-	s->rcgctl1		= I915_READ(GEN6_RCGCTL1);
-	s->rcgctl2		= I915_READ(GEN6_RCGCTL2);
-	s->rstctl		= I915_READ(GEN6_RSTCTL);
-	s->misccpctl		= I915_READ(GEN7_MISCCPCTL);
+	s->ucgctl1 = intel_uncore_read(uncore, GEN6_UCGCTL1);
+	s->ucgctl3 = intel_uncore_read(uncore, GEN6_UCGCTL3);
+	s->rcgctl1 = intel_uncore_read(uncore, GEN6_RCGCTL1);
+	s->rcgctl2 = intel_uncore_read(uncore, GEN6_RCGCTL2);
+	s->rstctl = intel_uncore_read(uncore, GEN6_RSTCTL);
+	s->misccpctl = intel_uncore_read(uncore, GEN7_MISCCPCTL);
 
 	/* GPM 0xA000-0xAA84, 0x8000-0x80FC */
-	s->gfxpause		= I915_READ(GEN6_GFXPAUSE);
-	s->rpdeuhwtc		= I915_READ(GEN6_RPDEUHWTC);
-	s->rpdeuc		= I915_READ(GEN6_RPDEUC);
-	s->ecobus		= I915_READ(ECOBUS);
-	s->pwrdwnupctl		= I915_READ(VLV_PWRDWNUPCTL);
-	s->rp_down_timeout	= I915_READ(GEN6_RP_DOWN_TIMEOUT);
-	s->rp_deucsw		= I915_READ(GEN6_RPDEUCSW);
-	s->rcubmabdtmr		= I915_READ(GEN6_RCUBMABDTMR);
-	s->rcedata		= I915_READ(VLV_RCEDATA);
-	s->spare2gh		= I915_READ(VLV_SPAREG2H);
+	s->gfxpause = intel_uncore_read(uncore, GEN6_GFXPAUSE);
+	s->rpdeuhwtc = intel_uncore_read(uncore, GEN6_RPDEUHWTC);
+	s->rpdeuc = intel_uncore_read(uncore, GEN6_RPDEUC);
+	s->ecobus = intel_uncore_read(uncore, ECOBUS);
+	s->pwrdwnupctl = intel_uncore_read(uncore, VLV_PWRDWNUPCTL);
+	s->rp_down_timeout = intel_uncore_read(uncore, GEN6_RP_DOWN_TIMEOUT);
+	s->rp_deucsw = intel_uncore_read(uncore, GEN6_RPDEUCSW);
+	s->rcubmabdtmr = intel_uncore_read(uncore, GEN6_RCUBMABDTMR);
+	s->rcedata = intel_uncore_read(uncore, VLV_RCEDATA);
+	s->spare2gh = intel_uncore_read(uncore, VLV_SPAREG2H);
 
 	/* Display CZ domain, 0x4400C-0x4402C, 0x4F000-0x4F11F */
-	s->gt_imr		= I915_READ(GTIMR);
-	s->gt_ier		= I915_READ(GTIER);
-	s->pm_imr		= I915_READ(GEN6_PMIMR);
-	s->pm_ier		= I915_READ(GEN6_PMIER);
+	s->gt_imr = intel_uncore_read(uncore, GTIMR);
+	s->gt_ier = intel_uncore_read(uncore, GTIER);
+	s->pm_imr = intel_uncore_read(uncore, GEN6_PMIMR);
+	s->pm_ier = intel_uncore_read(uncore, GEN6_PMIER);
 
 	for (i = 0; i < ARRAY_SIZE(s->gt_scratch); i++)
-		s->gt_scratch[i] = I915_READ(GEN7_GT_SCRATCH(i));
+		s->gt_scratch[i] = intel_uncore_read(uncore, GEN7_GT_SCRATCH(i));
 
 	/* GT SA CZ domain, 0x100000-0x138124 */
-	s->tilectl		= I915_READ(TILECTL);
-	s->gt_fifoctl		= I915_READ(GTFIFOCTL);
-	s->gtlc_wake_ctrl	= I915_READ(VLV_GTLC_WAKE_CTRL);
-	s->gtlc_survive		= I915_READ(VLV_GTLC_SURVIVABILITY_REG);
-	s->pmwgicz		= I915_READ(VLV_PMWGICZ);
+	s->tilectl = intel_uncore_read(uncore, TILECTL);
+	s->gt_fifoctl = intel_uncore_read(uncore, GTFIFOCTL);
+	s->gtlc_wake_ctrl = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
+	s->gtlc_survive = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
+	s->pmwgicz = intel_uncore_read(uncore, VLV_PMWGICZ);
 
 	/* Gunit-Display CZ domain, 0x182028-0x1821CF */
-	s->gu_ctl0		= I915_READ(VLV_GU_CTL0);
-	s->gu_ctl1		= I915_READ(VLV_GU_CTL1);
-	s->pcbr			= I915_READ(VLV_PCBR);
-	s->clock_gate_dis2	= I915_READ(VLV_GUNIT_CLOCK_GATE2);
+	s->gu_ctl0 = intel_uncore_read(uncore, VLV_GU_CTL0);
+	s->gu_ctl1 = intel_uncore_read(uncore, VLV_GU_CTL1);
+	s->pcbr = intel_uncore_read(uncore, VLV_PCBR);
+	s->clock_gate_dis2 = intel_uncore_read(uncore, VLV_GUNIT_CLOCK_GATE2);
 
 	/*
 	 * Not saving any of:
@@ -186,9 +187,10 @@ static void vlv_save_gunit_s0ix_state(struct drm_i915_private *dev_priv)
 	 */
 }
 
-static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *dev_priv)
+static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
 {
-	struct vlv_s0ix_state *s = dev_priv->vlv_s0ix_state;
+	struct vlv_s0ix_state *s = i915->vlv_s0ix_state;
+	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 	int i;
 
@@ -196,84 +198,84 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *dev_priv)
 		return;
 
 	/* GAM 0x4000-0x4770 */
-	I915_WRITE(GEN7_WR_WATERMARK,	s->wr_watermark);
-	I915_WRITE(GEN7_GFX_PRIO_CTRL,	s->gfx_prio_ctrl);
-	I915_WRITE(ARB_MODE,		s->arb_mode | (0xffff << 16));
-	I915_WRITE(GEN7_GFX_PEND_TLB0,	s->gfx_pend_tlb0);
-	I915_WRITE(GEN7_GFX_PEND_TLB1,	s->gfx_pend_tlb1);
+	intel_uncore_write(uncore, GEN7_WR_WATERMARK, s->wr_watermark);
+	intel_uncore_write(uncore, GEN7_GFX_PRIO_CTRL, s->gfx_prio_ctrl);
+	intel_uncore_write(uncore, ARB_MODE, s->arb_mode | (0xffff << 16));
+	intel_uncore_write(uncore, GEN7_GFX_PEND_TLB0, s->gfx_pend_tlb0);
+	intel_uncore_write(uncore, GEN7_GFX_PEND_TLB1, s->gfx_pend_tlb1);
 
 	for (i = 0; i < ARRAY_SIZE(s->lra_limits); i++)
-		I915_WRITE(GEN7_LRA_LIMITS(i), s->lra_limits[i]);
+		intel_uncore_write(uncore, GEN7_LRA_LIMITS(i), s->lra_limits[i]);
 
-	I915_WRITE(GEN7_MEDIA_MAX_REQ_COUNT, s->media_max_req_count);
-	I915_WRITE(GEN7_GFX_MAX_REQ_COUNT, s->gfx_max_req_count);
+	intel_uncore_write(uncore, GEN7_MEDIA_MAX_REQ_COUNT, s->media_max_req_count);
+	intel_uncore_write(uncore, GEN7_GFX_MAX_REQ_COUNT, s->gfx_max_req_count);
 
-	I915_WRITE(RENDER_HWS_PGA_GEN7,	s->render_hwsp);
-	I915_WRITE(GAM_ECOCHK,		s->ecochk);
-	I915_WRITE(BSD_HWS_PGA_GEN7,	s->bsd_hwsp);
-	I915_WRITE(BLT_HWS_PGA_GEN7,	s->blt_hwsp);
+	intel_uncore_write(uncore, RENDER_HWS_PGA_GEN7, s->render_hwsp);
+	intel_uncore_write(uncore, GAM_ECOCHK, s->ecochk);
+	intel_uncore_write(uncore, BSD_HWS_PGA_GEN7, s->bsd_hwsp);
+	intel_uncore_write(uncore, BLT_HWS_PGA_GEN7, s->blt_hwsp);
 
-	I915_WRITE(GEN7_TLB_RD_ADDR,	s->tlb_rd_addr);
+	intel_uncore_write(uncore, GEN7_TLB_RD_ADDR, s->tlb_rd_addr);
 
 	/* MBC 0x9024-0x91D0, 0x8500 */
-	I915_WRITE(VLV_G3DCTL,		s->g3dctl);
-	I915_WRITE(VLV_GSCKGCTL,	s->gsckgctl);
-	I915_WRITE(GEN6_MBCTL,		s->mbctl);
+	intel_uncore_write(uncore, VLV_G3DCTL, s->g3dctl);
+	intel_uncore_write(uncore, VLV_GSCKGCTL, s->gsckgctl);
+	intel_uncore_write(uncore, GEN6_MBCTL, s->mbctl);
 
 	/* GCP 0x9400-0x9424, 0x8100-0x810C */
-	I915_WRITE(GEN6_UCGCTL1,	s->ucgctl1);
-	I915_WRITE(GEN6_UCGCTL3,	s->ucgctl3);
-	I915_WRITE(GEN6_RCGCTL1,	s->rcgctl1);
-	I915_WRITE(GEN6_RCGCTL2,	s->rcgctl2);
-	I915_WRITE(GEN6_RSTCTL,		s->rstctl);
-	I915_WRITE(GEN7_MISCCPCTL,	s->misccpctl);
+	intel_uncore_write(uncore, GEN6_UCGCTL1, s->ucgctl1);
+	intel_uncore_write(uncore, GEN6_UCGCTL3, s->ucgctl3);
+	intel_uncore_write(uncore, GEN6_RCGCTL1, s->rcgctl1);
+	intel_uncore_write(uncore, GEN6_RCGCTL2, s->rcgctl2);
+	intel_uncore_write(uncore, GEN6_RSTCTL, s->rstctl);
+	intel_uncore_write(uncore, GEN7_MISCCPCTL, s->misccpctl);
 
 	/* GPM 0xA000-0xAA84, 0x8000-0x80FC */
-	I915_WRITE(GEN6_GFXPAUSE,	s->gfxpause);
-	I915_WRITE(GEN6_RPDEUHWTC,	s->rpdeuhwtc);
-	I915_WRITE(GEN6_RPDEUC,		s->rpdeuc);
-	I915_WRITE(ECOBUS,		s->ecobus);
-	I915_WRITE(VLV_PWRDWNUPCTL,	s->pwrdwnupctl);
-	I915_WRITE(GEN6_RP_DOWN_TIMEOUT,s->rp_down_timeout);
-	I915_WRITE(GEN6_RPDEUCSW,	s->rp_deucsw);
-	I915_WRITE(GEN6_RCUBMABDTMR,	s->rcubmabdtmr);
-	I915_WRITE(VLV_RCEDATA,		s->rcedata);
-	I915_WRITE(VLV_SPAREG2H,	s->spare2gh);
+	intel_uncore_write(uncore, GEN6_GFXPAUSE, s->gfxpause);
+	intel_uncore_write(uncore, GEN6_RPDEUHWTC, s->rpdeuhwtc);
+	intel_uncore_write(uncore, GEN6_RPDEUC, s->rpdeuc);
+	intel_uncore_write(uncore, ECOBUS, s->ecobus);
+	intel_uncore_write(uncore, VLV_PWRDWNUPCTL, s->pwrdwnupctl);
+	intel_uncore_write(uncore, GEN6_RP_DOWN_TIMEOUT,s->rp_down_timeout);
+	intel_uncore_write(uncore, GEN6_RPDEUCSW, s->rp_deucsw);
+	intel_uncore_write(uncore, GEN6_RCUBMABDTMR, s->rcubmabdtmr);
+	intel_uncore_write(uncore, VLV_RCEDATA, s->rcedata);
+	intel_uncore_write(uncore, VLV_SPAREG2H, s->spare2gh);
 
 	/* Display CZ domain, 0x4400C-0x4402C, 0x4F000-0x4F11F */
-	I915_WRITE(GTIMR,		s->gt_imr);
-	I915_WRITE(GTIER,		s->gt_ier);
-	I915_WRITE(GEN6_PMIMR,		s->pm_imr);
-	I915_WRITE(GEN6_PMIER,		s->pm_ier);
+	intel_uncore_write(uncore, GTIMR, s->gt_imr);
+	intel_uncore_write(uncore, GTIER, s->gt_ier);
+	intel_uncore_write(uncore, GEN6_PMIMR, s->pm_imr);
+	intel_uncore_write(uncore, GEN6_PMIER, s->pm_ier);
 
 	for (i = 0; i < ARRAY_SIZE(s->gt_scratch); i++)
-		I915_WRITE(GEN7_GT_SCRATCH(i), s->gt_scratch[i]);
+		intel_uncore_write(uncore, GEN7_GT_SCRATCH(i), s->gt_scratch[i]);
 
 	/* GT SA CZ domain, 0x100000-0x138124 */
-	I915_WRITE(TILECTL,			s->tilectl);
-	I915_WRITE(GTFIFOCTL,			s->gt_fifoctl);
+	intel_uncore_write(uncore, TILECTL, s->tilectl);
+	intel_uncore_write(uncore, GTFIFOCTL, s->gt_fifoctl);
 	/*
 	 * Preserve the GT allow wake and GFX force clock bit, they are not
 	 * be restored, as they are used to control the s0ix suspend/resume
 	 * sequence by the caller.
 	 */
-	val = I915_READ(VLV_GTLC_WAKE_CTRL);
+	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
 	val &= VLV_GTLC_ALLOWWAKEREQ;
 	val |= s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ;
-	I915_WRITE(VLV_GTLC_WAKE_CTRL, val);
+	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
 
-	val = I915_READ(VLV_GTLC_SURVIVABILITY_REG);
+	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
 	val &= VLV_GFX_CLK_FORCE_ON_BIT;
 	val |= s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT;
-	I915_WRITE(VLV_GTLC_SURVIVABILITY_REG, val);
+	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
 
-	I915_WRITE(VLV_PMWGICZ,			s->pmwgicz);
+	intel_uncore_write(uncore, VLV_PMWGICZ, s->pmwgicz);
 
 	/* Gunit-Display CZ domain, 0x182028-0x1821CF */
-	I915_WRITE(VLV_GU_CTL0,			s->gu_ctl0);
-	I915_WRITE(VLV_GU_CTL1,			s->gu_ctl1);
-	I915_WRITE(VLV_PCBR,			s->pcbr);
-	I915_WRITE(VLV_GUNIT_CLOCK_GATE2,	s->clock_gate_dis2);
+	intel_uncore_write(uncore, VLV_GU_CTL0, s->gu_ctl0);
+	intel_uncore_write(uncore, VLV_GU_CTL1, s->gu_ctl1);
+	intel_uncore_write(uncore, VLV_PCBR, s->pcbr);
+	intel_uncore_write(uncore, VLV_GUNIT_CLOCK_GATE2, s->clock_gate_dis2);
 }
 
 static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
@@ -300,52 +302,54 @@ static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
 	return ret;
 }
 
-static int vlv_force_gfx_clock(struct drm_i915_private *dev_priv, bool force_on)
+static int vlv_force_gfx_clock(struct drm_i915_private *i915, bool force_on)
 {
+	struct intel_uncore *uncore = &i915->uncore;
 	u32 val;
 	int err;
 
-	val = I915_READ(VLV_GTLC_SURVIVABILITY_REG);
+	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
 	val &= ~VLV_GFX_CLK_FORCE_ON_BIT;
 	if (force_on)
 		val |= VLV_GFX_CLK_FORCE_ON_BIT;
-	I915_WRITE(VLV_GTLC_SURVIVABILITY_REG, val);
+	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
 
 	if (!force_on)
 		return 0;
 
-	err = intel_wait_for_register(&dev_priv->uncore,
+	err = intel_wait_for_register(uncore,
 				      VLV_GTLC_SURVIVABILITY_REG,
 				      VLV_GFX_CLK_STATUS_BIT,
 				      VLV_GFX_CLK_STATUS_BIT,
 				      20);
 	if (err)
-		drm_err(&dev_priv->drm,
+		drm_err(&i915->drm,
 			"timeout waiting for GFX clock force-on (%08x)\n",
-			I915_READ(VLV_GTLC_SURVIVABILITY_REG));
+			intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG));
 
 	return err;
 }
 
-static int vlv_allow_gt_wake(struct drm_i915_private *dev_priv, bool allow)
+static int vlv_allow_gt_wake(struct drm_i915_private *i915, bool allow)
 {
+	struct intel_uncore *uncore = &i915->uncore;
 	u32 mask;
 	u32 val;
 	int err;
 
-	val = I915_READ(VLV_GTLC_WAKE_CTRL);
+	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
 	val &= ~VLV_GTLC_ALLOWWAKEREQ;
 	if (allow)
 		val |= VLV_GTLC_ALLOWWAKEREQ;
-	I915_WRITE(VLV_GTLC_WAKE_CTRL, val);
-	POSTING_READ(VLV_GTLC_WAKE_CTRL);
+	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
+	intel_uncore_posting_read(uncore, VLV_GTLC_WAKE_CTRL);
 
 	mask = VLV_GTLC_ALLOWWAKEACK;
 	val = allow ? mask : 0;
 
-	err = vlv_wait_for_pw_status(dev_priv, mask, val);
+	err = vlv_wait_for_pw_status(i915, mask, val);
 	if (err)
-		drm_err(&dev_priv->drm, "timeout disabling GT waking\n");
+		drm_err(&i915->drm, "timeout disabling GT waking\n");
 
 	return err;
 }
@@ -372,14 +376,15 @@ static void vlv_wait_for_gt_wells(struct drm_i915_private *dev_priv,
 			onoff(wait_for_on));
 }
 
-static void vlv_check_no_gt_access(struct drm_i915_private *dev_priv)
+static void vlv_check_no_gt_access(struct drm_i915_private *i915)
 {
-	if (!(I915_READ(VLV_GTLC_PW_STATUS) & VLV_GTLC_ALLOWWAKEERR))
+	struct intel_uncore *uncore = &i915->uncore;
+
+	if (!(intel_uncore_read(uncore, VLV_GTLC_PW_STATUS) & VLV_GTLC_ALLOWWAKEERR))
 		return;
 
-	drm_dbg(&dev_priv->drm,
-		"GT register access while GT waking disabled\n");
-	I915_WRITE(VLV_GTLC_PW_STATUS, VLV_GTLC_ALLOWWAKEERR);
+	drm_dbg(&i915->drm, "GT register access while GT waking disabled\n");
+	intel_uncore_write(uncore, VLV_GTLC_PW_STATUS, VLV_GTLC_ALLOWWAKEERR);
 }
 
 int vlv_suspend_complete(struct drm_i915_private *dev_priv)
@@ -398,7 +403,7 @@ int vlv_suspend_complete(struct drm_i915_private *dev_priv)
 
 	mask = VLV_GTLC_RENDER_CTX_EXISTS | VLV_GTLC_MEDIA_CTX_EXISTS;
 	drm_WARN_ON(&dev_priv->drm,
-		    (I915_READ(VLV_GTLC_WAKE_CTRL) & mask) != mask);
+		    (intel_uncore_read(&dev_priv->uncore, VLV_GTLC_WAKE_CTRL) & mask) != mask);
 
 	vlv_check_no_gt_access(dev_priv);
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
