Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B870520DDA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 08:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4E110EC23;
	Tue, 10 May 2022 06:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7C710EC23
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 06:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652163928; x=1683699928;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:subject:to:from:message-id:date;
 bh=+qD5zE24LEVr8CbCrh07zC+/4ON0uyumEHNZBM/OGks=;
 b=JprN6hyA1I1LLxBMLNXpbfUyRBRxdk2V9R3bnMI9aFFISHEnatQnLjrI
 2fSy4GOLhwgNrituLPbEVzOzcA41S9e/46IR5YQEhRHosXFjVlehF8aQK
 xjcu5ZyAAqyLKuGZC57CNVlGXtBGRLsSjveG5dzAJ53KT7j1qZxoPo9pb
 /V0GAmWsgstdgL1yRxUwBnEtv9v28aku9zS4qaHVtF10cFhNeX5eCD/em
 np7TdGiiyP7Jg34vc/3pHLY4amIxV37TT0U4UBCK7YtbbjomZGYbNu5jL
 xjC74PC9MdO0iVQ6LoCIuUKOH+pU257AXgn0CMy3SX0eIy2+q52BjK1ks Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="268117729"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="268117729"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:25:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="593323855"
Received: from camar-mobl.ger.corp.intel.com (HELO localhost) ([10.252.48.132])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 23:25:26 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <085c5569598a5708f68ebea78e8683ffc1893f04.camel@intel.com>
References: <20220507132850.10272-1-jose.souza@intel.com>
 <20220507132850.10272-16-jose.souza@intel.com>
 <165209993727.58716.2402465688742600537@jlahtine-mobl.ger.corp.intel.com>
 <085c5569598a5708f68ebea78e8683ffc1893f04.camel@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <165216392440.6877.2731939801619952697@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Tue, 10 May 2022 09:25:24 +0300
Subject: Re: [Intel-gfx] [PATCH 16/16] drm/i915: Drop display.has_fpga_db
 from device info
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

Quoting Souza, Jose (2022-05-09 17:19:28)
> On Mon, 2022-05-09 at 15:38 +0300, Joonas Lahtinen wrote:
> > Quoting Jos=C3=A9 Roberto de Souza (2022-05-07 16:28:50)
> > > No need to have this parameter in intel_device_info struct
> > > as this feature is supported by Broadwell, Haswell all platforms with
> > > display version 9 or newer.
> >=20
> > This is opposite of the direction we want to move to.
> >=20
> > We want to embrace the has_xyz flags, instead of the macro trickery.
>=20
> This ever growing flag definition is causing problems when defining new p=
latforms.

The ever growing macros that change between kernel versions are much
more painful than easily printable list per SKU.

Just to make it clear, a strict NACK from me for merging any patches
into this direction.

Regards, Joonas

>=20
> There is too many features to check if a new platform supports each one o=
f it, what is leading to platform definition errors.
>=20
> Also usually when a feature is dropped a HSD will be filed, so the person=
 taking care of that can just adjust the macro upper platform or IP bound a=
nd
> disable it for good.=20
>=20
> >=20
> > > As a side effect of the of removal this flag, it will not be printed
> > > in dmesg during driver load anymore and developers will have to rely
> > > on to check the macro and compare with platform being used and IP
> > > versions of it.
> >=20
> > This is not a very good rationale. If the platform has something, but it
> > becomes disabled in runtime, then we should add an another print after
> > the runtime sanitization has been done.
>=20
> In my opinion this flags should only change in runtime if the feature is =
fused off like is done for has_dsc and has_dmc.
>=20
> >=20
> > Regards, Joonas
> >=20
> > >=20
> > > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
> > >  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
> > >  drivers/gpu/drm/i915/intel_device_info.h | 1 -
> > >  3 files changed, 3 insertions(+), 5 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i=
915_drv.h
> > > index 4b1025dbaab2a..4a1edf48d37b9 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1306,7 +1306,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i=
915,
> > >                                           IS_BROADWELL(dev_priv) || \
> > >                                           IS_HASWELL(dev_priv))
> > >  #define HAS_DP_MST(dev_priv)            (HAS_DDI(dev_priv))
> > > -#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->disp=
lay.has_fpga_dbg)
> > > +#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (DISPLAY_VER(dev_priv) >=3D=
 9 || \
> > > +                                         IS_BROADWELL(dev_priv) || \
> > > +                                         IS_HASWELL(dev_priv))
> > >  #define HAS_PSR(dev_priv)               (DISPLAY_VER(dev_priv) >=3D =
9)
> > >  #define HAS_PSR2_SEL_FETCH(dev_priv)    (DISPLAY_VER(dev_priv) >=3D =
12)
> > >  #define HAS_TRANSCODER(dev_priv, trans)         ((INTEL_INFO(dev_pri=
v)->display.cpu_transcoder_mask & BIT(trans)) !=3D 0)
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i=
915_pci.c
> > > index 5a42acb162a15..6a5b70b3ea2d7 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -523,7 +523,6 @@ static const struct intel_device_info vlv_info =
=3D {
> > >         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) |=
 BIT(VECS0), \
> > >         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRAN=
SCODER_B) | \
> > >                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> > > -       .display.has_fpga_dbg =3D 1, \
> > >         HSW_PIPE_OFFSETS
> > > =20
> > >  #define HSW_PLATFORM \
> > > @@ -657,7 +656,6 @@ static const struct intel_device_info skl_gt4_inf=
o =3D {
> > >         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRAN=
SCODER_B) | \
> > >                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
> > >                 BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
> > > -       .display.has_fpga_dbg =3D 1, \
> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
> > >         .display.has_hdcp =3D 1, \
> > >         .display.has_dmc =3D 1, \
> > > @@ -894,7 +892,6 @@ static const struct intel_device_info adl_s_info =
=3D {
> > >         .display.has_dmc =3D 1,                                      =
             \
> > >         .display.has_dsc =3D 1,                                      =
             \
> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A),                      =
             \
> > > -       .display.has_fpga_dbg =3D 1,                                 =
             \
> > >         .display.has_hdcp =3D 1,                                     =
             \
> > >         .display.has_hotplug =3D 1,                                  =
             \
> > >         .display.ver =3D 13,                                         =
             \
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/d=
rm/i915/intel_device_info.h
> > > index 7581ef4a68f94..e61a334b611ac 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -157,7 +157,6 @@ enum intel_ppgtt_type {
> > >         func(has_cdclk_crawl); \
> > >         func(has_dmc); \
> > >         func(has_dsc); \
> > > -       func(has_fpga_dbg); \
> > >         func(has_gmch); \
> > >         func(has_hdcp); \
> > >         func(has_hotplug); \
> > > --=20
> > > 2.36.0
> > >=20
>=20
