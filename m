Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EB8665D8D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 15:19:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4877310E74A;
	Wed, 11 Jan 2023 14:19:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5294B10E74A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673446745; x=1704982745;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rE+3HfuA+pT77VzkMShP4L7XRLBywUVfNWAYBIOOfHw=;
 b=hJh/9GGUg+haxbanQHKJKaj5FzuWOneaI8k/xlUugZw4qlIgR6QvvR3/
 +UkF5k2ym4yDQWtx1UZC8ttUIhiV23XQbp7cfQ82l9c28Q226uGqrzSqQ
 MiPQTxalX1Q6tKNMHnVQ5Hqw4NEEJcsKCPJvzykILsMVLlu5Bq6WwA0zJ
 WGknDN04ltt5uIGVAduNe8mAu4Y1vj4Y85RvOiFUeK0JXEY4qzWU9Mb3Q
 jhKqpRWpLOWwBd8TbmD5EKoV3qzFln8MEbFXYYVquwszz0V4ddiAJ1nrt
 6qtf5UDtn2yBXE4QaPrudkcF5BvetvpJOtKr6dtTFjAqi78AWKWwxAank g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="321113671"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="321113671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 06:19:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="634951964"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="634951964"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 11 Jan 2023 06:19:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jan 2023 16:19:00 +0200
Date: Wed, 11 Jan 2023 16:19:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <Y77FVOCTCWcUI1D+@intel.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: assume some pixelrate for
 src smaller than 1
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
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 04, 2023 at 02:44:48PM +0200, Juha-Pekka Heikkila wrote:
> intel_adjusted_rate() didn't take into account src rectangle
> can be less than 1 in width or height.

This should not get called in those cases. What does the
backtrace look like?

> 
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 10e1fc9d0698..a9948e8d3543 100644
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
> +	dst_wh = max(dst_w * dst_h, (unsigned) 1);
> +
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
>  }
>  
>  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
