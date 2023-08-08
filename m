Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDC6773AC7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 16:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1A310E004;
	Tue,  8 Aug 2023 14:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD5910E004
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 14:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691506363; x=1723042363;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=CEVNnTkpkmvdQ01UpUdmTkZuTlZkfJQsOCE1ao2pi/M=;
 b=Df93T7dXzgJMaFIv5tvTKiifV6nsZNedVATYd4jNCezsuGWGJzXgAsGw
 cY6y2/hEbcL9JoUK1SDNjAAFLMF4jd0W5APSz1Ci+4KFRP707P05lEiGz
 ZhLcC1dZNLv8f2OFSaJBT6nrtZ+BcnPD0pTHl5bftZXJitz7RX5mFKVQj
 hm0wKEOIOHVMX9csKu/YNdBpG5pWYgOTdTThc5Ilsb28R2mqxHyQHJ+CQ
 lboAww6hIazjLO595NkpwuBM833QgAdfVFsDIbTnZlaz9W7ysdDqYwxUx
 kx2HdcOKnPEJneAma/pZQvZnJhwSSJFyZNJoRT2AFQpCod4JpX54L2zXf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="351148218"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="351148218"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 07:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="977897027"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; d="scan'208";a="977897027"
Received: from sschwar3-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 07:52:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org, Imre Deak <imre.deak@intel.com>, Mika
 Kahola <mika.kahola@intel.com>
In-Reply-To: <20230413212443.1504245-6-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
 <20230413212443.1504245-6-radhakrishna.sripada@intel.com>
Date: Tue, 08 Aug 2023 17:52:39 +0300
Message-ID: <871qgdtwlk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/mtl: MTL PICA hotplug detection
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

On Thu, 13 Apr 2023, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> From: Mika Kahola <mika.kahola@intel.com>
>
> PICA is used for DP alt mode and TBT modes. Hotplug interruption is routed
> from PICA chip to south display engine and from there to north display
> engine. This patch adds functionality to enable hotplug detection for
> all Type-C ports (4 ports available).
>
> Differently from HPD in south display, PICA provides a dedicated HPD
> control register for each supported port, so we loop over ports
> ourselves instead of using intel_hpd_hotplug_enables() or
> intel_get_hpd_pins().

See inline for a question about this patch, i.e. commit babde06db885
("drm/i915/mtl: MTL PICA hotplug detection").

> BSpec: 49305, 55726, 65107, 65300
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 237 +++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_reg.h |  31 ++++-
>  2 files changed, 261 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index d24bdea65a3d..b4dd6a5a536f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -162,6 +162,13 @@ static const u32 hpd_gen11[HPD_NUM_PINS] = {
>  	[HPD_PORT_TC6] = GEN11_TC_HOTPLUG(HPD_PORT_TC6) | GEN11_TBT_HOTPLUG(HPD_PORT_TC6),
>  };
>  
> +static const u32 hpd_xelpdp[HPD_NUM_PINS] = {
> +	[HPD_PORT_TC1] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC1) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC1),
> +	[HPD_PORT_TC2] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC2) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC2),
> +	[HPD_PORT_TC3] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC3) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC3),
> +	[HPD_PORT_TC4] = XELPDP_TBT_HOTPLUG(HPD_PORT_TC4) | XELPDP_DP_ALT_HOTPLUG(HPD_PORT_TC4),
> +};
> +
>  static const u32 hpd_icp[HPD_NUM_PINS] = {
>  	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
>  	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
> @@ -182,6 +189,15 @@ static const u32 hpd_sde_dg1[HPD_NUM_PINS] = {
>  	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_DG2(HPD_PORT_TC1),
>  };
>  
> +static const u32 hpd_mtp[HPD_NUM_PINS] = {
> +	[HPD_PORT_A] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_A),
> +	[HPD_PORT_B] = SDE_DDI_HOTPLUG_ICP(HPD_PORT_B),
> +	[HPD_PORT_TC1] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC1),
> +	[HPD_PORT_TC2] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC2),
> +	[HPD_PORT_TC3] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC3),
> +	[HPD_PORT_TC4] = SDE_TC_HOTPLUG_ICP(HPD_PORT_TC4),
> +};
> +
>  static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_hotplug *hpd = &dev_priv->display.hotplug;
> @@ -195,7 +211,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> -	if (DISPLAY_VER(dev_priv) >= 11)
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		hpd->hpd = hpd_xelpdp;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		hpd->hpd = hpd_gen11;
>  	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>  		hpd->hpd = hpd_bxt;
> @@ -214,6 +232,8 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> +		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		hpd->pch_hpd = hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> @@ -1559,6 +1579,44 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  		cpt_serr_int_handler(dev_priv);
>  }
>  
> +static void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
> +{
> +	enum hpd_pin pin;
> +	u32 hotplug_trigger = iir & (XELPDP_DP_ALT_HOTPLUG_MASK | XELPDP_TBT_HOTPLUG_MASK);
> +	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
> +	u32 pin_mask = 0, long_mask = 0;
> +
> +	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
> +		u32 val;
> +
> +		if (!(i915->display.hotplug.hpd[pin] & hotplug_trigger))
> +			continue;
> +
> +		pin_mask |= BIT(pin);
> +
> +		val = intel_de_read(i915, XELPDP_PORT_HOTPLUG_CTL(pin));
> +		intel_de_write(i915, XELPDP_PORT_HOTPLUG_CTL(pin), val);
> +
> +		if (val & (XELPDP_DP_ALT_HPD_LONG_DETECT | XELPDP_TBT_HPD_LONG_DETECT))
> +			long_mask |= BIT(pin);
> +	}
> +
> +	if (pin_mask) {
> +		drm_dbg(&i915->drm,
> +			"pica hotplug event received, stat 0x%08x, pins 0x%08x, long 0x%08x\n",
> +			hotplug_trigger, pin_mask, long_mask);
> +
> +		intel_hpd_irq_handler(i915, pin_mask, long_mask);
> +	}
> +
> +	if (trigger_aux)
> +		dp_aux_irq_handler(i915);
> +
> +	if (!pin_mask && !trigger_aux)
> +		drm_err(&i915->drm,
> +			"Unexpected DE HPD/AUX interrupt 0x%08x\n", iir);
> +}
> +
>  static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  {
>  	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
> @@ -2029,6 +2087,34 @@ u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
>  	return mask;
>  }
>  
> +static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
> +{
> +	u32 pica_ier = 0;
> +
> +	*pica_iir = 0;
> +	*pch_iir = intel_de_read(i915, SDEIIR);
> +	if (!*pch_iir)
> +		return;
> +
> +	/**
> +	 * PICA IER must be disabled/re-enabled around clearing PICA IIR and
> +	 * SDEIIR, to avoid losing PICA IRQs and to ensure that such IRQs set
> +	 * their flags both in the PICA and SDE IIR.
> +	 */
> +	if (*pch_iir & SDE_PICAINTERRUPT) {
> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
> +
> +		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
> +		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
> +		intel_de_write(i915, PICAINTERRUPT_IIR, *pica_iir);
> +	}
> +
> +	intel_de_write(i915, SDEIIR, *pch_iir);
> +
> +	if (pica_ier)
> +		intel_de_write(i915, PICAINTERRUPT_IER, pica_ier);
> +}
> +
>  static irqreturn_t
>  gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  {
> @@ -2153,16 +2239,20 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&
>  	    master_ctl & GEN8_DE_PCH_IRQ) {
> +		u32 pica_iir;
> +
>  		/*
>  		 * FIXME(BDW): Assume for now that the new interrupt handling
>  		 * scheme also closed the SDE interrupt handling race we've seen
>  		 * on older pch-split platforms. But this needs testing.
>  		 */
> -		iir = intel_uncore_read(&dev_priv->uncore, SDEIIR);
> +		gen8_read_and_ack_pch_irqs(dev_priv, &iir, &pica_iir);
>  		if (iir) {
> -			intel_uncore_write(&dev_priv->uncore, SDEIIR, iir);
>  			ret = IRQ_HANDLED;
>  
> +			if (pica_iir)
> +				xelpdp_pica_irq_handler(dev_priv, pica_iir);
> +
>  			if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  				icp_irq_handler(dev_priv, iir);
>  			else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
> @@ -2740,7 +2830,11 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	GEN3_IRQ_RESET(uncore, GEN8_DE_PORT_);
>  	GEN3_IRQ_RESET(uncore, GEN8_DE_MISC_);
> -	GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		GEN3_IRQ_RESET(uncore, PICAINTERRUPT_);
> +	else
> +		GEN3_IRQ_RESET(uncore, GEN11_DE_HPD_);
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
> @@ -3031,6 +3125,116 @@ static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  		icp_hpd_irq_setup(dev_priv);
>  }
>  
> +static u32 mtp_ddi_hotplug_enables(struct intel_encoder *encoder)
> +{
> +	switch (encoder->hpd_pin) {
> +	case HPD_PORT_A:
> +	case HPD_PORT_B:
> +		return SHOTPLUG_CTL_DDI_HPD_ENABLE(encoder->hpd_pin);
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static u32 mtp_tc_hotplug_enables(struct intel_encoder *encoder)
> +{
> +	switch (encoder->hpd_pin) {
> +	case HPD_PORT_TC1:
> +	case HPD_PORT_TC2:
> +	case HPD_PORT_TC3:
> +	case HPD_PORT_TC4:
> +		return ICP_TC_HPD_ENABLE(encoder->hpd_pin);
> +	default:
> +		return 0;
> +	}
> +}
> +
> +static void mtp_ddi_hpd_detection_setup(struct drm_i915_private *i915)
> +{
> +	intel_de_rmw(i915, SHOTPLUG_CTL_DDI,
> +		     (SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
> +		      SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B)),
> +		     intel_hpd_hotplug_enables(i915, mtp_ddi_hotplug_enables));
> +}
> +
> +static void mtp_tc_hpd_detection_setup(struct drm_i915_private *i915)
> +{
> +	intel_de_rmw(i915, SHOTPLUG_CTL_TC,
> +		     (ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
> +		      ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
> +		      ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
> +		      ICP_TC_HPD_ENABLE(HPD_PORT_TC4)),
> +		     intel_hpd_hotplug_enables(i915, mtp_tc_hotplug_enables));
> +}
> +
> +static void mtp_hpd_invert(struct drm_i915_private *i915)
> +{
> +	u32 val = (INVERT_DDIA_HPD |
> +		   INVERT_DDIB_HPD |
> +		   INVERT_DDIC_HPD |
> +		   INVERT_TC1_HPD |
> +		   INVERT_TC2_HPD |
> +		   INVERT_TC3_HPD |
> +		   INVERT_TC4_HPD |
> +		   INVERT_DDID_HPD_MTP |
> +		   INVERT_DDIE_HPD);
> +	intel_de_rmw(i915, SOUTH_CHICKEN1, 0, val);
> +}
> +
> +static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
> +{
> +	u32 hotplug_irqs, enabled_irqs;
> +
> +	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
> +	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
> +
> +	intel_de_write(i915, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> +
> +	mtp_hpd_invert(i915);
> +	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
> +
> +	mtp_ddi_hpd_detection_setup(i915);
> +	mtp_tc_hpd_detection_setup(i915);
> +}
> +
> +static void xelpdp_pica_hpd_detection_setup(struct drm_i915_private *i915)
> +{
> +	struct intel_encoder *encoder;
> +	enum hpd_pin pin;
> +	u32 available_pins = 0;
> +
> +	BUILD_BUG_ON(BITS_PER_TYPE(available_pins) < HPD_NUM_PINS);
> +
> +	for_each_intel_encoder(&i915->drm, encoder)
> +		available_pins |= BIT(encoder->hpd_pin);
> +
> +	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
> +		u32 mask = XELPDP_TBT_HOTPLUG_ENABLE |
> +			   XELPDP_DP_ALT_HOTPLUG_ENABLE;
> +
> +		intel_de_rmw(i915, XELPDP_PORT_HOTPLUG_CTL(pin),
> +			     mask,
> +			     available_pins & BIT(pin) ?  mask : 0);
> +	}
> +}
> +
> +static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
> +{
> +	u32 hotplug_irqs, enabled_irqs;
> +
> +	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.hpd);
> +	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.hpd);
> +
> +	intel_de_rmw(i915, PICAINTERRUPT_IMR, hotplug_irqs,
> +		     ~enabled_irqs & hotplug_irqs);
> +	intel_uncore_posting_read(&i915->uncore, PICAINTERRUPT_IMR);
> +
> +	xelpdp_pica_hpd_detection_setup(i915);
> +
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> +		mtp_hpd_irq_setup(i915);
> +}
> +
>  static u32 spt_hotplug_enables(struct intel_encoder *encoder)
>  {
>  	switch (encoder->hpd_pin) {
> @@ -3363,7 +3567,7 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	GEN3_IRQ_INIT(uncore, GEN8_DE_PORT_, ~de_port_masked, de_port_enables);
>  	GEN3_IRQ_INIT(uncore, GEN8_DE_MISC_, ~de_misc_masked, de_misc_masked);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>  		u32 de_hpd_masked = 0;
>  		u32 de_hpd_enables = GEN11_DE_TC_HOTPLUG_MASK |
>  				     GEN11_DE_TBT_HOTPLUG_MASK;
> @@ -3373,6 +3577,20 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	}
>  }
>  
> +static void mtp_irq_postinstall(struct drm_i915_private *i915)
> +{
> +	struct intel_uncore *uncore = &i915->uncore;
> +	u32 sde_mask = SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
> +	u32 de_hpd_mask = XELPDP_AUX_TC_MASK;
> +	u32 de_hpd_enables = de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK |
> +			     XELPDP_TBT_HOTPLUG_MASK;
> +
> +	GEN3_IRQ_INIT(uncore, PICAINTERRUPT_, ~de_hpd_mask,
> +		      de_hpd_enables);
> +
> +	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
> +}
> +
>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> @@ -3434,7 +3652,11 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
>  
>  	if (HAS_DISPLAY(dev_priv)) {
> -		icp_irq_postinstall(dev_priv);
> +		if (DISPLAY_VER(dev_priv) >= 14)
> +			mtp_irq_postinstall(dev_priv);
> +		else
> +			icp_irq_postinstall(dev_priv);
> +

So this is dg1_irq_postinstall() called for GRAPHICS_VER_FULL(i915) >=
IP_VER(12, 10).

Why do we call PCH irq postinstall functions based on display version
instead of the PCH in question?

DG1 and DG2 have south engine display on the same PCI device which we
denote by PCH_DG1 and PCH_DG2, respectively.

This might work now, but seems a bit fishy.


BR,
Jani.


>  		gen8_de_irq_postinstall(dev_priv);
>  		intel_uncore_write(&dev_priv->uncore, GEN11_DISPLAY_INT_CTL,
>  				   GEN11_DISPLAY_IRQ_ENABLE);
> @@ -3920,6 +4142,7 @@ static const struct intel_hotplug_funcs platform##_hpd_funcs = { \
>  }
>  
>  HPD_FUNCS(i915);
> +HPD_FUNCS(xelpdp);
>  HPD_FUNCS(dg1);
>  HPD_FUNCS(gen11);
>  HPD_FUNCS(bxt);
> @@ -3980,6 +4203,8 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>  			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
>  		else if (HAS_PCH_DG1(dev_priv))
>  			dev_priv->display.funcs.hotplug = &dg1_hpd_funcs;
> +		else if (DISPLAY_VER(dev_priv) >= 14)
> +			dev_priv->display.funcs.hotplug = &xelpdp_hpd_funcs;
>  		else if (DISPLAY_VER(dev_priv) >= 11)
>  			dev_priv->display.funcs.hotplug = &gen11_hpd_funcs;
>  		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d68ec36733c9..531c0ea68c05 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4487,6 +4487,28 @@
>  #define  GEN11_HOTPLUG_CTL_SHORT_DETECT(hpd_pin)	(1 << (_HPD_PIN_TC(hpd_pin) * 4))
>  #define  GEN11_HOTPLUG_CTL_NO_DETECT(hpd_pin)		(0 << (_HPD_PIN_TC(hpd_pin) * 4))
>  
> +#define PICAINTERRUPT_ISR			_MMIO(0x16FE50)
> +#define PICAINTERRUPT_IMR			_MMIO(0x16FE54)
> +#define PICAINTERRUPT_IIR			_MMIO(0x16FE58)
> +#define PICAINTERRUPT_IER			_MMIO(0x16FE5C)
> +
> +#define  XELPDP_DP_ALT_HOTPLUG(hpd_pin)		REG_BIT(16 + _HPD_PIN_TC(hpd_pin))
> +#define  XELPDP_DP_ALT_HOTPLUG_MASK		REG_GENMASK(19, 16)
> +
> +#define  XELPDP_AUX_TC(hpd_pin)			REG_BIT(8 + _HPD_PIN_TC(hpd_pin))
> +#define  XELPDP_AUX_TC_MASK			REG_GENMASK(11, 8)
> +
> +#define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
> +#define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
> +
> +#define XELPDP_PORT_HOTPLUG_CTL(hpd_pin)	_MMIO(0x16F270 + (_HPD_PIN_TC(hpd_pin) * 0x200))
> +#define  XELPDP_TBT_HOTPLUG_ENABLE		REG_BIT(6)
> +#define  XELPDP_TBT_HPD_LONG_DETECT		REG_BIT(5)
> +#define  XELPDP_TBT_HPD_SHORT_DETECT		REG_BIT(4)
> +#define  XELPDP_DP_ALT_HOTPLUG_ENABLE		REG_BIT(2)
> +#define  XELPDP_DP_ALT_HPD_LONG_DETECT		REG_BIT(1)
> +#define  XELPDP_DP_ALT_HPD_SHORT_DETECT		REG_BIT(0)
> +
>  #define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
>  /* Required on all Ironlake and Sandybridge according to the B-Spec. */
>  #define  ILK_ELPIN_409_SELECT	(1 << 25)
> @@ -4772,7 +4794,8 @@
>  				 SDE_FDI_RXB_CPT | \
>  				 SDE_FDI_RXA_CPT)
>  
> -/* south display engine interrupt: ICP/TGP */
> +/* south display engine interrupt: ICP/TGP/MTP */
> +#define SDE_PICAINTERRUPT		REG_BIT(31)
>  #define SDE_GMBUS_ICP			(1 << 23)
>  #define SDE_TC_HOTPLUG_ICP(hpd_pin)	REG_BIT(24 + _HPD_PIN_TC(hpd_pin))
>  #define SDE_TC_HOTPLUG_DG2(hpd_pin)	REG_BIT(25 + _HPD_PIN_TC(hpd_pin)) /* sigh */
> @@ -5126,6 +5149,12 @@
>  #define SOUTH_CHICKEN1		_MMIO(0xc2000)
>  #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
>  #define  FDIA_PHASE_SYNC_SHIFT_EN	18
> +#define  INVERT_DDIE_HPD			REG_BIT(28)
> +#define  INVERT_DDID_HPD_MTP			REG_BIT(27)
> +#define  INVERT_TC4_HPD				REG_BIT(26)
> +#define  INVERT_TC3_HPD				REG_BIT(25)
> +#define  INVERT_TC2_HPD				REG_BIT(24)
> +#define  INVERT_TC1_HPD				REG_BIT(23)
>  #define  INVERT_DDID_HPD			(1 << 18)
>  #define  INVERT_DDIC_HPD			(1 << 17)
>  #define  INVERT_DDIB_HPD			(1 << 16)

-- 
Jani Nikula, Intel Open Source Graphics Center
