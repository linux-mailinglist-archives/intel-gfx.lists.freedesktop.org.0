Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 230D7664DFD
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 22:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E9310E66F;
	Tue, 10 Jan 2023 21:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94F9410E66F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 21:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673386058; x=1704922058;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=tR1i0Pu6oqoepxPT6ecHyKKiEhN+yVwTG9+ZY4epIpE=;
 b=N3Os8S5IP742xGMaX82VqNXzBEJnjwtnOSSs6Zd5fNURu1QKmEBe7sOc
 u+BkAr0bvJpbL0LDJRqL6BMD5o+Dgav8RYpl7dFFUBZVlP2PnSgL/ZUVW
 GptVQ22c+0/cLsimKYZXMhbh2rEagDPC8yzae1FedN9FiPMJv8kXLw51Y
 PIobPHh54BJ3YVXvNZiqs4wXQk15aKm2d9oEI6mVdCPmQ0obxT1zClegW
 nE08LSBROkm+OllgrmUh7EDdHIMTgM6SpE53+jt2k11jIhjQ03cAfOlFI
 kuxCL4mzXTL7+MKq2VQGnwHzDmobX3pxF4AUlB3ts7gY1P2U2dgLZbH2j A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385569000"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385569000"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 13:27:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831133815"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="831133815"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 13:27:36 -0800
Date: Tue, 10 Jan 2023 23:27:33 +0200
From: Imre Deak <imre.deak@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <Y73YAEN+LOtNOlhy@ideak-desk.fi.intel.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
 <20230108113044.3528-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230108113044.3528-1-juhapekka.heikkila@gmail.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: assume some pixelrate
 for src smaller than 1
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Jan 08, 2023 at 01:30:44PM +0200, Juha-Pekka Heikkila wrote:
> intel_adjusted_rate() didn't take into account src rectangle
> can be less than 1 in with or height.

Thanks for catching this.

> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 10e1fc9d0698..cd24d069b6eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  				 const struct drm_rect *dst,
>  				 unsigned int rate)
>  {
> -	unsigned int src_w, src_h, dst_w, dst_h;
> +	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
>  
>  	src_w = drm_rect_width(src) >> 16;
>  	src_h = drm_rect_height(src) >> 16;
> @@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
>  	dst_w = min(src_w, dst_w);
>  	dst_h = min(src_h, dst_h);
>  
> -	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
> -				dst_w * dst_h);
> +	/* in case src contained only fractional part */
> +	dst_wh = max(dst_w * dst_h, 1U);
> +
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);

The div-by-zero is avoided, but we'd return a 0 rate which doesn't look
ok to me. I'd round up instead of down when converting src_w/h from
fixed point to int above.

>  }
>  
>  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
> -- 
> 2.39.0
> 
