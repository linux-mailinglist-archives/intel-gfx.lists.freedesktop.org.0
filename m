Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4D612E343
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 08:19:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAF1089AB5;
	Thu,  2 Jan 2020 07:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E9D389AB5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 07:19:31 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id p17so4852628wmb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 23:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9k2Iqv39CgscqCrOHFiuB3PB/a0qkJncEs9DV24tkAc=;
 b=Vb/XhP7vebQvl7dwRWzI4brNPdl3pMUe7Ji3zoMWF2Z7MmqsBccLCPvuqIoK1PrBG0
 hJ78M4gIiauRaJEBO3j9DWftsqxIDDUDwe2RKjWILGCPolqjxEmDO8pWZ6LIBKdLhHCb
 nxyxFZcM1S2z+Esa+rx3kbMKow0bYz+zd33BjXL858J2X+MHd3EXjHbFRZfdn6utxP2Q
 tneC+ubSMl40UYiFUclQtijz+uBkNBWSLwUT8GXfIH0qw1VLqMueMV0OzKV5NaNneA5o
 RLJVCPKyOsGQlj0VgALojBHXViOB9rLD7T1kX1YjTMcY+Yh8T0g1OPPWlur8iuGZVs1o
 dd5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9k2Iqv39CgscqCrOHFiuB3PB/a0qkJncEs9DV24tkAc=;
 b=uT7pPGM675hxIMEiQMzc9JBOKEcSBpap6mdRQtNFU7rOLltrSbN+ZK9sINyU3mW7H4
 wydP7JGjcnBxBcGej0klBqL0Exh7StLwrRzIrLkGoZFcD7Y/xKYi795qJ01FD9RvywT9
 ypK+AOjqU/EofkMBSJfM5oJepcQ8xh619pSN76dROIqnHvsJmoYJF8gYmZDLICiQCnue
 LAv4zf0Jtcpvq1LdTBQ1sJyCRDoNStS2E1bH+ybdFsMOlozhv7N6k/4hg/KFzZUvC2VL
 DsUaqKTo/J0f7wBLWnQr9xbf4qOGJPiIUV5NKM7mHTh9MW9xCQmTqVAkFXzW9QcL3Jqf
 gDzg==
X-Gm-Message-State: APjAAAUvLKa8VgvpYqpiVQEhZ6HVlImf19E3m9IJYFgBiUNQwNpX32E7
 sARrNEDKyO5FknYYIzf73BY3j+hAnlOsYrOrpxs=
X-Google-Smtp-Source: APXvYqzi9cjmmtQzWwesUXQ9bOPZgBwykY/ej+ejtQw3DygHPQUEPCHwEy3ZUvmufQfIgfZ2O2YF85weTFTaJI+6jFs=
X-Received: by 2002:a1c:1f51:: with SMTP id f78mr12369702wmf.60.1577949569767; 
 Wed, 01 Jan 2020 23:19:29 -0800 (PST)
MIME-Version: 1.0
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-5-lucas.demarchi@intel.com> <87tv5glstg.fsf@intel.com>
In-Reply-To: <87tv5glstg.fsf@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 1 Jan 2020 23:19:17 -0800
Message-ID: <CAKi4VAKOSLS-mKFgEsBHjw66ZoTXjWdZucgsK3Ogc+OkbPKZ3w@mail.gmail.com>
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

On Tue, Dec 31, 2019 at 1:58 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > For the latest platforms we can share the logic to initialize the the
> > ddi, so start moving the most trivial ones to a new setup_outputs_desc()
> > function that will be responsible for initialization according to a
> > static const table.
> >
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 96 +++++++++++++------
> >  .../drm/i915/display/intel_display_types.h    |  4 +
> >  2 files changed, 73 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 04819b0bd494..b3fb1e03cb0b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16221,6 +16221,72 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
> >       intel_pps_unlock_regs_wa(dev_priv);
> >  }
> >
> > +struct intel_output {
> > +     /* Initialize DSI if present */
> > +     void (*dsi_init)(struct drm_i915_private *i915);
>
> We'll need to be able to initialize DSI on multiple ports too. I've
> already drafted a series to do so, maybe I've even sent it to the
> list. Basically you'd pass the port to icl_dsi_init() too.
>
> I don't want that development to get any more complicated than it
> already is.

Right now this is just working with what is there. I don't see a problem
to update this series with the additional port argument, but let's
keep the series
independent from each other.

Lucas De Marchi

>
> BR,
> Jani.
>
>
> > +     struct intel_ddi_port_info ddi_ports[];
> > +};
> > +
> > +static const struct intel_output tgl_output = {
> > +     .dsi_init = icl_dsi_init,
> > +     .ddi_ports = {
> > +             { .port = PORT_A },
> > +             { .port = PORT_B },
> > +             { .port = PORT_D },
> > +             { .port = PORT_E },
> > +             { .port = PORT_F },
> > +             { .port = PORT_G },
> > +             { .port = PORT_H },
> > +             { .port = PORT_I },
> > +             { .port = PORT_NONE }
> > +     }
> > +};
> > +
> > +static const struct intel_output ehl_output = {
> > +     .dsi_init = icl_dsi_init,
> > +     .ddi_ports = {
> > +             { .port = PORT_A },
> > +             { .port = PORT_B },
> > +             { .port = PORT_C },
> > +             { .port = PORT_D },
> > +             { .port = PORT_NONE }
> > +     }
> > +};
> > +
> > +static const struct intel_output gen9lp_output = {
> > +     .dsi_init = vlv_dsi_init,
> > +     .ddi_ports = {
> > +             { .port = PORT_A },
> > +             { .port = PORT_B },
> > +             { .port = PORT_C },
> > +             { .port = PORT_NONE }
> > +     },
> > +};
> > +
> > +/*
> > + * Use a description-based approach for platforms that can be supported with a
> > + * static table
> > + */
> > +static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
> > +{
> > +     const struct intel_output *output;
> > +     const struct intel_ddi_port_info *port_info;
> > +
> > +     if (INTEL_GEN(i915) >= 12)
> > +             output = &tgl_output;
> > +     else if (IS_ELKHARTLAKE(i915))
> > +             output = &ehl_output;
> > +     else if (IS_GEN9_LP(i915))
> > +             output = &gen9lp_output;
> > +
> > +     for (port_info = output->ddi_ports;
> > +          port_info->port != PORT_NONE; port_info++)
> > +             intel_ddi_init(i915, port_info->port);
> > +
> > +     if (output->dsi_init)
> > +             output->dsi_init(i915);
> > +}
> > +
> >  static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >  {
> >       struct intel_encoder *encoder;
> > @@ -16231,22 +16297,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >       if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
> >               return;
> >
> > -     if (INTEL_GEN(dev_priv) >= 12) {
> > -             intel_ddi_init(dev_priv, PORT_A);
> > -             intel_ddi_init(dev_priv, PORT_B);
> > -             intel_ddi_init(dev_priv, PORT_D);
> > -             intel_ddi_init(dev_priv, PORT_E);
> > -             intel_ddi_init(dev_priv, PORT_F);
> > -             intel_ddi_init(dev_priv, PORT_G);
> > -             intel_ddi_init(dev_priv, PORT_H);
> > -             intel_ddi_init(dev_priv, PORT_I);
> > -             icl_dsi_init(dev_priv);
> > -     } else if (IS_ELKHARTLAKE(dev_priv)) {
> > -             intel_ddi_init(dev_priv, PORT_A);
> > -             intel_ddi_init(dev_priv, PORT_B);
> > -             intel_ddi_init(dev_priv, PORT_C);
> > -             intel_ddi_init(dev_priv, PORT_D);
> > -             icl_dsi_init(dev_priv);
> > +     if (INTEL_GEN(dev_priv) >= 12 || IS_ELKHARTLAKE(dev_priv) ||
> > +         IS_GEN9_LP(dev_priv)) {
> > +             setup_ddi_outputs_desc(dev_priv);
> >       } else if (IS_GEN(dev_priv, 11)) {
> >               intel_ddi_init(dev_priv, PORT_A);
> >               intel_ddi_init(dev_priv, PORT_B);
> > @@ -16263,17 +16316,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >                       intel_ddi_init(dev_priv, PORT_F);
> >
> >               icl_dsi_init(dev_priv);
> > -     } else if (IS_GEN9_LP(dev_priv)) {
> > -             /*
> > -              * FIXME: Broxton doesn't support port detection via the
> > -              * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
> > -              * detect the ports.
> > -              */
> > -             intel_ddi_init(dev_priv, PORT_A);
> > -             intel_ddi_init(dev_priv, PORT_B);
> > -             intel_ddi_init(dev_priv, PORT_C);
> > -
> > -             vlv_dsi_init(dev_priv);
> >       } else if (HAS_DDI(dev_priv)) {
> >               int found;
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index a3a067dacf84..4d2f4ee35812 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1376,6 +1376,10 @@ struct intel_dp_mst_encoder {
> >       struct intel_connector *connector;
> >  };
> >
> > +struct intel_ddi_port_info {
> > +     enum port port;
> > +};
> > +
> >  static inline enum dpio_channel
> >  vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
> >  {
>
> --
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
