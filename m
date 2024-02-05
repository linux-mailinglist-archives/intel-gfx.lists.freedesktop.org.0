Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5AC84A24A
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 19:30:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224E11125AA;
	Mon,  5 Feb 2024 18:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="L0y2ZuPK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
 [209.85.208.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130381125A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 18:30:52 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id
 4fb4d7f45d1cf-55790581457so6653547a12.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Feb 2024 10:30:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1707157850; x=1707762650;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DZBTwYP48IR51/xVfSuugP7Scq68KKoOINX0Cyqw3R0=;
 b=L0y2ZuPKUlnMcqLe970ci+ew8hWo6XnEmdFPMNdtCrMuoEr3d3BFmfAN5SLqEd3g5M
 haQ609o14/Fc06CB30H5P3Yb9xzyKnvOaPkimkd9v/skUz0LBzkV+5De8dGkuYeo+VOW
 yVOX8ZlpU0LIJKwKz1c8XbcaTb6sVr4to57bM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707157850; x=1707762650;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=DZBTwYP48IR51/xVfSuugP7Scq68KKoOINX0Cyqw3R0=;
 b=M/bHcXYAqyLtRJvlcw3f4xw+zQctF75LGONFMiWToROQrEnL/njUZ1K36EdFyt5+n9
 PuNxx8OJK8YUfxET29gfnx2dF+0zbqI/X52asm15AGv9/dpwOTRdUQfMgIzleo5FkG8U
 5vUyMHCh4oVVScqhnq/piT8ia3RcvuattPylSKbbJTEL8qg2aK/S3GHnig8Tg78Oq6mw
 7EFcrX4jPFbQj+v+4+2JoohiBxBaJJLEA/QzO7t8+fbusIKhFDPUaALho1jqZymjImUR
 WIexFuk0tjsyFWz2Dq2Gbcg+DzP2AmARwY/NvMr12JtGdl8eiiMj9fr+Ie2RCSc6MotA
 /lFA==
X-Gm-Message-State: AOJu0Yy9PlkpxBumX7nYV2+72RsUBwdjRWkYN3BvzTbh8GCVOnSm4eLJ
 i7Bftp7Btvlnpg5UeTQZzNpmGQ9pAC0M0EFfeqX3mk6cXfmo4keTzLFY6FDwgozHh6AozA0k6cd
 WQVc3Qjumb3wUFwluQ0q+h7wMW5NnyuoYNq2C
X-Google-Smtp-Source: AGHT+IEUXZV9kUTYAFguhbPM2l3ius86l9it5mzbAwbmT9bNrsCpVZOC6ES+3U2rFs4XsXd6HZVnlwuyU7kR4MFlMTQ=
X-Received: by 2002:aa7:c54b:0:b0:55f:8c5d:e55e with SMTP id
 s11-20020aa7c54b000000b0055f8c5de55emr86081edr.26.1707157850283; Mon, 05 Feb
 2024 10:30:50 -0800 (PST)
MIME-Version: 1.0
References: <20231012193000.11917-1-vidya.srinivas@intel.com>
 <ZSkfYh9hhca-o0DL@intel.com> <ZZ5h7Fqe3OOh4TiV@intel.com>
 <CAE72mNkhebcwwSNvi92oWR8pJF4dvF3KhixjjhQ62MvHkKYPMg@mail.gmail.com>
In-Reply-To: <CAE72mNkhebcwwSNvi92oWR8pJF4dvF3KhixjjhQ62MvHkKYPMg@mail.gmail.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Mon, 5 Feb 2024 10:30:39 -0800
Message-ID: <CAE72mNktEyHq4-0nfVywrJpmsZAUbjX1mFkn5YAf=DdaVQH-jQ@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Stan,

I discussed with Ville a little bit on IRC and wanted to reflect some
conversation here as review so that it could be accommodated in your
next revision for bigjoiner changes.

For bigjoiner cases to work correctly, when bigjoiner steals a CRTC
for using it as slave CRTC, the assumption is that it would indicate
the CRTC_STATE Active bit and reflect the CRTC ACTIVE property for the
stolen CRTC so that userspace understands that it is being used
internally and does not try to modeset on a stolen CRTC.

As per Ville's comment on IRC:
<vsyrjala> no. from uapi pov the crtc is inactive

Could you please elaborate on this and if it is not being correctly
reflected as ACTIVE, that would be a kernel bug and needs to be fixed
as part of this series.

Regards
Manasi

On Tue, Jan 16, 2024 at 5:20=E2=80=AFPM Manasi Navare <navaremanasi@chromiu=
m.org> wrote:
>
> Hi Stan, Ville,
>
> After Stan's refactor series for bigjoiner, along with Vidya's patch
> that assigns master/slave for MST as well, do you anticipate more MST
> specific
> bigjoiner modeset sequence changes to properly call crtc enable
> sequence for MST master slave?
>
> Stan, when you send the next revision for Bigjoiner refactor series,
> could you pull in this patch that sets the bigjoiner pipes for MST as
> well?
> That way Vidya can test all these changes together on the 6K monitor
> that has built in MST port and needs bigjoiner.
>
> Manasi
>
> On Wed, Jan 10, 2024 at 1:31=E2=80=AFAM Lisovskiy, Stanislav
> <stanislav.lisovskiy@intel.com> wrote:
> >
> > On Fri, Oct 13, 2023 at 01:43:46PM +0300, Ville Syrj=C3=A4l=C3=A4 wrote=
:
> > > On Fri, Oct 13, 2023 at 01:00:00AM +0530, vsrini4 wrote:
> > > > Patch calculates bigjoiner pipes in mst compute.
> > > > Patch also passes bigjoiner bool to validate plane
> > > > max size.
> > >
> > > I doubt this is sufficient. The modeset sequence is still all
> > > wrong for bigjoiner+mst.
> >
> > Should that be now enough with my series also?
> >
> > https://patchwork.freedesktop.org/series/128311/
> >
> > Stan
> >
> > >
> > > >
> > > > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-----=
--
> > > >  1 file changed, 12 insertions(+), 7 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/=
gpu/drm/i915/display/intel_dp_mst.c
> > > > index e3f176a093d2..f499ce39b2a8 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct i=
ntel_encoder *encoder,
> > > >                                    struct drm_connector_state *conn=
_state)
> > > >  {
> > > >     struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev=
);
> > > > +   struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crt=
c);
> > > >     struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> > > >     struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> > > >     const struct drm_display_mode *adjusted_mode =3D
> > > > @@ -318,6 +319,10 @@ static int intel_dp_mst_compute_config(struct =
intel_encoder *encoder,
> > > >     if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > >             return -EINVAL;
> > > >
> > > > +   if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisp=
lay,
> > > > +                               adjusted_mode->crtc_clock))
> > > > +           pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1=
, crtc->pipe);
> > > > +
> > > >     pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > > >     pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> > > >     pipe_config->has_pch_encoder =3D false;
> > > > @@ -936,12 +941,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connect=
or *connector,
> > > >     if (ret)
> > > >             return ret;
> > > >
> > > > -   if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > -       drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->f=
ull_pbn) {
> > > > -           *status =3D MODE_CLOCK_HIGH;
> > > > -           return 0;
> > > > -   }
> > > > -
> > > >     if (mode->clock < 10000) {
> > > >             *status =3D MODE_CLOCK_LOW;
> > > >             return 0;
> > > > @@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connect=
or *connector,
> > > >             max_dotclk *=3D 2;
> > > >     }
> > > >
> > > > +   if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > > > +       drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->f=
ull_pbn) {
> > > > +           *status =3D MODE_CLOCK_HIGH;
> > > > +           return 0;
> > > > +   }
> > > > +
> > > >     if (DISPLAY_VER(dev_priv) >=3D 10 &&
> > > >         drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> > > >             /*
> > > > @@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connecto=
r *connector,
> > > >     if (mode_rate > max_rate && !dsc)
> > > >             return MODE_CLOCK_HIGH;
> > > >
> > > > -   *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, fal=
se);
> > > > +   *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, big=
joiner);
> > > >     return 0;
> > > >  }
> > > >
> > > > --
> > > > 2.33.0
> > >
> > > --
> > > Ville Syrj=C3=A4l=C3=A4
> > > Intel
