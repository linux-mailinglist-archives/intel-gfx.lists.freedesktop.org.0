Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4552C7BE3B4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 16:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AECB10E10A;
	Mon,  9 Oct 2023 14:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4460410E10A
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Oct 2023 14:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696863456; x=1728399456;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HDS/HO4RYSX+2NEckIpkNxDPkQvhsWgokxIijeBiz6M=;
 b=ZHbJZhC8mbvdDLw6cvE0AEHosNIhkRwmz+m/dFahups1pTRaFzuKeIgm
 12egir4SytcUmcuqLOh6UavUy0q1roac1UoqN55T0463r2x74jeVpqyX3
 Zf1LTyJrsVVCFkHmwQ3mB9R3jOranpTtMoSXjAfa7pwGNDtgytCklvwAC
 KWiNzCDbCR1N0slEohqVuPmFbRJth8Pg2E5qnmGt4CN9VKryTu7yEovKP
 eoE7W8fiHZATduzf9MnYfa5OtoMbFdoQaDVY7ZOXWwrw13U23ZxP96cRz
 HC4EB9JceJ6w7PB8ColaWCy7nm/5wAsCJzsH5+ghsL6QbElw+VuhIBZKq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="448349344"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="448349344"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 07:57:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="896794136"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="896794136"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 09 Oct 2023 07:55:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Oct 2023 17:57:32 +0300
Date: Mon, 9 Oct 2023 17:57:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZSQU3Dbc_C3hLmZX@intel.com>
References: <20231009141303.577061-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231009141303.577061-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/lnl: Remove watchdog timers for
 PSR
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

On Mon, Oct 09, 2023 at 05:13:03PM +0300, Mika Kahola wrote:
> Currently we are not using watchdog timers for PSR/PSR2
> with Lunarlake. The patch removes the use of these timers
> from the driver code.

That still doesn't seem to say that the timers were removed
from the hardware. Or at least I can't parse it that way.

> 
> BSpec: 69895
> 
> v2: Reword commit message (Ville)
>     Drop HPD mask from LNL (Ville)

That should probably be a separate patch since it has nothing to do
with what the commit message is saying.

>     Revise masking logic (Jouni)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 850b11f20285..abdafd04d8e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -676,7 +676,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
>  
>  	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
>  
> -	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
> +	if (DISPLAY_VER(dev_priv) < 20)
> +		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
> +
>  	if (IS_HASWELL(dev_priv))
>  		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
>  
> @@ -1399,9 +1401,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  	 * can rely on frontbuffer tracking.
>  	 */
>  	mask = EDP_PSR_DEBUG_MASK_MEMUP |
> -	       EDP_PSR_DEBUG_MASK_HPD |
> -	       EDP_PSR_DEBUG_MASK_LPSP |
> -	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
> +	       EDP_PSR_DEBUG_MASK_LPSP;
> +
> +	if (DISPLAY_VER(dev_priv) < 20)
> +		mask |= EDP_PSR_DEBUG_MASK_HPD |
> +			EDP_PSR_DEBUG_MASK_MAX_SLEEP;
>  
>  	/*
>  	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
