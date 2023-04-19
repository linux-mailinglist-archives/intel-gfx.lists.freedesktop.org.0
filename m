Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7447C6E79C0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 14:28:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A34A310E966;
	Wed, 19 Apr 2023 12:28:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F1D10E966
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 12:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681907324; x=1713443324;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=4gKIJQzIy0+T3QlrivhfkxIvNyD3oA69H4eS4miCM5c=;
 b=JxJibfTOrYI/djuQZuQhmUqeviOET1RFkS6PKykUoXpPlBYSQAQ/3CUC
 PPzgygXro1VaSJWLHW2nGbTDoDQ/fUTCHa0lxtht7oC30iaVc4RAKSkya
 eM2RBZI8D4+pjBnPhGd282JFPZf86iY/ro+kdNeqq4IQLykAaQpE5ip2D
 kInC9zCEOMXClDKDqD4djj1dMex7PWpBuZp0X+/G6QzMCytARN1aKaQ5D
 PEIc1KTELujc3vjw6d9mvrVDDna4RqNjfH6/fbawhMU7Mv0Y7YNtb7pee
 rWVsN0+G/GMkRbchcNdRmGV8TfZg/S/2p5AnGHdAwC5rNShXL01wMKUPv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="348186740"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="348186740"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 05:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="802907207"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="802907207"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 05:28:42 -0700
Date: Wed, 19 Apr 2023 15:28:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZD/ed3fMUfWVuAOz@ideak-desk.fi.intel.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230418131425.1285088-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230418131425.1285088-1-suraj.kandpal@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/display: Increase AUX timeout
 for Type-C
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
Reply-To: imre.deak@intel.com
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 18, 2023 at 06:44:25PM +0530, Suraj Kandpal wrote:
> Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> Workaround: Increase the timeout.
> 
> ---v2
> -change style on how we mention WA [Ankit]
> -fix bat error by creating new func that is only called for aux power
> well scenarios so we can avoid null pointer error as it is called
> everywhere.
> 
> --v3
> -Add non-default enable_timeout to power well descriptor which avoids
> adding more platform checks [Imre]
> 
> --v4
> -Remove Bspec link from top to bottom remove WA link from commit put it
> on comment [Jani]
> -enable_timeout in ms and add .fixed_enable_delay too [Imre]
> 
> --v5
> -move power_wells instead of duplicating them [Imre]
> 
> Bspec: 55480
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power_map.c  | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
>  3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d8..b4070845cd53 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1378,6 +1378,11 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
>  			I915_PW("AUX_C", &icl_pwdoms_aux_c, .hsw.idx = ICL_PW_CTL_IDX_AUX_C),
>  			I915_PW("AUX_D", &icl_pwdoms_aux_d, .hsw.idx = XELPD_PW_CTL_IDX_AUX_D),
>  			I915_PW("AUX_E", &icl_pwdoms_aux_e, .hsw.idx = XELPD_PW_CTL_IDX_AUX_E),
> +		),
> +		.ops = &icl_aux_power_well_ops,
> +		.fixed_enable_delay = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
>  			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
>  			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
>  			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
> @@ -1385,6 +1390,8 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
>  		),
>  		.ops = &icl_aux_power_well_ops,
>  		.fixed_enable_delay = true,
> +		/* WA_14017248603: adlp */
> +		.enable_timeout = 500,
>  	}, {
>  		.instances = &I915_PW_INSTANCES(
>  			I915_PW("AUX_TBT1", &icl_pwdoms_aux_tbt1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TBT1),
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937..930a42c825c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -253,6 +253,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>  {
>  	const struct i915_power_well_regs *regs = power_well->desc->ops->regs;
>  	int pw_idx = i915_power_well_instance(power_well)->hsw.idx;
> +	int timeout = power_well->desc->enable_timeout ? : 1;
>  
>  	/*
>  	 * For some power wells we're not supposed to watch the status bit for
> @@ -266,7 +267,7 @@ static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>  
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> +				  HSW_PWR_WELL_CTL_STATE(pw_idx), timeout)) {
>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable timeout\n",
>  			    intel_power_well_name(power_well));
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index ba7cb977e7c7..e494df379e6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -110,6 +110,8 @@ struct i915_power_well_desc {
>  	 * Thunderbolt mode.
>  	 */
>  	u16 is_tc_tbt:1;
> +	/* Enable timeout if greater than the default 1ms */
> +	u16 enable_timeout;
>  };
>  
>  struct i915_power_well {
> -- 
> 2.25.1
> 
