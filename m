Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2742F12E345
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 08:24:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76A2F89CA0;
	Thu,  2 Jan 2020 07:24:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1184F89CA0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 07:24:10 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id m24so4795527wmc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 23:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LF763k/SNy9sNkNDnakH9JEdHYEePJ/bvbtyuz8fV44=;
 b=Aq2+1fHTcW7RR37wOMg2vFqSoB7APLfEejipxD5h/QhGuEZsz0d54+RJjf2lmn4NVe
 vE/hIjsQAvHsAtfNNc9F2KOfSajwrMIcT0sfcbsqzSQcxwvOq5DaHcyAi7jI64xYSA6+
 al1Du0WGsdji17DALRf0z+mYFCTrOYq4CKw8imiwdaN+3VcP1MaqxWLCYMvNmYr9I5b4
 7InBdSoDKN5cT5KVI/XqC0D9xXoTw0yMGRSJqRTGzNSNvsJ3GuAx8EM3tcAfGlAjbN47
 ayIV5SwW8UR3UYeuh7KbFMXdUFiI8r2es/yfU8MCGBxK/LUCKg6fEOFT1H/RMkijbv1D
 +t9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LF763k/SNy9sNkNDnakH9JEdHYEePJ/bvbtyuz8fV44=;
 b=sQqyZHTl+lylXifVGAlXs2TPLBfYtBAE/RT5827jNjHrL18AH1HdHdeL1r/yUkH76T
 dxfB5dF2klU5nXnHxhucfOEwtB+NFTjGdEeSKcQu8SZLC/IDeiIwMP/rXLSKxLvDHo7p
 kIP86e72ZaaVyGFaruWUYLwfm9X02o3L4olsF/P8s9SyUYay+WDje1i4X0SwXCzCABTg
 nvs9NxgMDVCO87Ui39b78xbcdfhUezryFTUYVhWLUgCG66KQPRoboiAjh8aWA0mVpnfG
 REcl201C1pWXH5C2e+k9lnGhbarVAaCSYN6q51GBhUig+vTgwfu4nyHShULEWHMytvG2
 mqPw==
X-Gm-Message-State: APjAAAUiI92wQSmph4swFfoWX9kWFG/eDkGL2f2d/YpZ6OuBfrol49zG
 NURzhsIXb6k0mP1P5jEb76Fu8VJYvDj2kxsFOow=
X-Google-Smtp-Source: APXvYqzPfAlSHQlB6hcrQ4XonwDN3aE4FdbGkhfj/xuxIYPykq9nfoIvvSSTknVRmCT51AClDvWGaeY+/thGI1hR0Y8=
X-Received: by 2002:a05:600c:294d:: with SMTP id
 n13mr12295323wmd.130.1577949848741; 
 Wed, 01 Jan 2020 23:24:08 -0800 (PST)
MIME-Version: 1.0
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-7-lucas.demarchi@intel.com> <87o8volrla.fsf@intel.com>
In-Reply-To: <87o8volrla.fsf@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 1 Jan 2020 23:23:55 -0800
Message-ID: <CAKi4VAJK+tdLYp+2fjWCVZ1_QVxc3qws99xkCCiPh_yU-T_YHg@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/display: description-based
 initialization for remaining ddi platforms
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

On Tue, Dec 31, 2019 at 2:25 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > Support remaining platforms under HAS_DDI() by providing a slightly more
> > complex is_port_present() hook. The downside is that now we call
> > I915_READ(SFUSE_STRAP) for each port being initialized, but that's only
> > on initialization: a few more mmio reads won't hurt.
> >
> > Alternatives would be to provide one hook per port, or to have a
> > "pre_init()" hook that takes care of the mmio read. However I think this
> > is simpler - we may need to adapt if future platforms don't follow the
> > same initialization "template".
>
> All of this really makes me wonder if we end up being *more* complicated
> overall by trying very hard to make this generic, when, in reality, it
> doesn't seem to be all that generic.

maybe, but it seems the ddi init part has settled and we are now mainly doing
if / else for additional platforms with just calls to intel_ddi_init()
and intel_dsi_init(),
so I think it was worth merging them together. I also think this
prevents additional
hacks from sprinkling here.

Lucas De Marchi

>
> As I said, two relatively low hanging improvements would be a) moving
> VBT specific hacks to intel_bios.c and b) adding port mask to
> intel_device_info. Those two alone would go a long way in simplifying
> intel_setup_outputs().
>
> >
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 72 +++++++++++++-------
> >  1 file changed, 46 insertions(+), 26 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 6b4d320ff92c..ad85cf75c815 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16246,6 +16246,34 @@ static bool icl_is_port_present(struct drm_i915_private *i915,
> >               intel_bios_is_port_present(i915, PORT_F);
> >  }
> >
> > +static bool ddi_is_port_present(struct drm_i915_private *i915,
> > +                             const struct intel_ddi_port_info *port_info)
> > +{
> > +     /* keep I915_READ() happy */
>
> Display could get rid of I915_READ and I915_WRITE after
> https://patchwork.freedesktop.org/series/70298/ ...
>
> BR,
> Jani.
>
> > +     struct drm_i915_private *dev_priv = i915;
> > +
> > +     if (port_info->port == PORT_A)
> > +             return I915_READ(DDI_BUF_CTL(PORT_A))
> > +                     & DDI_INIT_DISPLAY_DETECTED;
> > +
> > +     if (port_info->port == PORT_E)
> > +             return IS_GEN9_BC(dev_priv) &&
> > +                     intel_bios_is_port_present(i915, PORT_E);
> > +
> > +     switch (port_info->port) {
> > +     case PORT_B:
> > +             return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
> > +     case PORT_C:
> > +             return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
> > +     case PORT_D:
> > +             return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
> > +     case PORT_F:
> > +             return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIF_DETECTED;
> > +     default:
> > +             return false;
> > +     }
> > +}
> > +
> >  static const struct intel_output tgl_output = {
> >       .dsi_init = icl_dsi_init,
> >       .ddi_ports = {
> > @@ -16296,11 +16324,24 @@ static const struct intel_output gen9lp_output = {
> >       },
> >  };
> >
> > +static const struct intel_output ddi_output = {
> > +     .is_port_present = ddi_is_port_present,
> > +     .ddi_ports = {
> > +             { .port = PORT_A },
> > +             { .port = PORT_B },
> > +             { .port = PORT_C },
> > +             { .port = PORT_D },
> > +             { .port = PORT_E },
> > +             { .port = PORT_F },
> > +             { .port = PORT_NONE }
> > +     }
> > +};
> > +
> >  /*
> >   * Use a description-based approach for platforms that can be supported with a
> >   * static table
> >   */
> > -static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
> > +static void setup_ddi_outputs(struct drm_i915_private *i915)
> >  {
> >       const struct intel_output *output;
> >       const struct intel_ddi_port_info *port_info;
> > @@ -16313,6 +16354,8 @@ static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
> >               output = &icl_output;
> >       else if (IS_GEN9_LP(i915))
> >               output = &gen9lp_output;
> > +     else
> > +             output = &ddi_output;
> >
> >       for (port_info = output->ddi_ports;
> >            port_info->port != PORT_NONE; port_info++) {
> > @@ -16338,35 +16381,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
> >               return;
> >
> >       if (INTEL_GEN(dev_priv) >= 11 || IS_GEN9_LP(dev_priv)) {
> > -             setup_ddi_outputs_desc(dev_priv);
> > +             setup_ddi_outputs(dev_priv);
> >       } else if (HAS_DDI(dev_priv)) {
> > -             int found;
> > -
> >               if (intel_ddi_crt_present(dev_priv))
> >                       intel_crt_init(dev_priv);
> >
> > -             found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
> > -             if (found)
> > -                     intel_ddi_init(dev_priv, PORT_A);
> > -
> > -             /* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
> > -              * register */
> > -             found = I915_READ(SFUSE_STRAP);
> > -
> > -             if (found & SFUSE_STRAP_DDIB_DETECTED)
> > -                     intel_ddi_init(dev_priv, PORT_B);
> > -             if (found & SFUSE_STRAP_DDIC_DETECTED)
> > -                     intel_ddi_init(dev_priv, PORT_C);
> > -             if (found & SFUSE_STRAP_DDID_DETECTED)
> > -                     intel_ddi_init(dev_priv, PORT_D);
> > -             if (found & SFUSE_STRAP_DDIF_DETECTED)
> > -                     intel_ddi_init(dev_priv, PORT_F);
> > -             /*
> > -              * On SKL we don't have a way to detect DDI-E so we rely on VBT.
> > -              */
> > -             if (IS_GEN9_BC(dev_priv) &&
> > -                 intel_bios_is_port_present(dev_priv, PORT_E))
> > -                     intel_ddi_init(dev_priv, PORT_E);
> > +             setup_ddi_outputs(dev_priv);
> >       } else if (HAS_PCH_SPLIT(dev_priv)) {
> >               int found;
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
