Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 688A56426D1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 11:38:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCE410E055;
	Mon,  5 Dec 2022 10:38:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A22ED10E055
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 10:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670236693; x=1701772693;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3CC5FEi31pXXQ5u0ggvTHC5xYFRxX1g57kzbFaUnkbs=;
 b=mJBMQzV0OTj0Y65nWcq2RHZY9BgrbzkvGbPvFOgbQIJFg5Jrgu/rRksg
 lQpQM1SgPQIFHNI8hwlyKlOH1bBWQ4Jq7/0MIQ++/MzXsGScPSk2Xw1s9
 kR6con9JrUdGYEehheN/MArNVyf443VxLLKtkpoJHzciuWmAKo6dIvtrx
 0o6wEMZxDw96HyoShvYuoz1Ld+kaBh0efZrPYBLU60S2zXa6h+UsYjTIx
 WUzcNA7YGFxH2cZoDmat5RQsOyspX3fnON/Lg7QKqc0ZAmr2EsOxssRU7
 /F/afGlLATBWuJ3O1teIf7l50OoPmzmHiWv/SeJJuggOGEV1OkfBNdRgY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="299743678"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="299743678"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 02:38:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="596153785"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="596153785"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 02:38:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221201064437.4180130-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221201064437.4180130-1-arun.r.murthy@intel.com>
Date: Mon, 05 Dec 2022 12:38:07 +0200
Message-ID: <87bkoi2l0w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/dp: Change aux_ctl reg read to
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

On Thu, 01 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The busy timeout logic checks for the AUX BUSY, then waits for the
> timeout period and then after timeout reads the register for BUSY set
> and fails.

That's inaccurate. It checks for busy, waits for the gmbus irq, and on
timeout or irq, whichever happens first, checks busy again.

The commit message fails to explain what is wrong with that. The
rationale is missing.

> Instead replace interrupt with polling so as to read the AUX CTL
> register often before the timeout period.

Again, what's the problem that this addresses? Are you not getting an
irq, and often hitting the timeout? Or do you think there's too much
delay between getting the irq and continuing? Or what?

>
> v2: replace interrupt with polling read
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 24 ++++++++++++---------
>  1 file changed, 14 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 664bebdecea7..22c0a59850df 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -40,20 +40,24 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
>  	u32 status;
> -	bool done;
> -
> -#define C (((status = intel_uncore_read_notrace(&i915->uncore, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	int try;
>  
> +	for (try = 0; try < 10; try++) {
> +		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> +			break;
> +		msleep(1);

I believe msleep(1), while used quite a bit in the kernel, is considered
bad style. You don't really know how long it's going to sleep, it's not
that accurate. It could be 10-20 ms I think. (IIRC I've seen 100+ ms
sleeps on busy systems.) So if the condition never happens, you might be
looping for 100-200 ms here instead of the 10 ms.

And you might wait for 20+ ms before the 2nd read of the register.

If your problem is the delay between the irq calling wake_up_all() and
this actually waking up (which I believe is subject to the same
latencies as msleep()) then this is all pretty random. You need to
analyze and describe the problem better.

> +	}
>  	/* just trace the final value */
>  	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);

This should continue to trace the final value. Now you read status once
more after this.


BR,
Jani.

>  
> -	if (!done)
> -		drm_err(&i915->drm,
> -			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> -			intel_dp->aux.name, timeout_ms, status);
> -#undef C
> +	if (try == 3) {
> +		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
> +			drm_err(&i915->drm,
> +				"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> +				intel_dp->aux.name, timeout_ms, status);
> +	}
>  
>  	return status;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
