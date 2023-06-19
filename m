Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9503D735672
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jun 2023 14:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0833A10E1F0;
	Mon, 19 Jun 2023 12:07:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F5B10E1F0
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jun 2023 12:07:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687176431; x=1718712431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nCCb3T8c0x6P44NvqimXvamHhMYvnn+Yg6zK7IUjygc=;
 b=gtIwHGmz+yF3OLyu9jhM1VZ1hwkcV8zJ+prK4C+2gLZbTbNuVLS3HZgH
 Wm3nsN1eCgGVCz0r4EvmaATWeGT5BeVI8qdqS2fS9dI13P6EF8sWhsuqv
 PLaffyTORqWJ+W1oeHl7hHumL3yVhynm9o2YD/rZilNZgJn1KVnSe1Urk
 y/xpliqsZZGVj0XAbgsomYvsTb8UcDJw5bHKtx9vWOT5rpCh7mS4Fji7f
 cU/VLn98naQSw/krvqWh5+zU0XYFJ6GfG0lKL2sbIhtU+sAN0uclVIkgv
 PBR/BHwzYJnVShCIxT7z7+MoBju7bomzoTAcyqsIPQLOYtkCGFkxEAxZU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="445990647"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="445990647"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 05:07:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="663967724"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="663967724"
Received: from fuhrberg-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.37.35])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 05:07:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230619082715.922094-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230619082715.922094-1-arun.r.murthy@intel.com>
Date: Mon, 19 Jun 2023 15:07:05 +0300
Message-ID: <87legfk652.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCHv4] drm/i915/display/dp: On AUX xfer timeout
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 19 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> At the beginning of the aux transfer a check for aux control busy bit is
> done. Then as per the spec on aux transfer timeout, need to retry
> freshly for 3 times with a delay which is taken care by the control
> register.
> On each of these 3 trials a check for busy has to be done so as to start
> freshly.
>
> v2: updated the commit message
> v4: check for SEND_BUSY after write (Imre)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 58 +++++++++------------
>  1 file changed, 26 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 21b50a5c8a85..abe8047fac39 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -226,6 +226,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	int i, ret, recv_bytes;
>  	int try, clock = 0;
>  	u32 status;
> +	u32 send_ctl;
>  	bool vdd;
>  
>  	ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
> @@ -273,45 +274,36 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
>  		goto out;
>  	}
> +	send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> +					      send_bytes,
> +					      aux_clock_divider);
> +	send_ctl |= aux_send_ctl_flags;
>  
>  	while ((aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp, clock++))) {
> -		u32 send_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> -							  send_bytes,
> -							  aux_clock_divider);
> -
> -		send_ctl |= aux_send_ctl_flags;

You can't move the send_ctl assignment outside the loop, because the
loop changes aux_clock_divider which affects send_ctl.

Please take your time with the next version, and don't try to rush it,
and we'll get this done quicker.

> -
> -		/* Must try at least 3 times according to DP spec */
> +		/* Re-visit : Must try at least 3 times according to DP spec */

How is this change helpful?

>  		for (try = 0; try < 5; try++) {
> +			/* Try to wait for any previous AUX channel activity */
> +			status = intel_dp_aux_wait_done(intel_dp);
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

If one branch needs braces, all of them do.

> +			}
> +
>  			/* Load the send data into the aux channel data registers */
>  			for (i = 0; i < send_bytes; i += 4)
>  				intel_de_write(i915, ch_data[i >> 2],
> @@ -321,6 +313,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			/* Send the command and wait for it to complete */
>  			intel_de_write(i915, ch_ctl, send_ctl);
>  
> +			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
>  			status = intel_dp_aux_wait_done(intel_dp);
>  
>  			/* Clear done status and any errors */
> @@ -335,7 +328,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  			 *   Timeout errors from the HW already meet this
>  			 *   requirement so skip to next iteration
>  			 */
> -			if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR)
> +			if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +						DP_AUX_CH_CTL_SEND_BUSY))

The indentation is off.

>  				continue;
>  
>  			if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {

-- 
Jani Nikula, Intel Open Source Graphics Center
