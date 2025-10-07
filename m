Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DBBBC0F27
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 12:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8485610E5C3;
	Tue,  7 Oct 2025 10:00:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="gBfJKdzd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F6210E5C3
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 10:00:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 13E76612C2;
 Tue,  7 Oct 2025 10:00:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44D0CC4CEF1;
 Tue,  7 Oct 2025 10:00:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1759831216;
 bh=Ff3609P4BSCRT3Q3F/0P+MDXuv3r6AAFh/fHpJXlGOY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gBfJKdzdMKZXw5GRetHvmS/gC9adBq9aeZKwkFk60vlsidoGm2zSUEi3QTbec8Zcf
 4G3r4g/lslBWOm+VcRjwjKzwtbtvNjkSoIR3wVGDpPIF53z0rDFsJOHy9lMBZdJg2r
 Xf0y/Eskx239ggvJKViSxB/iaXO8m0+4JFCLw7YIYiZktWD7KD/Cs/lI2aVHctJibN
 rSQWvuOV9KNDCX0U3ODZdK7+tybDD+LEplSJmIzvDnp6awljB9LFL2RiFAXV+F9HJx
 /WNyJpP8SmgNdk6sSr4h5H6tWDzrcjjzMND/Gxhk4YLujqZTvTUgdj+JUY0J7CxJbU
 GU1pFQr0Q+Pbg==
Date: Tue, 7 Oct 2025 12:00:13 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com, 
 riana.taura@intel.com, matthew.brost@intel.com
Subject: Re: [PATCH] drm/i915: Fix conversion between clock interval and ns
Message-ID: <s5nsh5rv7iu6uspftegyugipzz3aavxnzjy7fiss4usy46h4td@tsybloystg3q>
References: <20251006230721.600444-2-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251006230721.600444-2-umesh.nerlige.ramappa@intel.com>
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

Hi Umesh,

...

>  void intel_gt_init_clock_frequency(struct intel_gt *gt)
>  {
> +	unsigned long clock_period_scale;
> +
>  	gt->clock_frequency = read_clock_frequency(gt->uncore);
>  
>  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
> -	if (GRAPHICS_VER(gt->i915) == 11)
> +	if (GRAPHICS_VER(gt->i915) == 11) {
>  		gt->clock_period_ns = NSEC_PER_SEC / 13750000;
> -	else if (gt->clock_frequency)
> +	} else if (gt->clock_frequency) {
> +		clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
> +		gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
> +		gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
>  		gt->clock_period_ns = intel_gt_clock_interval_to_ns(gt, 1);
> +	}
>  
>  	GT_TRACE(gt,
> -		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms\n",
> +		 "Using clock frequency: %dkHz, period: %dns, wrap: %lldms, scale %lu\n",
>  		 gt->clock_frequency / 1000,
>  		 gt->clock_period_ns,
> -		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX),
> -			 USEC_PER_SEC));
> +		 div_u64(mul_u32_u32(gt->clock_period_ns, S32_MAX), USEC_PER_SEC),
> +		 clock_period_scale);

if GRAPHICS_VER is 11, clock_period_scale would be used
uninitialized.

>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
> @@ -205,7 +213,8 @@ static u64 div_u64_roundup(u64 nom, u32 den)
>  
>  u64 intel_gt_clock_interval_to_ns(const struct intel_gt *gt, u64 count)
>  {
> -	return div_u64_roundup(count * NSEC_PER_SEC, gt->clock_frequency);
> +	return div_u64_roundup(count * gt->clock_nsec_scaled,
> +			       gt->clock_freq_scaled);

for Gen11 this is 0.

>  }
>  
>  u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
> @@ -215,7 +224,8 @@ u64 intel_gt_pm_interval_to_ns(const struct intel_gt *gt, u64 count)
>  
>  u64 intel_gt_ns_to_clock_interval(const struct intel_gt *gt, u64 ns)
>  {
> -	return div_u64_roundup(gt->clock_frequency * ns, NSEC_PER_SEC);
> +	return div_u64_roundup(gt->clock_freq_scaled * ns,
> +			       gt->clock_nsec_scaled);

you are deviding by '0' in Gen11.

Andi
