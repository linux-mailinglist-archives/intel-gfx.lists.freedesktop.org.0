Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF327874BB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD9510E595;
	Thu, 24 Aug 2023 15:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 350A610E595
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 15:57:37 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id
 38308e7fff4ca-2bb8a12e819so106973571fa.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692892655; x=1693497455;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7SEvMRQPullg61dy/E3wdJzWAX3J5rADwVyA4iCVDCU=;
 b=k1tY2+6cBC5ymZht3nVFVJgTUObH+lI5lQM8QXMUVNhID3+V8x+N+3BQ/oDJPvp5pt
 UFGcCNN3VyuF8T7wlya0mN0fRxCzNBkz91eMPCSMHJRvUWx7r/pXEj2z/ybK+eGtYJjy
 BMR5H1QN0lbGPulQ/hZMFfVEwaePsszibaVws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692892655; x=1693497455;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=7SEvMRQPullg61dy/E3wdJzWAX3J5rADwVyA4iCVDCU=;
 b=IwjbryTyyOmZ8lypsqNCF9pMMXoAq/9VK37p9DiBBv1D5EvgNgzzHFjNBalzJGRcs5
 /ieqlXbkD2Xl5FmDgvRxpFwMpBcRBbTxIUEqRc0izXX3Td6H1E4E0ZZzKfW/a7WCygfn
 chO/+zpTxKx2XHhmdcNLbBsjqjFjJ443G9hgm3s7TK8vFqaYN2MqI7venSFNYAnoxYSq
 Pbou/PP29UrNu5vS0Iump0D5J3PLZrwVoU3ktToJ5AdjibqStNoOMOpGVDrgpJy5M6m9
 eLiA2B8U1Fp9ROmDAZzrshPFt/nkW9s/M2u43eM3PO6V+et3T/8xkCV3Ts/J+14eYsfK
 tmNA==
X-Gm-Message-State: AOJu0YzpkbfejrKZhDclGx61JpsDAp87tGtc7sPjWNi8R//1VvPTU5i8
 0p6NI7HfA0HTcmAyN8OW0foViwGqNW0MCUo/01qz3TxOwqRaiEAf
X-Google-Smtp-Source: AGHT+IGZNL3AOtWAEtl+vp8xCeV1v/QAiDMBLqlSG3q55R8sBykfMV/0Xa+gDoaTE1OHh55mZ//vKiY9EOizBqa7OvQ=
X-Received: by 2002:a2e:81d5:0:b0:2bc:e882:f717 with SMTP id
 s21-20020a2e81d5000000b002bce882f717mr1802370ljg.53.1692892655361; Thu, 24
 Aug 2023 08:57:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230818190501.241062-1-navaremanasi@chromium.org>
 <87fs484r4a.fsf@intel.com> <ZOdB0VXC_knLUmFI@intel.com>
In-Reply-To: <ZOdB0VXC_knLUmFI@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Thu, 24 Aug 2023 08:57:24 -0700
Message-ID: <CAE72mNky4e7pgM=3yjWdzBuhG5+3WxhH0ap16PnSXM=3gM4nSQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
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

Hi Ville and Jani,

Thanks for your review and feedback.

To rightly explain the use case here:
Case 1: We are at 120 Hz refresh rate so by default VRR registers are
programmed for 120Hz case. And say the VRR range is 30-120Hz we get
the full range here.
Case 2: When we switch to downclock mode of 60Hz and if a game is
being played we want the VRR parameters to be updated in a fastset
fashion to now reflect a new range of 30-60Hz.

These use cases would need both VRR and DRR to work together and seamlessly=
.
I tried updating VRR parameters in update_crtc() hook to do this and
that works, but that will be a different patch series.

But until then, this patch tries to make sure atleast DRR works
correctly and seamlessly switches between the refresh rates when VRR
is not enabled. This would be are
first step to atleast fix the fastset of DRR that was broken when VRR
fastset was enabled since thats when VRR parameters started to get
computed always by default.

@Ville Syrj=C3=A4l=C3=A4  @Jani Nikula  : Based on your feedback, may be I =
can
use the vrr_enabling and vrr_disabling() and only during these
conditions is when it can check the pipe mismatch for the VRR
parameters and in all other cases when it is fastset + seamless_m_n we
can ignore the VRR pipe mismatches?

Let me know if this looks like a good approach or what would be your
suggestion on excluding the pipe mismatches for VRR params in case of
DRRS and fastset mode?

Regards
Manasi

On Thu, Aug 24, 2023 at 4:41=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Thu, Aug 24, 2023 at 02:27:49PM +0300, Jani Nikula wrote:
> > On Fri, 18 Aug 2023, Manasi Navare <navaremanasi@chromium.org> wrote:
> > > Dual refresh rate (DRR) fastset seamlessly lets refresh rate
> > > throttle without needing a full modeset.
> > > However with the recent VRR fastset patches that got merged this
> > > logic was broken. This is broken because now with VRR fastset
> > > VRR parameters are calculated by default at the nominal refresh rate =
say 120Hz.
> > > Now when DRR throttle happens to switch refresh rate to 60Hz, crtc cl=
ock
> > > changes and this throws a mismatch in VRR parameters and fastset logi=
c
> > > for DRR gets thrown off and full modeset is indicated.
> > >
> > > This patch fixes this by ignoring the pipe mismatch for VRR parameter=
s
> > > in the case of DRR and when VRR is not enabled. With this fix, DRR
> > > will still throttle seamlessly as long as VRR is not enabled.
> > >
> > > This will still need a full modeset for both DRR and VRR operating to=
gether
> > > during the refresh rate throttle and then enabling VRR since now VRR
> > > parameters need to be recomputed with new crtc clock and written to H=
W.
> > >
> > > This DRR + VRR fastset in conjunction needs more work in the driver a=
nd
> > > will be fixed in later patches.
> > >
> > > v3:
> > > Compute new VRR params whenever there is fastset and its non DRRS.
> > > This will ensure it computes while switching to a fixed RR (Mitul)
> > >
> > > v2:
> > > Check for pipe config mismatch in crtc clock whenever VRR is enabled
> > >
> > > Fixes: 1af1d18825d3 ("drm/i915/vrr: Allow VRR to be toggled during fa=
stsets")
> >
> > How could this have broken fastsets, when this made it possible to do
> > vrr enable/disable fastsets to begin with? I was hoping to get a
> > regressing commit to make this easier to reason.
> >
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9154
> > > Cc: Drew Davenport <ddavenport@chromium.org>
> > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > Cc: Sean Paul <seanpaul@chromium.org>
> > > Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > > Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
> > >  1 file changed, 8 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 763ab569d8f3..2cf3b22adaf7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -5352,7 +5352,7 @@ intel_pipe_config_compare(const struct intel_cr=
tc_state *current_config,
> > >     if (IS_G4X(dev_priv) || DISPLAY_VER(dev_priv) >=3D 5)
> > >             PIPE_CONF_CHECK_I(pipe_bpp);
> > >
> > > -   if (!fastset || !pipe_config->seamless_m_n) {
> > > +   if (!fastset || !pipe_config->seamless_m_n || pipe_config->vrr.en=
able) {
> > >             PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_clock);
> > >             PIPE_CONF_CHECK_I(hw.adjusted_mode.crtc_clock);
> > >     }
> > > @@ -5387,11 +5387,13 @@ intel_pipe_config_compare(const struct intel_=
crtc_state *current_config,
> > >
> > >     if (!fastset)
> > >             PIPE_CONF_CHECK_BOOL(vrr.enable);
> > > -   PIPE_CONF_CHECK_I(vrr.vmin);
> > > -   PIPE_CONF_CHECK_I(vrr.vmax);
> > > -   PIPE_CONF_CHECK_I(vrr.flipline);
> > > -   PIPE_CONF_CHECK_I(vrr.pipeline_full);
> > > -   PIPE_CONF_CHECK_I(vrr.guardband);
> > > +   if ((fastset && !pipe_config->seamless_m_n) || pipe_config->vrr.e=
nable) {
> >
> > I just don't get the conditions here and above. For example, why
> > wouldn't we check the parameters e.g. on full modeset that disables vrr=
?
> >
> > I think we'll need a matrix of the features, which of them can be
> > combined together, which are mutually exclusive, and which are expected
> > to be fastsets.
>
> I wouldn't expect a panel to support both DRRS and VRR. Pick one and
> stick to it.
>
> I haven't thought through all the implications of changing all the VRR
> parameters live, so fastsets doing that are currently not possible. I
> have a branch for LRR (which is essentially manual VRR) but that was
> writtent before the VRR fastset support, so needs a full redesign now.
> Until then I don't think we can do anything.
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
