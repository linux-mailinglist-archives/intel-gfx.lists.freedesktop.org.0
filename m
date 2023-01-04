Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D4865D41C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 14:28:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B0B210E1E0;
	Wed,  4 Jan 2023 13:28:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8589D10E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 13:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672838879; x=1704374879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VqYax0Nb2EiZyk5dIC4vNS8JToDlpNZ5eJU7UGbDRLQ=;
 b=j7c77HGErkkuozSCvUyX8nj/qPEVtbpev9uqCUE6vIXYPnwCNlercBLh
 ZWdA7KkasA2v+8KNmyTW0GqknPGnl3ZJyLtoSejXXr2DH1BHfye7Zh1He
 YDefg0842AA5Q/gf3B6IzIi8bhCLdqLE+hrMZjWTLrqk9dSqFby7AjWq+
 toQygmKZpysOD+gCeeJwglX9eb659P0fYAN3qPZ/nSogQfqXHSUWQSNiv
 oeTv3OSc3gMUw8zfP4H3Xw0O2ZEyDBuZr1PbH6SpLLkIJhXPyIf0Ipodm
 Ry0GJDrUsWqijsdkICbbl7eMdwhSDFcFfjVJd/vE7BZFFXrH3EXjNsm4z Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319640667"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="319640667"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 05:27:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="655178773"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="655178773"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 05:27:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221221033209.1284435-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221221033209.1284435-1-arun.r.murthy@intel.com>
Date: Wed, 04 Jan 2023 15:27:53 +0200
Message-ID: <87wn62wht2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv7] drm/i915/dp: change aux_ctl reg read to
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

On Wed, 21 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
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
> v5: use __intel_de_wait_for_register with 500us slow and 10ms fast timeout
> v6: check return value of __intel_de_wait_for_register
> v7: using default 2us for intel_de_wait_for_register
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Pushed to drm-intel-next, thanks for the patch.

How about replacing the other open coded try loop in intel_dp_aux_xfer()
with intel_de_wait_for_register() too?

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..5a176bfb10a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
>  	u32 status;
> -	bool done;
> -
> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	int ret;
>  
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +	ret = __intel_de_wait_for_register(i915, ch_ctl,
> +					   DP_AUX_CH_CTL_SEND_BUSY, 0,
> +					   2, timeout_ms, &status);
>  
> -	if (!done)
> +	if (ret == -ETIMEDOUT)
>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);
> -#undef C
>  
>  	return status;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
