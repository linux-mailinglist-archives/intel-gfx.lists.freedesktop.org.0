Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692E57F27A5
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 09:39:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E7DB10E0FE;
	Tue, 21 Nov 2023 08:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0A110E29A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Nov 2023 08:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700555961; x=1732091961;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UkYbVf+Xcnl3khfvTLRmvjj5+FIiGAl6EGx7eiN/fao=;
 b=H1xQYGQN3ELLXjteaMws7rCHXX4pRqYkPaTktj/PJy+RvwtYgcYXaDnS
 FcU4WQlO0aeV8uKmk99DQSxuRX9+u2cZkkBisGfHAKQfvkh5pvcUI+vk4
 wpfxbT4G7/OXay+yuptR9ContkG0pjHrf80TD2ufRTSRYtbCqXM8JIZAb
 9NwGxSuslAWG2zeROsuSkW/d4XE2gCM4EuCxr8wxg8/qLrak6P1SHzczz
 Z1YNwPf03hIXYg3NpRhbeXGzStV1CLl6svomsttCy7j2teib3uPPkBOQb
 r17sXaTCqATo47DuHNumDj66dux556G3GOwXSH8jUa8ASPCmd4BlbFZfN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="422893708"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="422893708"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 00:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="760030003"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="760030003"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 21 Nov 2023 00:39:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Nov 2023 10:39:17 +0200
Date: Tue, 21 Nov 2023 10:39:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZVxstRLrEgKTi6HD@intel.com>
References: <20231120100833.3221946-1-jouni.hogander@intel.com>
 <20231120100833.3221946-3-jouni.hogander@intel.com>
 <ZVtrCn49e9lxvOf9@intel.com>
 <8c19dbcf8b70eb5e1bdb929229310e741c690878.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8c19dbcf8b70eb5e1bdb929229310e741c690878.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v4 2/3] drm/i915/display: Convert
 intel_fb_modifier_to_tiling as non-static
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

On Tue, Nov 21, 2023 at 07:35:03AM +0000, Hogander, Jouni wrote:
> On Mon, 2023-11-20 at 16:19 +0200, Ville Syrjälä wrote:
> > On Mon, Nov 20, 2023 at 12:08:32PM +0200, Jouni Högander wrote:
> > > We are about to split i915 specific code from intel_fb.c. Convert
> > > intel_fb_modifier_to_tiling as non-static to allow calling it from
> > > split
> > > code.
> > 
> > We should only need this in the i915 path.
> 
> If I move it into i915 specific source file I need to convert 
> lookup_modifier as non-static. Would you prefer that or do you have
> some other suggestion?

Why does this even use lookup_modifier()? Hmm, I guess it's just
using that to reduce all the compressed modifiers to the Y-tiled
"class".

One alternative would be to just list the modifiers by hand, but
dunno if that's any better. I suppose we can just go with your
original idea.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> BR,
> 
> Jouni Högander
> > 
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fb.c | 40 ++++++++++++---------
> > > ----
> > >  drivers/gpu/drm/i915/display/intel_fb.h |  2 ++
> > >  2 files changed, 22 insertions(+), 20 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> > > b/drivers/gpu/drm/i915/display/intel_fb.c
> > > index 7c2df6c1f377..a235ec0f192d 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > @@ -301,6 +301,26 @@ lookup_format_info(const struct
> > > drm_format_info formats[],
> > >         return NULL;
> > >  }
> > >  
> > > +unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
> > > +{
> > > +       u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
> > > +                        INTEL_PLANE_CAP_TILING_MASK;
> > > +
> > > +       switch (tiling_caps) {
> > > +       case INTEL_PLANE_CAP_TILING_Y:
> > > +               return I915_TILING_Y;
> > > +       case INTEL_PLANE_CAP_TILING_X:
> > > +               return I915_TILING_X;
> > > +       case INTEL_PLANE_CAP_TILING_4:
> > > +       case INTEL_PLANE_CAP_TILING_Yf:
> > > +       case INTEL_PLANE_CAP_TILING_NONE:
> > > +               return I915_TILING_NONE;
> > > +       default:
> > > +               MISSING_CASE(tiling_caps);
> > > +               return I915_TILING_NONE;
> > > +       }
> > > +}
> > > +
> > >  /**
> > >   * intel_fb_get_format_info: Get a modifier specific format
> > > information
> > >   * @cmd: FB add command structure
> > > @@ -737,26 +757,6 @@ intel_fb_align_height(const struct
> > > drm_framebuffer *fb,
> > >         return ALIGN(height, tile_height);
> > >  }
> > >  
> > > -static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
> > > -{
> > > -       u8 tiling_caps = lookup_modifier(fb_modifier)->plane_caps &
> > > -                        INTEL_PLANE_CAP_TILING_MASK;
> > > -
> > > -       switch (tiling_caps) {
> > > -       case INTEL_PLANE_CAP_TILING_Y:
> > > -               return I915_TILING_Y;
> > > -       case INTEL_PLANE_CAP_TILING_X:
> > > -               return I915_TILING_X;
> > > -       case INTEL_PLANE_CAP_TILING_4:
> > > -       case INTEL_PLANE_CAP_TILING_Yf:
> > > -       case INTEL_PLANE_CAP_TILING_NONE:
> > > -               return I915_TILING_NONE;
> > > -       default:
> > > -               MISSING_CASE(tiling_caps);
> > > -               return I915_TILING_NONE;
> > > -       }
> > > -}
> > > -
> > >  bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64
> > > modifier)
> > >  {
> > >         return HAS_DPT(i915) && modifier != DRM_FORMAT_MOD_LINEAR;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.h
> > > b/drivers/gpu/drm/i915/display/intel_fb.h
> > > index e85167d6bc34..23db6628f53e 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> > > @@ -95,4 +95,6 @@ intel_user_framebuffer_create(struct drm_device
> > > *dev,
> > >  bool intel_fb_modifier_uses_dpt(struct drm_i915_private *i915, u64
> > > modifier);
> > >  bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
> > >  
> > > +unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier);
> > > +
> > >  #endif /* __INTEL_FB_H__ */
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
