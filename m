Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D40F520057
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 16:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BCAD10E1C6;
	Mon,  9 May 2022 14:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1451E10EB72
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 14:53:24 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id k8so5826907qki.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 May 2022 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=qV4UFsrb/pXq1AP1DhhlRi8lopvyNmZgZ2yC2/NXwkA=;
 b=pl/CKGPEy9BJb5De7LuB3bJbQI203SmmfNml9hzxU94NV16VU0YkuL1dGoEU+K+Tc6
 OSRnAtwoXoK9HDwXnulpczW4RZ7Q7RU7RxO9KUk0PC45tOJKGoohM5tMuh/vDDBstUEu
 UenxeSpjdHdh0bqgOPKLvJjYNpoKFs9RjwTWZS/vELFy0QjxmVdDknUEtZGABBMZvFLG
 PO1ijPwvK6wbdNRs1TEPp4L/vixLO5KWmFXgA3N3hqh7aj5ZFGUb+e10+WcYRVFUUt3V
 fy3AP1vTQT9tdKPcQqYAC4N9NW24z6SKkX3UmqVvPkrEDLiaSdrIYahvzv8+DB+XJjr9
 EqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=qV4UFsrb/pXq1AP1DhhlRi8lopvyNmZgZ2yC2/NXwkA=;
 b=HE/pDg1uUEZBdtl3gOoP9l5Xf42ICOUdz63nCHxC1VjJ8qRfi8qgfSewQwRqNvhsCJ
 7uRfa8X6Cn6V1M+PLRHHsZZ52FNK9+A0s6xe0YsQyG00+bNN11CgbP3kS+mMC6CwTz2K
 bM0CpJzhQmhnus9n2izbdLsEyJ/uvddafX5BPfQjdl0C43eUo8/UpldfFfYumL4xS5ur
 bfL4ctCrrDV/CKNgYjxAqtJkLLusfxYj11MynpLKq9O+n3O0U/aPGygmulZCvU8J1+VG
 dERAfD84q5rY04CozT0KVxLbg1xYoR2eBmQL8qPSMx2Rlbv5lfG5FoXNKLghl8xZlNZv
 ayyg==
X-Gm-Message-State: AOAM531vypmnI0ph+rFE6C0JBpP36XrKklN2iyS4+jRVRs5h2xjwYLc7
 9kpJZI35uIwPW3KBRyTQ1jMO2PIi9heWnpolWfQ=
X-Google-Smtp-Source: ABdhPJxpor6qYJFbyqh2bhd8y8gmAwOyIM8zkqDEMtt1Ne8aiZQ6j4fgAzM+Ra1iR/Q88KhcnEZE8bioI2yAGpwsNJU=
X-Received: by 2002:a37:a1c5:0:b0:6a0:38ab:da41 with SMTP id
 k188-20020a37a1c5000000b006a038abda41mr11593006qke.519.1652108003091; Mon, 09
 May 2022 07:53:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220507132850.10272-1-jose.souza@intel.com>
 <CAM0jSHP30-kpt-QMyY6Y7s=z81AnDWyniec6ZRHAF9QFTzUS4g@mail.gmail.com>
 <f9248278105b399c519ae1c9a98ae40dcdefcc2d.camel@intel.com>
In-Reply-To: <f9248278105b399c519ae1c9a98ae40dcdefcc2d.camel@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 9 May 2022 15:52:57 +0100
Message-ID: <CAM0jSHP23jB51vLOtCTEbPXmNMoVOPCEG-vo4BbJETWMEPNfMA@mail.gmail.com>
To: "Souza, Jose" <jose.souza@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: Drop has_llc from device
 info
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 9 May 2022 at 15:05, Souza, Jose <jose.souza@intel.com> wrote:
>
> On Mon, 2022-05-09 at 12:09 +0100, Matthew Auld wrote:
> > On Sat, 7 May 2022 at 14:29, Jos=C3=A9 Roberto de Souza <jose.souza@int=
el.com> wrote:
> > >
> > > This feature is supported in graphics version 6 and newer in all
> > > integrated GPUs not including VLC and CHV, so we can drop this flag
> > > for a not so complicated macro check.
> >
> > s/VLC/VLV/ ?
>
> yep, thanks.
>
> >
> > There are also some gen9/10 platforms that only have snooping.
>
> That is not reflected into current platform definition.

See glk_info/bxt_info.

> Can you point out the spec pages?
>
> >
> > >
> > > For this flag we were lucky as XE_HP_FEATURES was setting it to true
> > > while DGFX_FEATURES was setting it to false and xehpsdv and DG2 were
> > > using those macros in this givin order if it was the other way around=
,
> > > some code paths would follow the HAS_LLC path while LLC is not
> > > available in hardware and was not initialized in software.
> > >
> > > As a side effect of the of removal this flag, it will not be printed
> > > in dmesg during driver load anymore and developers will have to rely
> > > on to check the macro and compare with platform being used and IP
> > > versions of it.
> > >
> > > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_llc.c      | 2 +-
> > >  drivers/gpu/drm/i915/i915_drv.h          | 5 ++++-
> > >  drivers/gpu/drm/i915/i915_pci.c          | 4 ----
> > >  drivers/gpu/drm/i915/intel_device_info.h | 1 -
> > >  4 files changed, 5 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i9=
15/gt/intel_llc.c
> > > index 40e2e28ee6c75..ffcff51ee6e47 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_llc.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_llc.c
> > > @@ -52,7 +52,7 @@ static bool get_ia_constants(struct intel_llc *llc,
> > >         struct drm_i915_private *i915 =3D llc_to_gt(llc)->i915;
> > >         struct intel_rps *rps =3D &llc_to_gt(llc)->rps;
> > >
> > > -       if (!HAS_LLC(i915) || IS_DGFX(i915))
> > > +       if (!HAS_LLC(i915))
> > >                 return false;
> > >
> > >         if (rps->max_freq <=3D rps->min_freq)
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i=
915_drv.h
> > > index 6dfaf7fce9156..fd5269845e9ad 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1236,7 +1236,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *=
i915,
> > >   */
> > >  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) =3D=3D=
 7)
> > >
> > > -#define HAS_LLC(dev_priv)      (INTEL_INFO(dev_priv)->has_llc)
> > > +#define HAS_LLC(dev_priv)      (!IS_DGFX(dev_priv) && (GRAPHICS_VER(=
dev_priv) >=3D 8 || \
> > > +                                                       IS_HASWELL(de=
v_priv) || \
> > > +                                                       IS_IVYBRIDGE(=
dev_priv) || \
> > > +                                                       IS_SANDYBRIDG=
E(dev_priv)))
> > >  #define HAS_4TILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
> > >  #define HAS_SNOOP(dev_priv)    (INTEL_INFO(dev_priv)->has_snoop)
> > >  #define HAS_EDRAM(dev_priv)    ((dev_priv)->edram_size_mb)
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i=
915_pci.c
> > > index 799573a5e5a6f..30a32a5d0e3c9 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -404,7 +404,6 @@ static const struct intel_device_info ilk_m_info =
=3D {
> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
> > >         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), =
\
> > >         .has_coherent_ggtt =3D true, \
> > > -       .has_llc =3D 1, \
> > >         .has_rc6p =3D 1, \
> > >         .has_rps =3D true, \
> > >         .dma_mask_size =3D 40, \
> > > @@ -454,7 +453,6 @@ static const struct intel_device_info snb_m_gt2_i=
nfo =3D {
> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
> > >         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), =
\
> > >         .has_coherent_ggtt =3D true, \
> > > -       .has_llc =3D 1, \
> > >         .has_rc6p =3D 1, \
> > >         .has_rps =3D true, \
> > >         .dma_mask_size =3D 40, \
> > > @@ -878,7 +876,6 @@ static const struct intel_device_info rkl_info =
=3D {
> > >
> > >  #define DGFX_FEATURES \
> > >         .memory_regions =3D REGION_SMEM | REGION_LMEM | REGION_STOLEN=
_LMEM, \
> > > -       .has_llc =3D 0, \
> > >         .has_pxp =3D 0, \
> > >         .has_snoop =3D 1, \
> > >         .is_dgfx =3D 1, \
> > > @@ -985,7 +982,6 @@ static const struct intel_device_info adl_p_info =
=3D {
> > >         .has_64bit_reloc =3D 1, \
> > >         .has_flat_ccs =3D 1, \
> > >         .has_global_mocs =3D 1, \
> > > -       .has_llc =3D 1, \
> > >         .has_logical_ring_contexts =3D 1, \
> > >         .has_mslices =3D 1, \
> > >         .has_rps =3D 1, \
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/d=
rm/i915/intel_device_info.h
> > > index a2e53b8683285..e8d53c7a1bd83 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -149,7 +149,6 @@ enum intel_ppgtt_type {
> > >         func(has_heci_gscfi); \
> > >         func(has_guc_deprivilege); \
> > >         func(has_l3_dpf); \
> > > -       func(has_llc); \
> > >         func(has_logical_ring_contexts); \
> > >         func(has_mslices); \
> > >         func(has_pooled_eu); \
> > > --
> > > 2.36.0
> > >
>
