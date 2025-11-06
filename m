Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D74C8C3B1DD
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:13:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD9889F63;
	Thu,  6 Nov 2025 13:13:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZW/D/9e5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8B989F63
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Nov 2025 13:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762434827; x=1793970827;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KBc5IPYCNelLIZx9CaEdvJuTEsOeUh+GmzRVjIUpFoI=;
 b=ZW/D/9e5QmAkD26xWPJhZDmKOc8JzwMg1k6M1VI7zRGKXN+PQCnYSQ75
 BoFB3BXBCxZLAvt1/lMKnuw8EDiRFy4EU9k6tT2pW+Al6bSE4/7bz75dJ
 g94IvI6sLahip1cR+/3EL/rcd5jhrWBpnBfP1kFVehs7vm9VX1h1jQSQv
 vn69PWGoRu2vMmTzclFBnb+PXd4Y0Ltn3zHMS+3LTxS7EPPf8De0lol85
 ML2/P8URBDpTtn6OKfPyGDHqoveKxTfM9Rlz+bgB+egb3oyhNcnVZlFig
 i1SBo35ITq9ysOD094dYwhQRRuRvVfI4NiIiryUV5OtSW97kSoAd03wH3 g==;
X-CSE-ConnectionGUID: UN5tdYghTpGo8me/5X/RMQ==
X-CSE-MsgGUID: npk4MKePR865NFmUxBHyjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64663989"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64663989"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:13:47 -0800
X-CSE-ConnectionGUID: aFVWdiFrSouI3mCVJw+sUw==
X-CSE-MsgGUID: 2AMHcPHcSm6LwYMwUgun8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="211215530"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:13:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH v4 1/2] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
In-Reply-To: <20251106120845.2821499-2-krzysztof.karas@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106120845.2821499-1-krzysztof.karas@intel.com>
 <20251106120845.2821499-2-krzysztof.karas@intel.com>
Date: Thu, 06 Nov 2025 15:13:42 +0200
Message-ID: <fe4b259fa4f34d1b98f90b9b072300e6a4ae9e18@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 06 Nov 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> There are two unsafe scenarios in that function:
>  1) drm_format_info_block_width/height() may return 0 and cause
> division by 0 down the line. Warn early if any of these values
> are 0.
>  2) dma_addr calculations are carried out using 32-bit
> arithmetic, which could cause a truncation of the values
> before they are extended to 64 bits. Cast one of the operands
> to dma_addr_t, so 64-bit arithmetic is used.

Lists like this are an indication it should be multiple patches. The
only thing in common here is the function.

>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>
> v4:
> * use WARN_ON_ONCE() instead of returning early (Andi)

I don't get it. Why are we allowing the oops if we check it?

>
>  drivers/gpu/drm/drm_fb_dma_helper.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
> index fd71969d2fb1..da1627dfd9f8 100644
> --- a/drivers/gpu/drm/drm_fb_dma_helper.c
> +++ b/drivers/gpu/drm/drm_fb_dma_helper.c
> @@ -85,6 +85,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>  	u32 block_start_y;
>  	u32 num_hblocks;
>  
> +	WARN_ON_ONCE(block_w == 0 || block_h == 0);
> +
>  	obj = drm_fb_dma_get_gem_obj(fb, plane);
>  	if (!obj)
>  		return 0;
> @@ -101,8 +103,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>  	block_start_y = (sample_y / block_h) * block_h;
>  	num_hblocks = sample_x / block_w;
>  
> -	dma_addr += fb->pitches[plane] * block_start_y;
> -	dma_addr += block_size * num_hblocks;
> +	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
> +	dma_addr += (dma_addr_t)block_size * num_hblocks;
>  
>  	return dma_addr;
>  }

-- 
Jani Nikula, Intel
