Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DF112E36A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 08:50:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F17D48996E;
	Thu,  2 Jan 2020 07:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C792D8996E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 07:50:14 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id u2so4875316wmc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Jan 2020 23:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fH922zvP0ZoaGachvTmUOWrY5vutlUhmfCccycCPvo4=;
 b=R2naduoyv2i54ZHFMpjpW0XtEQtZu4P31heKGKaD25C7CRWqyBlHf5JR+bapG1XR1N
 WSMjrXr8QzLPoHlkwwoplZlaxycca5Th9TvjFr+AC3Rrf9yrDZS6o16zhK7mJ7NQ1rVy
 kGXFWZrqGpatlRSWRUABVsDP6SmFpKdWYQPigAppIzyGFD4t1JSw2/5V2noaZ7ZCokO4
 heWy9f1ayCate/VoJWNkPte+GIdPMMWXktECrJEpg0zSD6psyk+T49Ps2fnD6MlRUM8q
 LmtEW9jFB3bBn8zi0W7C9YxKl5McYLKNtwgsdDXvPSsgdXyZUSTX2BbdpmBl/onmJ6tM
 HyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fH922zvP0ZoaGachvTmUOWrY5vutlUhmfCccycCPvo4=;
 b=fP5NFvzX+9psJNqlldHq4e08Ri4dzi2YNVmrTOpY0YChLDRW4tneumJS9q4o1ddVKo
 YdTm1ffBRfWON4p2NAV/F+SGKCxvfYSHL3J5M2v40TULn9RpjDqgNmx42z2NVUIS1Aju
 roH/rGQdNmijj19CVOyeftw4Y9Gx5AdpOyM7j6wXW8rmGzd9poZ3FNYpo1hRp7i/Dw9v
 ucivsA0K4PnWLAtUzKGLyR+ZIGFvDfEMsU+3FvhVriZP5OlBn44tE0E4eZABuuy04R7S
 FKRMKdwQJESI5RGxJTpgTL9OGIEBBx4WTWtdi6S8YuLpsO/60r5xyrNtDBL5KOQPaXjt
 y6WA==
X-Gm-Message-State: APjAAAWUR9J76jiEcsokl4YORdWGYybJxzInsJjXYwu1ZgjVsd4rmXGb
 vlVX1km4Co63H8tHuy5yqqUYrjNh+iSZEUi40Z4=
X-Google-Smtp-Source: APXvYqwaA0fPWeUO9Cz1QHIdoLyMvmf7IgUGXomeW5+naQ53KeZPGv3TL5BywaylWFuDzsAl6w3pGFrM/70UCzsyUao=
X-Received: by 2002:a1c:61c1:: with SMTP id
 v184mr12938781wmb.160.1577951413304; 
 Wed, 01 Jan 2020 23:50:13 -0800 (PST)
MIME-Version: 1.0
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-8-lucas.demarchi@intel.com> <87imlwlr89.fsf@intel.com>
In-Reply-To: <87imlwlr89.fsf@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Wed, 1 Jan 2020 23:50:00 -0800
Message-ID: <CAKi4VAL8misoJ8urKVVMomTCJ7zBRRQXCDqm-fZj_hGtYJicsQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/display: add phy,
 vbt and ddi indexes
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

On Tue, Dec 31, 2019 at 2:33 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> > Identify 3 possible cases in which the index numbers can be different
> > from the "port" and add them to the description-based ddi initialization
> > table.  This can be used in place of additional functions mapping from
> > on to the other.  Right now we already cover part of this by creating kind of
> > virtual phy numbering, but that comes with downsides:
> >
> > a) there's not really a "phy numbering" in the spec, this is purely a
> > software thing; hardware uses whatever they want thinking mapping from
> > one to the other arbitrarily is easy in software.
> >
> > b) currently the mapping occurs on "leaf" functions, making the decision
> > based on the platform.
> >
> > With this new table the approach will be: the port as defined by the
> > enum port is purely a driver convention and won't be used anymore to
> > define the register offset or register bits. For that we have the other
> > 3 indexes, identified as being possibly different from the current usage
> > of register bits: ddi, vbt and phy. The phy type is also added here,
> > meant to replace the checks for combo vs tc (although the helper
> > functions can remain so we may differentiate between, e.g. Dekel and MG
> > phys).
>
> I'm not sure how the vbt_idx is supposed to be used (because it's
> actually not used anywhere here). I would like to reduce the amount of
> VBT info spread around in the driver, so I'd really need to know more.

The index the VBT uses to refer to a DDI may not match the index used by
the display engine, that is why I'm adding it here.

Lucas De Marchi

>
> > While at it, also give names to the ports so they can be easily
> > identified.
> >
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 54 +++++++++----------
> >  drivers/gpu/drm/i915/display/intel_display.h  |  7 +++
> >  .../drm/i915/display/intel_display_types.h    |  5 ++
> >  3 files changed, 39 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index ad85cf75c815..219f180fa395 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16277,14 +16277,14 @@ static bool ddi_is_port_present(struct drm_i915_private *i915,
> >  static const struct intel_output tgl_output = {
> >       .dsi_init = icl_dsi_init,
> >       .ddi_ports = {
> > -             { .port = PORT_A },
> > -             { .port = PORT_B },
> > -             { .port = PORT_D },
> > -             { .port = PORT_E },
> > -             { .port = PORT_F },
> > -             { .port = PORT_G },
> > -             { .port = PORT_H },
> > -             { .port = PORT_I },
> > +             { .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> > +             { .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> > +             { .name = "DDI TC1", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x2, },
> > +             { .name = "DDI TC2", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x1, .vbt_idx = 0x3, },
> > +             { .name = "DDI TC3", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x2, .vbt_idx = 0x4, },
> > +             { .name = "DDI TC4", .port = PORT_G, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x6, .phy_idx = 0x3, .vbt_idx = 0x5, },
> > +             { .name = "DDI TC5", .port = PORT_H, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x7, .phy_idx = 0x4, .vbt_idx = 0x6, },
> > +             { .name = "DDI TC6", .port = PORT_I, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x8, .phy_idx = 0x5, .vbt_idx = 0x7, },
> >               { .port = PORT_NONE }
>
> Makes you wonder if this sort of info should be linked from the
> intel_device_info instead of adding new arrays. Not sure.

Yeah, but I think it may be too much info there. Otherwise we should
migrate the powerwell definitions, hpd, etc. Just
like for the powerwells, I think the table is only relevant for the
init function. Every other user should just go through the
port_info from the port it's working with instead of looping through
all of ports in the intel_device_info. By keeping the array
private here we at least prevent that I think.

Lucas De Marchi

>
> BR,
> Jani.
>
>
> >       }
> >  };
> > @@ -16293,12 +16293,12 @@ static const struct intel_output icl_output = {
> >       .dsi_init = icl_dsi_init,
> >       .is_port_present = icl_is_port_present,
> >       .ddi_ports = {
> > -             { .port = PORT_A },
> > -             { .port = PORT_B },
> > -             { .port = PORT_C },
> > -             { .port = PORT_D },
> > -             { .port = PORT_E },
> > -             { .port = PORT_F },
> > +             { .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> > +             { .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> > +             { .name = "DDI TC1", .port = PORT_C, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x2, .phy_idx = 0x0, .vbt_idx = 0x2, },
> > +             { .name = "DDI TC2", .port = PORT_D, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x3, .phy_idx = 0x1, .vbt_idx = 0x3, },
> > +             { .name = "DDI TC3", .port = PORT_E, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x4, .phy_idx = 0x2, .vbt_idx = 0x4, },
> > +             { .name = "DDI TC4", .port = PORT_F, .phy_type = PHY_TYPE_TC,    .ddi_idx = 0x5, .phy_idx = 0x3, .vbt_idx = 0x5, },
> >               { .port = PORT_NONE }
> >       }
> >  };
> > @@ -16306,10 +16306,10 @@ static const struct intel_output icl_output = {
> >  static const struct intel_output ehl_output = {
> >       .dsi_init = icl_dsi_init,
> >       .ddi_ports = {
> > -             { .port = PORT_A },
> > -             { .port = PORT_B },
> > -             { .port = PORT_C },
> > -             { .port = PORT_D },
> > +             { .name = "DDI A",   .port = PORT_A, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0, },
> > +             { .name = "DDI B",   .port = PORT_B, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1, },
> > +             { .name = "DDI C",   .port = PORT_C, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2, },
> > +             { .name = "DDI D",   .port = PORT_D, .phy_type = PHY_TYPE_COMBO, .ddi_idx = 0x3, .phy_idx = 0x0, .vbt_idx = 0x3, },
> >               { .port = PORT_NONE }
> >       }
> >  };
> > @@ -16317,9 +16317,9 @@ static const struct intel_output ehl_output = {
> >  static const struct intel_output gen9lp_output = {
> >       .dsi_init = vlv_dsi_init,
> >       .ddi_ports = {
> > -             { .port = PORT_A },
> > -             { .port = PORT_B },
> > -             { .port = PORT_C },
> > +             { .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> > +             { .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> > +             { .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
> >               { .port = PORT_NONE }
> >       },
> >  };
> > @@ -16327,12 +16327,12 @@ static const struct intel_output gen9lp_output = {
> >  static const struct intel_output ddi_output = {
> >       .is_port_present = ddi_is_port_present,
> >       .ddi_ports = {
> > -             { .port = PORT_A },
> > -             { .port = PORT_B },
> > -             { .port = PORT_C },
> > -             { .port = PORT_D },
> > -             { .port = PORT_E },
> > -             { .port = PORT_F },
> > +             { .name = "DDI A", .port = PORT_A, .ddi_idx = 0x0, .phy_idx = 0x0, .vbt_idx = 0x0 },
> > +             { .name = "DDI B", .port = PORT_B, .ddi_idx = 0x1, .phy_idx = 0x1, .vbt_idx = 0x1 },
> > +             { .name = "DDI C", .port = PORT_C, .ddi_idx = 0x2, .phy_idx = 0x2, .vbt_idx = 0x2 },
> > +             { .name = "DDI D", .port = PORT_D, .ddi_idx = 0x3, .phy_idx = 0x3, .vbt_idx = 0x3 },
> > +             { .name = "DDI E", .port = PORT_E, .ddi_idx = 0x4, .phy_idx = 0x4, .vbt_idx = 0x4 },
> > +             { .name = "DDI F", .port = PORT_F, .ddi_idx = 0x5, .phy_idx = 0x5, .vbt_idx = 0x5 },
> >               { .port = PORT_NONE }
> >       }
> >  };
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > index 05d68bd393dc..db19e5eee248 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -303,6 +303,13 @@ enum phy {
> >       I915_MAX_PHYS
> >  };
> >
> > +enum phy_type {
> > +     PHY_TYPE_NONE = 0,
> > +
> > +     PHY_TYPE_COMBO,
> > +     PHY_TYPE_TC,
> > +};
> > +
> >  #define phy_name(a) ((a) + 'A')
> >
> >  enum phy_fia {
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 4d2f4ee35812..23a885895803 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1377,7 +1377,12 @@ struct intel_dp_mst_encoder {
> >  };
> >
> >  struct intel_ddi_port_info {
> > +     const char *name;
> >       enum port port;
> > +     s8 phy_type;
> > +     u8 ddi_idx;
> > +     u8 phy_idx;
> > +     u8 vbt_idx;
> >  };
> >
> >  static inline enum dpio_channel
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
