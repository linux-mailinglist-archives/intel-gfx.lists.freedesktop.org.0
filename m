Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D232C9884C8
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 14:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B3410EC1A;
	Fri, 27 Sep 2024 12:31:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQbOil0l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67FD10E357;
 Fri, 27 Sep 2024 12:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727440295; x=1758976295;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7JThQ8ZoXXFdNThUfmbe1+UpolsVblYD1t48vtdr16A=;
 b=DQbOil0lsQ8uyExht1xSS8xtfb6yJrEd8zrOZT3eEWXlE74or9WFfyXw
 kp3UwWWlgR9ZbldDSPxbHnDAf8xUUfIGFnHdRkFjH1iYCH7eHXo9x/CaX
 IxE21LigUL79Ku1hzplvslvgt4BnFFSmFehyJzZ/gfsQf2KtDdpqgaojy
 v5OeT40rQNfOpKsVYqa1vBBpBcX3I2/LIItck/fUWa3eR9cO9ENOixT3N
 8tVYrDOZEVmhKdTSNj0z6DywgBi0CUb7/wpERkQ84EiCpc2QDv1TJGL/H
 dLrJWiI3+MaOO5AOI/uBGmZTorgFjssBKbgc6wRTk8ifhjkPMP2IhvCm0 Q==;
X-CSE-ConnectionGUID: Hf35+2OAR1i9NDXcIR9wUw==
X-CSE-MsgGUID: aRnU75hZSoWBASQNZfVsRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26091560"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26091560"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 05:31:33 -0700
X-CSE-ConnectionGUID: JAjX9f3YQzSExnZeFoEGhw==
X-CSE-MsgGUID: sThVnjCFQ1Gs/kl5Yney8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72692466"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Sep 2024 05:31:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Sep 2024 15:31:29 +0300
Date: Fri, 27 Sep 2024 15:31:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 12/17] drm/i915/dp: Simplify the helper
 get_max_compressed_bpp_with_joiner
Message-ID: <ZvaloashpyPaS1CL@intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
 <20240927083831.3913645-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240927083831.3913645-13-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Sep 27, 2024 at 02:08:26PM +0530, Ankit Nautiyal wrote:
> Streamline the helper to get max compressed bpp for joiner case, to
> effectively use num of pipes joined. This will make the addition of
> ultrajoiner limitations easier and improve redability.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++------------
>  1 file changed, 8 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7db037f631f7..e7fe100ef8db 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -882,7 +882,8 @@ static u32 bigjoiner_bw_max_bpp(struct intel_display *display, u32 mode_clock,
>  	return max_bpp;
>  }
>  
> -static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
> +static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay,
> +				    int num_joined_pipes)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 max_bpp;
> @@ -890,6 +891,8 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdis
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp = small_joiner_ram_size_bits(i915) / mode_hdisplay;
>  
> +	max_bpp *= num_joined_pipes;
> +

lgtm, with the caveat that this part needs a bit of adjustment
after the *=2 gets moved here when respinning the previous patch.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	return max_bpp;
>  }
>  
> @@ -899,19 +902,12 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       int num_joined_pipes)
>  {
>  	struct intel_display *display = to_intel_display(&i915->drm);
> -	u32 max_bpp_small_joiner_ram;
> -
> -	max_bpp_small_joiner_ram = small_joiner_ram_max_bpp(display, mode_hdisplay);
> -
> -	if (num_joined_pipes == 2) {
> -		u32 max_bpp_bigjoiner = bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes);
> -
> -		max_bpp_small_joiner_ram *= 2;
> +	u32 max_bpp;
>  
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> -	}
> +	max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
> +	max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes));
>  
> -	return max_bpp_small_joiner_ram;
> +	return max_bpp;
>  }
>  
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
