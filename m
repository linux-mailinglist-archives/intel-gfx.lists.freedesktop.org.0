Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 604C27C4FFE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 12:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C95E510E63F;
	Wed, 11 Oct 2023 10:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 394DA10E63F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697019709; x=1728555709;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4073dkqgxQIJ8QutV7Lxv1OlhH+unOc6xmiwrCYRXxs=;
 b=K3CoulxOJmx45G9gkiYVm3AP8g9O49SbIyOGicUU8Y7ISPJtajvKjW3V
 mFoomgn6puUluH7RnR/VBzM4ij/W4gx/FunjuDTwKSdiLYson5OBpYyJY
 L0YDjn135U2P2A+vEXGmaCKUi6BDrRHRqPsr0w0el5AxhM3B9kfpQWBSr
 hX8VN/tyz9uFYQRrAxhO7vPC6I/cGSMRYSqqdytHYvrCuZfRXYK8Cd4fS
 tNGxQcZrOaZ+b92wbYdOHfNIQ1eC88ZnGEPxhVkJy+ysP/Kfzbx08YQAR
 E0y/sNX74CAAqVSzLqC/gBBD1RrWAUfMcStv6z3VyxtTz/N/6YK4o7xnb A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="381874174"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="381874174"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="870091924"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="870091924"
Received: from mhahn1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.254])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:21:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Melanie Lobo <melanie.lobo@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20231011102356.22014-1-melanie.lobo@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231011102356.22014-1-melanie.lobo@intel.com>
Date: Wed, 11 Oct 2023 13:21:43 +0300
Message-ID: <87o7h54fyg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: juha-pekka.heikkila@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 11 Oct 2023, Melanie Lobo <melanie.lobo@intel.com> wrote:
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
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +--
>  2 files changed, 3 insertions(+), 2 deletions(-)
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
>  };
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 245a64332cc7..64c1d6c2bd76 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2122,8 +2122,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_Y216:
>  	case DRM_FORMAT_XVYU12_16161616:
>  	case DRM_FORMAT_XVYU16161616:
> -		if (!intel_fb_is_ccs_modifier(modifier))
> -			return true;
> +		return true;
>  		fallthrough;

This becomes nop.

BR,
Jani.

>  	default:
>  		return false;

-- 
Jani Nikula, Intel
