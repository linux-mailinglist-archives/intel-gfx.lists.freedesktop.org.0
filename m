Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 820B16E5E22
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 12:00:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705D910E73A;
	Tue, 18 Apr 2023 10:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE2F810E73A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 10:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681812043; x=1713348043;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WRj91xfrVTrxXgd6ILbJhhbhDig6+QVG5OTMsuuQIdE=;
 b=dXjIUbWwKLOL4gb9Ig5LowcLm9f8N0LFzu9TD/sod8z5EQeqsfYoEZzM
 hCcJDvC71I0gTnIHdAiwfJJ2hFMxHRRtUigQSbMNgQK3a3roR0fn3NLgs
 IasDfxWHWDtKRXqRXUam4bDTqDUir05cq0gqzvHVR3P/b1QekP3j7qE4R
 Wsnd+xyUhL8gcQRYZSoqkwZ3pFHsyZRPBp+k3+bHddS0I/E5WJg/c3tMv
 FSzK5bMike0b+pGlE9hrjRnsolNbmtEaJKPqr3rmmUsvahprN1KARtxfb
 sut4HocSTjTSF9S+C96GgnM+89P2jDXXIWaoXMQV6uHkMCHGZN68/CE5R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="347878182"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="347878182"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:00:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="684518177"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="684518177"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 03:00:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418092346.1279064-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230418092346.1279064-1-suraj.kandpal@intel.com>
Date: Tue, 18 Apr 2023 13:00:22 +0300
Message-ID: <87h6td1pe1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Increase AUX timeout
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 18 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> Workaround: Increase the timeout.
>
> WA_14017248603: adlp

This needs to be in a comment, and removed from the commit message.

> Bspec: 55480

This needs to be moved down...

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

...here, right above the Cc: etc. tags.

> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power_map.c  | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display_power_well.h | 2 ++
>  3 files changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 6645eb1911d8..4b559de6d036 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1385,6 +1385,15 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
>  		),
>  		.ops = &icl_aux_power_well_ops,
>  		.fixed_enable_delay = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("AUX_USBC1", &tgl_pwdoms_aux_usbc1, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC1),
> +			I915_PW("AUX_USBC2", &tgl_pwdoms_aux_usbc2, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC2),
> +			I915_PW("AUX_USBC3", &tgl_pwdoms_aux_usbc3, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC3),
> +			I915_PW("AUX_USBC4", &tgl_pwdoms_aux_usbc4, .hsw.idx = TGL_PW_CTL_IDX_AUX_TC4),
> +		),
> +		.ops = &icl_aux_power_well_ops,
> +		.enable_timeout = true,
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

-- 
Jani Nikula, Intel Open Source Graphics Center
