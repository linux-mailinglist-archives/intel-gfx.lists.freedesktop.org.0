Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D16520ED3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 09:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65D0710F5AB;
	Tue, 10 May 2022 07:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC3710F5AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 07:41:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652168509; x=1683704509;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=rUNVqihqYAyt7XVrgjxxX/9+qoxX6V9vm3Un+XsfInw=;
 b=YJByDObtbk5P4hjM6s9GLhs3302S8SiiifLzodfvesoLunQv6PJM01Db
 lcd75JNmu6rbjACEfuYzXLt33kqj3WF+0UclHeaAqbBYwj51p72CTRY8r
 K7Nfj8nVIYhr1eC8gNnXpj6qEG7qOZwaJZCtINeWwhQjXvSFRmQ7ARyfK
 IEX+tY24x+u7wLWwJYcRe7NRH3wHANTp3aoQNnVnMw+qutJ2fnNPjy4iK
 AIrc/0Y1fEOEg6QsZaZb5qMdPDeOr2G4ZgfCL6DtD8NM7rmCLgs8E+G1R
 v0rJXaBmlbjwl4D8zToE3md1Z5nCG9XcyJguW8n09MI4+ABXWrxJpjC2v w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="251341396"
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="251341396"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:41:49 -0700
X-IronPort-AV: E=Sophos;i="5.91,213,1647327600"; d="scan'208";a="738559580"
Received: from akulikow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.144.37])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 00:41:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Souza, Jose"
 <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <165216392440.6877.2731939801619952697@jlahtine-mobl.ger.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220507132850.10272-1-jose.souza@intel.com>
 <20220507132850.10272-16-jose.souza@intel.com>
 <165209993727.58716.2402465688742600537@jlahtine-mobl.ger.corp.intel.com>
 <085c5569598a5708f68ebea78e8683ffc1893f04.camel@intel.com>
 <165216392440.6877.2731939801619952697@jlahtine-mobl.ger.corp.intel.com>
Date: Tue, 10 May 2022 10:41:44 +0300
Message-ID: <87czglkf5z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 10 May 2022, Joonas Lahtinen <joonas.lahtinen@linux.intel.com> wrot=
e:
> Quoting Souza, Jose (2022-05-09 17:19:28)
>> On Mon, 2022-05-09 at 15:38 +0300, Joonas Lahtinen wrote:
>> > Quoting Jos=C3=A9 Roberto de Souza (2022-05-07 16:28:50)
>> > > No need to have this parameter in intel_device_info struct
>> > > as this feature is supported by Broadwell, Haswell all platforms with
>> > > display version 9 or newer.
>> >=20
>> > This is opposite of the direction we want to move to.
>> >=20
>> > We want to embrace the has_xyz flags, instead of the macro trickery.
>>=20
>> This ever growing flag definition is causing problems when defining new =
platforms.
>
> The ever growing macros that change between kernel versions are much
> more painful than easily printable list per SKU.
>
> Just to make it clear, a strict NACK from me for merging any patches
> into this direction.

I was hoping to start a discussion to reach consensus on this with my
mail [1], adding all maintainers in Cc, but merging started before the
discussion really even started.

Obviously no further patches on this are to be merged, and the question
now is really what to do with the ones that were. Revert?


BR,
Jani.


[1] https://lore.kernel.org/r/87sfpol0kz.fsf@intel.com

>
> Regards, Joonas
>
>>=20
>> There is too many features to check if a new platform supports each one =
of it, what is leading to platform definition errors.
>>=20
>> Also usually when a feature is dropped a HSD will be filed, so the perso=
n taking care of that can just adjust the macro upper platform or IP bound =
and
>> disable it for good.=20
>>=20
>> >=20
>> > > As a side effect of the of removal this flag, it will not be printed
>> > > in dmesg during driver load anymore and developers will have to rely
>> > > on to check the macro and compare with platform being used and IP
>> > > versions of it.
>> >=20
>> > This is not a very good rationale. If the platform has something, but =
it
>> > becomes disabled in runtime, then we should add an another print after
>> > the runtime sanitization has been done.
>>=20
>> In my opinion this flags should only change in runtime if the feature is=
 fused off like is done for has_dsc and has_dmc.
>>=20
>> >=20
>> > Regards, Joonas
>> >=20
>> > >=20
>> > > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>> > >  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>> > >  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>> > >  3 files changed, 3 insertions(+), 5 deletions(-)
>> > >=20
>> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/=
i915_drv.h
>> > > index 4b1025dbaab2a..4a1edf48d37b9 100644
>> > > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > > @@ -1306,7 +1306,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *=
i915,
>> > >                                           IS_BROADWELL(dev_priv) || \
>> > >                                           IS_HASWELL(dev_priv))
>> > >  #define HAS_DP_MST(dev_priv)            (HAS_DDI(dev_priv))
>> > > -#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->dis=
play.has_fpga_dbg)
>> > > +#define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (DISPLAY_VER(dev_priv) >=
=3D 9 || \
>> > > +                                         IS_BROADWELL(dev_priv) || \
>> > > +                                         IS_HASWELL(dev_priv))
>> > >  #define HAS_PSR(dev_priv)               (DISPLAY_VER(dev_priv) >=3D=
 9)
>> > >  #define HAS_PSR2_SEL_FETCH(dev_priv)    (DISPLAY_VER(dev_priv) >=3D=
 12)
>> > >  #define HAS_TRANSCODER(dev_priv, trans)         ((INTEL_INFO(dev_pr=
iv)->display.cpu_transcoder_mask & BIT(trans)) !=3D 0)
>> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/=
i915_pci.c
>> > > index 5a42acb162a15..6a5b70b3ea2d7 100644
>> > > --- a/drivers/gpu/drm/i915/i915_pci.c
>> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
>> > > @@ -523,7 +523,6 @@ static const struct intel_device_info vlv_info =
=3D {
>> > >         .platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0) =
| BIT(VECS0), \
>> > >         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRA=
NSCODER_B) | \
>> > >                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>> > > -       .display.has_fpga_dbg =3D 1, \
>> > >         HSW_PIPE_OFFSETS
>> > >=20=20
>> > >  #define HSW_PLATFORM \
>> > > @@ -657,7 +656,6 @@ static const struct intel_device_info skl_gt4_in=
fo =3D {
>> > >         .display.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRA=
NSCODER_B) | \
>> > >                 BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>> > >                 BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>> > > -       .display.has_fpga_dbg =3D 1, \
>> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A), \
>> > >         .display.has_hdcp =3D 1, \
>> > >         .display.has_dmc =3D 1, \
>> > > @@ -894,7 +892,6 @@ static const struct intel_device_info adl_s_info=
 =3D {
>> > >         .display.has_dmc =3D 1,                                     =
              \
>> > >         .display.has_dsc =3D 1,                                     =
              \
>> > >         .display.fbc_mask =3D BIT(INTEL_FBC_A),                     =
              \
>> > > -       .display.has_fpga_dbg =3D 1,                                =
              \
>> > >         .display.has_hdcp =3D 1,                                    =
              \
>> > >         .display.has_hotplug =3D 1,                                 =
              \
>> > >         .display.ver =3D 13,                                        =
              \
>> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/=
drm/i915/intel_device_info.h
>> > > index 7581ef4a68f94..e61a334b611ac 100644
>> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
>> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> > > @@ -157,7 +157,6 @@ enum intel_ppgtt_type {
>> > >         func(has_cdclk_crawl); \
>> > >         func(has_dmc); \
>> > >         func(has_dsc); \
>> > > -       func(has_fpga_dbg); \
>> > >         func(has_gmch); \
>> > >         func(has_hdcp); \
>> > >         func(has_hotplug); \
>> > > --=20
>> > > 2.36.0
>> > >=20
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
