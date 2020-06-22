Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E29A2044C5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jun 2020 01:50:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B45D6E932;
	Mon, 22 Jun 2020 23:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CA776E932
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 23:50:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id k6so6119803wrn.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 16:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DAIoWrrFnkKWpv01EVB4ThDv/p1eN+gVoz1UJKIDz5Q=;
 b=Dl7JWThOupJKSisSkcdpLT6Ogl/APKoKnTN7G3h3gKq1G1tXo9urCQ01P/AFLROIxg
 IfFjyHtMH9YTAw7EgFC+MF3HBO706A9Nau7w39eHmFXNgDXDgR+nsSR1do9JqntfTK/f
 SKcHZb8HlouHdjPW/T6TRWFPe25CfNoPKIsYVM3LcvltyLwZIvFOyLy7zA7/OM2i1Wl/
 QgYpmbEM2McpbJyfxym2fVSad7S/jOkeFl1uFSmeLHcxRGQ9+TxsX3p1ehs5UbaQy4i7
 heIpoQqbb+5ZIf2EcbZl85o8OcdLVTcJ9IM5/QhA0AJJtDlfvw0CQs17zabpOS/LEbDZ
 ht3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DAIoWrrFnkKWpv01EVB4ThDv/p1eN+gVoz1UJKIDz5Q=;
 b=RhlLgE8UX6Bl30PF0hqH5YcK7vgsjeH0BKjQVVHMFhHeWu+MXdRajYJ29L7D4s2zk2
 4DP0SSOBfQWP6tz9k/iZQzgP+fU4CG3LAFkmbw/s115JeB378G1NxO5n+dD6oI2dSRRQ
 LUmhSlfpfbhH0CJLQK6DQ+Y2l2NJkBuaLqcAyavGIwGWUi5XWI8Ludhi/hSXYzyjfBA5
 6kFj8bt4FdstD7SBPPeJIxJCgZ0gkTYvUEy21R3ZaBu0uaTUkZ2mcZ2d2t+T5U+e3ivb
 dE0U0GbSOsfMZH/W16HxO61ijI1cV7SGcGMQXlu6/E9vl7bvejnHclptCKUCkQKHGK9B
 fSKQ==
X-Gm-Message-State: AOAM5338jpC3Z6y/2hu0AtT8NzK6JK1w8aBAnCgUaS/dqjXxlLam9GHs
 9u5d61tRBO8w2eQKdQrpiA1w8WwOYcLzfRJ78kU4HQ==
X-Google-Smtp-Source: ABdhPJylaf8Xv3U8tHRvRZ7qxQiAnZuHrb9T1uQi0zHssk0oTNaXlA2LyeFclZFoOWnNUmXQMIArqVV/zu+Tt/5psak=
X-Received: by 2002:adf:f751:: with SMTP id z17mr11916684wrp.114.1592869812939; 
 Mon, 22 Jun 2020 16:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-5-lucas.demarchi@intel.com> <87tv5glstg.fsf@intel.com>
 <CAKi4VAKOSLS-mKFgEsBHjw66ZoTXjWdZucgsK3Ogc+OkbPKZ3w@mail.gmail.com>
In-Reply-To: <CAKi4VAKOSLS-mKFgEsBHjw66ZoTXjWdZucgsK3Ogc+OkbPKZ3w@mail.gmail.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 22 Jun 2020 16:50:01 -0700
Message-ID: <CAKi4VAKnYNTisygz-8EW3Yw6xy5n1rpHjox=AqB077TUG-1jwQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915/display: start
 description-based ddi initialization
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 1, 2020 at 11:19 PM Lucas De Marchi
<lucas.de.marchi@gmail.com> wrote:
>
> On Tue, Dec 31, 2019 at 1:58 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >
> > On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > > For the latest platforms we can share the logic to initialize the the
> > > ddi, so start moving the most trivial ones to a new setup_outputs_desc()
> > > function that will be responsible for initialization according to a
> > > static const table.
> > >
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  | 96 +++++++++++++------
> > >  .../drm/i915/display/intel_display_types.h    |  4 +
> > >  2 files changed, 73 insertions(+), 27 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 04819b0bd494..b3fb1e03cb0b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -16221,6 +16221,72 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
> > >       intel_pps_unlock_regs_wa(dev_priv);
> > >  }
> > >
> > > +struct intel_output {
> > > +     /* Initialize DSI if present */
> > > +     void (*dsi_init)(struct drm_i915_private *i915);
> >
> > We'll need to be able to initialize DSI on multiple ports too. I've
> > already drafted a series to do so, maybe I've even sent it to the
> > list. Basically you'd pass the port to icl_dsi_init() too.
> >
> > I don't want that development to get any more complicated than it
> > already is.

Did you make progress on that series? Anywhere for me to look at?
I'd like to respin this series.

Lucas De Marchi

>
> Right now this is just working with what is there. I don't see a problem
> to update this series with the additional port argument, but let's
> keep the series
> independent from each other.
>
> Lucas De Marchi
>
> >
> > BR,
> > Jani.
> >
> >
> > > +     struct intel_ddi_port_info ddi_ports[];
> > > +};
> > > +
> > > +static const struct intel_output tgl_output = {
> > > +     .dsi_init = icl_dsi_init,
> > > +     .ddi_ports = {
> > > +             { .port = PORT_A },
> > > +             { .port = PORT_B },
> > > +             { .port = PORT_D },
> > > +             { .port = PORT_E },
> > > +             { .port = PORT_F },
> > > +             { .port = PORT_G },
> > > +             { .port = PORT_H },
> > > +             { .port = PORT_I },
> > > +             { .port = PORT_NONE }
> > > +     }
> > > +};
> > > +
> > > +static const struct intel_output ehl_output = {
> > > +     .dsi_init = icl_dsi_init,
> > > +     .ddi_ports = {
> > > +             { .port = PORT_A },
> > > +             { .port = PORT_B },
> > > +             { .port = PORT_C },
> > > +             { .port = PORT_D },
> > > +             { .port = PORT_NONE }
> > > +     }
> > > +};
> > > +
> > > +static const struct intel_output gen9lp_output = {
> > > +     .dsi_init = vlv_dsi_init,
> > > +     .ddi_ports = {
> > > +             { .port = PORT_A },
> > > +             { .port = PORT_B },
> > > +             { .port = PORT_C },
> > > +             { .port = PORT_NONE }
> > > +     },
> > > +};
> > > +
> > > +/*
> > > + * Use a description-based approach for platforms that can be supported with a
> > > + * static table
> > > + */
> > > +static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
> > > +{
> > > +     const struct intel_output *output;
> > > +     const struct intel_ddi_port_info *port_info;
> > > +
> > > +     if (INTEL_GEN(i915) >= 12)
> > > +             output = &tgl_output;
> > > +     else if (IS_ELKHARTLAKE(i915))
> > > +             output = &ehl_output;
> > > +     else if (IS_GEN9_LP(i915))
> > > +             output = &gen9lp_output;
> > > +
> > > +     for (port_info = output->ddi_ports;
> > > +          port_info->port != PORT_NONE; port_info++)
> > > +             intel_ddi_init(i915, port_info->port);
> > > +
> > > +     if (output->dsi_init)
> > > +             output->dsi_init(i915);
> > > +}
> > > +
> > >  static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > >  {
> > >       struct intel_encoder *encoder;
> > > @@ -16231,22 +16297,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > >       if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
> > >               return;
> > >
> > > -     if (INTEL_GEN(dev_priv) >= 12) {
> > > -             intel_ddi_init(dev_priv, PORT_A);
> > > -             intel_ddi_init(dev_priv, PORT_B);
> > > -             intel_ddi_init(dev_priv, PORT_D);
> > > -             intel_ddi_init(dev_priv, PORT_E);
> > > -             intel_ddi_init(dev_priv, PORT_F);
> > > -             intel_ddi_init(dev_priv, PORT_G);
> > > -             intel_ddi_init(dev_priv, PORT_H);
> > > -             intel_ddi_init(dev_priv, PORT_I);
> > > -             icl_dsi_init(dev_priv);
> > > -     } else if (IS_ELKHARTLAKE(dev_priv)) {
> > > -             intel_ddi_init(dev_priv, PORT_A);
> > > -             intel_ddi_init(dev_priv, PORT_B);
> > > -             intel_ddi_init(dev_priv, PORT_C);
> > > -             intel_ddi_init(dev_priv, PORT_D);
> > > -             icl_dsi_init(dev_priv);
> > > +     if (INTEL_GEN(dev_priv) >= 12 || IS_ELKHARTLAKE(dev_priv) ||
> > > +         IS_GEN9_LP(dev_priv)) {
> > > +             setup_ddi_outputs_desc(dev_priv);
> > >       } else if (IS_GEN(dev_priv, 11)) {
> > >               intel_ddi_init(dev_priv, PORT_A);
> > >               intel_ddi_init(dev_priv, PORT_B);
> > > @@ -16263,17 +16316,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> > >                       intel_ddi_init(dev_priv, PORT_F);
> > >
> > >               icl_dsi_init(dev_priv);
> > > -     } else if (IS_GEN9_LP(dev_priv)) {
> > > -             /*
> > > -              * FIXME: Broxton doesn't support port detection via the
> > > -              * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
> > > -              * detect the ports.
> > > -              */
> > > -             intel_ddi_init(dev_priv, PORT_A);
> > > -             intel_ddi_init(dev_priv, PORT_B);
> > > -             intel_ddi_init(dev_priv, PORT_C);
> > > -
> > > -             vlv_dsi_init(dev_priv);
> > >       } else if (HAS_DDI(dev_priv)) {
> > >               int found;
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index a3a067dacf84..4d2f4ee35812 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1376,6 +1376,10 @@ struct intel_dp_mst_encoder {
> > >       struct intel_connector *connector;
> > >  };
> > >
> > > +struct intel_ddi_port_info {
> > > +     enum port port;
> > > +};
> > > +
> > >  static inline enum dpio_channel
> > >  vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
> > >  {
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>
>
>
> --
> Lucas De Marchi



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
