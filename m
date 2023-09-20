Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B39997A8DE8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:41:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6276D10E559;
	Wed, 20 Sep 2023 20:41:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8332910E556
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:41:03 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-40479f8325fso2573265e9.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 13:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1695242462; x=1695847262;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ugeEfyfYAjc7crCy2psgP4HZ+9j1EQ2rwrQhNQPGqI0=;
 b=CdT7kj5amCuDtgxl9xD87WXVwerH/lqq2oZUh4JtPRGHeL0Hhjrn4cfgkDPLDFjdj5
 +VpFw/OARNLBmd6otktP8DpZJ3j3AnypTox1cGb3HSTqqkWKl+JdmX06ltzYBpNBaSM0
 SIfloAMdbzYRpEk3KvnsD8bQd9nRstow9crHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695242462; x=1695847262;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ugeEfyfYAjc7crCy2psgP4HZ+9j1EQ2rwrQhNQPGqI0=;
 b=ftcXDxZumTqUuYoSORlHNTWNZ3RYUBWopexPNB+ch1o9ajz656O3RyHDgRtQpGyCms
 WeQ4QwfjDxpZsxfHdeCFu0qoQJLxuDpdyQi8ilC/fcX0cO8w8c99xpwy8N2+IsSbtokf
 2GJeCChEgdcwa5wzMvKf1zdcrW4QXh1WXJdssHxcQhRn5C8fquXc9huizTTHQGWQ1GJA
 1AMlWTCkH9qEGyfuHc7q1+Jeh+rlF2iyI5TqGQJJ+me3EUTK2CHBU213ZjFpNw8JwGO5
 0o+nSr+oj0hZkYzFk9tC/QkQgUO6XrGxstw1ZyxnLokwq8h+Fvm5jVMpU2AKY3lsf8bX
 GHUQ==
X-Gm-Message-State: AOJu0YyrR8FNdoKQUzwmkwhID16AKutzDt2chhQE6if/V7h2COGPVu28
 n5Wd5fXXTfEjN0U2fYDuooTInt90w5586Nj2tGAgc7UvNg7GMU0o
X-Google-Smtp-Source: AGHT+IE6i1jKrYZ+rFhkLdxiN5T5fyDN8v61MCmMT7iArFlPaNmZO8TUD2pULMZEYL6xZNGL9lnBSNhDsHFWtUvHe/E=
X-Received: by 2002:a5d:4084:0:b0:321:5969:d465 with SMTP id
 o4-20020a5d4084000000b003215969d465mr3364309wrp.65.1695242461325; Wed, 20 Sep
 2023 13:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230901130440.2085-13-ville.syrjala@linux.intel.com>
 <20230915103800.14218-1-ville.syrjala@linux.intel.com>
 <CAE72mNmXMUitTmSeMO7d=Q3rSPhXXuvT45yLr3tkVfTP8v+6dw@mail.gmail.com>
 <CAE72mNkYk+aR+jJi_iXaw_YS1p063eORu+DaXKN08yGzyAJ+yQ@mail.gmail.com>
 <ZQtKpdBnQw_W-yrv@intel.com>
In-Reply-To: <ZQtKpdBnQw_W-yrv@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Wed, 20 Sep 2023 13:40:50 -0700
Message-ID: <CAE72mNm0xZq+GZLHj4aqAVg87b4NinZ4GHZ=U59_zO_j98LsqA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 12/12] drm/i915: Implement transcoder LRR
 for TGL+
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

On Wed, Sep 20, 2023 at 12:40=E2=80=AFPM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Wed, Sep 20, 2023 at 11:47:05AM -0700, Manasi Navare wrote:
> > Hi Ville,
> >
> > Quick question here on the use case and the trigger for the LRR case
> > which is within VRR range.
> > Could this perhaps be used if we had a virtual mode say 40Hz that now
> > falls in the VRR range (30 -120Hz) that is
> > exposed through the connector mode list and then if we do a modest to
> > 40Hz that would make update_lrr =3D true within VRR and
> > hand adjust the vtotal to that exact value?
> > I am looking at adding this virtual mode to DRM soon, wondering if
> > this would be how the kernel would actual set the timings for it.
>
> Userspace can supply any mode it wants. So just take whatever higher
> refresh rate mode you have and increase vtotal until you reach
> the desired lower vrefresh rate and feed that to the kernel.

Okay perfect that makes sense.
So effectively if i create specific modes lower than the highest
refresh rate, then
userspace can request a modeset to any of the lower refresh rate virtual mo=
de
and the kernel would stretch out the vtotal manually corresponding to
the vtotal of
that virtual mode timing and modeset to that seamlessly in a fastset fashio=
n.

Is this correct?

Regards
Manasi

>
> >
> > Regards
> > Manasi
> >
> > On Mon, Sep 18, 2023 at 4:16=E2=80=AFPM Manasi Navare <navaremanasi@chr=
omium.org> wrote:
> > >
> > > Thanks Ville for the respin, the changes look good now.
> > >
> > > Reviewed-by: Manasi Navare <navaremanasi@chromium.org>
> > >
> > > Manasi
> > >
> > >
> > > On Fri, Sep 15, 2023 at 3:38=E2=80=AFAM Ville Syrjala
> > > <ville.syrjala@linux.intel.com> wrote:
> > > >
> > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Implement low refresh rate (LRR) where we change the vblank
> > > > length by hand as requested, but otherwise keep the timing
> > > > generator running in non-VRR mode (ie. fixed refresh rate).
> > > >
> > > > The panel itself must support VRR for this to work, and
> > > > only TGL+ has the double buffred TRANS_VTOTAL.VTOTAL that
> > > > we need to make the switch properly. The double buffer
> > > > latching happens at the start of transcoders undelayed
> > > > vblank. The other thing that we change is
> > > > TRANS_VBLANK.VBLANK_END but the hardware entirely ignores
> > > > that in DP mode. But I decided to keep writing it anyway
> > > > just to avoid more special cases in readout/state check.
> > > >
> > > > v2: Document that TRANS_VBLANK.VBLANK_END is ignored by
> > > >     the hardware
> > > > v3: Reconcile with VRR fastset
> > > >     Adjust update_lrr flag behaviour
> > > >     Make sure timings stay within VRR range
> > > > v4: Fix up update_m_n vs. update_lrr rebase fail (Manasi)
> > > >     Drop DOUBLE_BUFFER_VACTIVE define as it's not needed (Manasi)
> > > >
> > > > TODO: Hook LRR into the automatic DRRS downclocking stuff?
> > > >
> > > > Cc: Manasi Navare <navaremanasi@chromium.org>
> > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_atomic.c   |  1 +
> > > >  drivers/gpu/drm/i915/display/intel_crtc.c     |  9 +--
> > > >  drivers/gpu/drm/i915/display/intel_display.c  | 60 +++++++++++++++=
++--
> > > >  .../drm/i915/display/intel_display_device.h   |  1 +
> > > >  .../drm/i915/display/intel_display_types.h    |  3 +-
> > > >  drivers/gpu/drm/i915/display/intel_vrr.c      |  7 ++-
> > > >  6 files changed, 70 insertions(+), 11 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/=
gpu/drm/i915/display/intel_atomic.c
> > > > index aaddd8c0cfa0..5d18145da279 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > > @@ -260,6 +260,7 @@ intel_crtc_duplicate_state(struct drm_crtc *crt=
c)
> > > >
> > > >         crtc_state->update_pipe =3D false;
> > > >         crtc_state->update_m_n =3D false;
> > > > +       crtc_state->update_lrr =3D false;
> > > >         crtc_state->disable_lp_wm =3D false;
> > > >         crtc_state->disable_cxsr =3D false;
> > > >         crtc_state->update_wm_pre =3D false;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gp=
u/drm/i915/display/intel_crtc.c
> > > > index a39e31c1ca85..22e85fe7e8aa 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > @@ -495,7 +495,7 @@ static void intel_crtc_vblank_evade_scanlines(s=
truct intel_atomic_state *state,
> > > >         if (crtc->mode_flags & I915_MODE_FLAG_VRR) {
> > > >                 /* timing changes should happen with VRR disabled *=
/
> > > >                 drm_WARN_ON(state->base.dev, intel_crtc_needs_modes=
et(new_crtc_state) ||
> > > > -                           new_crtc_state->update_m_n);
> > > > +                           new_crtc_state->update_m_n || new_crtc_=
state->update_lrr);
> > > >
> > > >                 if (intel_vrr_is_push_sent(crtc_state))
> > > >                         *vblank_start =3D intel_vrr_vmin_vblank_sta=
rt(crtc_state);
> > > > @@ -511,10 +511,11 @@ static void intel_crtc_vblank_evade_scanlines=
(struct intel_atomic_state *state,
> > > >         *max =3D *vblank_start - 1;
> > > >
> > > >         /*
> > > > -        * M/N is double buffered on the transcoder's undelayed vbl=
ank,
> > > > -        * so with seamless M/N we must evade both vblanks.
> > > > +        * M/N and TRANS_VTOTAL are double buffered on the transcod=
er's
> > > > +        * undelayed vblank, so with seamless M/N and LRR we must e=
vade
> > > > +        * both vblanks.
> > > >          */
> > > > -       if (new_crtc_state->update_m_n)
> > > > +       if (new_crtc_state->update_m_n || new_crtc_state->update_lr=
r)
> > > >                 *min -=3D adjusted_mode->crtc_vblank_start - adjust=
ed_mode->crtc_vdisplay;
> > > >  }
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index f0bb5c70ebfc..988558ccf794 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -928,7 +928,7 @@ static bool vrr_enabling(const struct intel_crt=
c_state *old_crtc_state,
> > > >  {
> > > >         return is_enabling(vrr.enable, old_crtc_state, new_crtc_sta=
te) ||
> > > >                 (new_crtc_state->vrr.enable &&
> > > > -                (new_crtc_state->update_m_n ||
> > > > +                (new_crtc_state->update_m_n || new_crtc_state->upd=
ate_lrr ||
> > > >                   vrr_params_changed(old_crtc_state, new_crtc_state=
)));
> > > >  }
> > > >
> > > > @@ -937,7 +937,7 @@ static bool vrr_disabling(const struct intel_cr=
tc_state *old_crtc_state,
> > > >  {
> > > >         return is_disabling(vrr.enable, old_crtc_state, new_crtc_st=
ate) ||
> > > >                 (old_crtc_state->vrr.enable &&
> > > > -                (new_crtc_state->update_m_n ||
> > > > +                (new_crtc_state->update_m_n || new_crtc_state->upd=
ate_lrr ||
> > > >                   vrr_params_changed(old_crtc_state, new_crtc_state=
)));
> > > >  }
> > > >
> > > > @@ -2586,6 +2586,37 @@ static void intel_set_transcoder_timings(con=
st struct intel_crtc_state *crtc_sta
> > > >                                VTOTAL(crtc_vtotal - 1));
> > > >  }
> > > >
> > > > +static void intel_set_transcoder_timings_lrr(const struct intel_cr=
tc_state *crtc_state)
> > > > +{
> > > > +       struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.=
crtc);
> > > > +       struct drm_i915_private *dev_priv =3D to_i915(crtc->base.de=
v);
> > > > +       enum transcoder cpu_transcoder =3D crtc_state->cpu_transcod=
er;
> > > > +       const struct drm_display_mode *adjusted_mode =3D &crtc_stat=
e->hw.adjusted_mode;
> > > > +       u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vbl=
ank_end;
> > > > +
> > > > +       crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > > +       crtc_vtotal =3D adjusted_mode->crtc_vtotal;
> > > > +       crtc_vblank_start =3D adjusted_mode->crtc_vblank_start;
> > > > +       crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > > +
> > > > +       drm_WARN_ON(&dev_priv->drm, adjusted_mode->flags & DRM_MODE=
_FLAG_INTERLACE);
> > > > +
> > > > +       /*
> > > > +        * The hardware actually ignores TRANS_VBLANK.VBLANK_END in=
 DP mode.
> > > > +        * But let's write it anyway to keep the state checker happ=
y.
> > > > +        */
> > > > +       intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> > > > +                      VBLANK_START(crtc_vblank_start - 1) |
> > > > +                      VBLANK_END(crtc_vblank_end - 1));
> > > > +       /*
> > > > +        * The double buffer latch point for TRANS_VTOTAL
> > > > +        * is the transcoder's undelayed vblank.
> > > > +        */
> > > > +       intel_de_write(dev_priv, TRANS_VTOTAL(cpu_transcoder),
> > > > +                      VACTIVE(crtc_vdisplay - 1) |
> > > > +                      VTOTAL(crtc_vtotal - 1));
> > > > +}
> > > > +
> > > >  static void intel_set_pipe_src_size(const struct intel_crtc_state =
*crtc_state)
> > > >  {
> > > >         struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.=
crtc);
> > > > @@ -5082,11 +5113,13 @@ intel_pipe_config_compare(const struct inte=
l_crtc_state *current_config,
> > > >         PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
> > > >         PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
> > > >         PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
> > > > -       PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> > > >         PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
> > > > -       PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> > > >         PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
> > > >         PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
> > > > +       if (!fastset || !pipe_config->update_lrr) { \
> > > > +               PIPE_CONF_CHECK_I(name.crtc_vtotal); \
> > > > +               PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
> > > > +       } \
> > > >  } while (0)
> > > >
> > > >  #define PIPE_CONF_CHECK_RECT(name) do { \
> > > > @@ -5420,6 +5453,7 @@ int intel_modeset_all_pipes(struct intel_atom=
ic_state *state,
> > > >                 crtc_state->uapi.mode_changed =3D true;
> > > >                 crtc_state->update_pipe =3D false;
> > > >                 crtc_state->update_m_n =3D false;
> > > > +               crtc_state->update_lrr =3D false;
> > > >
> > > >                 ret =3D drm_atomic_add_affected_connectors(&state->=
base,
> > > >                                                          &crtc->bas=
e);
> > > > @@ -5537,6 +5571,10 @@ static void intel_crtc_check_fastset(const s=
truct intel_crtc_state *old_crtc_sta
> > > >  {
> > > >         struct drm_i915_private *i915 =3D to_i915(old_crtc_state->u=
api.crtc->dev);
> > > >
> > > > +       /* only allow LRR when the timings stay within the VRR rang=
e */
> > > > +       if (old_crtc_state->vrr.in_range !=3D new_crtc_state->vrr.i=
n_range)
> > > > +               new_crtc_state->update_lrr =3D false;
> > > > +
> > > >         if (!intel_pipe_config_compare(old_crtc_state, new_crtc_sta=
te, true))
> > > >                 drm_dbg_kms(&i915->drm, "fastset requirement not me=
t, forcing full modeset\n");
> > > >         else
> > > > @@ -5547,6 +5585,11 @@ static void intel_crtc_check_fastset(const s=
truct intel_crtc_state *old_crtc_sta
> > > >                                    &new_crtc_state->dp_m_n))
> > > >                 new_crtc_state->update_m_n =3D false;
> > > >
> > > > +       if (intel_crtc_needs_modeset(new_crtc_state) ||
> > > > +           (old_crtc_state->hw.adjusted_mode.crtc_vtotal =3D=3D ne=
w_crtc_state->hw.adjusted_mode.crtc_vtotal &&
> > > > +            old_crtc_state->hw.adjusted_mode.crtc_vblank_end =3D=
=3D new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
> > > > +               new_crtc_state->update_lrr =3D false;
> > > > +
> > > >         if (!intel_crtc_needs_modeset(new_crtc_state))
> > > >                 new_crtc_state->update_pipe =3D true;
> > > >  }
> > > > @@ -6262,6 +6305,7 @@ int intel_atomic_check(struct drm_device *dev=
,
> > > >                                 new_crtc_state->uapi.mode_changed =
=3D true;
> > > >                                 new_crtc_state->update_pipe =3D fal=
se;
> > > >                                 new_crtc_state->update_m_n =3D fals=
e;
> > > > +                               new_crtc_state->update_lrr =3D fals=
e;
> > > >                         }
> > > >                 }
> > > >
> > > > @@ -6275,6 +6319,7 @@ int intel_atomic_check(struct drm_device *dev=
,
> > > >                                 new_crtc_state->uapi.mode_changed =
=3D true;
> > > >                                 new_crtc_state->update_pipe =3D fal=
se;
> > > >                                 new_crtc_state->update_m_n =3D fals=
e;
> > > > +                               new_crtc_state->update_lrr =3D fals=
e;
> > > >                         }
> > > >                 }
> > > >
> > > > @@ -6283,6 +6328,7 @@ int intel_atomic_check(struct drm_device *dev=
,
> > > >                                 new_crtc_state->uapi.mode_changed =
=3D true;
> > > >                                 new_crtc_state->update_pipe =3D fal=
se;
> > > >                                 new_crtc_state->update_m_n =3D fals=
e;
> > > > +                               new_crtc_state->update_lrr =3D fals=
e;
> > > >                         }
> > > >                 }
> > > >         }
> > > > @@ -6464,6 +6510,9 @@ static void intel_pipe_fastset(const struct i=
ntel_crtc_state *old_crtc_state,
> > > >         if (new_crtc_state->update_m_n)
> > > >                 intel_cpu_transcoder_set_m1_n1(crtc, new_crtc_state=
->cpu_transcoder,
> > > >                                                &new_crtc_state->dp_=
m_n);
> > > > +
> > > > +       if (new_crtc_state->update_lrr)
> > > > +               intel_set_transcoder_timings_lrr(new_crtc_state);
> > > >  }
> > > >
> > > >  static void commit_pipe_pre_planes(struct intel_atomic_state *stat=
e,
> > > > @@ -6600,7 +6649,8 @@ static void intel_update_crtc(struct intel_at=
omic_state *state,
> > > >          *
> > > >          * FIXME Should be synchronized with the start of vblank so=
mehow...
> > > >          */
> > > > -       if (vrr_enabling(old_crtc_state, new_crtc_state) || new_crt=
c_state->update_m_n)
> > > > +       if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> > > > +           new_crtc_state->update_m_n || new_crtc_state->update_lr=
r)
> > > >                 intel_crtc_update_active_timings(new_crtc_state,
> > > >                                                  new_crtc_state->vr=
r.enable);
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/=
drivers/gpu/drm/i915/display/intel_display_device.h
> > > > index 8198401aa5be..ee77750af82b 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > > > @@ -56,6 +56,7 @@ struct drm_printer;
> > > >  #define HAS_HW_SAGV_WM(i915)           (DISPLAY_VER(i915) >=3D 13 =
&& !IS_DGFX(i915))
> > > >  #define HAS_IPC(i915)                  (DISPLAY_INFO(i915)->has_ip=
c)
> > > >  #define HAS_IPS(i915)                  (IS_HASWELL_ULT(i915) || IS=
_BROADWELL(i915))
> > > > +#define HAS_LRR(i915)                  (DISPLAY_VER(i915) >=3D 12)
> > > >  #define HAS_LSPCON(i915)               (IS_DISPLAY_VER(i915, 9, 10=
))
> > > >  #define HAS_MBUS_JOINING(i915)         (IS_ALDERLAKE_P(i915) || DI=
SPLAY_VER(i915) >=3D 14)
> > > >  #define HAS_MSO(i915)                  (DISPLAY_VER(i915) >=3D 12)
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/d=
rivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 2f35560d7e4e..536c642eb562 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1084,6 +1084,7 @@ struct intel_crtc_state {
> > > >         unsigned fb_bits; /* framebuffers to flip */
> > > >         bool update_pipe; /* can a fast modeset be performed? */
> > > >         bool update_m_n; /* update M/N seamlessly during fastset? *=
/
> > > > +       bool update_lrr; /* update TRANS_VTOTAL/etc. during fastset=
? */
> > > >         bool disable_cxsr;
> > > >         bool update_wm_pre, update_wm_post; /* watermarks are updat=
ed */
> > > >         bool fifo_changed; /* FIFO split is changed */
> > > > @@ -1383,7 +1384,7 @@ struct intel_crtc_state {
> > > >
> > > >         /* Variable Refresh Rate state */
> > > >         struct {
> > > > -               bool enable;
> > > > +               bool enable, in_range;
> > > >                 u8 pipeline_full;
> > > >                 u16 flipline, vmin, vmax, guardband;
> > > >         } vrr;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu=
/drm/i915/display/intel_vrr.c
> > > > index 12731ad725a8..5d905f932cb4 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > > > @@ -120,9 +120,14 @@ intel_vrr_compute_config(struct intel_crtc_sta=
te *crtc_state,
> > > >         if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> > > >                 return;
> > > >
> > > > -       if (!intel_vrr_is_in_range(connector, drm_mode_vrefresh(adj=
usted_mode)))
> > > > +       crtc_state->vrr.in_range =3D
> > > > +               intel_vrr_is_in_range(connector, drm_mode_vrefresh(=
adjusted_mode));
> > > > +       if (!crtc_state->vrr.in_range)
> > > >                 return;
> > > >
> > > > +       if (HAS_LRR(i915))
> > > > +               crtc_state->update_lrr =3D true;
> > > > +
> > > >         vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > > >                             adjusted_mode->crtc_htotal * info->moni=
tor_range.max_vfreq);
> > > >         vmax =3D adjusted_mode->crtc_clock * 1000 /
> > > > --
> > > > 2.41.0
> > > >
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
