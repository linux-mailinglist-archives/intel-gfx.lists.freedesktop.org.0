Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8879972C2EC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jun 2023 13:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0EEC10E206;
	Mon, 12 Jun 2023 11:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD08A10E219
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jun 2023 11:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686569791; x=1718105791;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1lAVGO8mUoSO7cprcThV3noDdUE4xG0I7RIhH22qess=;
 b=EzQC8gG9zj4GuX+3KT+U7AxLOQiWhgf67zhfrmXTKkm+lyFFg/Mu59Im
 EvwZHjetS57BK6lC+XPR/foc9NRqTTJz/zZSDvpA3ZNj27kQZEIicHYfM
 3N5r5Wf8ZQ02MfhbuyZg2y2ofO68hedpwk3wkEWFm4vF0ykpgiCYKEuxg
 BhIr+W9H/sperTRLMw322MbrLA6Rl63/DOg7so53YU4+hU8L9o/op+ucP
 a9Jp37dKfp2Iftm5HW0J8cfj6xbWIc3v1YWRwv1DQEVqoocrlkQIiT/j1
 WorBRvKzb3F/ICkRN8rRj7v1mVvYuFUi2ud7t8rejR0rkeBTAEIhvGk9B g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="361375147"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="361375147"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 04:36:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="744299127"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="744299127"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 04:36:29 -0700
Date: Mon, 12 Jun 2023 14:36:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <ZIcDPqQ9V1qgkLh1@ideak-desk>
References: <20230608093218.511280-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230608093218.511280-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display/dp: On AUX xfer timeout
 restart freshly
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 08, 2023 at 03:02:18PM +0530, Arun R Murthy wrote:
> At the begining of the aux transfer a check for aux control busy bit is
> done. Then as per the spec on aux transfer timeout, need to retry
> freshly for 3 times with a delay which is taken care by the control
> register.
> On each of these 3 trials a check for busy has to be done so as to start
> freshly.
> 
> v2: updated the commit message
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 50 +++++++++------------
>  1 file changed, 22 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 197c6e81db14..25090542dd9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -273,30 +273,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 * it using the same AUX CH simultaneously
>  	 */
>  
> -	/* Try to wait for any previous AUX channel activity */
> -	for (try = 0; try < 3; try++) {
> -		status = intel_de_read_notrace(i915, ch_ctl);
> -		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
> -			break;
> -		msleep(1);
> -	}
> -	/* just trace the final value */
> -	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> -
> -	if (try == 3) {
> -		const u32 status = intel_de_read(i915, ch_ctl);
> -
> -		if (status != intel_dp->aux_busy_last_status) {
> -			drm_WARN(&i915->drm, 1,
> -				 "%s: not started (status 0x%08x)\n",
> -				 intel_dp->aux.name, status);
> -			intel_dp->aux_busy_last_status = status;
> -		}
> -
> -		ret = -EBUSY;
> -		goto out;
> -	}
> -
>  	/* Only 5 data registers! */
>  	if (drm_WARN_ON(&i915->drm, send_bytes > 20 || recv_size > 20)) {
>  		ret = -E2BIG;
> @@ -304,14 +280,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	}
>  
>  	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
> -		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> +		/* Must try at least 3 times according to DP spec */
> +		for (try = 0; try < 5; try++) {
> +			u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
>  							  send_bytes,
>  							  aux_clock_divider);
>  
> -		send_ctl |= aux_send_ctl_flags;
> +			send_ctl |= aux_send_ctl_flags;

Why is send_ctl recomputed in each iteration?

> +
> +			/* Try to wait for any previous AUX channel activity */
> +			status = intel_dp_aux_wait_done(intel_dp);

How does it help to wait here for the same condition that was already
waited for at the end of the loop?

> +			/* just trace the final value */
> +			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +
> +			if (status & DP_AUX_CH_CTL_SEND_BUSY) {
> +				drm_WARN(&i915->drm, 1,
> +					 "%s: not started, previous Tx still in process (status 0x%08x)\n",
> +					 intel_dp->aux.name, status);
> +				intel_dp->aux_busy_last_status = status;
> +				if (try > 3) {
> +					ret = -EBUSY;
> +					goto out;
> +				} else
> +					continue;
> +			}
>  
> -		/* Must try at least 3 times according to DP spec */
> -		for (try = 0; try < 5; try++) {
>  			/* Load the send data into the aux channel data registers */
>  			for (i = 0; i < send_bytes; i += 4)
>  				intel_de_write(i915, ch_data[i >> 2],
> @@ -321,6 +314,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			/* Send the command and wait for it to complete */
>  			intel_de_write(i915, ch_ctl, send_ctl);
>  
> +			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
>  			status = intel_dp_aux_wait_done(intel_dp);
>  
>  			/* Clear done status and any errors */
> -- 
> 2.25.1
> 
