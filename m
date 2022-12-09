Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 147E564811B
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 11:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E839410E518;
	Fri,  9 Dec 2022 10:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84E910E518
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 10:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670582743; x=1702118743;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=9Z5h99Zvd/IT9pZJiT+JJ7QyzzvLVmtnedE7Cs7SfcE=;
 b=BK+qmqAlCgibNHxyJZHPUHGGfdcZDtADjIYCiFJgGpetA4YEq8YtzLIv
 4mUEfi85gu6iTyNkF8yolsOsjDX9X5Ik6jqhHOdZqZan9cHgHeiJvOY2T
 Fflw+w4DOzQ1cDWegpZIhb8l06lz5cGLIkKOCguKRWzJY50cBS0o6Hpf5
 FDN7OPWEqFfAVWRXlbWBZ00rGz7RsRKEgx6mtjYpnQ6psY3zqbnOh4p09
 4dSW8CZ7ed2bSPgETmlcqee1wT6MIPKFPHht5YGkRg4Lr+iQnopYremeI
 jipgkNWMc6nQIfKaHl6v8+GeNBWoC/IKxTKGndJkV9621UwwR67xIroG3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="379646068"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="379646068"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:45:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="715982801"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="715982801"
Received: from sarahgar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.186])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 02:45:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221209083510.475948-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221209083510.475948-1-arun.r.murthy@intel.com>
Date: Fri, 09 Dec 2022 12:45:37 +0200
Message-ID: <87cz8szwha.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg
 read to polling read
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

On Fri, 09 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> The busy timeout logic checks for the AUX BUSY, then waits for the
> timeout period and then after timeout reads the register for BUSY or
> Success.
> Instead replace interrupt with polling so as to read the AUX CTL
> register often before the timeout period. Looks like there might be some
> issue with interrupt-on-read. Hence changing the logic to polling read.
>
> v2: replace interrupt with polling read
> v3: use usleep_rang instead of msleep, updated commit msg
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 24 ++++++++++++---------
>  1 file changed, 14 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..230f27d75846 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -41,21 +41,25 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
>  	u32 status;
> -	bool done;
> +	int try;
>  
> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	for (try = 0; try < 10; try++) {
> +		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> +			break;
> +		usleep_range(400, 500);
> +	}
> +	if (try == 3) {
> +		status = intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
> +			drm_err(&i915->drm,
> +				"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> +				intel_dp->aux.name, timeout_ms, status);
> +	}
>  
>  	/* just trace the final value */
>  	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);

Okay, so there are still a bunch of issues above. For example, try < 10
vs. try == 3, reverting back to intel_uncore_* functions after conflict
resolution, having duplicated reads and conditions.

Now, I should've taken a step back earlier and realized you should use
the helper we already have for this: intel_de_wait_for_register().

All of the above shrinks to just a few lines:

	ret = intel_de_wait_for_register(i915, ch_ctl, DP_AUX_CH_CTL_SEND_BUSY, 0, timeout_ms);
	if (ret)
		drm_err(...);

Sorry for missing this earlier.

BR,
Jani.

>  
> -	if (!done)
> -		drm_err(&i915->drm,
> -			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> -			intel_dp->aux.name, timeout_ms, status);
> -#undef C
> -
>  	return status;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
