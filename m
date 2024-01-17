Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CCA82FE5A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 02:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE99B10E37C;
	Wed, 17 Jan 2024 01:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
 [209.85.218.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D96A410E37C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 01:21:33 +0000 (UTC)
Received: by mail-ej1-f42.google.com with SMTP id
 a640c23a62f3a-a298accc440so1287700466b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 17:21:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1705454432; x=1706059232;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2+4tUW3AIvFvkD5zLRGxalXPuluhjJIPu8HIEyaHR5E=;
 b=bogUeNDa8zugq7zgA25g8hDozeYPZAfBCUWw2rprDARpg7LXRCkaaeo2WGNikZYpbo
 nRdj5TvWiDHsbIvU8ft10qNmsNnpfPuR5CSMtJp2sPRiwH5uRb42aIV0dbg6D+bfPYPm
 BjmzuRCPaNw4+tyOE0H33cArxgpZ+V/s/qXrQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1705454432; x=1706059232;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2+4tUW3AIvFvkD5zLRGxalXPuluhjJIPu8HIEyaHR5E=;
 b=MkNOnia3Y4d9VvcxORuRXbCalbtU4OlygL1JeMreYFgPzXJvFOw1mjgOEjMwsZq31u
 kXroLv89j8KN9qmB7vAToPuAuhIQA0bqcmhGrXX6Zve5gOAAJEcZDaWEyAKYCsve23e9
 4/W8XAWgpXXehrk8mmF7afJ4Kaw5QAShcU5ospk8Cgjf4ZiWrayFROTvEFlns0EBf0X0
 KnF8wBf4UyPPV0q49GTl6lzzE3ogxH3UWn023v3H6HdZUqZTVL34Cy0qoFtT+5+DsBpf
 XJtJQdQsRK2uzZATExWXA4GL0PUQCTydvBRR4xvEisMxSonrIUmfqxROR4z6c/mWgSu6
 Fvfg==
X-Gm-Message-State: AOJu0Yw/sNj9khBurDZvZhBJrgKsfCrpM5VzHh9UcMPNJm2en6ave14W
 p9wkXUJ+sjrH00rzq9XkoW7Lfs8LqOMMyotgqJLRUAeJ5i9X
X-Google-Smtp-Source: AGHT+IGXLSadvf2vxhR6B0p/na436gDqc8ys/TPRVe2VaFafM8iIAQDJG4dkKCUS2qmCbPuip8A2bauHTVle5/o+YY8=
X-Received: by 2002:a17:907:7204:b0:a28:fdc2:7f11 with SMTP id
 dr4-20020a170907720400b00a28fdc27f11mr4851041ejc.83.1705454432202; Tue, 16
 Jan 2024 17:20:32 -0800 (PST)
MIME-Version: 1.0
References: <20231012193000.11917-1-vidya.srinivas@intel.com>
 <ZSkfYh9hhca-o0DL@intel.com> <ZZ5h7Fqe3OOh4TiV@intel.com>
In-Reply-To: <ZZ5h7Fqe3OOh4TiV@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 16 Jan 2024 17:20:21 -0800
Message-ID: <CAE72mNkhebcwwSNvi92oWR8pJF4dvF3KhixjjhQ62MvHkKYPMg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hi Stan, Ville,

After Stan's refactor series for bigjoiner, along with Vidya's patch
that assigns master/slave for MST as well, do you anticipate more MST
specific
bigjoiner modeset sequence changes to properly call crtc enable
sequence for MST master slave?

Stan, when you send the next revision for Bigjoiner refactor series,
could you pull in this patch that sets the bigjoiner pipes for MST as
well?
That way Vidya can test all these changes together on the 6K monitor
that has built in MST port and needs bigjoiner.

Manasi

On Wed, Jan 10, 2024 at 1:31=E2=80=AFAM Lisovskiy, Stanislav
<stanislav.lisovskiy@intel.com> wrote:
>
> On Fri, Oct 13, 2023 at 01:43:46PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Fri, Oct 13, 2023 at 01:00:00AM +0530, vsrini4 wrote:
> > > Patch calculates bigjoiner pipes in mst compute.
> > > Patch also passes bigjoiner bool to validate plane
> > > max size.
> >
> > I doubt this is sufficient. The modeset sequence is still all
> > wrong for bigjoiner+mst.
>
> Should that be now enough with my series also?
>
> https://patchwork.freedesktop.org/series/128311/
>
> Stan
>
> >
> > >
> > > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
> > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gp=
u/drm/i915/display/intel_dp_mst.c
> > > index e3f176a093d2..f499ce39b2a8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct int=
el_encoder *encoder,
> > >                                    struct drm_connector_state *conn_s=
tate)
> > >  {
> > >     struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > > +   struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc)=
;
> > >     struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > >     struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > >     const struct drm_display_mode *adjusted_mode =3D
> > > @@ -318,6 +319,10 @@ static int intel_dp_mst_compute_config(struct in=
tel_encoder *encoder,
> > >     if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > >             return -EINVAL;
> > >
> > > +   if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdispla=
y,
> > > +                               adjusted_mode->crtc_clock))
> > > +           pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1, =
crtc->pipe);
> > > +
> > >     pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >     pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > >     pipe_config->has_pch_encoder =3D false;
> > > @@ -936,12 +941,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector=
 *connector,
> > >     if (ret)
> > >             return ret;
> > >
> > > -   if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > -       drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->ful=
l_pbn) {
> > > -           *status =3D MODE_CLOCK_HIGH;
> > > -           return 0;
> > > -   }
> > > -
> > >     if (mode->clock < 10000) {
> > >             *status =3D MODE_CLOCK_LOW;
> > >             return 0;
> > > @@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector=
 *connector,
> > >             max_dotclk *=3D 2;
> > >     }
> > >
> > > +   if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > +       drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->ful=
l_pbn) {
> > > +           *status =3D MODE_CLOCK_HIGH;
> > > +           return 0;
> > > +   }
> > > +
> > >     if (DISPLAY_VER(dev_priv) >=3D 10 &&
> > >         drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> > >             /*
> > > @@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector =
*connector,
> > >     if (mode_rate > max_rate && !dsc)
> > >             return MODE_CLOCK_HIGH;
> > >
> > > -   *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false=
);
> > > +   *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, bigjo=
iner);
> > >     return 0;
> > >  }
> > >
> > > --
> > > 2.33.0
> >
> > --
> > Ville Syrj=C3=A4l=C3=A4
> > Intel
