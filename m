Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B635404258
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 02:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775FC6E3EE;
	Thu,  9 Sep 2021 00:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E6F6E3EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 00:35:11 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id g22so144073edy.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Sep 2021 17:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vjLVQy9xVHk7VwA09+0epN1DhsDu9egyA4SUfmJqopg=;
 b=NRngtjUNRcDXM2JFd+yHQXi/24nZmScPxAsjfL5HXHD+2mdwSO7v/zj5o+cYykl5Yu
 r4/KBCTzVQWAzqMEYxgkBjJS+dk1fvUriJV4OCXmtzUpvO2CYP/9P227mcNLjWO89oAk
 j4I83Ibp/cbF5qvp4yjQR4DzmWnPL9WInVl7L2AFDZDSJ3fS3esLdE80Hr4H45kWwyF8
 ZuMvRRrF3D6PU1Sf4OK2lKetOwGHbuobZZGvT3vds2oPH9Y/a7BYQjlOkc3equ52l5kw
 bDh8j4nn/cJEDuQtf+8sEqCCBl+clmppqpFGqm8JZdHzYg9rDuZLqSMmP2FOVLec0sG7
 P8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vjLVQy9xVHk7VwA09+0epN1DhsDu9egyA4SUfmJqopg=;
 b=dcSi1CUumsvXjrOq73LL4ej2NobqiCxItYBVm8+UellAf33Jv8s1hcCLK7/3zLDfSq
 qarJP36LXI+vzZEGvQET1auRnyM+fURiQUq/Iqj9pb+YYyW3bdZ+t2So/LaZi3D3TibY
 8pumRgk+IHMDzyxBTNV48H3ru4FcBEP7SSfREcU6kag+gmuxTgEynzfulPqy6VrfePof
 2S4G+6CtEB0FIh33gGEsYYmxgdITwlfLYCrpC6WiLIHAGNxRN0DWLvzliP7hAMpltZgO
 UUqyf7CTZ0O+RltPz/B0s7X0C4wZzl78M9cQ59oq5efwDqUjai7MajHzsKGOVe7lyv7s
 YeuA==
X-Gm-Message-State: AOAM533Tj5RkKlMK6sDuixxD6Ve3vYXdkPIjJDBtK1qQbtkAR3I/jtJh
 /5necx8FS3pAfYS/ZFwUUAGjIJw3qvj311Z1DXI=
X-Google-Smtp-Source: ABdhPJyaywhTU0szcXEBLmrKllo4sxiZK1mnN87sT4ZtjI3S5gHZenP3PywBhH+Xum397JYK7ddDfEMsBx0Ar+KR6N0=
X-Received: by 2002:aa7:d304:: with SMTP id p4mr294046edq.151.1631147709433;
 Wed, 08 Sep 2021 17:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210908003944.2972024-1-airlied@gmail.com>
 <20210908003944.2972024-12-airlied@gmail.com>
 <877dfr7517.fsf@intel.com>
In-Reply-To: <877dfr7517.fsf@intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 9 Sep 2021 10:34:58 +1000
Message-ID: <CAPM=9tz4jnwUg-5nUZLWFgTEWWCckxGveJ6SJ0ojRj=+=88CWA@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915: split the dpll clock
 compute out from display vtable.
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

On Wed, 8 Sept 2021 at 20:09, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Wed, 08 Sep 2021, Dave Airlie <airlied@gmail.com> wrote:
> > From: Dave Airlie <airlied@redhat.com>
> >
> > this could be merged later but for now it's simple to split it out.
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
> >  drivers/gpu/drm/i915/display/intel_dpll.c    | 16 ++++++++--------
> >  drivers/gpu/drm/i915/i915_drv.h              |  8 +++++++-
> >  3 files changed, 18 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index b981a923cc2f..87950202f4ce 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6768,10 +6768,10 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
> >               crtc_state->update_wm_post = true;
> >
> >       if (mode_changed && crtc_state->hw.enable &&
> > -         dev_priv->display.crtc_compute_clock &&
> > +         dev_priv->dpll_funcs.crtc_compute_clock &&
> >           !crtc_state->bigjoiner_slave &&
> >           !drm_WARN_ON(&dev_priv->drm, crtc_state->shared_dpll)) {
> > -             ret = dev_priv->display.crtc_compute_clock(crtc_state);
> > +             ret = dev_priv->dpll_funcs.crtc_compute_clock(crtc_state);
> >               if (ret)
> >                       return ret;
>
> It was there before, but yuck. Conditions like this with checks on the
> existence of a vfunc are really ugly. Could benefit from a wrapper - but
> that requires figuring out what the condition actually is. *facepalm*.
>
> >       }
> > @@ -8807,7 +8807,7 @@ static void intel_modeset_clear_plls(struct intel_atomic_state *state)
> >       struct intel_crtc *crtc;
> >       int i;
> >
> > -     if (!dev_priv->display.crtc_compute_clock)
> > +     if (!dev_priv->dpll_funcs.crtc_compute_clock)
> >               return;
> >
> >       for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> > index 210f91f4a576..9326c7cbb05c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> > @@ -1367,21 +1367,21 @@ void
> >  intel_dpll_init_clock_hook(struct drm_i915_private *dev_priv)
> >  {
> >       if (DISPLAY_VER(dev_priv) >= 9 || HAS_DDI(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = hsw_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = hsw_crtc_compute_clock;
> >       else if (HAS_PCH_SPLIT(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = ilk_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = ilk_crtc_compute_clock;
> >       else if (IS_CHERRYVIEW(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = chv_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = chv_crtc_compute_clock;
> >       else if (IS_VALLEYVIEW(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = vlv_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = vlv_crtc_compute_clock;
> >       else if (IS_G4X(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = g4x_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = g4x_crtc_compute_clock;
> >       else if (IS_PINEVIEW(dev_priv))
> > -             dev_priv->display.crtc_compute_clock = pnv_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = pnv_crtc_compute_clock;
> >       else if (DISPLAY_VER(dev_priv) != 2)
> > -             dev_priv->display.crtc_compute_clock = i9xx_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = i9xx_crtc_compute_clock;
> >       else
> > -             dev_priv->display.crtc_compute_clock = i8xx_crtc_compute_clock;
> > +             dev_priv->dpll_funcs.crtc_compute_clock = i8xx_crtc_compute_clock;
> >  }
> >
> >  static bool i9xx_has_pps(struct drm_i915_private *dev_priv)
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 49b23ea46475..461ab0a0f088 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -393,6 +393,10 @@ struct drm_i915_fdi_link_train_funcs {
> >                              const struct intel_crtc_state *crtc_state);
> >  };
> >
> > +struct drm_i915_dpll_funcs {
>
> Nitpick, intel_dpll_funcs. Starting to spot the pattern? ;D
>
> Part of the point is that I think these may eventually move to their own
> headers, and I like to drive naming structs and functions after the file
> name. So, you'd find intel_dpll_* stuff in intel_dpll.[ch]. Or if they
> stay in i915_drv.h, at least that's the chrystal clear context.

I've got a follow up series to move some of them as an RFC locally,
so I'm quite happy to rename them all!

Dave.
