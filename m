Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10127928ACC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 16:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52A589DA9;
	Fri,  5 Jul 2024 14:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPhzbU/6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE7289DA9
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 14:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720190153; x=1751726153;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kcO98KjtFehMgVeGK0ythw7qt5ISZpzVI9KIUfBCe7w=;
 b=KPhzbU/67hcYo2TuhTWnzAmEh+A/vhAUDME1U6/pAdaTQULSvQnOVUxC
 tRajyw1Nge9zfou7oBWGjpH8RPmnn66A3ybamU2lwMVPitc31yyXD8BD7
 rzJL10APDLSZ7qXcOTkxsy6i2AEyHCSTjpRkI24ggVXpGRV0ubb8nTLlL
 ig3+pkGMnUNZ2PmJPsB3MVqMjBW0cZV0GOfTB7GeI3E/oAQsGFatkmWYW
 60ouaTmOFRYfkmPN9S7XpvodVA1RgcH5jiq1gMw4KJzW86PYyiiL9wSau
 QsQJkVQnszBbD5Gnx0yIPUf0WaO6ecLh2T1Qn9uaew9GI9SBeMabqIm/G Q==;
X-CSE-ConnectionGUID: g2y+5A6UTjqFleIVkfPPqA==
X-CSE-MsgGUID: 3gMgMK9YSNeK/W0ZgNOohA==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17203429"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17203429"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 07:35:52 -0700
X-CSE-ConnectionGUID: 8UcW+r0OQbyUu5GCkkdv4w==
X-CSE-MsgGUID: tFD1KlUSQduRK99SiQHjLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46859683"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 07:35:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 17:35:48 +0300
Date: Fri, 5 Jul 2024 17:35:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Melanie Lobo <melanie.lobo@intel.com>
Cc: intel-gfx@lists.freedesktop.org, juha-pekka.heikkila@intel.com,
 swati2.sharma@intel.com, bhanuprakash.modem@intel.com,
 vidya.srinivas@intel.com,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: Re: [PATCH] drm/i915: Support RGB16161616_64B compressed formats
Message-ID: <ZogExOljH__JlEGh@intel.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <20240605060457.10086-1-melanie.lobo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240605060457.10086-1-melanie.lobo@intel.com>
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

On Wed, Jun 05, 2024 at 11:34:57AM +0530, Melanie Lobo wrote:
> Add support for a RGB64(FP16) format where each color component is a
> 16-bit floating point value. FP16 format which is a binary
> floating-point computer number format that occupies 16 bits in computer
> memory. Platform shall render compression in display engine to receive
> FP16 compressed formats.
> 
> This kernel change was tested with IGT patch,
> https://patchwork.freedesktop.org/series/134353/
> https://lore.kernel.org/all/20240603081607.30930-1-melanie.lobo@intel.com/
> 
> Test-with: 20240603081607.30930-1-melanie.lobo@intel.com
> 
> Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c            | 5 +++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
>  2 files changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index b6638726949d..91f2def14243 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -91,6 +91,11 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>  	{ .format = DRM_FORMAT_P016, .num_planes = 4,
>  	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
>  	  .hsub = 2, .vsub = 2, .is_yuv = true },

I'd put the fp16 formats between the other RGB formats and YCbCr
formats.

> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,

__drm_format_info() leaves depth==0 for fp16 formats. These should
do the same.

> +	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2}, .hsub = 1, .vsub = 1},

Everyone else wraps the hsub/vsub to the next line. Also you
consistently leave out the space before '}', unlike every other
line in this file.

> +	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 64, .num_planes = 2,
> +	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2},

AUX block width should be 1 for these, block height we don't actually use I
believe, but everone else sets it to one so this should do the same.

> +	  .hsub = 1, .vsub = 1, .has_alpha = true},

You are missing the X/ABGR variants. Also missing the addition of
these formats to gen12_ccs_cc_formats[] and
gen12_flat_ccs_cc_formats[].

See my equivalent patch for the 10bpc formats:
https://patchwork.freedesktop.org/patch/600652/?series=135306&rev=1

>  };
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 1aa70fc35b9d..7719cb04bdf8 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2242,6 +2242,8 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_XBGR8888:
>  	case DRM_FORMAT_ARGB8888:
>  	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB16161616F:
> +	case DRM_FORMAT_ARGB16161616F:
>  		if (intel_fb_is_ccs_modifier(modifier))
>  			return true;
>  		fallthrough;
> @@ -2266,8 +2268,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_C8:
>  	case DRM_FORMAT_XBGR16161616F:
>  	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
>  	case DRM_FORMAT_Y210:
>  	case DRM_FORMAT_Y212:
>  	case DRM_FORMAT_Y216:
> -- 
> 2.17.1

-- 
Ville Syrjälä
Intel
