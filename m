Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3995F4474
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:41:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5BE89C05;
	Tue,  4 Oct 2022 13:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 016A610E614
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664890862; x=1696426862;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=X4jPnDxCAna0mZDWramJ9IB7xbD7trINoNCli1iFci4=;
 b=nBjvsbGz+wOrIY71zx+2tp94w19pld6eSacYaefd85rMUr+L8qldHd3z
 wZH48VHoR9nw2T9fsnIb0qich0TNVeSG6o952ZATD5T7hWkK8HAESSOLe
 3qQaDcz9BUlN+hbD/t+BTnJHtwx2EYmfRnwOUaZW+gLA18Cz8oXQwHGXB
 aoqbaauYcc2orZhlCvVqupZGPwv1WHZbsrm7biMQ1dC9C+GD1XSk94PSE
 jCMBusbfiFTrs5ZQnbO8Q313e5bhZ0VENp9qIXlT4XI81tExkkFs80qU+
 GkA83acbqMfwHDW6IUDZ7A35sGl9bgTJL7u5NCaVNjlILrC54oHHeZ9Ws w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="290129444"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="290129444"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:41:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="619104429"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="619104429"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.22.232])
 ([10.252.22.232])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:41:01 -0700
Message-ID: <f2297480-c95e-cdca-c1b5-fd07c8a74af1@linux.intel.com>
Date: Tue, 4 Oct 2022 15:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221004131916.233474-1-matthew.auld@intel.com>
 <20221004131916.233474-4-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221004131916.233474-4-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 4/5] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: Jianshui Yu <jianshui.yu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/4/2022 3:19 PM, Matthew Auld wrote:
> For these types of display buffers, we need to able to CPU access some
> part of the backing memory in prepare_plane_clear_colors(). As a result
> we need to ensure we always place in the mappable part of lmem, which
> becomes necessary on small-bar systems.
>
> v2(Nirmoy & Ville):
>   - Add some commentary for why we need to CPU access the buffer.
>   - Split out the other changes, so we just consider the display change
>     here.
> v3:
>   - Handle this in the dpt path.
> v4(Ville):
>   - Drop the intel_fb_rc_ccs_cc_plane() sanity check in
>     pin_and_fence_fb_obj(), since we can also trigger this on DG1 it
>     seems.
>
> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 5031ee5695dd..e12339f46640 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>   			continue;
>   
>   		if (HAS_LMEM(dev_priv)) {
> -			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> +			unsigned int flags = obj->flags;
> +
> +			/*
> +			 * For this type of buffer we need to able to read from the CPU
> +			 * the clear color value found in the buffer, hence we need to
> +			 * ensure it is always in the mappable part of lmem, if this is
> +			 * a small-bar device.
> +			 */
> +			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> +				flags &= ~I915_BO_ALLOC_GPU_ONLY;
> +			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> +							flags);
>   			if (ret)
>   				continue;
>   		}
