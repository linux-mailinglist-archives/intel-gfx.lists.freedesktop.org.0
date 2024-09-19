Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A360197CB92
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA84510E721;
	Thu, 19 Sep 2024 15:24:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DE4+DBt9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A3D710E040;
 Thu, 19 Sep 2024 15:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726759444; x=1758295444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nZUD40WiwnThHBIDupC+5j5oZUy79+jbj3uoNGOq+Xw=;
 b=DE4+DBt9hX8jGehWg/yOypUZGBGVdZjCg3JBJMQWC72d6A/t3A6GxnmZ
 kFGCtanaI01rOCP2z5yjrjamO2fm6Udxt54Ld+SY1Y1I/PoqUjGAjMQVp
 H6CyU4IQYEA7K5NrXdTL3uWNA+fU4cDU0byXRZQtitQdZrx/Q4Rk6wN9/
 VVrPyvTj6UgdPGFFgUueKf2OlOoYBw/Xk3uni0dh+7xCH91fSOwtTR14c
 ExdnLK6cbdp1F621T6hYIPaREDZWLBoCU7Yun9BPwcQRjsmE8sOomD/LN
 CtrME9UHXvnD9AVTpFz0GrPRHCfms9FUKCeCYTwBaW4wvjEB8E8Awrjma g==;
X-CSE-ConnectionGUID: /ALhWoaqS7OO2pZW18VB4w==
X-CSE-MsgGUID: EsnYL+HHR9GC/4WOqOUYnw==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25876897"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25876897"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:23:09 -0700
X-CSE-ConnectionGUID: o6bUNH80TtaYAPN7P1t/ZA==
X-CSE-MsgGUID: CAl3PZY7TgWXnEPGz/V5NA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70093600"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:22:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:22:04 +0300
Date: Thu, 19 Sep 2024 18:22:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 08/15] drm/i915: Add bigjoiner and uncompressed joiner hw
 readout sanity checks
Message-ID: <ZuxBnF8X30Y4_7S5@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-9-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:36PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add sanity checks for primary and secondary bigjoiner/uncompressed
> bitmasks, should make it easier to spot possible issues.
> 
> v2:
> -Streamline the expected masks and add few more drm_WARNs. (Ville)
> -Use %#x format specifier for printing joiner masks. (Ville)
> -Use struct intel_display instead of struct drm_i915_private. (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com> (v1)
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 49 +++++++++++++++++++-
>  1 file changed, 47 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 28447d4c8934..a17e89fb5eb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3654,26 +3654,71 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
>  	}
>  }
>  
> +static u8 expected_secondary_pipes(u8 primary_pipes, int num_pipes)
> +{
> +	u8 secondary_pipes = 0;
> +
> +	for (int i = 1; i < num_pipes; i++)
> +		secondary_pipes |= primary_pipes << i;
> +
> +	return secondary_pipes;
> +}
> +
> +static u8 expected_uncompjoiner_secondary_pipes(u8 uncompjoiner_primary_pipes)

You use the full "uncompressed_joiner" everywhere else, so should
probably stick to that here as well for consistency.

> +{
> +	return expected_secondary_pipes(uncompjoiner_primary_pipes, 2);
> +}
> +
> +static u8 expected_bigjoiner_secondary_pipes(u8 bigjoiner_primary_pipes)
> +{
> +	return expected_secondary_pipes(bigjoiner_primary_pipes, 2);
> +}
> +
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  				 u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_display *display = to_intel_display(&dev_priv->drm);
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
>  	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> +	u8 uncompressed_joiner_pipes, bigjoiner_pipes;
>  
>  	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
>  					  &secondary_uncompressed_joiner_pipes);
>  
> +	drm_WARN_ON(display->drm,
> +		    (primary_uncompressed_joiner_pipes & secondary_uncompressed_joiner_pipes) != 0);
> +
>  	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
>  				&secondary_bigjoiner_pipes);
>  
> +	drm_WARN_ON(display->drm,
> +		    (primary_bigjoiner_pipes & secondary_bigjoiner_pipes) != 0);
> +
> +	uncompressed_joiner_pipes = primary_uncompressed_joiner_pipes |
> +				    secondary_uncompressed_joiner_pipes;
> +	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
> +
> +	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
> +		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
> +		 uncompressed_joiner_pipes, bigjoiner_pipes);

Maybe add an empty line between all the WARNs because this is starting
to look pretty busy othwerwise.

Otherwise lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	drm_WARN(display->drm, secondary_bigjoiner_pipes !=
> +		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
> +		 "Wrong secondary bigjoiner pipes(expected %#x, current %#x)\n",
> +		 expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes),
> +		 secondary_bigjoiner_pipes);
> +	drm_WARN(display->drm, secondary_uncompressed_joiner_pipes !=
> +		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 "Wrong secondary uncompressed joiner pipes(expected %#x, current %#x)\n",
> +		 expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes),
> +		 secondary_uncompressed_joiner_pipes);
> +
>  	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
>  
>  	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
> -	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> -		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
> +	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,
> +		 "Joiner misconfigured (primary pipes %#x, secondary pipes %#x)\n",
>  		 *primary_pipes, *secondary_pipes);
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
