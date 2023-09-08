Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC017992D3
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 01:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B619010E0C0;
	Fri,  8 Sep 2023 23:29:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66BF10E0C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 23:29:36 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id
 2adb3069b0e04-501bd164fbfso4137209e87.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Sep 2023 16:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1694215775; x=1694820575;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i+wps4AbJ87G0IAACx6dygwnrohtsjy+GtgLKKiiFKc=;
 b=OSFoje0xT7jVeZ/PGVvhJXr45dR8/v4vKtbrw4Lz/yziEXAFHDznm+bOibrgW8/Ij/
 nwDvu60l6MnX2LuS/I/h/zMC8vg1JcTlm+x7stMbHqaGD6LoTtybOj6lnHuuExTb5EVU
 mgumR7FvdesBs/AtRy5s65yQoIw1MHClP+Xck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694215775; x=1694820575;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=i+wps4AbJ87G0IAACx6dygwnrohtsjy+GtgLKKiiFKc=;
 b=k2Z6anWvt24FnMabJyHmxavql9Uw9l0SSZwU+1SvR5UWaxqqKWPSHMTlubZGjwdIAF
 JTauPiWCRBzReoG86E5yqq9xWESHbl+VpJQCwaDhn/L+F92Mvx3y5bP5PI/LRDsw1QHg
 f8Hvv/hZUIqRwI34Q9EfQuWvpT0aR4iLnQ73ugJbpzuLIIcOqdLnOUUJh9KKeQU45Bdt
 pOkHa+yEPnQQ3gsmspCjNgRyoM+6m8iZdzQ+23xTtWDhKvH/zFHrQT44IW72R0QWJipQ
 AL9OVC57nWHIHMiOBhqDCCfPNoF9UsF7EroMIjZmtaIACBHIGgzx6WqVLdJR/eT/wm1r
 hQmw==
X-Gm-Message-State: AOJu0YzETBYOHTUj8fxVLIpFkvFqZ7a1AqeEsjw44MNcUtcdcm4We5nm
 NAYTtCXuXpgRrMHFSsT++l+Y+C6mutpMJ0xXxodg3jMMLFTUYaME
X-Google-Smtp-Source: AGHT+IH9NxxSXP9LDiID5Qgq4n2QiaNO2W0TNcBpC1Frcs8vdkIgqM6Ne0dL/pNNBamiGggHw0y1oY5EMBkOrXVO9Wo=
X-Received: by 2002:a05:6512:3e08:b0:500:99e8:573e with SMTP id
 i8-20020a0565123e0800b0050099e8573emr4166579lfv.7.1694215774908; Fri, 08 Sep
 2023 16:29:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-10-ville.syrjala@linux.intel.com>
 <CAE72mN=gAjB=h3BDzkMZqyh-OktWx3NwH38sn0oFEs_xdOhpXw@mail.gmail.com>
 <ZPq27ialoWt5Uh4K@intel.com>
In-Reply-To: <ZPq27ialoWt5Uh4K@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Fri, 8 Sep 2023 16:29:23 -0700
Message-ID: <CAE72mNm4odV36zzNNEMg_aQRD-vdQcMeGDT-o6jqJ-Q-A4+sZA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless
 M/N changes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 7, 2023 at 10:54=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Thu, Sep 07, 2023 at 11:49:10AM -0700, Manasi Navare wrote:
> > Hi Ville,
> >
> > Since we are always disabling when update_m_n, that means if in gaming
> > mode if VRR enable is requested by userspace, it cannot
> > be enabled if update_m_n or dual refresh mode is enabled and say we
> > have downclocked from 120Hz - 60Hz?
>
> No, it just means if you have VRR already enabled and want to do
> a M/N change VRR gets temporarily disabled and re-enabled during
> the commit.

Okay sounds good.

Reviewed-by: Manasi Navare <navaremanasi@chromium.org>

Manasi

>
> >
> > Doesnt this contradict the purpose of this series to try and do VRR
> > update params in fastset because we want VRR range to be
> > correctly reflected when in dual refresh mode when we downclock from
> > 120-60hz in gaming use case with VRR?
> >
> > Am I missing something here?
> >
> > Regards
> > Manasi
> >
> > On Fri, Sep 1, 2023 at 6:05=E2=80=AFAM Ville Syrjala
> > <ville.syrjala@linux.intel.com> wrote:
> > >
> > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >
> > > Make life less confusing by making sure VRR is disabled whenever
> > > we do any drastic changes to the display timings, such as seamless
> > > M/N changes.
> > >
> > > Cc: Manasi Navare <navaremanasi@chromium.org>
> > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index c20eaf0e7a91..cbbee303cd00 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -916,13 +916,15 @@ static bool planes_disabling(const struct intel=
_crtc_state *old_crtc_state,
> > >  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_sta=
te,
> > >                          const struct intel_crtc_state *new_crtc_stat=
e)
> > >  {
> > > -       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state=
);
> > > +       return is_enabling(vrr.enable, old_crtc_state, new_crtc_state=
) ||
> > > +               (new_crtc_state->vrr.enable && new_crtc_state->update=
_m_n);
> > >  }
> > >
> > >  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_st=
ate,
> > >                           const struct intel_crtc_state *new_crtc_sta=
te)
> > >  {
> > > -       return is_disabling(vrr.enable, old_crtc_state, new_crtc_stat=
e);
> > > +       return is_disabling(vrr.enable, old_crtc_state, new_crtc_stat=
e) ||
> > > +               (old_crtc_state->vrr.enable && new_crtc_state->update=
_m_n);
> > >  }
> > >
> > >  #undef is_disabling
> > > --
> > > 2.41.0
> > >
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
