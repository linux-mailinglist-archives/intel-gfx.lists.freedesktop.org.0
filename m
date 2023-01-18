Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECC9671951
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 11:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779D010E655;
	Wed, 18 Jan 2023 10:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CC7810E655
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 10:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674038528; x=1705574528;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xvodOCJxgWPvu/nl5EHmNEZq1HIM7DW/oYK/j1h/8+k=;
 b=jmK3+QmmeCDJWZ7/P34NcEvVBaOuyrlNw4Nkx10Hjpk74kZgA0ib/pQX
 sqgKDTqFjimi0z1+Ehw/wj934c8t3REqVFdOCQrlsbDTIXFcoCmzSerxL
 GnVuNQ9KN+UGMpGloq8hr7X4AvmWQU8wQ4txQoj6BvP9iDV3R8zC2I7qS
 2SHsE99aGDsf+Kr2RfP1gkum7qJRUedA3bZnhwzMISxO559XGIRNo6dP8
 Z9ah20gPSCUce/nU/uToVb2gM7G3dNA4tYqM/gn8h+MTm7N6xo+leJITy
 RECvPfz9qWDC4rEkODYtWsniHLaRovKdhvZAsifUSa6sFjECm2Sxp510y A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="389454472"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389454472"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 02:42:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="659747836"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="659747836"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 02:42:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <Y8bFeLgIe/KYzImi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230117143946.2426043-1-jani.nikula@intel.com>
 <20230117143946.2426043-3-jani.nikula@intel.com>
 <Y8bFeLgIe/KYzImi@intel.com>
Date: Wed, 18 Jan 2023 12:42:03 +0200
Message-ID: <87k01kcef8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move chv_dpll_md and
 bxt_phy_grc to display sub-struct under state
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Jan 17, 2023 at 04:39:46PM +0200, Jani Nikula wrote:
>> Move the display related members to the struct drm_i915_private display
>> sub-struct. Put them under "state", as they are related to storing
>> values that aren't readable from the hardware, to appease the state
>> checker.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> For the series:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next!

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
>>  drivers/gpu/drm/i915/display/intel_display_core.h | 10 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_dpio_phy.c     |  9 +++++----
>>  drivers/gpu/drm/i915/display/intel_dpll.c         |  2 +-
>>  drivers/gpu/drm/i915/i915_drv.h                   |  8 --------
>>  5 files changed, 17 insertions(+), 14 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 734e8e613f8e..419537a79255 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -3291,7 +3291,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
>>  	if (DISPLAY_VER(dev_priv) >= 4) {
>>  		/* No way to read it out on pipes B and C */
>>  		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
>> -			tmp = dev_priv->chv_dpll_md[crtc->pipe];
>> +			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
>>  		else
>>  			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
>>  		pipe_config->pixel_multiplier =
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index c0eb753112d5..24c792d44b8f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -441,6 +441,16 @@ struct intel_display {
>>  		u8 phy_failed_calibration;
>>  	} snps;
>>  
>> +	struct {
>> +		/*
>> +		 * Shadows for CHV DPLL_MD regs to keep the state
>> +		 * checker somewhat working in the presence hardware
>> +		 * crappiness (can't read out DPLL_MD for pipes B & C).
>> +		 */
>> +		u32 chv_dpll_md[I915_MAX_PIPES];
>> +		u32 bxt_phy_grc;
>> +	} state;
>> +
>>  	struct {
>>  		/* ordered wq for modesets */
>>  		struct workqueue_struct *modeset;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> index 7eb7440b3180..565c06de2432 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>> @@ -376,7 +376,7 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>>  	if (bxt_ddi_phy_is_enabled(dev_priv, phy)) {
>>  		/* Still read out the GRC value for state verification */
>>  		if (phy_info->rcomp_phy != -1)
>> -			dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv, phy);
>> +			dev_priv->display.state.bxt_phy_grc = bxt_get_grc(dev_priv, phy);
>>  
>>  		if (bxt_ddi_phy_verify_state(dev_priv, phy)) {
>>  			drm_dbg(&dev_priv->drm, "DDI PHY %d already enabled, "
>> @@ -442,8 +442,9 @@ static void _bxt_ddi_phy_init(struct drm_i915_private *dev_priv,
>>  		 * the corresponding calibrated value from PHY1, and disable
>>  		 * the automatic calibration on PHY0.
>>  		 */
>> -		val = dev_priv->bxt_phy_grc = bxt_get_grc(dev_priv,
>> -							  phy_info->rcomp_phy);
>> +		val = bxt_get_grc(dev_priv, phy_info->rcomp_phy);
>> +		dev_priv->display.state.bxt_phy_grc = val;
>> +
>>  		grc_code = val << GRC_CODE_FAST_SHIFT |
>>  			   val << GRC_CODE_SLOW_SHIFT |
>>  			   val;
>> @@ -568,7 +569,7 @@ bool bxt_ddi_phy_verify_state(struct drm_i915_private *dev_priv,
>>  			   "BXT_PORT_CL2CM_DW6(%d)", phy);
>>  
>>  	if (phy_info->rcomp_phy != -1) {
>> -		u32 grc_code = dev_priv->bxt_phy_grc;
>> +		u32 grc_code = dev_priv->display.state.bxt_phy_grc;
>>  
>>  		grc_code = grc_code << GRC_CODE_FAST_SHIFT |
>>  			   grc_code << GRC_CODE_SLOW_SHIFT |
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
>> index c236aafe9be0..4e9c18be7e1f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
>> @@ -1910,7 +1910,7 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>>  		intel_de_write(dev_priv, DPLL_MD(PIPE_B),
>>  			       crtc_state->dpll_hw_state.dpll_md);
>>  		intel_de_write(dev_priv, CBR4_VLV, 0);
>> -		dev_priv->chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
>> +		dev_priv->display.state.chv_dpll_md[pipe] = crtc_state->dpll_hw_state.dpll_md;
>>  
>>  		/*
>>  		 * DPLLB VGA mode also seems to cause problems.
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 9ac80a45362f..e631373cc1dc 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -300,14 +300,6 @@ struct drm_i915_private {
>>  
>>  	struct i915_gpu_error gpu_error;
>>  
>> -	/*
>> -	 * Shadows for CHV DPLL_MD regs to keep the state
>> -	 * checker somewhat working in the presence hardware
>> -	 * crappiness (can't read out DPLL_MD for pipes B & C).
>> -	 */
>> -	u32 chv_dpll_md[I915_MAX_PIPES];
>> -	u32 bxt_phy_grc;
>> -
>>  	u32 suspend_count;
>>  	struct i915_suspend_saved_registers regfile;
>>  	struct vlv_s0ix_state *vlv_s0ix_state;
>> -- 
>> 2.34.1
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
