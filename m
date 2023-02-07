Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F7A68D5EA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 12:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A03DF88130;
	Tue,  7 Feb 2023 11:47:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DDF810E4D4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 11:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675770431; x=1707306431;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=6bdGaiVuBF6CyFhb19oFNUBSb4TJYFJe82pcI4Dx9Z4=;
 b=C/1rmU+5a/HW+hPrJnI1KaXBK2YhIIKeQQwVbtxSO8FxsLbXViqokGkA
 /D3v/5dF4yd7bsKAHN2ol+F/Cn6yGfxN9B9k6q2wV12GKnMIqiRQH9IxC
 G6buiVk4qQG6CsPpak19M2Tu+ZX5DkLOgQyWbDaONblA9roJmvtir+D0p
 KIZPTMTuNBmH+nsVBt50bYsahvWjuOWWeCdUIJZ0oCGxJGHp4rGIaHf19
 c8IT3fhQa6mmu0mjRxS4vL3rvEEam2DYYx3f7gOAIBGB1k/OVU7zxzCYw
 T/VedTViW/ET9ikES3mAgjpry8qFWircHWoyt4fbPN/EasfLRUqmaMdD4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="328126885"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="328126885"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:46:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="668760084"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="668760084"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:46:57 -0800
Date: Tue, 7 Feb 2023 13:46:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+I6LvU8GAOOXS/p@ideak-desk.fi.intel.com>
References: <20230206163512.2841513-1-imre.deak@intel.com>
 <20230206163512.2841513-3-imre.deak@intel.com>
 <87o7q5ydw1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o7q5ydw1.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 07, 2023 at 12:21:34PM +0200, Jani Nikula wrote:
> On Mon, 06 Feb 2023, Imre Deak <imre.deak@intel.com> wrote:
> > Factor out a function used both on older and new platforms to disable
> > the display functionality if the display is fused-off.
> 
> The single point of truth for disabling display is the if
> (!HAS_DISPLAY()) path near the end of intel_device_info_runtime_init().
> 
> I think it's fine to abstract it if you want, but it should *only* be
> called from that *one* place in one path.

I think for consistency GEN 7,8 should also just clear
runtime->pipe_mask depending on the later block to clear the other
fields.

> So that's a no for this one.

Ok, I can drop this patch.

> BR,
> Jani.
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++-----------
> >  1 file changed, 18 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> > index 044ac552c9280..9d6d1fad9f1d9 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > @@ -369,6 +369,21 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
> >  	intel_device_info_subplatform_init(i915);
> >  }
> >  
> > +static void disable_fused_off_display(struct drm_i915_private *i915)
> > +{
> > +	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> > +
> > +	drm_info(&i915->drm, "Display fused off, disabling\n");
> > +
> > +	runtime->pipe_mask = 0;
> > +	runtime->cpu_transcoder_mask = 0;
> > +	runtime->fbc_mask = 0;
> > +	runtime->has_hdcp = 0;
> > +	runtime->fbc_mask = 0;
> > +	runtime->has_dmc = 0;
> > +	runtime->has_dsc = 0;
> > +}
> > +
> >  /**
> >   * intel_device_info_runtime_init - initialize runtime info
> >   * @dev_priv: the i915 device
> > @@ -454,11 +469,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  		    sfuse_strap & SFUSE_STRAP_DISPLAY_DISABLED ||
> >  		    (HAS_PCH_CPT(dev_priv) &&
> >  		     !(sfuse_strap & SFUSE_STRAP_FUSE_LOCK))) {
> > -			drm_info(&dev_priv->drm,
> > -				 "Display fused off, disabling\n");
> > -			runtime->pipe_mask = 0;
> > -			runtime->cpu_transcoder_mask = 0;
> > -			runtime->fbc_mask = 0;
> > +			disable_fused_off_display(dev_priv);
> >  		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
> >  			drm_info(&dev_priv->drm, "PipeC fused off\n");
> >  			runtime->pipe_mask &= ~BIT(PIPE_C);
> > @@ -502,17 +513,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> >  	}
> >  
> >  	if ((IS_DGFX(dev_priv) || DISPLAY_VER(dev_priv) >= 14) &&
> > -	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT)) {
> > -		drm_info(&dev_priv->drm, "Display fused off, disabling\n");
> > -
> > -		runtime->pipe_mask = 0;
> > -		runtime->cpu_transcoder_mask = 0;
> > -		runtime->fbc_mask = 0;
> > -		runtime->has_hdcp = 0;
> > -		runtime->fbc_mask = 0;
> > -		runtime->has_dmc = 0;
> > -		runtime->has_dsc = 0;
> > -	}
> > +	    !(intel_de_read(dev_priv, GU_CNTL_PROTECTED) & DEPRESENT))
> > +		disable_fused_off_display(dev_priv);
> >  
> >  	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
> >  		drm_info(&dev_priv->drm,
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
