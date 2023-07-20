Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF6075A891
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 10:03:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202E610E577;
	Thu, 20 Jul 2023 08:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1589F10E577
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 08:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689840184; x=1721376184;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=A8xFxRHDcd3pXcwtVyy3QX2NzwCVoVteu4Cz1+U4XB8=;
 b=XfRIqXtEGQE51hYHWn0oios77WAPUgSEB1mlXsPOSJxoBMOdXXPKXe8W
 asx+cAVU3nfWy/RzWK+d9pNxRK/3NPNRFqKaZVOT2CJp2NK+aBQCU2i60
 eeiMb3IuPV6xv7STNV5QCT7VhdAlvxrQ8LC0v8+Eg8zIeTQi1Jjk1Wlmn
 jsdwoQhqMPEsjOCFKIEerP54HcY6TAHHET9yJpf4aRHPNJXycK6TXOrSP
 vc0HHTYdEXA5IJp1RVcBMa6K6kPEDWdiwyMoeh38WKzIQ8GJ/V88WFn1t
 3X/nKHZrpnE9PzmmJ6g3IG5OfihWqasBQorup8iDbt/TQPJydImGczUjG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="430434805"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="430434805"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 01:02:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="789697018"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="789697018"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 01:02:24 -0700
Date: Thu, 20 Jul 2023 11:02:16 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZLjqCK7Elh661Da0@intel.com>
References: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor
 for relative data rate
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
Cc: nemesa.garg@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 19, 2023 at 01:48:33PM +0300, Stanislav Lisovskiy wrote:
> BSpec clearly instructs us to use plane scale factor when calculating
> relative data rate to be used when allocating DDB blocks for each plane.
> For some reason we use scale factor for data_rate calculation, which is
> used for BW calculations, however we are not using it for DDB calculations.
> So lets fix it as described in BSpec 68907.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 7d9578ebae556..60a492e186ab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  	int width, height;
> +	unsigned int rel_data_rate;
>  
>  	if (plane->id == PLANE_CURSOR)
>  		return 0;
> @@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  		height /= 2;
>  	}
>  
> -	return width * height * fb->format->cpp[color_plane];
> +	rel_data_rate = width * height * fb->format->cpp[color_plane];
> +
> +	return intel_adjusted_rate(&plane_state->uapi.src,
> +				   &plane_state->uapi.dst,
> +				   rel_data_rate);
>  }
>  
>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> -- 
> 2.37.3
> 

IGT failures are irrelevant here(test is aborted due to some timeout issue).


