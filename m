Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F15547B4C1C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 09:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26E7D10E191;
	Mon,  2 Oct 2023 07:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF9510E193
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 07:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696230165; x=1727766165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BoFv0T59euaCSNdBLKZSfuP603InF34V/nzrc5+26FA=;
 b=ea+l1jLSN4opRyv/HGkzahbgCQH5yYNra5frovQgAlCeSM86GRql9FLq
 JYi92IvF95d7gUcN9rwe15JxwqjoV9/n6OhEzkHhmGCYkLbu7BW+O9jpZ
 DbC41nKr6LXur6M9/IipEQXwsyVrndqE66O/T5QA1wAkT/LP51B2V6dv3
 RYCAU5HYkm05W2ZWHoisedWrtXpbdKwx+dpOPrdacRPeUrszvHSJ2AjJt
 bMZxx4sZKXuvcqSd+qKdY/z3bWioWFrToChTjvM33NvqUeeL1WcVkJS2y
 x6tReOpXlt0dmh8rK+u5DPCfZY4zBd4HqbGrFlfLCmHRxj9Rql7moxUS2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="4170025"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; 
   d="scan'208";a="4170025"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 00:02:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10850"; a="785694394"
X-IronPort-AV: E=Sophos;i="6.03,193,1694761200"; d="scan'208";a="785694394"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga001.jf.intel.com with SMTP; 02 Oct 2023 00:02:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Oct 2023 10:02:41 +0300
Date: Mon, 2 Oct 2023 10:02:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZRprEaR3ldipEySa@intel.com>
References: <20230914113854.10008-1-ville.syrjala@linux.intel.com>
 <20230914113854.10008-2-ville.syrjala@linux.intel.com>
 <9eb7236c1b81fe534032e94bbb43b20dd2a7e879.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9eb7236c1b81fe534032e94bbb43b20dd2a7e879.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/fbc: Split plane stride checks
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

On Sun, Oct 01, 2023 at 10:53:37AM +0000, Govindapillai, Vinod wrote:
> Hi Ville,
> 
> 
> On Thu, 2023-09-14 at 14:38 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Carve up stride_is_valid() into per-platform variants to
> > make it easier to see what limits are actually being imposed.
> > 
> > TODO: maybe go for vfuncs later
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 68 ++++++++++++++++++------
> >  1 file changed, 51 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 1b3358a0fbfb..4c4626c84666 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -848,6 +848,47 @@ void intel_fbc_cleanup(struct drm_i915_private *i915)
> >         }
> >  }
> >  
> > +static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       const struct drm_framebuffer *fb = plane_state->hw.fb;
> > +       unsigned int stride = intel_fbc_plane_stride(plane_state) *
> > +               fb->format->cpp[0];
> > +
> > +       return stride == 4096 || stride == 8192;
> > +}
> > +
> > +static bool i965_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       const struct drm_framebuffer *fb = plane_state->hw.fb;
> > +       unsigned int stride = intel_fbc_plane_stride(plane_state) *
> > +               fb->format->cpp[0];
> > +
> > +       return stride >= 2048 && stride <= 16384;
> > +}
> > +
> > +static bool g4x_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       return true;
> > +}
> > +
> > +static bool skl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       const struct drm_framebuffer *fb = plane_state->hw.fb;
> > +       unsigned int stride = intel_fbc_plane_stride(plane_state) *
> > +               fb->format->cpp[0];
> > +
> > +       /* Display WA #1105: skl,bxt,kbl,cfl,glk */
> > +       if (fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
> > +               return false;
> > +
> > +       return true;
> > +}
> > +
> > +static bool icl_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> > +{
> > +       return true;
> > +}
> > +
> >  static bool stride_is_valid(const struct intel_plane_state *plane_state)
> >  {
> >         struct drm_i915_private *i915 = to_i915(plane_state->uapi.plane->dev);
> > @@ -859,23 +900,16 @@ static bool stride_is_valid(const struct intel_plane_state *plane_state)
> >         if (drm_WARN_ON_ONCE(&i915->drm, (stride & (64 - 1)) != 0))
> >                 return false;
> >  
> > -       /* Below are the additional FBC restrictions. */
> > -       if (stride < 512)
> > -               return false;
> Is this check not required anymore for ICL+ and G4x?

Pre-skl FBC only supports X-tile which is a multiple of 512 bytes
anyway, so the check is redundant there.

And skl+ can support smaller strides with modifiers that have
smaller tile width (minus the linear stride w/a on skl/bxt/glk).

Perhaps removing this check should be a separate patch...
and we could remove the "multiple of 64 bytes" check too
since that is always true on any platform/modifier.

> 
> > -
> > -       if (DISPLAY_VER(i915) == 2 || DISPLAY_VER(i915) == 3)
> > -               return stride == 4096 || stride == 8192;
> > -
> > -       if (DISPLAY_VER(i915) == 4 && !IS_G4X(i915) &&
> > -           (stride < 2048 || stride > 16384))
> > -               return false;
> > -
> > -       /* Display WA #1105: skl,bxt,kbl,cfl,glk */
> > -       if ((DISPLAY_VER(i915) == 9 || IS_GEMINILAKE(i915)) &&
> > -           fb->modifier == DRM_FORMAT_MOD_LINEAR && stride & 511)
> > -               return false;
> > -
> > -       return true;
> > +       if (DISPLAY_VER(i915) >= 11)
> > +               return icl_fbc_stride_is_valid(plane_state);
> > +       else if (DISPLAY_VER(i915) >= 9)
> > +               return skl_fbc_stride_is_valid(plane_state);
> > +       else if (DISPLAY_VER(i915) >= 5 || IS_G4X(i915))
> > +               return g4x_fbc_stride_is_valid(plane_state);
> > +       else if (DISPLAY_VER(i915) == 4)
> > +               return i965_fbc_stride_is_valid(plane_state);
> > +       else
> > +               return i8xx_fbc_stride_is_valid(plane_state);
> Also I guess we  could pass "stride" as parameter to these functions for clarity and simplify.

We need more than the stride there.

> 
> There as some IGT CI failures related to bad_stride tests.

Yeah, I need to nuke that subtest.

> 
> BR
> Vinod
> >  }
> >  
> >  static bool pixel_format_is_valid(const struct intel_plane_state *plane_state)
> 

-- 
Ville Syrjälä
Intel
