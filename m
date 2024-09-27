Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DBE988733
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 16:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEAE10EC7D;
	Fri, 27 Sep 2024 14:36:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OvXk6Oeb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A208710EC7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2024 14:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727447759; x=1758983759;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1SERZQ2rZeSPzNP7qdAVMBkehzVpxTc8NWedi+BuTa8=;
 b=OvXk6OebnbBCJeXl172m+TylyMA0hW4NwaCieS2VKdw90JVJmPgAJugi
 klo9V650R8QzSg4BUR8yIwktojhgnK8b0eqh4mqvcm3Dn/nnftLwZ7qIp
 f+8T9Nhc9xth6zwRtVP+AiSFXghAHJKEIPnkDvW6fa8apX3XQttbAucRs
 FC26xFAJdcfjc4UJkA5RVVosw9JUKZs+eRPlAJCq86vlLU6q5xL+QdHsM
 Okl3bsNIw8Ozh+Dja+8HUgn9XULCXJbsi7PFZN4puH28psFVV6lksBENQ
 8BWCSSTsPWUH2E3M+Za6tznC1rpaq/Yx8qCS8GejTBzqIxTFxMNYLpbfd A==;
X-CSE-ConnectionGUID: E1KhOtdnTemmUkEe2qTLrg==
X-CSE-MsgGUID: aHnRrgZVQYqis+Bh5rQPmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11208"; a="26102312"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26102312"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 07:35:59 -0700
X-CSE-ConnectionGUID: c2B10eLcRJKFF9cmT27fIQ==
X-CSE-MsgGUID: s24toaSKTTaqP9SF/iCFRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72712128"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 07:35:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 17:35:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915: Switch over to gen3 irq code on gen2
Date: Fri, 27 Sep 2024 17:35:45 +0300
Message-ID: <20240927143545.8665-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
References: <20240927143545.8665-1-ville.syrjala@linux.intel.com>
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

The only real reason why we have the gen2 vs. gen3+ split
in irq handling is that bspec claims that IIR/IMR/IER/ISR
and EMR are only 16 bits on gen2, as opposed to being 32
bits on gen3+. That doesn't seem to be a meaningful
distinction as 32bit access to these registers works
perfectly fine on gen2

Interestingly the 16 msbs of IMR are in fact hardcoded
to 1 on gen2, which to me indicates that 32bit access
was the plan all along, and perhaps someone just forgot
to update the spec.

Nuke the special 16bit gen2 irq code and switch over to
the gen3 code.

Gen2 doesn't have the ASLE interrupt, which just needs
a small tweak in i915_irq_postinstall().

And so far we've not had a codepath that could enable the
legacy BLC interrupt on gen2. Now we do, but we'll never
actually do it since gen2 machines don't have OpRegion.
(and neither do i915/i945 machines btw). On these older
platforms the legacy BLC interrupt is meant to be used
in conjunction with the LBPC backlight stuff, but we
never actually switch off the legacy/combination mode
and thus don't use the interrupt either.

This was quickly smoke tested on all gen2 variants.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  18 --
 .../gpu/drm/i915/display/intel_display_irq.h  |   1 -
 drivers/gpu/drm/i915/i915_irq.c               | 188 +-----------------
 3 files changed, 9 insertions(+), 198 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index ba82830c464e..8c548ee56c12 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -476,62 +476,44 @@ void i9xx_pipestat_irq_ack(struct drm_i915_private *dev_priv,
 		pipe_stats[pipe] = intel_uncore_read(&dev_priv->uncore, reg) & status_mask;
 		enable_mask = i915_pipestat_enable_mask(dev_priv, pipe);
 
 		/*
 		 * Clear the PIPE*STAT regs before the IIR
 		 *
 		 * Toggle the enable bits to make sure we get an
 		 * edge in the ISR pipe event bit if we don't clear
 		 * all the enabled status bits. Otherwise the edge
 		 * triggered IIR on i965/g4x wouldn't notice that
 		 * an interrupt is still pending.
 		 */
 		if (pipe_stats[pipe]) {
 			intel_uncore_write(&dev_priv->uncore, reg, pipe_stats[pipe]);
 			intel_uncore_write(&dev_priv->uncore, reg, enable_mask);
 		}
 	}
 	spin_unlock(&dev_priv->irq_lock);
 }
 
-void i8xx_pipestat_irq_handler(struct drm_i915_private *dev_priv,
-			       u16 iir, u32 pipe_stats[I915_MAX_PIPES])
-{
-	enum pipe pipe;
-
-	for_each_pipe(dev_priv, pipe) {
-		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
-			intel_handle_vblank(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
-			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
-
-		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
-			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
-	}
-}
-
 void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
 	struct intel_display *display = &dev_priv->display;
-
 	bool blc_event = false;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
 		if (pipe_stats[pipe] & PIPE_VBLANK_INTERRUPT_STATUS)
 			intel_handle_vblank(dev_priv, pipe);
 
 		if (pipe_stats[pipe] & PIPE_LEGACY_BLC_EVENT_STATUS)
 			blc_event = true;
 
 		if (pipe_stats[pipe] & PIPE_CRC_DONE_INTERRUPT_STATUS)
 			i9xx_pipe_crc_irq_handler(dev_priv, pipe);
 
 		if (pipe_stats[pipe] & PIPE_FIFO_UNDERRUN_STATUS)
 			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
 	}
 
 	if (blc_event || (iir & I915_ASLE_INTERRUPT))
 		intel_opregion_asle_intr(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
index 093e356a2894..bf9d269d0e3f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.h
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
@@ -58,25 +58,24 @@ void i9xx_display_irq_reset(struct drm_i915_private *i915);
 void vlv_display_irq_reset(struct drm_i915_private *i915);
 void gen8_display_irq_reset(struct drm_i915_private *i915);
 void gen11_display_irq_reset(struct drm_i915_private *i915);
 
 void vlv_display_irq_postinstall(struct drm_i915_private *i915);
 void ilk_de_irq_postinstall(struct drm_i915_private *i915);
 void gen8_de_irq_postinstall(struct drm_i915_private *i915);
 void gen11_de_irq_postinstall(struct drm_i915_private *i915);
 void dg1_de_irq_postinstall(struct drm_i915_private *i915);
 
 u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
 void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
 void i915_enable_asle_pipestat(struct drm_i915_private *i915);
 
 void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
 void i915_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 void i965_pipestat_irq_handler(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
 void valleyview_pipestat_irq_handler(struct drm_i915_private *i915, u32 pipe_stats[I915_MAX_PIPES]);
-void i8xx_pipestat_irq_handler(struct drm_i915_private *i915, u16 iir, u32 pipe_stats[I915_MAX_PIPES]);
 
 void intel_display_irq_init(struct drm_i915_private *i915);
 
 #endif /* __INTEL_DISPLAY_IRQ_H__ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index f02414dead8c..ef1a60fc26fa 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -75,111 +75,71 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
 	 * should at least prevent store tearing.
 	 */
 	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
 }
 
 void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
 		    i915_reg_t iir, i915_reg_t ier)
 {
 	intel_uncore_write(uncore, imr, 0xffffffff);
 	intel_uncore_posting_read(uncore, imr);
 
 	intel_uncore_write(uncore, ier, 0);
 
 	/* IIR can theoretically queue up two events. Be paranoid. */
 	intel_uncore_write(uncore, iir, 0xffffffff);
 	intel_uncore_posting_read(uncore, iir);
 	intel_uncore_write(uncore, iir, 0xffffffff);
 	intel_uncore_posting_read(uncore, iir);
 }
 
-static void gen2_irq_reset(struct intel_uncore *uncore)
-{
-	intel_uncore_write16(uncore, GEN2_IMR, 0xffff);
-	intel_uncore_posting_read16(uncore, GEN2_IMR);
-
-	intel_uncore_write16(uncore, GEN2_IER, 0);
-
-	/* IIR can theoretically queue up two events. Be paranoid. */
-	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
-	intel_uncore_posting_read16(uncore, GEN2_IIR);
-	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
-	intel_uncore_posting_read16(uncore, GEN2_IIR);
-}
-
 /*
  * We should clear IMR at preinstall/uninstall, and just check at postinstall.
  */
 void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 {
 	u32 val = intel_uncore_read(uncore, reg);
 
 	if (val == 0)
 		return;
 
 	drm_WARN(&uncore->i915->drm, 1,
 		 "Interrupt register 0x%x is not zero: 0x%08x\n",
 		 i915_mmio_reg_offset(reg), val);
 	intel_uncore_write(uncore, reg, 0xffffffff);
 	intel_uncore_posting_read(uncore, reg);
 	intel_uncore_write(uncore, reg, 0xffffffff);
 	intel_uncore_posting_read(uncore, reg);
 }
 
-static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
-{
-	u16 val = intel_uncore_read16(uncore, GEN2_IIR);
-
-	if (val == 0)
-		return;
-
-	drm_WARN(&uncore->i915->drm, 1,
-		 "Interrupt register 0x%x is not zero: 0x%08x\n",
-		 i915_mmio_reg_offset(GEN2_IIR), val);
-	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
-	intel_uncore_posting_read16(uncore, GEN2_IIR);
-	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
-	intel_uncore_posting_read16(uncore, GEN2_IIR);
-}
-
 void gen3_irq_init(struct intel_uncore *uncore,
 		   i915_reg_t imr, u32 imr_val,
 		   i915_reg_t ier, u32 ier_val,
 		   i915_reg_t iir)
 {
 	gen3_assert_iir_is_zero(uncore, iir);
 
 	intel_uncore_write(uncore, ier, ier_val);
 	intel_uncore_write(uncore, imr, imr_val);
 	intel_uncore_posting_read(uncore, imr);
 }
 
-static void gen2_irq_init(struct intel_uncore *uncore,
-			  u32 imr_val, u32 ier_val)
-{
-	gen2_assert_iir_is_zero(uncore);
-
-	intel_uncore_write16(uncore, GEN2_IER, ier_val);
-	intel_uncore_write16(uncore, GEN2_IMR, imr_val);
-	intel_uncore_posting_read16(uncore, GEN2_IMR);
-}
-
 /**
  * ivb_parity_work - Workqueue called when a parity error interrupt
  * occurred.
  * @work: workqueue struct
  *
  * Doesn't actually do anything except notify userspace. As a consequence of
  * this event, userspace should try to remap the bad rows since statistically
  * it is likely the same row is more likely to go bad again.
  */
 static void ivb_parity_work(struct work_struct *work)
 {
 	struct drm_i915_private *dev_priv =
 		container_of(work, typeof(*dev_priv), l3_parity.error_work);
 	struct intel_gt *gt = to_gt(dev_priv);
 	u32 error_status, row, bank, subbank;
 	char *parity_event[6];
 	u32 misccpctl;
 	u8 slice = 0;
 
 	/* We must turn off DOP level clock gating to access the L3 registers.
@@ -828,258 +788,134 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
 
 	dg1_de_irq_postinstall(dev_priv);
 
 	dg1_master_intr_enable(intel_uncore_regs(uncore));
 	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
 }
 
 static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	gen8_gt_irq_postinstall(to_gt(dev_priv));
 
 	spin_lock_irq(&dev_priv->irq_lock);
 	if (dev_priv->display.irq.display_irqs_enabled)
 		vlv_display_irq_postinstall(dev_priv);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
 	intel_uncore_posting_read(&dev_priv->uncore, GEN8_MASTER_IRQ);
 }
 
-static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-
-	i9xx_display_irq_reset(dev_priv);
-
-	gen2_irq_reset(uncore);
-	dev_priv->irq_mask = ~0u;
-}
-
 static u32 i9xx_error_mask(struct drm_i915_private *i915)
 {
 	/*
 	 * On gen2/3 FBC generates (seemingly spurious)
 	 * display INVALID_GTT/INVALID_GTT_PTE table errors.
 	 *
 	 * Also gen3 bspec has this to say:
 	 * "DISPA_INVALID_GTT_PTE
 	 "  [DevNapa] : Reserved. This bit does not reflect the page
 	 "              table error for the display plane A."
 	 *
 	 * Unfortunately we can't mask off individual PGTBL_ER bits,
 	 * so we just have to mask off all page table errors via EMR.
 	 */
 	if (HAS_FBC(i915))
 		return ~I915_ERROR_MEMORY_REFRESH;
 	else
 		return ~(I915_ERROR_PAGE_TABLE |
 			 I915_ERROR_MEMORY_REFRESH);
 }
 
-static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
-{
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u16 enable_mask;
-
-	intel_uncore_write16(uncore, EMR, i9xx_error_mask(dev_priv));
-
-	/* Unmask the interrupts that we always want on. */
-	dev_priv->irq_mask =
-		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		  I915_MASTER_ERROR_INTERRUPT);
-
-	enable_mask =
-		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
-		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
-		I915_MASTER_ERROR_INTERRUPT |
-		I915_USER_INTERRUPT;
-
-	gen2_irq_init(uncore, dev_priv->irq_mask, enable_mask);
-
-	/* Interrupt setup is already guaranteed to be single-threaded, this is
-	 * just to make the assert_spin_locked check happy. */
-	spin_lock_irq(&dev_priv->irq_lock);
-	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
-	spin_unlock_irq(&dev_priv->irq_lock);
-}
-
-static void i8xx_error_irq_ack(struct drm_i915_private *i915,
-			       u16 *eir, u16 *eir_stuck)
-{
-	struct intel_uncore *uncore = &i915->uncore;
-	u16 emr;
-
-	*eir = intel_uncore_read16(uncore, EIR);
-	intel_uncore_write16(uncore, EIR, *eir);
-
-	*eir_stuck = intel_uncore_read16(uncore, EIR);
-	if (*eir_stuck == 0)
-		return;
-
-	/*
-	 * Toggle all EMR bits to make sure we get an edge
-	 * in the ISR master error bit if we don't clear
-	 * all the EIR bits. Otherwise the edge triggered
-	 * IIR on i965/g4x wouldn't notice that an interrupt
-	 * is still pending. Also some EIR bits can't be
-	 * cleared except by handling the underlying error
-	 * (or by a GPU reset) so we mask any bit that
-	 * remains set.
-	 */
-	emr = intel_uncore_read16(uncore, EMR);
-	intel_uncore_write16(uncore, EMR, 0xffff);
-	intel_uncore_write16(uncore, EMR, emr | *eir_stuck);
-}
-
-static void i8xx_error_irq_handler(struct drm_i915_private *dev_priv,
-				   u16 eir, u16 eir_stuck)
-{
-	drm_dbg(&dev_priv->drm, "Master Error: EIR 0x%04x\n", eir);
-
-	if (eir_stuck)
-		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%04x, masked\n",
-			eir_stuck);
-
-	drm_dbg(&dev_priv->drm, "PGTBL_ER: 0x%08x\n",
-		intel_uncore_read(&dev_priv->uncore, PGTBL_ER));
-}
-
 static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
 			       u32 *eir, u32 *eir_stuck)
 {
 	u32 emr;
 
 	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
 	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
 
 	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
 	if (*eir_stuck == 0)
 		return;
 
 	/*
 	 * Toggle all EMR bits to make sure we get an edge
 	 * in the ISR master error bit if we don't clear
 	 * all the EIR bits. Otherwise the edge triggered
 	 * IIR on i965/g4x wouldn't notice that an interrupt
 	 * is still pending. Also some EIR bits can't be
 	 * cleared except by handling the underlying error
 	 * (or by a GPU reset) so we mask any bit that
 	 * remains set.
 	 */
 	emr = intel_uncore_read(&dev_priv->uncore, EMR);
 	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
 	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
 }
 
 static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
 				   u32 eir, u32 eir_stuck)
 {
 	drm_dbg(&dev_priv->drm, "Master Error, EIR 0x%08x\n", eir);
 
 	if (eir_stuck)
 		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%08x, masked\n",
 			eir_stuck);
 
 	drm_dbg(&dev_priv->drm, "PGTBL_ER: 0x%08x\n",
 		intel_uncore_read(&dev_priv->uncore, PGTBL_ER));
 }
 
-static irqreturn_t i8xx_irq_handler(int irq, void *arg)
-{
-	struct drm_i915_private *dev_priv = arg;
-	irqreturn_t ret = IRQ_NONE;
-
-	if (!intel_irqs_enabled(dev_priv))
-		return IRQ_NONE;
-
-	/* IRQs are synced during runtime_suspend, we don't require a wakeref */
-	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-
-	do {
-		u32 pipe_stats[I915_MAX_PIPES] = {};
-		u16 eir = 0, eir_stuck = 0;
-		u16 iir;
-
-		iir = intel_uncore_read16(&dev_priv->uncore, GEN2_IIR);
-		if (iir == 0)
-			break;
-
-		ret = IRQ_HANDLED;
-
-		/* Call regardless, as some status bits might not be
-		 * signalled in iir */
-		i9xx_pipestat_irq_ack(dev_priv, iir, pipe_stats);
-
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			i8xx_error_irq_ack(dev_priv, &eir, &eir_stuck);
-
-		intel_uncore_write16(&dev_priv->uncore, GEN2_IIR, iir);
-
-		if (iir & I915_USER_INTERRUPT)
-			intel_engine_cs_irq(to_gt(dev_priv)->engine[RCS0], iir);
-
-		if (iir & I915_MASTER_ERROR_INTERRUPT)
-			i8xx_error_irq_handler(dev_priv, eir, eir_stuck);
-
-		i8xx_pipestat_irq_handler(dev_priv, iir, pipe_stats);
-	} while (0);
-
-	pmu_irq_stats(dev_priv, ret);
-
-	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
-
-	return ret;
-}
-
 static void i915_irq_reset(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 
 	i9xx_display_irq_reset(dev_priv);
 
 	GEN3_IRQ_RESET(uncore, GEN2_);
 	dev_priv->irq_mask = ~0u;
 }
 
 static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
 	intel_uncore_write(uncore, EMR, i9xx_error_mask(dev_priv));
 
 	dev_priv->irq_mask =
-		~(I915_ASLE_INTERRUPT |
-		  I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
+		~(I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		  I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
 		  I915_MASTER_ERROR_INTERRUPT);
 
 	enable_mask =
-		I915_ASLE_INTERRUPT |
 		I915_DISPLAY_PIPE_A_EVENT_INTERRUPT |
 		I915_DISPLAY_PIPE_B_EVENT_INTERRUPT |
 		I915_MASTER_ERROR_INTERRUPT |
 		I915_USER_INTERRUPT;
 
+	if (DISPLAY_VER(dev_priv) >= 3) {
+		dev_priv->irq_mask &= ~I915_ASLE_INTERRUPT;
+		enable_mask |= I915_ASLE_INTERRUPT;
+	}
+
 	if (I915_HAS_HOTPLUG(dev_priv)) {
 		dev_priv->irq_mask &= ~I915_DISPLAY_PORT_INTERRUPT;
 		enable_mask |= I915_DISPLAY_PORT_INTERRUPT;
 	}
 
 	GEN3_IRQ_INIT(uncore, GEN2_, dev_priv->irq_mask, enable_mask);
 
 	/* Interrupt setup is already guaranteed to be single-threaded, this is
 	 * just to make the assert_spin_locked check happy. */
 	spin_lock_irq(&dev_priv->irq_lock);
 	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	i915_enable_pipestat(dev_priv, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STATUS);
 	spin_unlock_irq(&dev_priv->irq_lock);
 
 	i915_enable_asle_pipestat(dev_priv);
 }
 
 static irqreturn_t i915_irq_handler(int irq, void *arg)
 {
 	struct drm_i915_private *dev_priv = arg;
@@ -1287,94 +1123,88 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
  *
  * This function deinitializes all the IRQ support.
  */
 void intel_irq_fini(struct drm_i915_private *i915)
 {
 	int i;
 
 	for (i = 0; i < MAX_L3_SLICES; ++i)
 		kfree(i915->l3_parity.remap_info[i]);
 }
 
 static irq_handler_t intel_irq_handler(struct drm_i915_private *dev_priv)
 {
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv))
 			return cherryview_irq_handler;
 		else if (IS_VALLEYVIEW(dev_priv))
 			return valleyview_irq_handler;
 		else if (GRAPHICS_VER(dev_priv) == 4)
 			return i965_irq_handler;
-		else if (GRAPHICS_VER(dev_priv) == 3)
+		else
 			return i915_irq_handler;
-		else
-			return i8xx_irq_handler;
 	} else {
 		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
 			return dg1_irq_handler;
 		else if (GRAPHICS_VER(dev_priv) >= 11)
 			return gen11_irq_handler;
 		else if (GRAPHICS_VER(dev_priv) >= 8)
 			return gen8_irq_handler;
 		else
 			return ilk_irq_handler;
 	}
 }
 
 static void intel_irq_reset(struct drm_i915_private *dev_priv)
 {
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv))
 			cherryview_irq_reset(dev_priv);
 		else if (IS_VALLEYVIEW(dev_priv))
 			valleyview_irq_reset(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) == 4)
 			i965_irq_reset(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) == 3)
+		else
 			i915_irq_reset(dev_priv);
-		else
-			i8xx_irq_reset(dev_priv);
 	} else {
 		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
 			dg1_irq_reset(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) >= 11)
 			gen11_irq_reset(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) >= 8)
 			gen8_irq_reset(dev_priv);
 		else
 			ilk_irq_reset(dev_priv);
 	}
 }
 
 static void intel_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	if (HAS_GMCH(dev_priv)) {
 		if (IS_CHERRYVIEW(dev_priv))
 			cherryview_irq_postinstall(dev_priv);
 		else if (IS_VALLEYVIEW(dev_priv))
 			valleyview_irq_postinstall(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) == 4)
 			i965_irq_postinstall(dev_priv);
-		else if (GRAPHICS_VER(dev_priv) == 3)
+		else
 			i915_irq_postinstall(dev_priv);
-		else
-			i8xx_irq_postinstall(dev_priv);
 	} else {
 		if (GRAPHICS_VER_FULL(dev_priv) >= IP_VER(12, 10))
 			dg1_irq_postinstall(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) >= 11)
 			gen11_irq_postinstall(dev_priv);
 		else if (GRAPHICS_VER(dev_priv) >= 8)
 			gen8_irq_postinstall(dev_priv);
 		else
 			ilk_irq_postinstall(dev_priv);
 	}
 }
 
 /**
  * intel_irq_install - enables the hardware interrupt
  * @dev_priv: i915 device instance
  *
  * This function enables the hardware interrupt handling, but leaves the hotplug
  * handling still disabled. It is called after intel_irq_init().
  *
  * In the driver load and resume code we need working interrupts in a few places
-- 
2.45.2

