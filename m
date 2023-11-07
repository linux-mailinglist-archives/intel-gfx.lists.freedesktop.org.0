Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F8A7E43D8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 16:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D1A10E60F;
	Tue,  7 Nov 2023 15:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF7F10E60F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 15:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699372103; x=1730908103;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4W3ekRdID0/w0S2LAcUtLJkNUPdUrR1ubZ3Vqv3H77Q=;
 b=XfAvEthrs0li+tQ6qGDjLhk670Ofyr8s0aViFzxqZmbCdp/1kXHM1R0o
 usT7qosFfw+06whMTRVtkwYpq9rxVx+poDiJ4FON9+BgBCCEzMn4vdsjg
 V6ffO4viQqt6CVGqJolTSfH0nggYwpAcWKMTgJ/6fb1Zv2KHQDwXNO7L5
 8fjmOoYVvgpJAxYKeGrkUfxBh5Qr3Gr1gFLHum8EPDF/uHUdnyJBdD4Gt
 OuPKqXshAtDeoU4st/C1n4mz5uEafi1APtyHyCMExbTZea4Si/q9PK2Gn
 IFSibjcsMvHdUoLwI9KHNjmq+10iku1IEeC1Bzuz0hTbxbhpIsZ5Xwpzy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="374570255"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="374570255"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 07:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10887"; a="756230106"
X-IronPort-AV: E=Sophos;i="6.03,284,1694761200"; d="scan'208";a="756230106"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 07 Nov 2023 07:48:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Nov 2023 17:48:19 +0200
Date: Tue, 7 Nov 2023 17:48:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Message-ID: <ZUpcQxN3qMPza3TH@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
 <20231102215519.135847-2-vinod.govindapillai@intel.com>
 <ZUlIlPtbb-Mmfb3g@intel.com>
 <ee1bd0a6710a05f92894953237f44b9ea1cb3183.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ee1bd0a6710a05f92894953237f44b9ea1cb3183.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective
 fetch is optimal in some cases
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 07, 2023 at 09:32:47AM +0000, Govindapillai, Vinod wrote:
> Hi Ville,
> 
> On Mon, 2023-11-06 at 22:12 +0200, Ville Syrjälä wrote:
> > On Thu, Nov 02, 2023 at 11:55:18PM +0200, Vinod Govindapillai wrote:
> > > If both PSR2 + FBC is supported, in cases where the selective
> > > fetch area is greater than 25% of the screen area, FBC might
> > > be more efficient.
> > 
> > "might be more efficient" is a very weak justification.
> 
> That is a poor choice of wording from me! I will update!
> 
> The feature HAS has documented power assessment information

I see nothing there that actually justifies this 25%
threshold.

> 
> BR
> Vinod
> > 
> > This sort of stuff would really need to be accompanied by 
> > some actual power numbers (for some actually reasonable
> > workloads) to justify the extra complication.
> > 
> > > So have a possibility to check this and add
> > > provision to enable FBC in such cases.
> > > 
> > > Bspec: 68881
> > > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_types.h    |  1 +
> > >  drivers/gpu/drm/i915/display/intel_psr.c      | 42 ++++++++++++++++---
> > >  2 files changed, 38 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 047fe3f8905a..bcc5fd8d8a00 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1207,6 +1207,7 @@ struct intel_crtc_state {
> > >         bool has_psr;
> > >         bool has_psr2;
> > >         bool enable_psr2_sel_fetch;
> > > +       bool full_frame_fetch;
> > >         bool req_psr2_sdp_prior_scanline;
> > >         bool wm_level_disabled;
> > >         u32 dc3co_exitline;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index ecd24a0b86cb..6cb32fd29d10 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -1987,10 +1987,35 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct
> > > intel_crtc_state *c
> > >         return true;
> > >  }
> > >  
> > > +/*
> > > + * Check selective fetch is optimum
> > > + *
> > > + * Compare selective fetch area w.r.t screen size in case both FBC and PSR2
> > > + * is supported. If the selective fetch area is more than 25% of screen
> > > + * size, FBC is might be more efficient than PSR2. So force full frame
> > > + * update.
> > > + */
> > > +static bool psr2_sel_fetch_not_optimal(struct drm_i915_private *i915,
> > > +                                      struct drm_rect *sel_fetch,
> > > +                                      struct drm_rect *src)
> > > +{
> > > +       int screen_area, selfetch_area;
> > > +
> > > +       /* This is needed where FBC + PSR can be supported */
> > > +       if (DISPLAY_VER(i915) < 20 || !i915->display.params.enable_fbc ||
> > > +           !HAS_FBC(i915))
> > > +               return false;
> > > +
> > > +       selfetch_area = drm_rect_height(sel_fetch) * drm_rect_width(sel_fetch);
> > > +       screen_area = drm_rect_height(src) * drm_rect_width(src);
> > > +
> > > +       return DIV_ROUND_CLOSEST(screen_area, selfetch_area) <= 4;
> > > +}
> > > +
> > >  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> > >                                 struct intel_crtc *crtc)
> > >  {
> > > -       struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > +       struct drm_i915_private *i915 = to_i915(state->base.dev);
> > >         struct intel_crtc_state *crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
> > >         struct drm_rect pipe_clip = { .x1 = 0, .y1 = -1, .x2 = INT_MAX, .y2 = -1 };
> > >         struct intel_plane_state *new_plane_state, *old_plane_state;
> > > @@ -2082,7 +2107,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> > >          * calculation for those.
> > >          */
> > >         if (pipe_clip.y1 == -1) {
> > > -               drm_info_once(&dev_priv->drm,
> > > +               drm_info_once(&i915->drm,
> > >                               "Selective fetch area calculation failed in pipe %c\n",
> > >                               pipe_name(crtc->pipe));
> > >                 full_update = true;
> > > @@ -2092,9 +2117,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> > >                 goto skip_sel_fetch_set_loop;
> > >  
> > >         /* Wa_14014971492 */
> > > -       if ((IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> > > -            IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> > > -           crtc_state->splitter.enable)
> > > +       if ((IS_DISPLAY_IP_STEP(i915, IP_VER(14, 0), STEP_A0, STEP_B0) ||
> > > +            IS_ALDERLAKE_P(i915) || IS_TIGERLAKE(i915)) &&
> > > +            crtc_state->splitter.enable)
> > >                 pipe_clip.y1 = 0;
> > >  
> > >         ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
> > > @@ -2149,7 +2174,14 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> > >                 }
> > >         }
> > >  
> > > +       if (full_update)
> > > +               goto skip_sel_fetch_set_loop;
> > > +
> > > +       full_update = psr2_sel_fetch_not_optimal(i915, &pipe_clip,
> > > +                                                &crtc_state->pipe_src);
> > > +
> > >  skip_sel_fetch_set_loop:
> > > +       crtc_state->full_frame_fetch = full_update;
> > >         psr2_man_trk_ctl_calc(crtc_state, &pipe_clip, full_update);
> > >         return 0;
> > >  }
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrjälä
Intel
