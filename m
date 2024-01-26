Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C9A83D78A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jan 2024 11:13:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED87210E8B0;
	Fri, 26 Jan 2024 10:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895DC10E8B0
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jan 2024 10:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706263998; x=1737799998;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Tg+sSXsEutpizpKxVsuMuaBgVn9fNk8huOonSZmBmCg=;
 b=Cvmmuka9oLfPT8CRJLwaSJwXdrbUxbA2lYHGAVRuA0WIxBYCSQRgvFbG
 HUnr3wRax93ZAfSzqpreAkjx1NYeRMmUKbPymnDQGPS4CYQDsJ1IKilpG
 9xyVWqs1vrzIcCKXLCeWWxec0gfmabKK0IGsvk1DTPctjA+vLy5h9aKHe
 i3dusg7GGeHqfRnZ4dE9+waymu19FZWnje3RhwzOisMo2uBBoWNSvo7+R
 dDwhR1HnkkQMwkwdP574GZBP2qAugRc1qvUY6j730S/gkYk7ZczAPVSdo
 hZwbjN9l6LQqmm6nC0Jm2wjmTHqEfRb9nloyZbJayU8Zrz39OOOmQK+yl Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="9118364"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9118364"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2024 02:13:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10964"; a="821099487"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="821099487"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Jan 2024 02:13:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Jan 2024 12:13:14 +0200
Date: Fri, 26 Jan 2024 12:13:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Luca Coelho <luciano.coelho@intel.com>
Subject: Re: [PATCH v2] drm/i915: update eDP MSO pipe mask for newer platforms
Message-ID: <ZbOFun2JdWRuhu2h@intel.com>
References: <20240126100309.2024264-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240126100309.2024264-1-luciano.coelho@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, luciano.coelhoa@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 26, 2024 at 12:03:09PM +0200, Luca Coelho wrote:
> Starting from display version 14, pipes A and B are supported in eDP
> MSO.  After display version 20 there are no restrictions.
> 
> Update the function that returns the pipe mask for eDP MSO
> accordingly.
> 
> Bspec: 68923, 55473
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> ---
> 
> In v2:
>    * allow pipes A and B from ver 14 to 20 [Gustavo]
> 
> 
> drivers/gpu/drm/i915/display/intel_ddi.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 922194b957be..29a616a8e72d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2336,13 +2336,20 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
>  	}
>  }
>  
> -/* Splitter enable for eDP MSO is limited to certain pipes. */
> +/*
> + * Splitter enable for eDP MSO is limited to certain pipes on certain
> + * platforms.
> + */
>  static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
>  {
> -	if (IS_ALDERLAKE_P(i915))
> +
> +	if (IS_ALDERLAKE_P(i915) ||
> +	    IS_DISPLAY_IP_RANGE(i915, IP_VER(14, 0), IP_VER(20, 0)))
>  		return BIT(PIPE_A) | BIT(PIPE_B);
> -	else
> +	else if (DISPLAY_VER(i915) < 14)
>  		return BIT(PIPE_A);
> +
> +	return ~0;

That looks rather confusing. I'd make it something like:

if (VER >= whatever_is_the_new_version_that_i_can't_easily_find_from_bspec)
	return ~0;
else if (VER >= 14 || ADL)
	return A | B;
else
	return A;


>  }
>  
>  static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
