Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 193DE77EDB0
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 01:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79D4C10E03C;
	Wed, 16 Aug 2023 23:07:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8232910E03C
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 23:07:08 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id
 38308e7fff4ca-2b9ab1725bbso109091421fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 16:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692227226; x=1692832026;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gTn9RgMrCktML5l+lDPyZ4XCGAo/WfMMFjcR6IIXl/4=;
 b=Ny0WCZ4P08/ApaaWZGYseFQVVFIqNMqpdhuGR7Obol+saA9dkfEReDjbAvEcU6vMxv
 kc6PzgdJebD8/thlJatxPXyR5ggfhahWaQXBehDCFCkJEHreBTvKs9mMg2u/BLI8Qmcb
 88ctZBd+gaqIrZGFxGCUx5mO/8IEStA8lK53g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692227226; x=1692832026;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gTn9RgMrCktML5l+lDPyZ4XCGAo/WfMMFjcR6IIXl/4=;
 b=hBGZxRBCJjPhSRfaZaaYOGpb4qUQFfi4Mw6ECtE3A9epNQslSNEFERPwrlzynM8LkS
 vbLI45cPu3n9cOke5tlRv0o9Ri2vwhK7kLMB4fVcZ0mKnczLoNybZZ87wS8A7/faZthz
 bD6wKhjxpq1wwqxiG1+WJaId3221hqvZEl4QTwGs/v+husdRzEPHfcSOIp1oT48K/AEJ
 o9W+Ek3RfsSiH6SMBa+7gxtsnz0OdCMKtf1fFHMAODdKRws3M1CaKp1Xn6ihA0pNhEet
 v7JpeJHxDQdXuHO2vtOvBI91/ma7e8xRsWUAzcZDj/GunShYdng/wn9C97S56cyagYJs
 t60A==
X-Gm-Message-State: AOJu0Yxcxuha8svGqaikBJVycT8ddA7J9rqTPDtoRJe/7NRhSKAsdoC6
 OOXzDg8htxFBr99aEv/+HS4JF81uU9TPmEKr1RbSuA==
X-Google-Smtp-Source: AGHT+IF2VGyC2eKG0Faw0vjpUdRxOag7UdkNviqXXIAErk8C45GxZosXGDzNZQYYhx5SCQWqz3J6CAtDVE4n+yzFFPY=
X-Received: by 2002:a19:9142:0:b0:4f8:5885:61e with SMTP id
 y2-20020a199142000000b004f85885061emr2819614lfj.40.1692227226015; Wed, 16 Aug
 2023 16:07:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230814191609.3299378-1-navaremanasi@chromium.org>
 <87edk4b2vg.fsf@intel.com>
In-Reply-To: <87edk4b2vg.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 16 Aug 2023 16:06:55 -0700
Message-ID: <CAE72mNm=frDozRvfW7e6nTsuegq2robY0awDFV4s_tkwNz9ZSg@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Dual refresh rate
 fastset fixes with VRR fastset
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
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

Thanks for your feedback. Please see my comments below,

On Tue, Aug 15, 2023 at 11:02=E2=80=AFAM Jani Nikula
<jani.nikula@linux.intel.com> wrote:
>
> On Mon, 14 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> > Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> > throttle without needing a full modeset.
>
> Is this something different from DRRS, or Dynamic Refresh Rate
> Switching?
>
> > However with the recent VRR fastset patches that got merged this
> > logic was broken.
>
> Which commits exactly? "recent patches" is a bit vague.

This essentially was broken because of the commit
"drm/i915/vrr: Allow VRR to be toggled during fastsets" SHA:
1af1d18825d3a5d36b6a3e5049998c3f09321145

This series added the logic of pre computing VRR parameters which
regressed the existing fastset for Dual refresh rate
And this patch has been verified to fix it.

>
> Is there a gitlab issue for this? Is it [1] or is that different?
>
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/8851

This gitlab issue mentions the issue with broken fastset on DRR with
VRR fastset.

As a follow up, I have a few questions:

- What will happen if we try to program the VRR min/max/flipline registers
at the same time when we program the VRR En as part of the fastset?
- Is there any HW limitation to do this without a full modeset?

Regards
Manasi

>
> > This is broken because now with VRR fastset
> > VRR parameters are calculated by default at the nominal refresh rate sa=
y 120Hz.
> > Now when DRR throttle happens to switch refresh rate to 60Hz, crtc cloc=
k
> > changes and this throws a mismatch in VRR parameters and fastset logic
> > for DRR gets thrown off and full modeset is indicated.
> >
> > This patch fixes this by ignoring the pipe mismatch for VRR parameters
> > in the case of DRR and when VRR is not enabled. With this fix, DRR
> > will still throttle seamlessly as long as VRR is not enabled.
> >
> > This will still need a full modeset for both DRR and VRR operating toge=
ther
> > during the refresh rate throttle and then enabling VRR since now VRR
> > parameters need to be recomputed with new crtc clock and written to HW.
> >
> > This DRR + VRR fastset in conjunction needs more work in the driver and
> > will be fixed in later patches.
>
> I admit I have a hard time wrapping my head around the above explanation
> with the code changes. :/
>
> I'm hoping describing the "what broke" along with a regressing commit
> would help it.
>
> BR,
> Jani.
>
>
> >
> > v3:
> > Compute new VRR params whenever there is fastset and its non DRRS.
> > This will ensure it computes while switching to a fixed RR (Mitul)
> >
> > v2:
> > Check for pipe config mismatch in crtc clock whenever VRR is enabled
> >
> > Cc: Drew Davenport <ddavenport@chromium.org>
> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Cc: Sean Paul <seanpaul@chromium.org>
> > Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 763ab569d8f3..2cf3b22adaf7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
> >       if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
> >               PIPE_CONF_CHECK_I(pipe_bpp);
> >
> > -     if (!fastset || !pipe_config->seamless_m_n) {
> > +     if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.en=
able) {
> >               PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> >               PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> >       }
> > @@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_cr=
tc_state *current_config,
> >
> >       if (!fastset)
> >               PIPE_CONF_CHECK_BOOL(vrr.enable);
> > -     PIPE_CONF_CHECK_I(vrr.vmin);
> > -     PIPE_CONF_CHECK_I(vrr.vmax);
> > -     PIPE_CONF_CHECK_I(vrr.flipline);
> > -     PIPE_CONF_CHECK_I(vrr.pipeline_full);
> > -     PIPE_CONF_CHECK_I(vrr.guardband);
> > +     if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.e=
nable) {
> > +             PIPE_CONF_CHECK_I(vrr.vmin);
> > +             PIPE_CONF_CHECK_I(vrr.vmax);
> > +             PIPE_CONF_CHECK_I(vrr.flipline);
> > +             PIPE_CONF_CHECK_I(vrr.pipeline_full);
> > +             PIPE_CONF_CHECK_I(vrr.guardband);
> > +     }
> >
> >  #undef PIPE_CONF_CHECK_X
> >  #undef PIPE_CONF_CHECK_I
>
> --
> Jani Nikula, Intel Open Source Graphics Center
