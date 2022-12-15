Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE0464D83B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 10:05:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B3310E009;
	Thu, 15 Dec 2022 09:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C77F010E09B
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 09:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671095151; x=1702631151;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qk1QgV3DEtqfYb5DrqZUPvlya/gBppPA23hQO80OVoY=;
 b=AFTP08VgQO9N34mKmgxOXdEoIhdswLqcpOVgydp6cF1KqK1gMnikHnPX
 ClmTEEXGVQvA7mxoqFnDyVZ/ROCdZYszHs4hYXFisq/ZTYDh1BWjndoAA
 luGjRPNKk/PhDtRQcucm9Oh/3WVMiXAGMdfxf6FE1L/xfNcads8OuchkI
 r8p5Y4t61nSUvPY6ShHk+D/ISx7kd3gbkQ0XoNoZf74jSbpyFZnn9fLyG
 TaBAV+OwBqfmU8q54QDe0ZmGMNQVkSK7DyoMuwWEcdRmkadsBUlWEiIOF
 +PlL6paPfl8/M1FvI+dQTDBavDWyL+NZXpMBTkjUA2JLRFg13/AB9dqZa Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="345715692"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="345715692"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 01:05:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="627096867"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="627096867"
Received: from tgodea-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.26])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 01:05:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 imre.deak@intel.com
In-Reply-To: <20221214162112.1036757-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221214162112.1036757-1-arun.r.murthy@intel.com>
Date: Thu, 15 Dec 2022 11:05:31 +0200
Message-ID: <871qp1vxyc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv5] drm/i915/dp: change aux_ctl reg read to
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
> v5: use __intel_de_wait_for_register with 500us slow and 10ms fast timeout
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 35 ++++++---------------
>  1 file changed, 9 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 91c93c93e5fc..772da38b451f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -34,31 +34,6 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
>  		dst[i] = src >> ((3 - i) * 8);
>  }
>  
> -static u32
> -intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> -{
> -	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> -	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
> -	const unsigned int timeout_ms = 10;
> -	u32 status;
> -	bool done;
> -
> -#define C (((status = intel_de_read_notrace(i915, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -	done = wait_event_timeout(i915->display.gmbus.wait_queue, C,
> -				  msecs_to_jiffies_timeout(timeout_ms));
> -
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (!done)
> -		drm_err(&i915->drm,
> -			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> -			intel_dp->aux.name, timeout_ms, status);
> -#undef C
> -
> -	return status;
> -}
> -

Please keep the function.

intel_dp_aux_xfer() is long enough as it is. It really doesn't need the
added lines, quite the opposite.

The intel_dp_aux_wait_done() also gives a name to what's being done.

>  static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> @@ -264,6 +239,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	}
>  
>  	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
> +		u32 timeout_ms = 10;
>  		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
>  							  send_bytes,
>  							  aux_clock_divider);
> @@ -281,7 +257,14 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			/* Send the command and wait for it to complete */
>  			intel_de_write(i915, ch_ctl, send_ctl);
>  
> -			status = intel_dp_aux_wait_done(intel_dp);
> +			__intel_de_wait_for_register(i915, ch_ctl,
> +						     DP_AUX_CH_CTL_SEND_BUSY, 0,
> +						     500, timeout_ms, &status);
> +
> +			if ((status & DP_AUX_CH_CTL_SEND_BUSY) != 0)
> +				drm_err(&i915->drm,
> +					"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> +					intel_dp->aux.name, timeout_ms, status);

Please use the return value of intel_de_wait_for_register() to determine
the timeout instead of duplicating the condition. (Feels like I said
this a few times already?)

BR,
Jani.

>  
>  			/* Clear done status and any errors */
>  			intel_de_write(i915, ch_ctl,

-- 
Jani Nikula, Intel Open Source Graphics Center
