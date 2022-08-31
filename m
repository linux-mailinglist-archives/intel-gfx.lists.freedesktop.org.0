Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D78815A72E1
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 02:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7347D10E18F;
	Wed, 31 Aug 2022 00:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57F4810E18F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 00:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661906737; x=1693442737;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=tVfrExlQV0jCVOM+NN5vfPb2falWwdLiff378jx0lo4=;
 b=aM8XjrWHiuMS8uDXfAu0bwvkBocEs96hkKiImm1cj1FEBX6Tg3OmS7gm
 G14AE22BjSqkVgzqqsCacO+lFN6hjnFiogjgnTvmc10jYX6DGtKkFHUhH
 KU9fzphEKSlEeOUgaY7e2i5nXTZakjzbd6TEfkxQ3HpyfIEkKiWZYuMyM
 qHu+BfXvghtyNoJeauKysn/GDc5eSPkkk5KxCOyZow8QO7SaTK3FSuyR3
 nTFJlw1kCKwRn4L3//2Yq+GAYSTv2iet4k6dgDtlymzO1GscKV5o0cfjH
 RiC4wwu3OkwXpKQC6RU941Qx7k4yOhX14Yw0cJ25994gB1VY5FYMbfKKL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275742159"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="275742159"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 17:45:36 -0700
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="737941453"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.252.128.174])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 17:45:36 -0700
Date: Tue, 30 Aug 2022 17:45:36 -0700
Message-ID: <874jxtz1e7.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20220830191620.45119-1-rodrigo.vivi@intel.com>
References: <87edwxzqir.wl-ashutosh.dixit@intel.com>	<20220830191620.45119-1-rodrigo.vivi@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.1 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/slpc: Let's fix the PCODE min freq
 table setup for SLPC
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
Cc: intel-gfx@lists.freedesktop.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 30 Aug 2022 12:16:20 -0700, Rodrigo Vivi wrote:
>

Hi Rodrigo,

> @@ -65,13 +63,8 @@ static bool get_ia_constants(struct intel_llc *llc,
>	/* convert DDR frequency from units of 266.6MHz to bandwidth */
>	consts->min_ring_freq = mult_frac(consts->min_ring_freq, 8, 3);
>
> -	consts->min_gpu_freq = rps->min_freq;
> -	consts->max_gpu_freq = rps->max_freq;
> -	if (GRAPHICS_VER(i915) >= 9) {
> -		/* Convert GT frequency to 50 HZ units */
> -		consts->min_gpu_freq /= GEN9_FREQ_SCALER;
> -		consts->max_gpu_freq /= GEN9_FREQ_SCALER;
> -	}
> +	consts->min_gpu_freq = intel_rps_get_min_raw_freq(rps);
> +	consts->max_gpu_freq = intel_rps_get_max_raw_freq(rps);
>
>	return true;
>  }
> @@ -130,6 +123,12 @@ static void gen6_update_ring_freq(struct intel_llc *llc)
>	if (!get_ia_constants(llc, &consts))
>		return;
>
> +	/*
> +	 * Although this is unlikely on any platform during initialization,
> +	 * let's ensure we don't get accidentally into infinite loop
> +	 */
> +	if (consts.max_gpu_freq <= consts.min_gpu_freq)
> +		return;

As I said this is not correct and is not needed. If 'consts.max_gpu_freq ==
consts.min_gpu_freq' we would *want* to program PCODE. If
'consts.max_gpu_freq < consts.min_gpu_freq' the loop will automatically
skip (and also it is not an infinite loop).

> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index de794f5f8594..26af974292c7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -2156,6 +2156,24 @@ u32 intel_rps_get_max_frequency(struct intel_rps *rps)
>		return intel_gpu_freq(rps, rps->max_freq_softlimit);
>  }
>
> +u32 intel_rps_get_max_raw_freq(struct intel_rps *rps)

What does "raw" mean? Or are we introducing a new concept here then we need
to explain the new concept? I was previously told there is a concept of "hw
units" of freq and intel_gpu_freq will convert from "hw units" to MHz.

Also, Is the return value in units of 50 MHz in all cases (we know it is
for SLPC and Gen 9+)? In that case we should name such a function to
something like intel_rps_get_max_freq_in_50mhz_units?

> +{
> +	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
> +	u32 freq;
> +
> +	if (rps_uses_slpc(rps)) {
> +		return DIV_ROUND_CLOSEST(slpc->rp0_freq,
> +					 GT_FREQUENCY_MULTIPLIER);
> +	} else {
> +		freq = rps->max_freq;
> +		if (GRAPHICS_VER(rps_to_i915(rps)) >= 9) {
> +			/* Convert GT frequency to 50 HZ units */

50 MHz and not 50 Hz. Also the comment should be moved to above
rps_uses_slpc() line if returned freq is always in units of 50 MHz.

> +			freq /= GEN9_FREQ_SCALER;
> +		}
> +		return freq;
> +	}
> +}

Also is this function equivalent to this:

u32 intel_rps_get_max_freq_in_50mhz_units(struct intel_rps *rps)
{
	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
	u32 freq;

	/* freq in MHz */
	freq = rps_uses_slpc(rps) ? slpc->rp0_freq : intel_gpu_freq(rps->max_freq);

	return DIV_ROUND_CLOSEST(freq, GT_FREQUENCY_MULTIPLIER);
}

Sorry I don't have a lot of history in how these frequencies are scaled
specially for old platforms like CHV/VLV/Gen6+. But afaiu intel_gpu_freq()
will convert the freq to MHz for all platforms.

And then does get_ia_constants() accept freq in 50 MHz units for all
platforms?

If we are not sure about this, we can go with your version which is closer
to the original version in get_ia_constants() and so "safer" I guess.

Thanks.
--
Ashutosh
