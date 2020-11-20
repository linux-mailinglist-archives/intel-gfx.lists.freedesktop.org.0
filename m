Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62602BA99E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 12:54:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 527A46E8AF;
	Fri, 20 Nov 2020 11:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6B896E8AF
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 11:54:44 +0000 (UTC)
IronPort-SDR: YPudqxenx0H/iiBsMizTZC7Hop4vVCGqRN5z7VRc8Kzp8rYbGGgvGBHEGzwR+okKaT0c5RQCTh
 VYUJh89qN+0Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="256168536"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="256168536"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 03:54:44 -0800
IronPort-SDR: Xx1xBeY8vJqlCwyaKHLYWdzxMh6fxOqQxDKiLazEjJAX9uKc2+d6l6iwInnURSf9c76LnCKbjF
 vgEKvyed20iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="312001899"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 20 Nov 2020 03:54:38 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 192285C2069; Fri, 20 Nov 2020 13:52:37 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201119225843.13476-1-chris@chris-wilson.co.uk>
References: <20201119223600.20802-1-chris@chris-wilson.co.uk>
 <20201119225843.13476-1-chris@chris-wilson.co.uk>
Date: Fri, 20 Nov 2020 13:52:37 +0200
Message-ID: <871rgoi6t6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Plug IPS into intel_rps_set
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The old IPS interface did not match the RPS interface that we tried to
> plug it into (bool vs int return). Once repaired, our minimal
> selftesting is finally happy!
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 34 +++++++++++++++++++----------
>  1 file changed, 22 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 0d88f17799ff..b13e7845d483 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -400,7 +400,7 @@ static unsigned int gen5_invert_freq(struct intel_rps *rps,
>  	return val;
>  }
>  
> -static bool gen5_rps_set(struct intel_rps *rps, u8 val)
> +static int __gen5_rps_set(struct intel_rps *rps, u8 val)
>  {
>  	struct intel_uncore *uncore = rps_to_uncore(rps);
>  	u16 rgvswctl;
> @@ -410,7 +410,7 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
>  	rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);
>  	if (rgvswctl & MEMCTL_CMD_STS) {
>  		DRM_DEBUG("gpu busy, RCS change rejected\n");
> -		return false; /* still busy with another command */
> +		return -EBUSY; /* still busy with another command */
>  	}
>  
>  	/* Invert the frequency bin into an ips delay */
> @@ -426,7 +426,18 @@ static bool gen5_rps_set(struct intel_rps *rps, u8 val)
>  	rgvswctl |= MEMCTL_CMD_STS;
>  	intel_uncore_write16(uncore, MEMSWCTL, rgvswctl);
>  
> -	return true;
> +	return 0;
> +}
> +
> +static int gen5_rps_set(struct intel_rps *rps, u8 val)
> +{
> +	int err;
> +
> +	spin_lock_irq(&mchdev_lock);
> +	err = __gen5_rps_set(rps, val);
> +	spin_unlock_irq(&mchdev_lock);
> +
> +	return err;
>  }
>  
>  static unsigned long intel_pxfreq(u32 vidfreq)
> @@ -557,7 +568,7 @@ static bool gen5_rps_enable(struct intel_rps *rps)
>  			"stuck trying to change perf mode\n");
>  	mdelay(1);
>  
> -	gen5_rps_set(rps, rps->cur_freq);
> +	__gen5_rps_set(rps, rps->cur_freq);
>  
>  	rps->ips.last_count1 = intel_uncore_read(uncore, DMIEC);
>  	rps->ips.last_count1 += intel_uncore_read(uncore, DDREC);
> @@ -599,7 +610,7 @@ static void gen5_rps_disable(struct intel_rps *rps)
>  	intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
>  
>  	/* Go back to the starting frequency */
> -	gen5_rps_set(rps, rps->idle_freq);
> +	__gen5_rps_set(rps, rps->idle_freq);
>  	mdelay(1);
>  	rgvswctl |= MEMCTL_CMD_STS;
>  	intel_uncore_write(uncore, MEMSWCTL, rgvswctl);
> @@ -797,20 +808,19 @@ static int rps_set(struct intel_rps *rps, u8 val, bool update)
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	int err;
>  
> -	if (INTEL_GEN(i915) < 6)
> -		return 0;
> -
>  	if (val == rps->last_freq)
>  		return 0;
>  
>  	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  		err = vlv_rps_set(rps, val);
> -	else
> +	else if (INTEL_GEN(i915) >= 6)
>  		err = gen6_rps_set(rps, val);
> +	else
> +		err = gen5_rps_set(rps, val);
>  	if (err)
>  		return err;
>  
> -	if (update)
> +	if (update && INTEL_GEN(i915) >= 6)
>  		gen6_rps_set_thresholds(rps, val);
>  	rps->last_freq = val;
>  
> @@ -1794,7 +1804,7 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
>  			 rps->min_freq_softlimit,
>  			 rps->max_freq_softlimit);
>  
> -	if (new_freq != rps->cur_freq && gen5_rps_set(rps, new_freq))
> +	if (new_freq != rps->cur_freq && !__gen5_rps_set(rps, new_freq))
>  		rps->cur_freq = new_freq;
>  
>  	spin_unlock(&mchdev_lock);
> @@ -2105,7 +2115,7 @@ bool i915_gpu_turbo_disable(void)
>  
>  	spin_lock_irq(&mchdev_lock);
>  	rps->max_freq_softlimit = rps->min_freq;
> -	ret = gen5_rps_set(&i915->gt.rps, rps->min_freq);
> +	ret = !__gen5_rps_set(&i915->gt.rps, rps->min_freq);
>  	spin_unlock_irq(&mchdev_lock);
>  
>  	drm_dev_put(&i915->drm);
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
