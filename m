Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A5E88CE00
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 21:13:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78F3810F278;
	Tue, 26 Mar 2024 20:13:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=chromium.org header.i=@chromium.org header.b="dlTZYrta";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E258E10F278
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 20:13:51 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id
 38308e7fff4ca-2d49f7e5c2cso77794681fa.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 13:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1711484030; x=1712088830;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TvV5QrUlwTMIh5U718o9KTBHnxhJh7FdzvsyYLKDYGs=;
 b=dlTZYrtawEmEXrL6/1p+YV8hx6WsaokM0SjoY9O4Z10bELxg73/eREKKbHggwMnM5+
 FODxwigclDkPeJJZPWauo1/CvFRP/yR4x2Fmv33KhxUjDiqOQSb/PtDUAfZ8ZC2idfI1
 65uvpdhcqAJOTobXbdDlKpWBJ3hsG8+V0Xq3M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711484030; x=1712088830;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TvV5QrUlwTMIh5U718o9KTBHnxhJh7FdzvsyYLKDYGs=;
 b=hKLA96pQLNoMRGeyYPgm6cycyNbBMIzilNb6TiJZfniDTxw0N/yi1TzCoHw2B8xRy9
 YOfawsBnq5U0MzkI8yP1slzEDm78syWajdmmoY6DC6Ye3sV9kuEoj1c1uyrEF5+bXCxI
 mjHezfEl2zeIwe28h1XpFJYD5sVi9Am+gMd1m94GRSip1tas5VJn+IEdKhBsey0SrPgw
 2K9PHzffv9o2A6kjuJcKCYH2UJDeWn6D635mf9rjZKaOaRMJym92riJmPITuwzPe1J8R
 YhRj9C4enCQpM51zXbFPiYBhHLlpQFuIPNCkRnGlslRWfD+/VOmXrAiBruNNqJlqK/rm
 bT4g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgFF9NmS33cY0lCPwF2HxMdtgqbPZ9KEmZcMuqdEuZu+Up2AAvciTxpCt7PUXiVOStq77LxJMlGwBWSjQo01R9sg/69MdE6dE3DrXs5xiJ
X-Gm-Message-State: AOJu0Ywl41j7hkCNVVaKFIjpUSZbsBeJfmRnSTKvVP5iXnrpA9fcEPMz
 tJy6XFCD+hItK8Uw/F3DQ7OgIkPVL434NzBxTvSSHLXEGuEb2sqGRtAG81DkRO1RNcmLg6TJN+P
 mCIzuSIF0OIrQOjCXtSk7eMNTT14VOZqjd11L
X-Google-Smtp-Source: AGHT+IFbK/GzICRl6cPZZyUBmS1GPaq7PXuBbRV/i2OrKyPl+XpL0Jjb13nTOobcpJ67qHFuvNXPEmhOa2MLGI7aE8Y=
X-Received: by 2002:a05:6512:608:b0:515:b0ef:2ae3 with SMTP id
 b8-20020a056512060800b00515b0ef2ae3mr475515lfe.39.1711484029657; Tue, 26 Mar
 2024 13:13:49 -0700 (PDT)
MIME-Version: 1.0
References: <20240320201152.3487892-1-imre.deak@intel.com>
 <20240320201152.3487892-7-imre.deak@intel.com>
 <11f68c1e-2855-4305-8bab-af6250b7caaf@intel.com>
In-Reply-To: <11f68c1e-2855-4305-8bab-af6250b7caaf@intel.com>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Tue, 26 Mar 2024 13:13:38 -0700
Message-ID: <CAE72mN=wHqsO5gKeisCkN--g+kz6QcpgfLH8iXe6H96JALX-jA@mail.gmail.com>
Subject: Re: [PATCH 06/11] drm/i915/dp_mst: Sanitize calculating the DSC DPT
 bpp limit
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
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

Hi Imre,

Would this impact/fix DSC functionality on ADL based platforms as well
or will this change only impact platforms that support UHBR?

Manasi

On Tue, Mar 26, 2024 at 5:55=E2=80=AFAM Nautiyal, Ankit K
<ankit.k.nautiyal@intel.com> wrote:
>
>
> On 3/21/2024 1:41 AM, Imre Deak wrote:
> > Instead of checking each compressed bpp value against the maximum
> > DSC/DPT bpp, simplify things by calculating the maximum bpp upfront and
> > limiting the range of bpps looped over using this maximum.
> >
> > While at it add a comment about the origin of the DSC/DPT bpp limit.
> >
> > Bspec: 49259, 68912
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>
> LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 45 +++++++++++---------=
-
> >   1 file changed, 23 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/=
drm/i915/display/intel_dp_mst.c
> > index 40660dc5edb45..516b00f791420 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -51,27 +51,24 @@
> >   #include "intel_vdsc.h"
> >   #include "skl_scaler.h"
> >
> > -static int intel_dp_mst_check_constraints(struct drm_i915_private *i91=
5, int bpp,
> > -                                       const struct drm_display_mode *=
adjusted_mode,
> > -                                       struct intel_crtc_state *crtc_s=
tate,
> > -                                       bool dsc)
> > +static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crt=
c_state,
> > +                                 bool dsc)
> >   {
> > -     if (intel_dp_is_uhbr(crtc_state) && DISPLAY_VER(i915) < 20 && dsc=
) {
> > -             int output_bpp =3D bpp;
> > -             int symbol_clock =3D intel_dp_link_symbol_clock(crtc_stat=
e->port_clock);
> > -             int available_bw =3D mul_u32_u32(symbol_clock * 72,
> > -                                            drm_dp_bw_channel_coding_e=
fficiency(true)) /
> > -                                1000000;
> > +     struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->=
dev);
> > +     const struct drm_display_mode *adjusted_mode =3D
> > +             &crtc_state->hw.adjusted_mode;
> >
> > -             if (output_bpp * adjusted_mode->crtc_clock >
> > -                 available_bw) {
> > -                     drm_dbg_kms(&i915->drm, "UHBR check failed(requir=
ed bw %d available %d)\n",
> > -                                 output_bpp * adjusted_mode->crtc_cloc=
k, available_bw);
> > -                     return -EINVAL;
> > -             }
> > -     }
> > +     if (!intel_dp_is_uhbr(crtc_state) || DISPLAY_VER(i915) >=3D 20 ||=
 !dsc)
> > +             return INT_MAX;
> >
> > -     return 0;
> > +     /*
> > +      * DSC->DPT interface width:
> > +      *   ICL-MTL: 72 bits (each branch has 72 bits, only left branch =
is used)
> > +      *   LNL+:    144 bits (not a bottleneck in any config)
> > +      */
> > +     return div64_u64(mul_u32_u32(intel_dp_link_symbol_clock(crtc_stat=
e->port_clock) * 72,
> > +                                  drm_dp_bw_channel_coding_efficiency(=
true)),
> > +                      mul_u32_u32(adjusted_mode->crtc_clock, 1000000))=
;
> >   }
> >
> >   static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *cr=
tc_state,
> > @@ -160,6 +157,7 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(str=
uct intel_encoder *encoder,
> >       const struct drm_display_mode *adjusted_mode =3D
> >               &crtc_state->hw.adjusted_mode;
> >       int bpp, slots =3D -EINVAL;
> > +     int max_dpt_bpp;
> >       int ret =3D 0;
> >
> >       mst_state =3D drm_atomic_get_mst_topology_state(state, &intel_dp-=
>mst_mgr);
> > @@ -180,6 +178,13 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(st=
ruct intel_encoder *encoder,
> >                                                     crtc_state->port_cl=
ock,
> >                                                     crtc_state->lane_co=
unt);
> >
> > +     max_dpt_bpp =3D intel_dp_mst_max_dpt_bpp(crtc_state, dsc);
> > +     if (max_bpp > max_dpt_bpp) {
> > +             drm_dbg_kms(&i915->drm, "Limiting bpp to max DPT bpp (%d =
-> %d)\n",
> > +                         max_bpp, max_dpt_bpp);
> > +             max_bpp =3D max_dpt_bpp;
> > +     }
> > +
> >       drm_dbg_kms(&i915->drm, "Looking for slots in range min bpp %d ma=
x bpp %d\n",
> >                   min_bpp, max_bpp);
> >
> > @@ -191,10 +196,6 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(st=
ruct intel_encoder *encoder,
> >
> >               drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
> >
> > -             ret =3D intel_dp_mst_check_constraints(i915, bpp, adjuste=
d_mode, crtc_state, dsc);
> > -             if (ret)
> > -                     continue;
> > -
> >               link_bpp_x16 =3D to_bpp_x16(dsc ? bpp :
> >                                         intel_dp_output_bpp(crtc_state-=
>output_format, bpp));
> >
