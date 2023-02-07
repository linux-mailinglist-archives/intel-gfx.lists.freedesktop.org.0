Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2244468D3F8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 11:21:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DED610E4AF;
	Tue,  7 Feb 2023 10:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3678210E4AF
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 10:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675765299; x=1707301299;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=2EoUUGeMiBzupIeapQdPKgKdcHq3d8dVckIDhbTLLPk=;
 b=AElOhqVEtOcXA1R2ZYXUfllYOWLN4jkc3DMEPuCjTSe+8vpr03v9QmR5
 fDgw7WpHYLv0A+Uc4PPl0Pe5bD1bCg2iXZLmCTq3t1X356/b2mnP9+uE1
 i3HWSDmDvN8DVLUKnZR/hN6a+Q5CugkssRTBbJ7d5Kz8l5cKvJ1L8sSWW
 KrnEfKlPInYqeZa4afwzsgiXdTHsX35sLFzAlTvF9Q+vxh29DZ0bsjZ9r
 EW1YakdRPqPzhpRYwNOEj52CSF3HzDCiX6ZCVHONb1XMQxI72VbMk/3el
 roWNcaGF1VC9U2aSBLkDIFjig3f5F03yG95nxRwH5AvrqKDj4++e2xcYj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="309802972"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="309802972"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 02:21:38 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="735496550"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="735496550"
Received: from tronach-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.11])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 02:21:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230206163512.2841513-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230206163512.2841513-1-imre.deak@intel.com>
 <20230206163512.2841513-3-imre.deak@intel.com>
Date: Tue, 07 Feb 2023 12:21:34 +0200
Message-ID: <87o7q5ydw1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Factor out a function
 disabling fused-off display
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

On Mon, 06 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> Factor out a function used both on older and new platforms to disable
> the display functionality if the display is fused-off.

The single point of truth for disabling display is the if
(!HAS_DISPLAY()) path near the end of intel_device_info_runtime_init().

I think it's fine to abstract it if you want, but it should *only* be
called from that *one* place in one path.

So that's a no for this one.

BR,
Jani.

>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++-----------
>  1 file changed, 18 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 044ac552c9280..9d6d1fad9f1d9 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -369,6 +369,21 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
>  	intel_device_info_subplatform_init(i915);
>  }
>  
> +static void disable_fused_off_display(struct drm_i915_private *i915)
> +{
> +	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> +
> +	drm_info(&i915->drm, "Display fused off, disabling\n");
> +
> +	runtime->pipe_mask = 0;
> +	runtime->cpu_transcoder_mask = 0;
> +	runtime->fbc_mask = 0;
> +	runtime->has_hdcp = 0;
> +	runtime->fbc_mask = 0;
> +	runtime->has_dmc = 0;
> +	runtime->has_dsc = 0;
> +}
> +
>  /**
>   * intel_device_info_runtime_init - initialize runtime info
>   * @dev_priv: the i915 device
> @@ -454,11 +469,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
>  		    (HAS_PCH_CPT(dev_priv) &&
>  		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> -			drm_info(&dev_priv->drm,
> -				 "Display fused off, disabling\n");
> -			runtime->pipe_mask = 0;
> -			runtime->cpu_transcoder_mask = 0;
> -			runtime->fbc_mask = 0;
> +			disable_fused_off_display(dev_priv);
>  		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
>  			drm_info(&dev_priv->drm, "PipeC fused off\n");
>  			runtime->pipe_mask &= ~BIT(PIPE_C);
> @@ -502,17 +513,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
>  	}
>  
>  	if ((IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> -	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> -		drm_info(&dev_priv->drm, "Display fused off, disabling\n");
> -
> -		runtime->pipe_mask = 0;
> -		runtime->cpu_transcoder_mask = 0;
> -		runtime->fbc_mask = 0;
> -		runtime->has_hdcp = 0;
> -		runtime->fbc_mask = 0;
> -		runtime->has_dmc = 0;
> -		runtime->has_dsc = 0;
> -	}
> +	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT))
> +		disable_fused_off_display(dev_priv);
>  
>  	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
>  		drm_info(&dev_priv->drm,

-- 
Jani Nikula, Intel Open Source Graphics Center
