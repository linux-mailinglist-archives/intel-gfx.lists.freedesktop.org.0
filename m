Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 673B072E014
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 12:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3BA810E368;
	Tue, 13 Jun 2023 10:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB57E10E368
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 10:49:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686653365; x=1718189365;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=UB6QBz4d/J3v8qM61aqIOb05VBpKMRx/efjztlSjcns=;
 b=S9EslevnmVoS1iXiqiZrl4N4/u9lXo/Le+/yx2dZs07sY08VCKLCrSqe
 TZzvgUNYaG3tFdGw+7FskCJm3qA9uW3TZX4XHYGJRVa6v2rO6gICc1Y/5
 3x/C4LF5anTohrDARVQmKDh+hnka7EQdZJv2wqAiVBvW64IIy1k82tY0/
 4JLmSb9xWDFOTi5qWvuGMy0b3WrKUt1+LBjTjeLFppbQmvp1Igre1YNNg
 k1+jrSDb4yhKI+77qb8E8VgsdIjGog31ZkXgfIiNj9+fkXhIzdYwj2jiQ
 t4H0GIRJS9bGkYnC5hC3zvMQfY4y6eCHXn+o5VbOAKDnHJfpbaCSX4kGv g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="337932168"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="337932168"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="958366034"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="958366034"
Received: from unknown (HELO ideak-desk) ([10.237.72.78])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:49:23 -0700
Date: Tue, 13 Jun 2023 13:49:25 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>
Message-ID: <ZIhJte34Usxx19/J@ideak-desk>
References: <20230613044239.691706-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230613044239.691706-1-arun.r.murthy@intel.com>
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915/display/dp: On AUX xfer timeout
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 13, 2023 at 10:12:39AM +0530, Arun R Murthy wrote:
> On AUX transfer timeout, as per DP spec need to retry for 3 times and
> has to be restarted freshly.
> 
> v3: handle timeout and dont rely on register value on timeout (Imre)
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 -
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   | 72 +++++++++----------
>  2 files changed, 34 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2d8297f8d088..0942b109b4ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1741,7 +1741,6 @@ struct intel_dp {
>  	/* sink or branch descriptor */
>  	struct drm_dp_desc desc;
>  	struct drm_dp_aux aux;
> -	u32 aux_busy_last_status;
>  	u8 train_set[4];
>  
>  	struct intel_pps pps;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 0c27db8ae4f1..244b4d7d716d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -36,25 +36,24 @@ static void intel_dp_aux_unpack(u32 src, u8 *dst, int dst_bytes)
>  		dst[i] = src >> ((3 - i) * 8);
>  }
>  
> -static u32
> -intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> +static int
> +intel_dp_aux_wait_done(struct intel_dp *intel_dp, u32 *status)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
>  	const unsigned int timeout_ms = 10;
> -	u32 status;
>  	int ret;
>  
>  	ret = __intel_de_wait_for_register(i915, ch_ctl,
>  					   DP_AUX_CH_CTL_SEND_BUSY, 0,
> -					   2, timeout_ms, &status);
> +					   50, timeout_ms, status);
>  
>  	if (ret == -ETIMEDOUT)
>  		drm_err(&i915->drm,
>  			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
> -			intel_dp->aux.name, timeout_ms, status);
> +			intel_dp->aux.name, timeout_ms, *status);
>  
> -	return status;
> +	return ret;
>  }
>  
>  static u32 g4x_get_aux_clock_divider(struct intel_dp *intel_dp, int index)
> @@ -186,10 +185,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
>  	 */
>  	ret = DP_AUX_CH_CTL_SEND_BUSY |
>  		DP_AUX_CH_CTL_DONE |
> -		DP_AUX_CH_CTL_INTERRUPT |

The above one-liner change, also applied in g4x_get_aux_send_ctl()
should be a separate patch.

> -		DP_AUX_CH_CTL_TIME_OUT_ERROR |
>  		DP_AUX_CH_CTL_TIME_OUT_MAX |
> -		DP_AUX_CH_CTL_RECEIVE_ERROR |
>  		DP_AUX_CH_CTL_MESSAGE_SIZE(send_bytes) |
>  		DP_AUX_CH_CTL_FW_SYNC_PULSE_SKL(intel_dp_aux_fw_sync_len()) |
>  		DP_AUX_CH_CTL_SYNC_PULSE_SKL(intel_dp_aux_sync_len());
> @@ -273,30 +269,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
> @@ -304,14 +276,31 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
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
> +
> +			/* Try to wait for any previous AUX channel activity */
> +			/* TODO: if typeC then 4.2ms else 800us. For DG2 add 1.5ms for both cases */
> +			ret = intel_dp_aux_wait_done(intel_dp, &status);
> +			/* just trace the final value */
> +			trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> +
> +			/* On timeout dont read the status bits as its not updated */
> +			if (ret == -ETIMEDOUT) {
> +				drm_WARN(&i915->drm, 1,
> +					 "%s: not started, previous Tx still in process (status 0x%08x)\n",
> +					 intel_dp->aux.name, status);
> +				if (try > 3)
> +					goto out;
> +				else
> +					continue;
> +			}
>  
> -		/* Must try at least 3 times according to DP spec */
> -		for (try = 0; try < 5; try++) {
>  			/* Load the send data into the aux channel data registers */
>  			for (i = 0; i < send_bytes; i += 4)
>  				intel_de_write(i915, ch_data[i >> 2],
> @@ -320,8 +309,15 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  
>  			/* Send the command and wait for it to complete */
>  			intel_de_write(i915, ch_ctl, send_ctl);
> +			intel_de_rmw(i915, ch_ctl, DP_AUX_CH_CTL_INTERRUPT |
> +				     DP_AUX_CH_CTL_TIME_OUT_ERROR |
> +				     DP_AUX_CH_CTL_RECEIVE_ERROR, 0);
>  
> -			status = intel_dp_aux_wait_done(intel_dp);

The review comments were not addressed and these changes still don't
make sense to me. What I meant is - instead of all the above changes -
bailing out at this point if DP_AUX_CH_CTL_SEND_BUSY is still set in
status.

> +			ret = intel_dp_aux_wait_done(intel_dp, &status);
> +
> +			/* On timeout dont read the status bits as its not updated */
> +			if (ret == -ETIMEDOUT)
> +				continue;
>  
>  			/* Clear done status and any errors */
>  			intel_de_write(i915, ch_ctl,
> -- 
> 2.25.1
> 
