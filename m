Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DD4869E96
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F46B10E3D4;
	Tue, 27 Feb 2024 18:07:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="QIhQwr2R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D593910E35E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:07:41 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id
 4fb4d7f45d1cf-55a179f5fa1so5721495a12.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 10:07:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1709057260; x=1709662060;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JPvT+3t6vD0JMkx0aC5aqeVB+2dMqfEnys9VsKA/EsQ=;
 b=QIhQwr2RstVG2LT0/sy7IcTv3f8c5n59r11hDUCnWiO4D2zoctssnbxqVuBk1LmR2E
 2PekUNuOgP0qmGbpTth8SIjfyPVlpQVZ2ZDCXd+9XhfOSsAA9qagg3n3PUce7Y2UaTxM
 I7yXneK4Eehp8v1GXq4/P36vuY7WeroMs6W9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709057260; x=1709662060;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JPvT+3t6vD0JMkx0aC5aqeVB+2dMqfEnys9VsKA/EsQ=;
 b=I0sfo01ljleYG/rf1SYqxjRUi94cRq9H/90OgpobI4SmSonc1BOrGO3Hh1XcyxNzJ7
 9YXBYX2l9oqGYiz64/6wpK3+ue0Z8d7Mk2pGWFTD1+pmiP2q8g3USW9qdaHQnmwFn9C9
 0k0rlVcGRAA9CZF2GhKj4605h8h/XxgxOwszAXleo1cVuU/mPb1JyIV9KoQPbPvPL9Lf
 9j3193v6LlSwm97jsQyIQpkeDHxXp+RTf2SCo2ZEyzaaMlOU5+uuDobebLCMQRY4PDsg
 tn3XOxRodfwoE0i1NtFlSOvF+R/aT/NENYfGj9KBFO6C6nhWX7pfHv+ak+GTIRc1sk03
 DaKQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVPmWSzoCfvW91C9Fkp2faqMBaDLnAHRMm4zIQhRAl6EmIWMaUB1BpABA1We+YxR+bMerToRcluSPKaKidxs5d8jIuigIbSZSniu8xCIoYk
X-Gm-Message-State: AOJu0YzYddIHEDZ8/6bLg7D32sgapjb8PEc5yI65xv1AMqL1q9LPFLTc
 os2u2cZU5JoVyyMnb4B09aucbtL/HmhMCUH9O5G1hB1pHS3Ck6sZTR0wJb1lACdxAZ3jZ1fuvvy
 5AIaZmMpYAA1Tw0HHq9uINUiWAxIO29Yq2Tmt
X-Google-Smtp-Source: AGHT+IEWWcornFTkT17sd6QyKiUMgntYxdVRmsZ9HAfrkV2uu80UM0DPNBFGjwBZQN7bzfbwqs24Q9NyVSK4MU+dfcI=
X-Received: by 2002:a17:906:3193:b0:a3f:5628:e364 with SMTP id
 19-20020a170906319300b00a3f5628e364mr7601437ejy.24.1709057260079; Tue, 27 Feb
 2024 10:07:40 -0800 (PST)
MIME-Version: 1.0
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
 <87o7c3knj9.fsf@intel.com>
 <Zd2lm8uC1WsjEpcO@intel.com> <87ttlujmio.fsf@intel.com>
In-Reply-To: <87ttlujmio.fsf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 27 Feb 2024 10:07:29 -0800
Message-ID: <CAE72mNkpz5sSCVAkXb0yJ=FcBgDZHc_kwAjsuhqWnifFGwWY3Q@mail.gmail.com>
Subject: Re: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org, 
 jani.saarinen@intel.com, ville.syrjala@linux.intel.com, 
 vidya.srinivas@intel.com
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

Thanks Jani for your review.
Thanks @Lisovskiy, Stanislav  and @vidya.srinivas@intel.com for taking
this patch forward.

@Jani Nikula , @Ville Syrj=C3=A4l=C3=A4 : MST bigjoiner as a feature needs =
to be
enabled upstream and this patch enables that feature.
If you agree that bigjoiner refactoring patches 1 and 2 have no impact
on enabling bigjoiner on MST, could we decouple this patch from
bigjoiner refactoring and land this separately?

We need the Bigjoiner to be enabled on MST feature landed asap and
bigjoiner refactoring can follow.

Regards
Manasi

On Tue, Feb 27, 2024 at 1:15=E2=80=AFAM Jani Nikula <jani.nikula@linux.inte=
l.com> wrote:
>
> On Tue, 27 Feb 2024, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.co=
m> wrote:
> > On Mon, Feb 26, 2024 at 09:56:10PM +0200, Jani Nikula wrote:
> >> On Wed, 21 Feb 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.co=
m> wrote:
> >> > Patch calculates bigjoiner pipes in mst compute.
> >> > Patch also passes bigjoiner bool to validate plane
> >> > max size.
> >>
> >> Please use the imperative mood in commit messages, e.g. "calculate"
> >> intead of "calculates".
> >>
> >> Please do not refer to "patch". We know it's a patch, until it isn't,
> >> and then it's a commit.
> >>
> >> Please explain *why* the changes are being done, not just *what* is
> >> being done.
> >>
> >> In the subject, what is "bigjoiner case for DP2.0"? DP 2.0 is a spec
> >> version, and as such irrelevant for the changes being done.
> >>
> >> > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> >>
> >> ?
> >
> > Hi Jani, I just added that patch from Vidya to my series, to be honest,
> > didn't have time at all to look much into it.
> > Looks like its me who is going to fix that.
>
> Should the original authorship be preserved? If not, please add
> Co-developed-by. Just having the Signed-off-by is not enough.
>
> BR,
> Jani.
>
>
> >
> >>
> >> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++------=
-
> >> >  1 file changed, 12 insertions(+), 7 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/g=
pu/drm/i915/display/intel_dp_mst.c
> >> > index 5307ddd4edcf5..fd27d9976c050 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> >> > @@ -523,6 +523,7 @@ static int intel_dp_mst_compute_config(struct in=
tel_encoder *encoder,
> >> >                                   struct drm_connector_state *conn_s=
tate)
> >> >  {
> >> >    struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> >> > +  struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc)=
;
> >> >    struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> >> >    struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> >> >    const struct intel_connector *connector =3D
> >> > @@ -540,6 +541,10 @@ static int intel_dp_mst_compute_config(struct i=
ntel_encoder *encoder,
> >> >    if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >> >            return -EINVAL;
> >> >
> >> > +  if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdispla=
y,
> >> > +                              adjusted_mode->crtc_clock))
> >> > +          pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1, =
crtc->pipe);
> >> > +
> >> >    pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >> >    pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >> >    pipe_config->has_pch_encoder =3D false;
> >> > @@ -1318,12 +1323,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connec=
tor *connector,
> >> >     *   corresponding link capabilities of the sink) in case the
> >> >     *   stream is uncompressed for it by the last branch device.
> >> >     */
> >> > -  if (mode_rate > max_rate || mode->clock > max_dotclk ||
> >> > -      drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_=
pbn) {
> >> > -          *status =3D MODE_CLOCK_HIGH;
> >> > -          return 0;
> >> > -  }
> >> > -
> >> >    if (mode->clock < 10000) {
> >> >            *status =3D MODE_CLOCK_LOW;
> >> >            return 0;
> >> > @@ -1343,6 +1342,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connec=
tor *connector,
> >> >            return 0;
> >> >    }
> >> >
> >> > +  if (mode_rate > max_rate || mode->clock > max_dotclk ||
> >> > +      drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_=
pbn) {
> >> > +          *status =3D MODE_CLOCK_HIGH;
> >> > +          return 0;
> >> > +  }
> >> > +
> >> >    if (DISPLAY_VER(dev_priv) >=3D 10 &&
> >> >        drm_dp_sink_supports_dsc(intel_connector->dp.dsc_dpcd)) {
> >> >            /*
> >> > @@ -1385,7 +1390,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connect=
or *connector,
> >> >            return 0;
> >> >    }
> >> >
> >> > -  *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false=
);
> >> > +  *status =3D intel_mode_valid_max_plane_size(dev_priv, mode, bigjo=
iner);
> >> >    return 0;
> >> >  }
> >>
> >> --
> >> Jani Nikula, Intel
>
> --
> Jani Nikula, Intel
