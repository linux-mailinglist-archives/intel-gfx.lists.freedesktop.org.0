Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4305A727ADA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 11:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086D710E40F;
	Thu,  8 Jun 2023 09:09:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26C010E59A
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686215345; x=1717751345;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=9ksScD8m2cHrqk6KN+bf7ebpGK9c5KJGVa0csOxTFlI=;
 b=RRth0uEX6kZIBzxpgFwWBadXJiDXALL/sIsp5eZZXlSI48bWKXvwg1En
 7z/n1s9Ttdkeq3ayYBS0WZ0PkmdJ9Tkqh832DmZQ0o/SVZbrAmz7T1feV
 tKwymW+1N4v2ym9NOGx2hbA1vi0NJZ3DSvTPWs3chBrOpeNho7XksVK3s
 n3Pxb9kFMUwlqz6xLc/ruv7shaFUitHZNjbnsMb5SE28cEgdm+T2hYOlC
 U0yZqvH+djh3hBiPZ5Jwu17B+OSDD+T7lZkxRlip1R7P3yTZ6vpyao42G
 GylsEZxDqgys9JOITCj5bt7T/ABmbVj+H+PN8PZLdw/Ha1XII1bZQxZIo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="357264318"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="357264318"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="739627966"
X-IronPort-AV: E=Sophos;i="6.00,226,1681196400"; d="scan'208";a="739627966"
Received: from ovaispap-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.59.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 02:08:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230608082800.509420-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230608082800.509420-1-arun.r.murthy@intel.com>
Date: Thu, 08 Jun 2023 12:08:12 +0300
Message-ID: <87r0qms4n7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: On AUX xfer timeout
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

On Thu, 08 Jun 2023, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> As part of restart on AUX xfer timeout, check for busy status and then
> start sending the data.

Why?

Always answer the question "why" in the commit messages. The commit
message is completely inadequate for the changes.

BR,
Jani.


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
> +
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

-- 
Jani Nikula, Intel Open Source Graphics Center
