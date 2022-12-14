Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B26164C5F4
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 10:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF2710E251;
	Wed, 14 Dec 2022 09:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7393810E251
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 09:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671010149; x=1702546149;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XxDQ3IZO//EZ0jXmDF70SQgQvxVs7bwhinFlqSxTBrk=;
 b=Blyxy1GZ+pTmnDUx09IA+sMvQXexW63ffWzMs4tSXk6p0NIpNIWYQczO
 g1FWbgcfSmbB22S9rc5HU4JecLwUPnFyJS9QsAHZWTBTRwrFRWuGpr2NQ
 nO5q5INEUSwKpLqk5RfGxmPpsnUTatPDUjB8P5MctlVJ1g6G2JVH2dhSW
 gWtxg4le8C5M1My/7yjyUmlv0/xLTe8x3GyXYxZVmkUvJpp7N+wP8de3/
 vhsS61fNeysz1FdMJ4H1Z8Xl2RecVfSgfEJ0EpAOsH2NHUSiDnRUSZMh4
 arS+Au17tJw99DuQRRVE0LKbFb5SSYedlOtBZC1yBdZuytOwBQf/niFiE A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="320219071"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="320219071"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:29:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="977775431"
X-IronPort-AV: E=Sophos;i="5.96,244,1665471600"; d="scan'208";a="977775431"
Received: from adineen-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.60.111])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 01:29:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221214032955.963806-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221214032955.963806-1-arun.r.murthy@intel.com>
Date: Wed, 14 Dec 2022 11:29:04 +0200
Message-ID: <87cz8mwcyn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv4] drm/i915/dp: change aux_ctl reg read to
 polling read
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

On Wed, 14 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The busy timeout logic checks for the AUX BUSY, then waits for the
> timeout period and then after timeout reads the register for BUSY or
> Success.
> Instead replace interrupt with polling so as to read the AUX CTL
> register often before the timeout period. Looks like there might be some
> issue with interrupt-on-read. Hence changing the logic to polling read.
>
> v2: replace interrupt with polling read
> v3: use usleep_rang instead of msleep, updated commit msg
> v4: use intel_wait_for_regiter internal function
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..fe5ed432a66a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -41,20 +41,20 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
>  	u32 status;
> -	bool done;
>  
> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	__intel_wait_for_register(&i915->uncore, ch_ctl,
> +				  DP_AUX_CH_CTL_SEND_BUSY,
> +				  DP_AUX_CH_CTL_SEND_BUSY,
> +				  500, timeout_ms, &status);

This waits for DP_AUX_CH_CTL_SEND_BUSY to be set, not cleared.

Please use intel_de_wait_for_register().

>  
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (!done)
> +	status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +	if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)

Please check intel_de_wait_for_register()'s return value here instead of
reading the register once more.

You might read the register the register again just to log the value, if
intel_de_wait_for_register() returned != 0. But no need to trace log
that again.

>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);
> -#undef C
> +
> +	/* just trace the final value */
> +	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);

intel_de_wait_for_register() already does the tracing of the final
value.

>  
>  	return status;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
