Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B24716358B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 22:54:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F93A6E413;
	Tue, 18 Feb 2020 21:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 810066E413
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 21:54:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 13:54:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,458,1574150400"; d="scan'208";a="382593485"
Received: from jheikkin-mobl2.ger.corp.intel.com (HELO [10.252.40.79])
 ([10.252.40.79])
 by orsmga004.jf.intel.com with ESMTP; 18 Feb 2020 13:54:04 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200216161746.500258-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <0dd74573-4567-aadc-9df1-4e33758d04ec@intel.com>
Date: Tue, 18 Feb 2020 23:54:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200216161746.500258-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid potential division-by-zero
 in computing CS timestamp period
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 16/02/2020 18:17, Chris Wilson wrote:
> Since we use a HW readback or estimation of the CS timestamp frequency,
> sometimes it may result in 0. Avoid the division-by-zero in computing
> its reciprocal, the timestamp period.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/intel_device_info.c | 18 +++++++++++-------
>   1 file changed, 11 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index a97437fac884..18d9de488593 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -1044,13 +1044,17 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>   	}
>   
>   	/* Initialize command stream timestamp frequency */
> -	runtime->cs_timestamp_frequency_khz = read_timestamp_frequency(dev_priv);
> -	runtime->cs_timestamp_period_ns =
> -		div_u64(1e6, runtime->cs_timestamp_frequency_khz);
> -	drm_dbg(&dev_priv->drm,
> -		"CS timestamp wraparound in %lldms\n",
> -		div_u64(mul_u32_u32(runtime->cs_timestamp_period_ns, S32_MAX),
> -			USEC_PER_SEC));
> +	runtime->cs_timestamp_frequency_khz =
> +		read_timestamp_frequency(dev_priv);
> +	if (runtime->cs_timestamp_frequency_khz) {
> +		runtime->cs_timestamp_period_ns =
> +			div_u64(1e6, runtime->cs_timestamp_frequency_khz);
> +		drm_dbg(&dev_priv->drm,
> +			"CS timestamp wraparound in %lldms\n",
> +			div_u64(mul_u32_u32(runtime->cs_timestamp_period_ns,
> +					    S32_MAX),
> +				USEC_PER_SEC));
> +	}

Arg this is used in i915-perf in at least one place as denominator too...


-Lionel

>   }
>   
>   void intel_driver_caps_print(const struct intel_driver_caps *caps,


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
