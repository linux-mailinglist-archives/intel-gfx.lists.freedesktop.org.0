Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D665F41FA
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 13:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D185410E568;
	Tue,  4 Oct 2022 11:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5794A10E568
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 11:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664882920; x=1696418920;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=/m/WfnTtLrmwh1wtdg/BG8tcJSBoX1bIEMebfWN2Z3s=;
 b=O9u2TUh5eVCcbH8r9FjLsBzB0b7dpN8bltb8DaT9uEPDp7Gp+VX2XYAG
 GxqgYc4xThvMNN1aJh6ol7BnMMHBbbWxEOtyKuh+MtcnfvH2vFBlYyjAz
 OKgpxMFmEKTERbFuuiMucs66UZWOSLElLjE9l0Pmmkq2lpdNMBc2oXX8O
 Qr4LUWD4nbdVvssveIOcce3yZpwjgd8ezE78gQMUXka598MccEHFfRbKY
 7qZV9Xhauenaef5SqWy6JlSw4CnK70rHU1IVVJUYcJ2VHltIeKSAFY1gT
 vSXPVtutqyFhfCYRexKQiwjewbuqZrt6MpSebdf0Gunaz9EQSqkda97FW Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="283254277"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="283254277"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="749340734"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="749340734"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga004.jf.intel.com with SMTP; 04 Oct 2022 04:28:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Oct 2022 14:28:35 +0300
Date: Tue, 4 Oct 2022 14:28:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YzwY47axVOqKGgav@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
 <20221004103311.194409-4-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221004103311.194409-4-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 4/5] drm/i915/display: consider
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 04, 2022 at 11:33:10AM +0100, Matthew Auld wrote:
> For these types of display buffers, we need to able to CPU access some
> part of the backing memory in prepare_plane_clear_colors(). As a result
> we need to ensure we always place in the mappable part of lmem, which
> becomes necessary on small-bar systems.
> 
> v2(Nirmoy & Ville):
>  - Add some commentary for why we need to CPU access the buffer.
>  - Split out the other changes, so we just consider the display change
>    here.
> v3:
>  - Handle this in the dpt path.
> 
> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 24 +++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 32206bd359da..8197343300ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  			continue;
>  
>  		if (HAS_LMEM(dev_priv)) {
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
>  			if (ret)
>  				continue;
>  		}
> @@ -156,8 +167,17 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  	ret = i915_gem_object_lock(obj, &ww);
>  	if (!ret && phys_cursor)
>  		ret = i915_gem_object_attach_phys(obj, alignment);
> -	else if (!ret && HAS_LMEM(dev_priv))
> +	else if (!ret && HAS_LMEM(dev_priv)) {
> +		/*
> +		 * For this type of ccs buffer we need to able to read from the
> +		 * CPU the clear color value found in the buffer, which might
> +		 * require moving to the mappable part of lmem first, but here
> +		 * we should be using dpt for this.
> +		 */
> +		WARN_ON_ONCE(intel_fb_rc_ccs_cc_plane(fb) >= 0);

DPT isn't availalable on DG1.

> +
>  		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> +	}
>  	if (!ret)
>  		ret = i915_gem_object_pin_pages(obj);
>  	if (ret)
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
