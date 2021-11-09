Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0EF44B92E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Nov 2021 00:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE2B56E8BC;
	Tue,  9 Nov 2021 23:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F7D6E8BC;
 Tue,  9 Nov 2021 23:00:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10163"; a="295999163"
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="295999163"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 15:00:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,221,1631602800"; d="scan'208";a="491848189"
Received: from shanthyw-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.255.34.193])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 15:00:22 -0800
Date: Tue, 9 Nov 2021 18:00:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <YYr9hKKh0/OM2rLf@intel.com>
References: <20211109114850.GB16587@kili>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211109114850.GB16587@kili>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: pin: delete duplicate check in
 intel_pin_and_fence_fb_obj()
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 kernel-janitors@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 09, 2021 at 02:48:50PM +0300, Dan Carpenter wrote:
> The "ret" variable is checked on the previous line so we know it's
> zero.  No need to check again.
> 
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

and pushed.
thanks for the patch

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 3f77f3013584..3b20f69e0240 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -142,13 +142,11 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  	if (ret)
>  		goto err;
>  
> -	if (!ret) {
> -		vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> -							   view, pinctl);
> -		if (IS_ERR(vma)) {
> -			ret = PTR_ERR(vma);
> -			goto err_unpin;
> -		}
> +	vma = i915_gem_object_pin_to_display_plane(obj, &ww, alignment,
> +						   view, pinctl);
> +	if (IS_ERR(vma)) {
> +		ret = PTR_ERR(vma);
> +		goto err_unpin;
>  	}
>  
>  	if (uses_fence && i915_vma_is_map_and_fenceable(vma)) {
> -- 
> 2.20.1
> 
