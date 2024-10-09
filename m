Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7EA99602C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 08:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C8110E65C;
	Wed,  9 Oct 2024 06:55:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XH9WFzLp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1B2810E65C;
 Wed,  9 Oct 2024 06:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728456911; x=1759992911;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WPL9N67WCr4LTSutyk0oYFngowLOd4f5W9UQ+e/9tsM=;
 b=XH9WFzLp/gh2Am5J50WxnYYDnctTp7E5xur4n/HS6Di2QONfkCj7MKk3
 Z+RflytENpeQfrk8CIIE/om4TKXba/tfIOuTTKDsQN7qtQBgYLBzlSpWq
 Yq1ny57mEZzgCGTXf/ycSgdE1skrijMC9zbrz8DO25q9ifVX8ESEshvlF
 xFyck39mvb+scZHRf5LWqxkKxahdfC7YUt2hocoMs8yvRrBlPiOFmdcUl
 edrn2xxvwCHa7152lKtyqkjn56MPgobJhIXFyRTGgAsSrxFOWrpdQdsLC
 n53mEJ6WcXTC1QBQvpkNZrryrQ1uT3IHoxbSlJ1zROS+GHVd3W5GphpKX Q==;
X-CSE-ConnectionGUID: 8ceOKfqPSaagItd1oPxqhg==
X-CSE-MsgGUID: EZeChFnBTvi7ZTMX/CEeqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27551899"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27551899"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 23:55:10 -0700
X-CSE-ConnectionGUID: jjJgMBwhQpCacefLP+BJGA==
X-CSE-MsgGUID: oJIZSzsLQG6Q9bVgp/4wAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76263407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 23:55:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 09:55:06 +0300
Date: Wed, 9 Oct 2024 09:55:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 uma.shankar@intel.com, chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH] drm/i915/color: Use correct variable to load lut
Message-ID: <ZwYoymdhNQAh42UQ@intel.com>
References: <20241009063753.1799234-2-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241009063753.1799234-2-suraj.kandpal@intel.com>
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

On Wed, Oct 09, 2024 at 12:07:53PM +0530, Suraj Kandpal wrote:
> Use the blob variable instead of post_csc_lut as it may end up
> being null.

Not possible. We always have a LUT for each half in split
gamma mode, and if we don't then someone screwed up much
earlier before we end up here.

> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index caf1af039960..22b7090c4f6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1503,7 +1503,7 @@ static void ivb_load_luts(const struct intel_crtc_state *crtc_state)
>  		ivb_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
>  				PAL_PREC_INDEX_VALUE(0));
>  		ivb_load_lut_ext_max(crtc_state);
> -		ivb_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
> +		ivb_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
>  				PAL_PREC_INDEX_VALUE(512));
>  		break;
>  	case GAMMA_MODE_MODE_10BIT:
> @@ -1531,7 +1531,7 @@ static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
>  		bdw_load_lut_10(crtc_state, pre_csc_lut, PAL_PREC_SPLIT_MODE |
>  				PAL_PREC_INDEX_VALUE(0));
>  		ivb_load_lut_ext_max(crtc_state);
> -		bdw_load_lut_10(crtc_state, post_csc_lut, PAL_PREC_SPLIT_MODE |
> +		bdw_load_lut_10(crtc_state, blob, PAL_PREC_SPLIT_MODE |
>  				PAL_PREC_INDEX_VALUE(512));
>  		break;
>  	case GAMMA_MODE_MODE_10BIT:
> -- 
> 2.43.2

-- 
Ville Syrjälä
Intel
