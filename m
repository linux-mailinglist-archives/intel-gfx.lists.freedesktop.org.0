Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD717BB790
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 14:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B612410E202;
	Fri,  6 Oct 2023 12:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B31310E202
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 12:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696595369; x=1728131369;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lUgMgzGRYiuXkfLD99CAfFH/8dzldvHih5LYruMteac=;
 b=hTyqafhw6E0a14mHvYEKlYKdr2sMobWQ3TSaMV/6tg1DpTxmW2pPHJxz
 yP5apLGeXv9DJtD/31IoYLujxYxPDA9uB3OYMVh7M+DisCKNvp8C/It0m
 BhJuYT1aYU5hCg5B4XzaxrQlnN0W8UzX4XQ598J6xIQGyupPPo3mKtwKw
 rJZepwgP4Rr2sEAKgh3E/QnokXrCKR+hZO81HFEBsVOoNXV1W/3BwlUPp
 z28boVY5cFiMRsSIW0PXbeRr6NVvv+4kfh7yfA4DtQPqPyR8+0gbNnvq6
 5+Nyutto9S0FaJ2jR0R6eFWdVu93oaJwI+7PiwtQiPBbAYv81bg5q5z8A g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="387619697"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="387619697"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 05:29:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895865729"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="895865729"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 06 Oct 2023 05:27:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Oct 2023 15:29:22 +0300
Date: Fri, 6 Oct 2023 15:29:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZR_9ovOGMOWOOtHr@intel.com>
References: <20231006114210.535229-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231006114210.535229-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/lnl: Remove watchdog timers for PSR
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

On Fri, Oct 06, 2023 at 02:42:10PM +0300, Mika Kahola wrote:
> Currently we are not using watchdog timers for PSR/PSR2.
> The patch disables these timers so they are not in use.

I can't figure out what you're saying here. What bspec seems to be
saying is that the max_sleep thing got nuked from the hw so we no
longer need to mask it.

> 
> BSpec: 69895
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 24 +++++++++++++++++-------
>  1 file changed, 17 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 850b11f20285..13b58dceb2bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -672,11 +672,15 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
>  	u32 max_sleep_time = 0x1f;
> -	u32 val = EDP_PSR_ENABLE;
> +	u32 val = 0;
>  
> -	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  
> -	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
> +	if (DISPLAY_VER(dev_priv) < 20) {
> +		val =  EDP_PSR_ENABLE;

That would mean you never enable PSR1 on lnl+

> +		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
> +	}
> +
> +	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  	if (IS_HASWELL(dev_priv))
>  		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
>  
> @@ -1398,10 +1402,16 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  	 * runtime_pm besides preventing  other hw tracking issues now we
>  	 * can rely on frontbuffer tracking.
>  	 */
> -	mask = EDP_PSR_DEBUG_MASK_MEMUP |
> -	       EDP_PSR_DEBUG_MASK_HPD |
> -	       EDP_PSR_DEBUG_MASK_LPSP |
> -	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		mask = EDP_PSR_DEBUG_MASK_MEMUP |
> +		       EDP_PSR_DEBUG_MASK_HPD |
> +		       EDP_PSR_DEBUG_MASK_LPSP;
> +	else
> +		mask = EDP_PSR_DEBUG_MASK_MEMUP |
> +		       EDP_PSR_DEBUG_MASK_HPD |
> +		       EDP_PSR_DEBUG_MASK_LPSP |
> +		       EDP_PSR_DEBUG_MASK_MAX_SLEEP;

The hpd mask bit also seems gone now, though there is no explanation
why it disappeared.

> +
>  
>  	/*
>  	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
