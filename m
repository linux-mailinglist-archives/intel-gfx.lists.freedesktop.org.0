Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2150868BBE9
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 12:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AC0110E38F;
	Mon,  6 Feb 2023 11:43:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574BE10E38F
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Feb 2023 11:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675683817; x=1707219817;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=XMYw7fyty4VbeI2etERteHvuD03X0Z0c8zcKsPT/HHc=;
 b=Oe/8s37nGHRZmKTEZ3GlpOa4dR/08Xeirwc2EjX5RC9euahNj0mGdOlS
 RsYeUsiQK/mr4/MwJp1NB/f9KpPvH/sMUpgslulplY+MQ13ve/n5HMBAc
 GdidnVie15CEx0LINyH9mknBwBdKtJZIuLQ8HX8s9rUKrrRvo/RkWkIMV
 ns83gIsr484PP/93jELzz/ifZbQ9ZTdWXDmgfscnCdfH6X7o4iIhJI1eC
 RKqR5pS7s6Q8tiFbsdyq6ls/s+jO+RplDzjbBzKaOuYiIpvrwKCUWduF9
 PkVQFbXRjDXBGYhU23somWqdq8mEuHymbFH5lcSMerGHIchtT6K5KzELd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="356543779"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="356543779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 03:43:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="643999152"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="643999152"
Received: from hayatibx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.213])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 03:43:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <10a50062-7c85-c590-d787-7b6a6d546198@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221215125610.1161729-1-andrzej.hajda@intel.com>
 <2b5c4053-59a0-6aef-0d99-193ee304a503@intel.com>
 <875yco41f7.fsf@intel.com>
 <10a50062-7c85-c590-d787-7b6a6d546198@intel.com>
Date: Mon, 06 Feb 2023 13:43:32 +0200
Message-ID: <87mt5ryq6z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fdi: use intel_de_rmw if
 possible
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

On Mon, 06 Feb 2023, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> Hi Rodrigo,
>
> On 30.01.2023 14:06, Jani Nikula wrote:
>> On Mon, 30 Jan 2023, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>>> Hi all,
>>>
>>> Gently ping on merging this and all other intel_de_rmw patches.
>>> All patches reviewed.
>>> drm/i915/display/fdi: use intel_de_rmw if possible
>>> drm/i915/display/vlv: fix pixel overlap register update
>>> drm/i915/display/vlv: use intel_de_rmw if possible
>>> drm/i915/display/dsi: use intel_de_rmw if possible
>> Pushed the above, sorry for the delay.
>>
>> The below are R-b by Rodrigo in [1], I'll let him deal with them.
>
> Could you push below patches, risk of merge conflicts raises :)

Full IGT wasn't run on the last version, I hit retest. Let's see.

BR,
Jani



> Hopefully I will have commit rights soon, but today is not the case, yet.
>
> Regards
> Andrzej
>
>>
>> Andrzej, looks like you now meet the criteria for commit access
>> [2]. Please check the documentation and apply for drm-intel commit
>> access, so you can start pushing your own patches.
>>
>>
>> Thanks,
>> Jani.
>>
>> [1] https://patchwork.freedesktop.org/series/112438/
>> [2] https://drm.pages.freedesktop.org/maintainer-tools/commit-access.html#drm-intel
>>
>>> drm/i915/display/core: use intel_de_rmw if possible
>>> drm/i915/display/power: use intel_de_rmw if possible
>>> drm/i915/display/dpll: use intel_de_rmw if possible
>>> drm/i915/display/phys: use intel_de_rmw if possible
>>> drm/i915/display/pch: use intel_de_rmw if possible
>>> drm/i915/display/hdmi: use intel_de_rmw if possible
>>> drm/i915/display/panel: use intel_de_rmw if possible in panel related code
>>> drm/i915/display/interfaces: use intel_de_rmw if possible
>>> drm/i915/display/misc: use intel_de_rmw if possible
>>>
>>> Regards
>>> Andrzej
>>>
>>> On 15.12.2022 13:56, Andrzej Hajda wrote:
>>>> The helper makes the code more compact and readable.
>>>>
>>>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_fdi.c | 148 +++++++----------------
>>>>    1 file changed, 44 insertions(+), 104 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
>>>> index 063f1da4f229cf..f62d9a9313498c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
>>>> @@ -439,19 +439,11 @@ static void ilk_fdi_link_train(struct intel_crtc *crtc,
>>>>    		drm_err(&dev_priv->drm, "FDI train 1 fail!\n");
>>>>    
>>>>    	/* Train 2 */
>>>> -	reg = FDI_TX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	temp &= ~FDI_LINK_TRAIN_NONE;
>>>> -	temp |= FDI_LINK_TRAIN_PATTERN_2;
>>>> -	intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -	reg = FDI_RX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	temp &= ~FDI_LINK_TRAIN_NONE;
>>>> -	temp |= FDI_LINK_TRAIN_PATTERN_2;
>>>> -	intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -	intel_de_posting_read(dev_priv, reg);
>>>> +	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
>>>> +		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
>>>> +		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_2);
>>>> +	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
>>>>    	udelay(150);
>>>>    
>>>>    	reg = FDI_RX_IIR(pipe);
>>>> @@ -538,13 +530,9 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
>>>>    	udelay(150);
>>>>    
>>>>    	for (i = 0; i < 4; i++) {
>>>> -		reg = FDI_TX_CTL(pipe);
>>>> -		temp = intel_de_read(dev_priv, reg);
>>>> -		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
>>>> -		temp |= snb_b_fdi_train_param[i];
>>>> -		intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -		intel_de_posting_read(dev_priv, reg);
>>>> +		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
>>>> +			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
>>>> +		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
>>>>    		udelay(500);
>>>>    
>>>>    		for (retry = 0; retry < 5; retry++) {
>>>> @@ -593,13 +581,9 @@ static void gen6_fdi_link_train(struct intel_crtc *crtc,
>>>>    	udelay(150);
>>>>    
>>>>    	for (i = 0; i < 4; i++) {
>>>> -		reg = FDI_TX_CTL(pipe);
>>>> -		temp = intel_de_read(dev_priv, reg);
>>>> -		temp &= ~FDI_LINK_TRAIN_VOL_EMP_MASK;
>>>> -		temp |= snb_b_fdi_train_param[i];
>>>> -		intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -		intel_de_posting_read(dev_priv, reg);
>>>> +		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
>>>> +			     FDI_LINK_TRAIN_VOL_EMP_MASK, snb_b_fdi_train_param[i]);
>>>> +		intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
>>>>    		udelay(500);
>>>>    
>>>>    		for (retry = 0; retry < 5; retry++) {
>>>> @@ -719,19 +703,13 @@ static void ivb_manual_fdi_link_train(struct intel_crtc *crtc,
>>>>    		}
>>>>    
>>>>    		/* Train 2 */
>>>> -		reg = FDI_TX_CTL(pipe);
>>>> -		temp = intel_de_read(dev_priv, reg);
>>>> -		temp &= ~FDI_LINK_TRAIN_NONE_IVB;
>>>> -		temp |= FDI_LINK_TRAIN_PATTERN_2_IVB;
>>>> -		intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -		reg = FDI_RX_CTL(pipe);
>>>> -		temp = intel_de_read(dev_priv, reg);
>>>> -		temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
>>>> -		temp |= FDI_LINK_TRAIN_PATTERN_2_CPT;
>>>> -		intel_de_write(dev_priv, reg, temp);
>>>> -
>>>> -		intel_de_posting_read(dev_priv, reg);
>>>> +		intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
>>>> +			     FDI_LINK_TRAIN_NONE_IVB,
>>>> +			     FDI_LINK_TRAIN_PATTERN_2_IVB);
>>>> +		intel_de_rmw(dev_priv, FDI_RX_CTL(pipe),
>>>> +			     FDI_LINK_TRAIN_PATTERN_MASK_CPT,
>>>> +			     FDI_LINK_TRAIN_PATTERN_2_CPT);
>>>> +		intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
>>>>    		udelay(2); /* should be 1.5us */
>>>>    
>>>>    		for (i = 0; i < 4; i++) {
>>>> @@ -837,9 +815,8 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>>>>    		udelay(30);
>>>>    
>>>>    		/* Unset FDI_RX_MISC pwrdn lanes */
>>>> -		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
>>>> -		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
>>>> -		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
>>>> +		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
>>>> +			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK, 0);
>>>>    		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
>>>>    
>>>>    		/* Wait for FDI auto training time */
>>>> @@ -865,25 +842,21 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>>>>    		intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), rx_ctl_val);
>>>>    		intel_de_posting_read(dev_priv, FDI_RX_CTL(PIPE_A));
>>>>    
>>>> -		temp = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
>>>> -		temp &= ~DDI_BUF_CTL_ENABLE;
>>>> -		intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), temp);
>>>> +		intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
>>>>    		intel_de_posting_read(dev_priv, DDI_BUF_CTL(PORT_E));
>>>>    
>>>>    		/* Disable DP_TP_CTL and FDI_RX_CTL and retry */
>>>> -		temp = intel_de_read(dev_priv, DP_TP_CTL(PORT_E));
>>>> -		temp &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
>>>> -		temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
>>>> -		intel_de_write(dev_priv, DP_TP_CTL(PORT_E), temp);
>>>> +		intel_de_rmw(dev_priv, DP_TP_CTL(PORT_E),
>>>> +			     DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK,
>>>> +			     DP_TP_CTL_LINK_TRAIN_PAT1);
>>>>    		intel_de_posting_read(dev_priv, DP_TP_CTL(PORT_E));
>>>>    
>>>>    		intel_wait_ddi_buf_idle(dev_priv, PORT_E);
>>>>    
>>>>    		/* Reset FDI_RX_MISC pwrdn lanes */
>>>> -		temp = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
>>>> -		temp &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
>>>> -		temp |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
>>>> -		intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), temp);
>>>> +		intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
>>>> +			     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
>>>> +			     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
>>>>    		intel_de_posting_read(dev_priv, FDI_RX_MISC(PIPE_A));
>>>>    	}
>>>>    
>>>> @@ -898,7 +871,6 @@ void hsw_fdi_link_train(struct intel_encoder *encoder,
>>>>    void hsw_fdi_disable(struct intel_encoder *encoder)
>>>>    {
>>>>    	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>>>> -	u32 val;
>>>>    
>>>>    	/*
>>>>    	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
>>>> @@ -906,30 +878,15 @@ void hsw_fdi_disable(struct intel_encoder *encoder)
>>>>    	 * step 13 is the correct place for it. Step 18 is where it was
>>>>    	 * originally before the BUN.
>>>>    	 */
>>>> -	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
>>>> -	val &= ~FDI_RX_ENABLE;
>>>> -	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
>>>> -
>>>> -	val = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_E));
>>>> -	val &= ~DDI_BUF_CTL_ENABLE;
>>>> -	intel_de_write(dev_priv, DDI_BUF_CTL(PORT_E), val);
>>>> -
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_ENABLE, 0);
>>>> +	intel_de_rmw(dev_priv, DDI_BUF_CTL(PORT_E), DDI_BUF_CTL_ENABLE, 0);
>>>>    	intel_wait_ddi_buf_idle(dev_priv, PORT_E);
>>>> -
>>>>    	intel_ddi_disable_clock(encoder);
>>>> -
>>>> -	val = intel_de_read(dev_priv, FDI_RX_MISC(PIPE_A));
>>>> -	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
>>>> -	val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
>>>> -	intel_de_write(dev_priv, FDI_RX_MISC(PIPE_A), val);
>>>> -
>>>> -	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
>>>> -	val &= ~FDI_PCDCLK;
>>>> -	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
>>>> -
>>>> -	val = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
>>>> -	val &= ~FDI_RX_PLL_ENABLE;
>>>> -	intel_de_write(dev_priv, FDI_RX_CTL(PIPE_A), val);
>>>> +	intel_de_rmw(dev_priv, FDI_RX_MISC(PIPE_A),
>>>> +		     FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK,
>>>> +		     FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2));
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_PCDCLK, 0);
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(PIPE_A), FDI_RX_PLL_ENABLE, 0);
>>>>    }
>>>>    
>>>>    void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>>>> @@ -952,9 +909,7 @@ void ilk_fdi_pll_enable(const struct intel_crtc_state *crtc_state)
>>>>    	udelay(200);
>>>>    
>>>>    	/* Switch from Rawclk to PCDclk */
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	intel_de_write(dev_priv, reg, temp | FDI_PCDCLK);
>>>> -
>>>> +	intel_de_rmw(dev_priv, reg, 0, FDI_PCDCLK);
>>>>    	intel_de_posting_read(dev_priv, reg);
>>>>    	udelay(200);
>>>>    
>>>> @@ -974,28 +929,18 @@ void ilk_fdi_pll_disable(struct intel_crtc *crtc)
>>>>    	struct drm_device *dev = crtc->base.dev;
>>>>    	struct drm_i915_private *dev_priv = to_i915(dev);
>>>>    	enum pipe pipe = crtc->pipe;
>>>> -	i915_reg_t reg;
>>>> -	u32 temp;
>>>>    
>>>>    	/* Switch from PCDclk to Rawclk */
>>>> -	reg = FDI_RX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	intel_de_write(dev_priv, reg, temp & ~FDI_PCDCLK);
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_PCDCLK, 0);
>>>>    
>>>>    	/* Disable CPU FDI TX PLL */
>>>> -	reg = FDI_TX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	intel_de_write(dev_priv, reg, temp & ~FDI_TX_PLL_ENABLE);
>>>> -
>>>> -	intel_de_posting_read(dev_priv, reg);
>>>> +	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_PLL_ENABLE, 0);
>>>> +	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
>>>>    	udelay(100);
>>>>    
>>>> -	reg = FDI_RX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	intel_de_write(dev_priv, reg, temp & ~FDI_RX_PLL_ENABLE);
>>>> -
>>>>    	/* Wait for the clocks to turn off. */
>>>> -	intel_de_posting_read(dev_priv, reg);
>>>> +	intel_de_rmw(dev_priv, FDI_RX_CTL(pipe), FDI_RX_PLL_ENABLE, 0);
>>>> +	intel_de_posting_read(dev_priv, FDI_RX_CTL(pipe));
>>>>    	udelay(100);
>>>>    }
>>>>    
>>>> @@ -1007,10 +952,8 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>>>>    	u32 temp;
>>>>    
>>>>    	/* disable CPU FDI tx and PCH FDI rx */
>>>> -	reg = FDI_TX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	intel_de_write(dev_priv, reg, temp & ~FDI_TX_ENABLE);
>>>> -	intel_de_posting_read(dev_priv, reg);
>>>> +	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe), FDI_TX_ENABLE, 0);
>>>> +	intel_de_posting_read(dev_priv, FDI_TX_CTL(pipe));
>>>>    
>>>>    	reg = FDI_RX_CTL(pipe);
>>>>    	temp = intel_de_read(dev_priv, reg);
>>>> @@ -1027,11 +970,8 @@ void ilk_fdi_disable(struct intel_crtc *crtc)
>>>>    			       FDI_RX_PHASE_SYNC_POINTER_OVR);
>>>>    
>>>>    	/* still set train pattern 1 */
>>>> -	reg = FDI_TX_CTL(pipe);
>>>> -	temp = intel_de_read(dev_priv, reg);
>>>> -	temp &= ~FDI_LINK_TRAIN_NONE;
>>>> -	temp |= FDI_LINK_TRAIN_PATTERN_1;
>>>> -	intel_de_write(dev_priv, reg, temp);
>>>> +	intel_de_rmw(dev_priv, FDI_TX_CTL(pipe),
>>>> +		     FDI_LINK_TRAIN_NONE, FDI_LINK_TRAIN_PATTERN_1);
>>>>    
>>>>    	reg = FDI_RX_CTL(pipe);
>>>>    	temp = intel_de_read(dev_priv, reg);
>

-- 
Jani Nikula, Intel Open Source Graphics Center
