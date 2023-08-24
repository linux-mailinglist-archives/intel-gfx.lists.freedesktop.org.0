Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E87A7874D4
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 18:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EAD10E592;
	Thu, 24 Aug 2023 16:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B0910E579
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 16:03:40 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id
 38308e7fff4ca-2bb8a12e819so107088731fa.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 09:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692893019; x=1693497819;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OfFwvt4yc/AGuPIIlQJzojHZWcdgqFjQYe3zp6XyUJQ=;
 b=OwVtaCZ5NEVLxmp9OdJJaIMiHiu6xIwyWQeedlBSkPUAu9j6NBAiW+Z7ePf+2pJvpL
 RRmIwhBhqBtplq/mWKA5FJ2k9Zeb8JacOziGuTAZoZxzb7XEw2yHdfU0vXPD6KdIJ4Sb
 EWxnCJWOQk05VJLRjPnXdAF2L2wr784C/P5I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692893019; x=1693497819;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=OfFwvt4yc/AGuPIIlQJzojHZWcdgqFjQYe3zp6XyUJQ=;
 b=DPBlKbdfggSqArn88MUVVwfXOipFexzcRC0mu8U68FY2ckorCrSA2OVgpUcZFhv9st
 q06lDxN5HuCaqwiJDOVIKHAEklvgkEoJ3lahsd8fVOxPNG4q/7ks7eN9wRMUnoQsd1pk
 ghPVEDnZfj457+8AIEdoNFZzOlfRft54XvvvCUuJV1oTf5V0f4t0WgMtHMlR1oDqxfY4
 w9SqShsBS4i2IHH+PowFBPGYgQ4ruMhsL9a4Fp+x3iRYYGf9MfpmVmgIfQe03Zy6x8xH
 4eO40RHDS4ISNT2Yx9vTEbzHYnQkfUpwgJEM93wa6EOucyuYi+pInuUoOBbB7QHWBB4k
 mZmA==
X-Gm-Message-State: AOJu0Yxz5GImHd5tmWShONETMWLzHKof/iGLiawY7yum0hMromKAZYAp
 4iuJWE8xZbHszGnVEwWJ/RFic0o7cNIaH1HH/CvKdw==
X-Google-Smtp-Source: AGHT+IG1ya5cuJ7kwAdkE7xPdsFNOid9zDUeE/3xgH9bWNeELt+IQnsSqWxtIjnk9jeUY/k3KQf60I8331QZ/e6LH0A=
X-Received: by 2002:a2e:b0c2:0:b0:2bc:d607:4d1f with SMTP id
 g2-20020a2eb0c2000000b002bcd6074d1fmr6557231ljl.44.1692893018841; Thu, 24 Aug
 2023 09:03:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230818190501.241062-1-navaremanasi@chromium.org>
 <87fs484r4a.fsf@intel.com>
In-Reply-To: <87fs484r4a.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 24 Aug 2023 09:03:27 -0700
Message-ID: <CAE72mNmEv502MCQ3yRzRKwj6WNgQYKKJU_gBpr0quFD0bwaJQQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/display: Dual refresh rate
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

Hi @Jani Nikula ,

Thanks for your feedback. Please find my comments below:

On Thu, Aug 24, 2023 at 4:27=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Fri, 18 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> > Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> > throttle without needing a full modeset.
> > However with the recent VRR fastset patches that got merged this
> > logic was broken. This is broken because now with VRR fastset
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
> >
> > v3:
> > Compute new VRR params whenever there is fastset and its non DRRS.
> > This will ensure it computes while switching to a fixed RR (Mitul)
> >
> > v2:
> > Check for pipe config mismatch in crtc clock whenever VRR is enabled
> >
> > Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fast=
sets")
>
> How could this have broken fastsets, when this made it possible to do
> vrr enable/disable fastsets to begin with? I was hoping to get a
> regressing commit to make this easier to reason.

Actually this patch enabled VRR fastsets and because of that it actually br=
oke
the logic of DRR/DRRS fastsets. To pinpoint the exact regression patch
is the one that started computing VRR parameters always irrespective
of VRR enable because that started causing pipe mismatches in the
working DRR fastset case.
That patch would be : "drm/i915/vrr: Relocate VRR enable/disable". I
will add this exact regression patch there as per your feedback.

Regards
Manasi
>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
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
>
> I just don't get the conditions here and above. For example, why
> wouldn't we check the parameters e.g. on full modeset that disables vrr?
>
> I think we'll need a matrix of the features, which of them can be
> combined together, which are mutually exclusive, and which are expected
> to be fastsets.
>
> BR,
> Jani.
>
>
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
