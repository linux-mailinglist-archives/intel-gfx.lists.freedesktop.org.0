Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E3B41D4A6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 09:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACEB96E342;
	Thu, 30 Sep 2021 07:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD27A6E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 07:41:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="221922422"
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="221922422"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 00:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,335,1624345200"; d="scan'208";a="520249470"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 30 Sep 2021 00:41:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Sep 2021 10:41:39 +0300
Date: Thu, 30 Sep 2021 10:41:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YVVqMzB5BIj0B0KR@intel.com>
References: <20210930001409.254817-1-jose.souza@intel.com>
 <20210930001409.254817-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210930001409.254817-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915/display: Drop unnecessary
 frontbuffer flushes
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

On Wed, Sep 29, 2021 at 05:14:03PM -0700, José Roberto de Souza wrote:
> This unnecessary flushes are hurting power-savings are it causes
> features like PSR, FBC and DRRS to disable it self to handle
> frontbuffer rendering, below some explanation of why each removed
> call is not necessary.
> 
> The flush in intel_prepare_plane_fb() is not required as framebuffer
> will be flipped and power-saving features do the proper flip handling
> in hardware.
> 
> intel_find_initial_plane_obj() flush is not required because it is
> only executed during driver load and at this point the power-saving
> features are not even enabled.
> 
> And the last one intelfb_create(), is also not required as at this
> point the fbdev was just allocated, userspace will draw on
> it what will trigger frontbuffer invalidates and flushes later on.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Yeah, I think these are not right. We might have to think a bit
more about page flips vs. frontbuffer tracking at some point.
But at least FBC doesn't want these, and for drrs I think
you added something to the flip path (also drrs is kinda semi
borked anyway atm and needs some real fixing).

So lgtm
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>  drivers/gpu/drm/i915/display/intel_fbdev.c   | 2 --
>  2 files changed, 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4ce80ca7751f0..9e9db1b0a907b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1711,8 +1711,6 @@ intel_find_initial_plane_obj(struct intel_crtc *crtc,
>  	plane_state->uapi.crtc = &crtc->base;
>  	intel_plane_copy_uapi_to_hw_state(plane_state, plane_state, crtc);
>  
> -	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
> -
>  	atomic_or(plane->frontbuffer_bit, &to_intel_frontbuffer(fb)->bits);
>  }
>  
> @@ -10755,7 +10753,6 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>  		return ret;
>  
>  	i915_gem_object_wait_priority(obj, 0, &attr);
> -	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
>  
>  	if (!new_plane_state->uapi.fence) { /* implicit fencing */
>  		struct dma_fence *fence;
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index 60d3ded270476..53484267b2a4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -230,8 +230,6 @@ static int intelfb_create(struct drm_fb_helper *helper,
>  		goto out_unlock;
>  	}
>  
> -	intel_frontbuffer_flush(to_frontbuffer(ifbdev), ORIGIN_DIRTYFB);
> -
>  	info = drm_fb_helper_alloc_fbi(helper);
>  	if (IS_ERR(info)) {
>  		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
