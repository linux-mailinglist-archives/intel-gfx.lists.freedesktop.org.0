Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AEF65D415
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 14:23:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D5310E1E0;
	Wed,  4 Jan 2023 13:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D36F10E1E0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 13:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672838622; x=1704374622;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=T6FIcR9D+38My9pB2waCGOTYwDSuWt8mTHbodJYNxtU=;
 b=KDhH2RKbak7QVUTnDO1roV2BwvTOWJl0jHSuFQ5CrVtffEV0Nfk8dlJU
 /NC9O/QUUCIWkYUM21Fz2VkhcLqk6b7DX23ALSjxKF4v0q2DEPkMt7KjA
 rocyO8wrO+o8NDKLpcLqnYXECcYQqDPRMPk13pXxDQ44fXOMVlHxiHW8r
 j1dMTefFEbwpS7d6tpF029xnTOwHcJAlc0N0pDwoy88nuu2IKSxtKWya4
 SOZNkU3+wYXb4hPY0HbbH3XNN3y4GGeUNgEotJ8vU7kc8KQaA61UjWlft
 FdcIh2Ewiz6Qau8vGjaTDGVuSh3bY8lF8wn3TyglcElIVatFAt3N+0OBu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="319639861"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="319639861"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 05:23:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983929917"
X-IronPort-AV: E=Sophos;i="5.96,300,1665471600"; d="scan'208";a="983929917"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 05:23:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
Date: Wed, 04 Jan 2023 15:23:38 +0200
Message-ID: <87zgaywi05.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 04 Jan 2023, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
> intel_adjusted_rate() didn't take into account src rectangle
> can be less than 1 in width or height.
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

The options are to use 1U or max_t(), but please don't cast the
parameters of max().

Side note, the explicit "unsigned int" is always preferred over the
implicit "unsigned".


BR,
Jani.


> +
> +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
>  }
>  
>  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,

-- 
Jani Nikula, Intel Open Source Graphics Center
