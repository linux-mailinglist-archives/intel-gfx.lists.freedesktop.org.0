Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 396527B4BD2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 08:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6358910E141;
	Mon,  2 Oct 2023 06:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1D410E17D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 06:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696229712; x=1727765712;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FKhWJKnkKS/J3fh1fUFtlDwS1jh72ePCB8dT8JIlkwM=;
 b=YRecwJBKn976v1JWhwMSw1e3mL/aAj3iTULBAkhGSVeviejo2Ag0ov+A
 bKhqg1LRgrrHaa3krbK2dgrceS8giJaCAOhVBZd4lKeqOlNNZZo7RY4fU
 g9PLraUs4Ah+tWxZXIUp1RNQwdRVfoXKBOdRcrWczvG0HCgUhXFfvXJeS
 ZuNeoBCInb9WemHZWQq8fLqjVNk4eFuHY16D1EzP+zNJXjuOxUadAsEwD
 +HKKSgBF8qJOFi83RfoIQuQ4ZDti/szyCMmbsl2g2nsgGK98NsUpiFRqh
 p3sDFPc42MXkGw9D/pdAC5eGXnBVSx6SfEixh9hkIUN0PW4vuYpTkElZo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="449080977"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="449080977"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2023 23:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="779855861"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="779855861"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga008.jf.intel.com with SMTP; 01 Oct 2023 23:55:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Oct 2023 09:55:09 +0300
Date: Mon, 2 Oct 2023 09:55:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZRppTZd-qeCZuMYS@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-3-ville.syrjala@linux.intel.com>
 <e928b839ff9ebb66e46215319f9ca4ec1983b7a5.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e928b839ff9ebb66e46215319f9ca4ec1983b7a5.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/fbc: Split plane tiling checks
 per-platform
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Oct 01, 2023 at 11:00:44AM +0000, Govindapillai, Vinod wrote:
> Hi Ville,
> 
> On Thu, 2023-09-14 at 14:38 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Carve up tiling_is_valid() into per-platform variants to
> > make it easier to see what limits are actually being imposed.
> > 
> > TODO: maybe go for vfuncs later
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 21 ++++++++++++++++++---
> >  1 file changed, 18 insertions(+), 3 deletions(-)
> 
> 
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 4c4626c84666..052f9d8b53d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -984,16 +984,21 @@ static bool intel_fbc_hw_tracking_covers_screen(const struct
> > intel_plane_state *
> >         return effective_w <= max_w && effective_h <= max_h;
> >  }
> >  
> > -static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> > +static bool i8xx_fbc_tiling_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       const struct drm_framebuffer *fb = plane_state->hw.fb;
> > +
> > +       return fb->modifier == I915_FORMAT_MOD_X_TILED;
> > +}
> > +
> > +static bool skl_fbc_tiling_valid(const struct intel_plane_state *plane_state)
> >  {
> > -       struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> >         const struct drm_framebuffer *fb = plane_state->hw.fb;
> >  
> >         switch (fb->modifier) {
> >         case DRM_FORMAT_MOD_LINEAR:
> >         case I915_FORMAT_MOD_Y_TILED:
> >         case I915_FORMAT_MOD_Yf_TILED:
> > -               return DISPLAY_VER(i915) >= 9;
> >         case I915_FORMAT_MOD_4_TILED:
> >         case I915_FORMAT_MOD_X_TILED:
> >                 return true;
> > @@ -1002,6 +1007,16 @@ static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> >         }
> >  }
> >  
> > +static bool tiling_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > +
> > +       if (DISPLAY_VER(i915) >= 9)
> > +               return skl_fbc_tiling_valid(plane_state);
> > +       else
> > +               return i8xx_fbc_tiling_valid(plane_state);
> I915_FORMAT_MOD_4_TILED is not checked for i8xx_fbc_tiling_valid() comparing to the original code.
> Is that intentional? 

Tile4 was introduced in dg2/mtl

> 
> With that checked,
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> 
> > +}
> > +
> >  static void intel_fbc_update_state(struct intel_atomic_state *state,
> >                                    struct intel_crtc *crtc,
> >                                    struct intel_plane *plane)
> 

-- 
Ville Syrjälä
Intel
