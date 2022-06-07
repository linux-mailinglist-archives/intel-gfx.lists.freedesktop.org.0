Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5153F7D0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 10:05:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3453812AF2B;
	Tue,  7 Jun 2022 08:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062B512AF2B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 08:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654589127; x=1686125127;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LzPXy3jhceeuPU6xKJTe7R22jX6e9A2GNBrJeOMoFqA=;
 b=MyX4AH9bD9LO8PO4HhXWrphEWhrtxKvEEflk9arMyUzrhKOVn0g4p4cX
 LEFlTqoCg/cdh/wrtuQCHaeJapDGqs7uGbKDwzYChNlUKZNGQQvOalURs
 /Dt3j6KWXbM/hDhNNqEfOKqGzl/rnoB8D/6z1PXg4BAm6jl9XeYU91sN4
 6ew/LEYVrNArEewkON8dZ1J9KDCJTisLCFkobBnMaotcjfjp3nWjyTHoi
 qA5cUZ3ux3H9F5Uj/iMi8+evfYXtCIgd2KaikNe4z5u1G1ifQbwB6KOkv
 HfQU5snrxWMZkyO4Fk7qjcBDP0gLe2RwgQMUzrk0sOLk7epLgqdugXh58 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="275487519"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="275487519"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 01:05:26 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="636014542"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 01:05:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220607074433.1202917-1-luca@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220607074433.1202917-1-luca@coelho.fi>
Date: Tue, 07 Jun 2022 11:05:22 +0300
Message-ID: <871qw0rj99.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove noisy logs in
 intel_dp_dsc_get_output_bpp()
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

On Tue, 07 Jun 2022, Luca Coelho <luca@coelho.fi> wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
>
> The intel_dp_dsc_get_output_bpp() function outputs two lines of
> unconditional logs, which was okay when it was called only once.  But
> now, we also call this function from intel_dp_mode_valid(), which is
> in turn called for every mode we need to validate.  This causes a lot
> of useless noise.
>
> Remove the unconditional prints to avoid spamming the logs.  Also
> remove one more print that is not unconditional, but is related.
>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Some of these might be useful on the compute config path, but meh.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b8e2d3cd4d68..e198c6d7e3b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -658,7 +658,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	 */
>  	bits_per_pixel = (link_clock * lane_count * 8) /
>  			 intel_dp_mode_to_fec_clock(mode_clock);
> -	drm_dbg_kms(&i915->drm, "Max link bpp: %u\n", bits_per_pixel);
>  
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) /
> @@ -667,9 +666,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	if (bigjoiner)
>  		max_bpp_small_joiner_ram *= 2;
>  
> -	drm_dbg_kms(&i915->drm, "Max small joiner bpp: %u\n",
> -		    max_bpp_small_joiner_ram);
> -
>  	/*
>  	 * Greatest allowed DSC BPP = MIN (output BPP from available Link BW
>  	 * check, output bpp from small joiner RAM check)
> @@ -681,7 +677,6 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  			i915->max_cdclk_freq * 48 /
>  			intel_dp_mode_to_fec_clock(mode_clock);
>  
> -		drm_dbg_kms(&i915->drm, "Max big joiner bpp: %u\n", max_bpp_bigjoiner);
>  		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
