Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5651764D992
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E50710E518;
	Thu, 15 Dec 2022 10:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38DED10E518
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671100241; x=1702636241;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=kZ4RmLCjhj2JTM5rqHpHfTBZKaBBYqwOC4Av8r28FDY=;
 b=K2D9bBkwLqShhkkmq2yRiwq2UbQ4be5fLOOPtAdewqZ8z3zBWKPW2AlM
 iNpFdM0WxFiRHHaIHpQPTBvhMi4Jrow0x4uxXaBCReClAhZ3hkXIR0K7K
 84kHboB+jybqR6dpk8NyDXPtlumh7mTPqZbN2781OAfiy/KUoLRHIurqU
 VTHqxuUmBJLBIkT5q74k2PNRhupQ4v3muCPaxD8QNDBCbIhNWgqraMV3q
 S5WYXSJdTPQQzD7SsuAol0MrV5Z7ZhHVEyuYvCpnuuiBeyRvsURWbR4aH
 0ryxW89wGk9y8C1xdZtEYtzj6dTEmvmuE5bcmAKnA9InpxztrzJNL+bIq A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="319784220"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="319784220"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:30:31 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="680058104"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="680058104"
Received: from tgodea-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.26])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 02:30:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221215095533.1073528-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221215095533.1073528-1-arun.r.murthy@intel.com>
Date: Thu, 15 Dec 2022 12:30:26 +0200
Message-ID: <87pmclufgd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
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

On Thu, 15 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
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
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..dec88f41380e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -40,21 +40,16 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
> -	u32 status;
> -	bool done;
> -
> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> +	u32 status, ret;
>  
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +	ret = __intel_de_wait_for_register(i915, ch_ctl,
> +				     DP_AUX_CH_CTL_SEND_BUSY, 0,
> +				     500, timeout_ms, &status);
>  
> -	if (!done)
> +	if (ret == -ETIMEDOUT)

What's wrong with this comparison? Although it probably does work by
coincidence.

BR,
Jani.


>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
>  			intel_dp->aux.name, timeout_ms, status);
> -#undef C
>  
>  	return status;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
