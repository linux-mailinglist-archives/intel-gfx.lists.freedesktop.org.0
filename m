Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC86A32DEA
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 18:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE45A10E94C;
	Wed, 12 Feb 2025 17:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NW4avgJr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A809610E94B;
 Wed, 12 Feb 2025 17:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739382745; x=1770918745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1LnIf1mI/O39P43CvPYMWY+M7+kUBXDoOG5tPnV/RpY=;
 b=NW4avgJr+0D25lb7bgyQvIImdNeBkRdHtlaQY+3UvUaPSw9lnmg3Loac
 jNDQe8EQY6TjL56dDmaL7GgKuZACROZHuqls5DwkumGsELOcazRnv3Hkc
 jbgniNQs6sIjE0+uWIY8AJnHpCxSCQhwQOWd3/U6gsEuNAh+NTR72dKL1
 rkbFLRMilyv2BDY6sD4fS3qbzN8Dvx+sqZwldBOTbYOL4hk3eF+j0p0zF
 vRzk0Xr98y4tR3qbS6zI2RaMN1lWaKWMtWavzddA6kzYJBoCcHFC49LyU
 mOBHUlhU0zQbM1nQ9w7cQJQCumSV1NVXWyMkoaHHyN4Rk7/Y/fwb4KbWg g==;
X-CSE-ConnectionGUID: 8zZ15ZeSQR+7N1w6lAL2/g==
X-CSE-MsgGUID: VbXTIt6HS12mgpFC8jgdBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="51448542"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="51448542"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 09:52:23 -0800
X-CSE-ConnectionGUID: DaZ31gWXSJ6/DvPRqwcpdw==
X-CSE-MsgGUID: 2ZN1JocATQSHbsAiZRj3fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113095476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 09:52:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 19:52:19 +0200
Date: Wed, 12 Feb 2025 19:52:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
Message-ID: <Z6zf00kDlmteGiIq@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
 <20250212174333.371681-2-gustavo.sousa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250212174333.371681-2-gustavo.sousa@intel.com>
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

On Wed, Feb 12, 2025 at 02:43:16PM -0300, Gustavo Sousa wrote:
> Let the compiler know that we are intetionally using a different enum
> type to perform arithmetic with enum intel_display_power_domain in the
> POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
> int.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp@intel.com/
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index a3a5c1be8bab..3caa3f517a32 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
>  };
>  
> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
> +#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
> -		((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
> +		((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>  #define POWER_DOMAIN_TRANSCODER(tran) \
>  	((tran) == TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
> -	 (tran) + POWER_DOMAIN_TRANSCODER_A)
> +	 (int)(tran) + POWER_DOMAIN_TRANSCODER_A)

I've generally gone for the 
POWER_DOMAIN_TRANSCODER_A + (tran) - TRANSCODER_A
form for such things, to also make sure it works
even if TRANSCODER_A isn't 0 anymore.
Does that avoid the warning as well?

Maybe these should even be functions rather than macros?

>  
>  struct intel_power_domain_mask {
>  	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
> -- 
> 2.48.1

-- 
Ville Syrjälä
Intel
