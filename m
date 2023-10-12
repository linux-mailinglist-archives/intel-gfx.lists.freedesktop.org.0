Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C38647C6E99
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D69F10E189;
	Thu, 12 Oct 2023 12:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E33B10E189
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697115384; x=1728651384;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NYtIDF2t6kvDSRna1LoP/u1J91XmVwy/L4zd+G5uGT0=;
 b=Q/xILl34DD0YkJfZVCFTlF5Hsp5S+c4KAWpr5A5hc1VL6TmiVq49NP35
 trxW7PR3fx1HWPm5tjo9JJs4K/b7en9TMweunaCB/LJ/BfkLfvxbQ7bj9
 f7yI/ui6MHPyuA2c4Sv+uT6nCNe9PmuwmS311Q3TkzVh/wU9atwbtnVHy
 ofEknybNj3rvhvm5WMy+ikQwR1C+IKY20dsBKMcwd0Mj0fMIqY2NhyF0o
 WiYf2G2N8+05jcF+ypk19JMr0rRVqTsLClIYLUe87L9acDj5R6iQIH/VW
 LNi6J36Oh7P3i2EOU3/F8gJ4mXLVLIjNIwOmPW6XPuq/UiKhmbZqNA7IM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="388768785"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="388768785"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844993379"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="844993379"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:56:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:56:20 +0300
Date: Thu, 12 Oct 2023 15:56:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Melanie Lobo <melanie.lobo@intel.com>
Message-ID: <ZSfs9DBOmDmcUC2D@intel.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <20231012062620.23886-1-melanie.lobo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231012062620.23886-1-melanie.lobo@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats
 on MTL
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
Cc: intel-gfx@lists.freedesktop.org, juha-pekka.heikkila@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 12, 2023 at 11:56:20AM +0530, Melanie Lobo wrote:
> MTL supports FP16 format which is a binary floating-point computer
> number format that occupies 16 bits in computer memory.Platform shall
> render compression in display engine to receive FP16 compressed formats.
> 
> This kernel change was tested with IGT patch,
> https://patchwork.freedesktop.org/patch/562014/
> 
> Test-with: 20231011095520.10768-1-melanie.lobo@intel.com
> 
> Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 +---
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index e7678571b0d7..868cfc75e687 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -91,6 +91,8 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>  	{ .format = DRM_FORMAT_P016, .num_planes = 4,
>  	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
>  	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,
> +	  .char_per_block = { 4, 1}, .block_w = { 1, 2}, .block_h = { 1, 1}, .hsub = 1, .vsub = 1 },

That chars_per_block=4 doesn't look sensible for a 64bit format.
And I suspect the block_w=2 for the CCS is also wrong.

>  };
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 245a64332cc7..6ec5b96904c3 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2122,9 +2122,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_Y216:
>  	case DRM_FORMAT_XVYU12_16161616:
>  	case DRM_FORMAT_XVYU16161616:
> -		if (!intel_fb_is_ccs_modifier(modifier))
> -			return true;
> -		fallthrough;
> +		return true;
>  	default:
>  		return false;
>  	}
> -- 
> 2.17.1

-- 
Ville Syrjälä
Intel
