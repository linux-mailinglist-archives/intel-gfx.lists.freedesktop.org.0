Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B9E600AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 11:28:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E2E10ED0C;
	Mon, 17 Oct 2022 09:28:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAC3210E14E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665998885; x=1697534885;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=mk0R7Ung740omKhWvVg1VJcSmmoO/Nl+kFQdfbkIqd4=;
 b=df2zI0+ffKmcWGS4q/szXUDDG9r2wuLne7p1DZR3xRNRrTRpL/0WnH+Z
 XLNAuEb9isKTNSR3M3lXO19udnc0LKyyf4SJlPqjvJC505fG0BiZxLFfK
 FlFjCuf8GtPNuyY8xqm/0JR7X3EZmQc2Fh0OX4FlWxYeuYCZ621ZWM0zd
 nO5GyTLBREmjn5rtpgcEnrZ2pQtKf5fU3T6dAhXoKwLgfzv1+Cc1b2+xG
 YVTGSTEKxZlWqq2WJGE6nXBnnGowwL4ZtS4ewDLxGQRZBfHj+u0DaTKOj
 N+VnJPr8hnoIFSe+mLUfOQ+SZC8uDMd/pxyOsfcy5yog+hDwclovd1XAf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="367774577"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="367774577"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 02:28:05 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="753571580"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="753571580"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.25.105])
 ([10.213.25.105])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 02:28:03 -0700
Message-ID: <3aff81bc-61cd-c4c0-0541-c698948e3c74@intel.com>
Date: Mon, 17 Oct 2022 11:28:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.3
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
 <20221006163200.2803722-5-andrzej.hajda@intel.com>
 <Y0mi+NUjLYiAaQD0@mdroper-desk1.amr.corp.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y0mi+NUjLYiAaQD0@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: use proper helper for
 register updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14.10.2022 19:57, Matt Roper wrote:
> On Thu, Oct 06, 2022 at 06:32:00PM +0200, Andrzej Hajda wrote:
>> There is special helper for register read/modify/write.
>>
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_tc.c |   9 +-
>>   drivers/gpu/drm/i915/i915_irq.c         | 227 +++++++++---------------
>>   drivers/gpu/drm/i915/intel_pm.c         |  60 ++-----
>>   drivers/gpu/drm/i915/vlv_suspend.c      |  28 +--
>>   4 files changed, 112 insertions(+), 212 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
>> index b0aa1edd830289..8cecd41ed00338 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
>> @@ -408,14 +408,9 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
>>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>>   	struct intel_uncore *uncore = &i915->uncore;
>>   	enum port port = dig_port->base.port;
>> -	u32 val;
>>   
>> -	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
>> -	if (take)
>> -		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>> -	else
>> -		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>> -	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
>> +	intel_uncore_rmw(uncore, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
>> +			 take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
>>   
>>   	return true;
>>   }
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index 6cbdefadd09180..c08d092cdccafe 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -325,15 +325,10 @@ i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
>>   				     u32 mask,
>>   				     u32 bits)
>>   {
>> -	u32 val;
>> -
>>   	lockdep_assert_held(&dev_priv->irq_lock);
>>   	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
>>   
>> -	val = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN);
>> -	val &= ~mask;
>> -	val |= bits;
>> -	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_EN, val);
>> +	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
>>   }
>>   
>>   /**
>> @@ -1057,8 +1052,8 @@ static void ivb_parity_work(struct work_struct *work)
>>   	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
>>   		goto out;
>>   
>> -	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
>> -	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
>> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
>> +				     0);
> 
> This doesn't look like the right transformation.  The original code was
> clearing the GEN7_DOP_CLOCK_GATE_ENABLE bit and leaving all other bits
> the way they were.  The new code is clearing all of the bits *except*
> GEN7_DOP_CLOCK_GATE_ENABLE.  I think you need to drop the ~ here.

Thx for spotting this one, fix already posted. Also for similar line in 
intel_pm.


> 
>>   	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
>>   
>>   	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
>> @@ -1689,8 +1684,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>>   		 * bits this time around.
>>   		 */
>>   		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
>> -		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
>> -		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
>> +		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);
> 
> I'm not sure there's really benefit to the interrupt handlers like this
> one...the original code is doing a read, followed by a write to clear
> the register.  There's no (m)odify step there, so converting this to a
> rmw makes it harder to read and understand what's going on.
> 
> If you really want to cut out the extra line of code, it would be better
> to create a 'read and clear' wrapper function for use in the interrupt
> handlers so it's at least more intuitive what's happening.

Hmm, for me rmw(..., reg, ~0, 0) is quite straightforward "clear all 
bits of given reg". On the other side read followed by write requires 
from reader matching 1st two parameters (register), not so sure if it is 
more clear.
Anyway, since this is only two cases I am not sure if making new helper 
for it makes sense, there is already many of them :)
Maybe simplest is to just revert these two cases.

> 
>>   
>>   		if (gt_iir)
>>   			intel_uncore_write(&dev_priv->uncore, GTIIR, gt_iir);
>> @@ -1775,8 +1769,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>>   		 * bits this time around.
>>   		 */
>>   		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
>> -		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
>> -		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
>> +		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);
>>   
>>   		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
>>   
>> @@ -1981,8 +1974,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>>   	if (ddi_hotplug_trigger) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
>> -		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);
> 
> Similarly, a wrapper function for 'read and w1c' would make these a lot
> less confusing.

This case has too many users to revert :)
If intel_uncore_rmw(uncore, reg, 0, 0) is not acceptable, what about 
intel_uncore_rw(uncore, reg) ?
I would like to avoid "w1c" in the name, as there is possibility helper 
can be useful in case of latch registers - when writting current value 
to the register will cause some hw action.

Regards
Andrzej

> 
> 
> Matt
> 
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   ddi_hotplug_trigger, dig_hotplug_reg,
>> @@ -1993,8 +1985,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>>   	if (tc_hotplug_trigger) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
>> -		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   tc_hotplug_trigger, dig_hotplug_reg,
>> @@ -2019,8 +2010,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>>   	if (hotplug_trigger) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
>> -		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   hotplug_trigger, dig_hotplug_reg,
>> @@ -2031,8 +2021,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>>   	if (hotplug2_trigger) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
>> -		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   hotplug2_trigger, dig_hotplug_reg,
>> @@ -2052,8 +2041,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
>>   {
>>   	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
>>   
>> -	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
>> -	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
>> +	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
>>   
>>   	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   			   hotplug_trigger, dig_hotplug_reg,
>> @@ -2232,8 +2220,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
>>   {
>>   	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
>>   
>> -	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
>> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
>> +	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
>>   
>>   	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   			   hotplug_trigger, dig_hotplug_reg,
>> @@ -2252,8 +2239,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>>   	if (trigger_tc) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
>> -		intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   trigger_tc, dig_hotplug_reg,
>> @@ -2264,8 +2250,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>>   	if (trigger_tbt) {
>>   		u32 dig_hotplug_reg;
>>   
>> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
>> -		intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
>> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
>>   
>>   		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>>   				   trigger_tbt, dig_hotplug_reg,
>> @@ -2355,8 +2340,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>>   			else
>>   				iir_reg = EDP_PSR_IIR;
>>   
>> -			psr_iir = intel_uncore_read(&dev_priv->uncore, iir_reg);
>> -			intel_uncore_write(&dev_priv->uncore, iir_reg, psr_iir);
>> +			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
>>   
>>   			if (psr_iir)
>>   				found = true;
>> @@ -2426,8 +2410,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
>>   
>>   	/* clear TE in dsi IIR */
>>   	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
>> -	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
>> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
>> +	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
>>   }
>>   
>>   static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>> @@ -2884,7 +2867,6 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>>   {
>>   	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
>>   	enum port port;
>> -	u32 tmp;
>>   
>>   	if (!(intel_crtc->mode_flags &
>>   	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
>> @@ -2896,16 +2878,10 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>>   	else
>>   		port = PORT_A;
>>   
>> -	tmp =  intel_uncore_read(&dev_priv->uncore, DSI_INTR_MASK_REG(port));
>> -	if (enable)
>> -		tmp &= ~DSI_TE_EVENT;
>> -	else
>> -		tmp |= DSI_TE_EVENT;
>> -
>> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_MASK_REG(port), tmp);
>> +	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
>> +			 enable ? 0 : DSI_TE_EVENT);
>>   
>> -	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
>> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
>> +	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
>>   
>>   	return true;
>>   }
>> @@ -3020,7 +2996,7 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>   		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
>>   
>>   	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
>> -	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
>> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
>>   
>>   	i9xx_pipestat_irq_reset(dev_priv);
>>   
>> @@ -3290,23 +3266,20 @@ static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>>   
>>   static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>>   	/*
>>   	 * Enable digital hotplug on the PCH, and configure the DP short pulse
>>   	 * duration to 2ms (which is the minimum in the Display Port spec).
>>   	 * The pulse duration bits are reserved on LPT+.
>>   	 */
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
>> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
>> -		     PORTB_HOTPLUG_ENABLE |
>> -		     PORTC_HOTPLUG_ENABLE |
>> -		     PORTD_HOTPLUG_ENABLE |
>> -		     PORTB_PULSE_DURATION_MASK |
>> -		     PORTC_PULSE_DURATION_MASK |
>> -		     PORTD_PULSE_DURATION_MASK);
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
>> +			 PORTA_HOTPLUG_ENABLE |
>> +			 PORTB_HOTPLUG_ENABLE |
>> +			 PORTC_HOTPLUG_ENABLE |
>> +			 PORTD_HOTPLUG_ENABLE |
>> +			 PORTB_PULSE_DURATION_MASK |
>> +			 PORTC_PULSE_DURATION_MASK |
>> +			 PORTD_PULSE_DURATION_MASK,
>> +			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
>>   }
>>   
>>   static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> @@ -3353,30 +3326,24 @@ static u32 icp_tc_hotplug_enables(struct drm_i915_private *i915,
>>   
>>   static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
>> -	hotplug &= ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
>> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
>> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
>> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D));
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
>> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
>> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
>> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
>> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D),
>> +			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
>>   }
>>   
>>   static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
>> -	hotplug &= ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
>> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
>> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
>> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
>> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
>> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC6));
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
>> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC6),
>> +			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
>>   }
>>   
>>   static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> @@ -3428,46 +3395,37 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>>   
>>   static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
>> -	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
>> +			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>>   }
>>   
>>   static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
>> -	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
>> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
>> +			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>>   }
>>   
>>   static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
>>   {
>>   	u32 hotplug_irqs, enabled_irqs;
>> -	u32 val;
>>   
>>   	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>>   	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>>   
>> -	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
>> -	val &= ~hotplug_irqs;
>> -	val |= ~enabled_irqs & hotplug_irqs;
>> -	intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IMR, val);
>> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
>> +			 ~enabled_irqs & hotplug_irqs);
>>   	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
>>   
>>   	gen11_tc_hpd_detection_setup(dev_priv);
>> @@ -3507,29 +3465,22 @@ static u32 spt_hotplug2_enables(struct drm_i915_private *i915,
>>   
>>   static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 val, hotplug;
>> -
>>   	/* Display WA #1179 WaHardHangonHotPlug: cnp */
>>   	if (HAS_PCH_CNP(dev_priv)) {
>> -		val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
>> -		val &= ~CHASSIS_CLK_REQ_DURATION_MASK;
>> -		val |= CHASSIS_CLK_REQ_DURATION(0xf);
>> -		intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
>> +		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
>> +				 CHASSIS_CLK_REQ_DURATION(0xf));
>>   	}
>>   
>>   	/* Enable digital hotplug on the PCH */
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
>> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
>> -		     PORTB_HOTPLUG_ENABLE |
>> -		     PORTC_HOTPLUG_ENABLE |
>> -		     PORTD_HOTPLUG_ENABLE);
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
>> +			 PORTA_HOTPLUG_ENABLE |
>> +			 PORTB_HOTPLUG_ENABLE |
>> +			 PORTC_HOTPLUG_ENABLE |
>> +			 PORTD_HOTPLUG_ENABLE,
>> +			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
>>   
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
>> -	hotplug &= ~PORTE_HOTPLUG_ENABLE;
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables);
>> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, PORTE_HOTPLUG_ENABLE,
>> +			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
>>   }
>>   
>>   static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> @@ -3561,18 +3512,14 @@ static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
>>   
>>   static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>>   	/*
>>   	 * Enable digital hotplug on the CPU, and configure the DP short pulse
>>   	 * duration to 2ms (which is the minimum in the Display Port spec)
>>   	 * The pulse duration bits are reserved on HSW+.
>>   	 */
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
>> -	hotplug &= ~(DIGITAL_PORTA_HOTPLUG_ENABLE |
>> -		     DIGITAL_PORTA_PULSE_DURATION_MASK);
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
>> +			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
>> +			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
>>   }
>>   
>>   static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> @@ -3620,17 +3567,12 @@ static u32 bxt_hotplug_enables(struct drm_i915_private *i915,
>>   
>>   static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 hotplug;
>> -
>> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
>> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
>> -		     PORTB_HOTPLUG_ENABLE |
>> -		     PORTC_HOTPLUG_ENABLE |
>> -		     BXT_DDIA_HPD_INVERT |
>> -		     BXT_DDIB_HPD_INVERT |
>> -		     BXT_DDIC_HPD_INVERT);
>> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables);
>> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
>> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
>> +			 PORTA_HOTPLUG_ENABLE |
>> +			 PORTB_HOTPLUG_ENABLE |
>> +			 PORTC_HOTPLUG_ENABLE |
>> +			 BXT_DDI_HPD_INVERT_MASK,
>> +			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
>>   }
>>   
>>   static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
>> @@ -4010,9 +3952,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
>>   {
>>   	u32 emr;
>>   
>> -	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
>> -
>> -	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
>> +	*eir = intel_uncore_rmw(&dev_priv->uncore, EIR, 0, 0);
>>   
>>   	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
>>   	if (*eir_stuck == 0)
>> @@ -4028,8 +3968,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
>>   	 * (or by a GPU reset) so we mask any bit that
>>   	 * remains set.
>>   	 */
>> -	emr = intel_uncore_read(&dev_priv->uncore, EMR);
>> -	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
>> +	emr = intel_uncore_rmw(&dev_priv->uncore, EMR, ~0, 0xffffffff);
>>   	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
>>   }
>>   
>> @@ -4096,7 +4035,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>>   
>>   	if (I915_HAS_HOTPLUG(dev_priv)) {
>>   		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
>> -		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
>> +		intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_STAT, 0, 0);
>>   	}
>>   
>>   	i9xx_pipestat_irq_reset(dev_priv);
>> @@ -4206,7 +4145,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>>   	struct intel_uncore *uncore = &dev_priv->uncore;
>>   
>>   	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
>> -	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
>> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
>>   
>>   	i9xx_pipestat_irq_reset(dev_priv);
>>   
>> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
>> index 2595ec5aeb77f6..9f6c58ad8bdb06 100644
>> --- a/drivers/gpu/drm/i915/intel_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_pm.c
>> @@ -895,19 +895,14 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>>   		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
>>   					pnv_display_wm.fifo_size,
>>   					4, latency->cursor_sr);
>> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>> -		reg &= ~DSPFW_CURSOR_SR_MASK;
>> -		reg |= FW_WM(wm, CURSOR_SR);
>> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
>> +				 FW_WM(wm, CURSOR_SR));
>>   
>>   		/* Display HPLL off SR */
>>   		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
>>   					pnv_display_hplloff_wm.fifo_size,
>>   					cpp, latency->display_hpll_disable);
>> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
>> -		reg &= ~DSPFW_HPLL_SR_MASK;
>> -		reg |= FW_WM(wm, HPLL_SR);
>> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
>> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
>>   
>>   		/* cursor HPLL off SR */
>>   		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
>> @@ -3480,7 +3475,6 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
>>   {
>>   	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
>>   	unsigned int dirty;
>> -	u32 val;
>>   
>>   	dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
>>   	if (!dirty)
>> @@ -3496,32 +3490,20 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
>>   		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
>>   
>>   	if (dirty & WM_DIRTY_DDB) {
>> -		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>> -			val = intel_uncore_read(&dev_priv->uncore, WM_MISC);
>> -			if (results->partitioning == INTEL_DDB_PART_1_2)
>> -				val &= ~WM_MISC_DATA_PARTITION_5_6;
>> -			else
>> -				val |= WM_MISC_DATA_PARTITION_5_6;
>> -			intel_uncore_write(&dev_priv->uncore, WM_MISC, val);
>> -		} else {
>> -			val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
>> -			if (results->partitioning == INTEL_DDB_PART_1_2)
>> -				val &= ~DISP_DATA_PARTITION_5_6;
>> -			else
>> -				val |= DISP_DATA_PARTITION_5_6;
>> -			intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
>> -		}
>> -	}
>> -
>> -	if (dirty & WM_DIRTY_FBC) {
>> -		val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL);
>> -		if (results->enable_fbc_wm)
>> -			val &= ~DISP_FBC_WM_DIS;
>> +		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
>> +			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
>> +					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
>> +					 WM_MISC_DATA_PARTITION_5_6);
>>   		else
>> -			val |= DISP_FBC_WM_DIS;
>> -		intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, val);
>> +			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
>> +					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
>> +					 DISP_DATA_PARTITION_5_6);
>>   	}
>>   
>> +	if (dirty & WM_DIRTY_FBC)
>> +		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
>> +				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
>> +
>>   	if (dirty & WM_DIRTY_LP(1) &&
>>   	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
>>   		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
>> @@ -4131,7 +4113,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
>>   			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
>>   			   DISP_TRICKLE_FEED_DISABLE);
>>   
>> -		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));
>> +		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
>>   		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
>>   	}
>>   }
>> @@ -4339,8 +4321,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>>   	u32 val;
>>   
>>   	/* WaTempDisableDOPClkGating:bdw */
>> -	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
>> -	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
>> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
>> +				     0);
>>   
>>   	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
>>   	val &= ~L3_PRIO_CREDITS_MASK;
>> @@ -4619,8 +4601,6 @@ static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
>>   
>>   static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>>   {
>> -	u32 snpcr;
>> -
>>   	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
>>   
>>   	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
>> @@ -4658,10 +4638,8 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>>   
>>   	g4x_disable_trickle_feed(dev_priv);
>>   
>> -	snpcr = intel_uncore_read(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR);
>> -	snpcr &= ~GEN6_MBC_SNPCR_MASK;
>> -	snpcr |= GEN6_MBC_SNPCR_MED;
>> -	intel_uncore_write(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, snpcr);
>> +	intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
>> +			 GEN6_MBC_SNPCR_MED);
>>   
>>   	if (!HAS_PCH_NOP(dev_priv))
>>   		cpt_init_clock_gating(dev_priv);
>> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
>> index 664fde244f59b0..02e63ed77f608d 100644
>> --- a/drivers/gpu/drm/i915/vlv_suspend.c
>> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
>> @@ -194,7 +194,6 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
>>   {
>>   	struct vlv_s0ix_state *s = i915->vlv_s0ix_state;
>>   	struct intel_uncore *uncore = &i915->uncore;
>> -	u32 val;
>>   	int i;
>>   
>>   	if (!s)
>> @@ -262,15 +261,11 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
>>   	 * be restored, as they are used to control the s0ix suspend/resume
>>   	 * sequence by the caller.
>>   	 */
>> -	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
>> -	val &= VLV_GTLC_ALLOWWAKEREQ;
>> -	val |= s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ;
>> -	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
>> +	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, ~VLV_GTLC_ALLOWWAKEREQ,
>> +			 s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ);
>>   
>> -	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
>> -	val &= VLV_GFX_CLK_FORCE_ON_BIT;
>> -	val |= s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT;
>> -	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
>> +	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, ~VLV_GFX_CLK_FORCE_ON_BIT,
>> +			 s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT);
>>   
>>   	intel_uncore_write(uncore, VLV_PMWGICZ, s->pmwgicz);
>>   
>> @@ -308,14 +303,10 @@ static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
>>   static int vlv_force_gfx_clock(struct drm_i915_private *i915, bool force_on)
>>   {
>>   	struct intel_uncore *uncore = &i915->uncore;
>> -	u32 val;
>>   	int err;
>>   
>> -	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
>> -	val &= ~VLV_GFX_CLK_FORCE_ON_BIT;
>> -	if (force_on)
>> -		val |= VLV_GFX_CLK_FORCE_ON_BIT;
>> -	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
>> +	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, VLV_GFX_CLK_FORCE_ON_BIT,
>> +			 force_on ? VLV_GFX_CLK_FORCE_ON_BIT : 0);
>>   
>>   	if (!force_on)
>>   		return 0;
>> @@ -340,11 +331,8 @@ static int vlv_allow_gt_wake(struct drm_i915_private *i915, bool allow)
>>   	u32 val;
>>   	int err;
>>   
>> -	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
>> -	val &= ~VLV_GTLC_ALLOWWAKEREQ;
>> -	if (allow)
>> -		val |= VLV_GTLC_ALLOWWAKEREQ;
>> -	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
>> +	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, VLV_GTLC_ALLOWWAKEREQ,
>> +			 allow ? VLV_GTLC_ALLOWWAKEREQ : 0);
>>   	intel_uncore_posting_read(uncore, VLV_GTLC_WAKE_CTRL);
>>   
>>   	mask = VLV_GTLC_ALLOWWAKEACK;
>> -- 
>> 2.34.1
>>
> 

