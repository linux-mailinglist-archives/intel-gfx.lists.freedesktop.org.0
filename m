Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7E86DE864
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 02:07:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7503F10E6CF;
	Wed, 12 Apr 2023 00:07:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x936.google.com (mail-ua1-x936.google.com
 [IPv6:2607:f8b0:4864:20::936])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2084A10E6CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 00:07:14 +0000 (UTC)
Received: by mail-ua1-x936.google.com with SMTP id f32so6932522uad.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 17:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1681258032; x=1683850032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+aOxS3XmgA0mOvN+jbK2cXvtg7jfXe9hYzhc8VeUeJU=;
 b=lPD7/ZeyOJpQ93D708GnWY8lWl9DLpj2uxT588qec8nuIQHNyPwnxC2WVdmHmdAfve
 kcfMlZUr7RPDKBaCtcOrYk1c0ZPfA3bYDaQhKOOmRX82uVgvvhceUCsBkZ7huGjbVm1o
 jSYHZ+a98CnswSc1gNBSU0M2x1daoo466YDt0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681258032; x=1683850032;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=+aOxS3XmgA0mOvN+jbK2cXvtg7jfXe9hYzhc8VeUeJU=;
 b=CW3w0Vy4msMOPBso+/SjqagQSlPmmEYg+fEDuuaa2N0fjclzy/GeO5CXo8lF0seMpm
 jBOTaGbCAeLQlzl9FYrlWVpMGZqIJEOs4W6erz3B1AUc2TLZaafMSUfJoXzs+KzGDTgZ
 /VfIQnxwYcUUd8lDuFelysQRBFJCISSft5wi9/FuGSNQRByX1kkbSxZwZz4leez2RqL4
 xxATTnCmepaNUr0XKmW8gspKTdWx4KmIlNQuJpXSym/S8Gfc3M0DjHXq6wgwHQEBFo0P
 076wb8HQVvN3nXxgtN5ppOcGg+9meRSf3HG4E91XuNNgvdtW5ZZIZxMvVhN4dRDRqm4r
 13xQ==
X-Gm-Message-State: AAQBX9dCZF4dvJEFIDDGik2JMiOzcNTEVK2TZOH8sd15/K+MCyOgn3fM
 eSheMGnlXDqeQ9lcm8/OZ1b4GTUUfsVsF5XIZBZ/2A==
X-Google-Smtp-Source: AKy350ZA2BMaaCGlALMydQRMrTKPClD9+AuktlfFFTEoKG6lHanMXfKsUan2sfFLdDVvfZ4ybsmCbYnMLBCq/KucoOs=
X-Received: by 2002:a1f:ab0e:0:b0:43c:6ef1:7116 with SMTP id
 u14-20020a1fab0e000000b0043c6ef17116mr8964871vke.0.1681258032703; Tue, 11 Apr
 2023 17:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
In-Reply-To: <ZDWcDhmJyMhQpQBa@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 11 Apr 2023 17:07:01 -0700
Message-ID: <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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

On Tue, Apr 11, 2023 at 10:42=E2=80=AFAM Ville Syrj=C3=A4l=C3=A4
<ville.syrjala@linux.intel.com> wrote:
>
> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> > In the function intel_dp_max_bpp(), currently if bpc < 0 in case of err=
or,
> > we return 0 instead of returning an err code of -EINVAL.
> > This throws off the logic in the calling function.
>
> What logic? The caller doesn't expect to get an error.

If this returns a 0, we end up using limits.max_bpp =3D 0 and in
intel_dp_compute_link_config_wide(),
since max_bpp is 0, it exits this for loop:

for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * 3) and=
 returns
-EINVAL which then wrongly goes to enable DSC even when link BW is
sufficient without DSC.

Manasi

>
> > Fix this by returning
> > -EINVAL in case bpc < 0 which would be an error.
> >
> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Sean Paul <sean@poorly.run>
> > Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/=
i915/display/intel_dp.c
> > index f0bace9d98a1..f6546292e7c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1280,7 +1280,7 @@ static int intel_dp_max_bpp(struct intel_dp *inte=
l_dp,
> >               max_hdmi_bpc =3D intel_dp_hdmi_compute_bpc(intel_dp, crtc=
_state, bpc,
> >                                                        respect_downstre=
am_limits);
> >               if (max_hdmi_bpc < 0)
> > -                     return 0;
> > +                     return -EINVAL;
> >
> >               bpc =3D min(bpc, max_hdmi_bpc);
> >       }
> > --
> > 2.40.0.577.gac1e443424-goog
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
