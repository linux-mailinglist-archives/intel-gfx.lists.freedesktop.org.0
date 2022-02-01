Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00E84A642A
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 19:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE7810E179;
	Tue,  1 Feb 2022 18:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D564910E121
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 18:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643741194; x=1675277194;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pjEVZhLGorHrgp9BrarZzbTKZXCBTJrZy/7fJUBwsZ0=;
 b=eoMHfuWL1fgrhOOZFB+DRATH173raKeVoHlbLX6fIehN42C1C4I7BMti
 ZcKJm/r3S4FkU4EkjuEr7DuEURKVzA+dTEXB0jE/iGPZFg6iEW4T8bE/E
 /csN4sKZJNfnOhM3aAbkzUJF8ZlsaCT9Tr1RVtdL9oxmD+z9vTRGqsGaA
 9uDpEAAM0i8eIjzPqSr3Fe/cvQjhOxbkpcJ2gmqdDlvpxsNxx5soXWa1B
 73kfJclahTskOUSvn2t9j+JRYh372Z0kgJovqKkz4UArXYUyTvQHizOUE
 yM283LkzQ97tHy0hXLm8b72OO/JBhHI91EGzLonuSHx9HHr6a2n3ZSFOS g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="272240458"
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="272240458"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 10:46:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,334,1635231600"; d="scan'208";a="565687601"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 01 Feb 2022 10:46:31 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 1 Feb 2022 10:46:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 1 Feb 2022 10:46:30 -0800
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.2308.020;
 Tue, 1 Feb 2022 10:46:30 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Introduce G12 subplatform of DG2
Thread-Index: AQHYDlh/Zc/idE7zqUurqWU5CMpH2ax/Gy6Q
Date: Tue, 1 Feb 2022 18:46:30 +0000
Message-ID: <375ed2b442a04e68a261d9204e568544@intel.com>
References: <20220120235016.1209326-1-matthew.d.roper@intel.com>
In-Reply-To: <20220120235016.1209326-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Introduce G12 subplatform of DG2
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Thursday, January 20, 2022 3:50 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915: Introduce G12 subplatform of DG2
>=20
> Another fork of the DG2 design has appeared, known as "DG2-G12;" let's
> add it as a new subplatform.  As with G11, the GT stepping resets back
> to A0 (so a DG2-G12 A0 is similar, but not identical, to a DG2-G10 C0)
> but the display steppings continue to use the same numbering scheme as
> G10 and G11.
>=20
> Some existing DG2 workarounds are starting to be extended to the DG2-G12
> subplatform.  So far only workarounds that were "permanent" for both
> DG2-G10 and DG2-G11 have been tagged for DG2-G12, but more
> stepping-specific workarounds are likely to show up in the future.
>=20
> Bspec: 44477
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h             | 19 +++++++++++--------
>  drivers/gpu/drm/i915/intel_device_info.h    |  3 ++-
>  drivers/gpu/drm/i915/intel_step.c           |  7 +++++++
>  4 files changed, 21 insertions(+), 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 6a4372c3a3c5..2d2e3ae9c997 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2077,7 +2077,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)
>  	}
>=20
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0,
> STEP_FOREVER) ||
> -	    IS_DG2_G11(engine->i915)) {
> +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915)) {
>  		/* Wa_22013037850:dg2 */
>  		wa_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
>  			    DISABLE_128B_EVICTION_COMMAND_UDW);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 890f1f6fbc49..a2fe5a0a7acd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1262,6 +1262,8 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>  #define IS_DG2_G11(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G11)
> +#define IS_DG2_G12(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_DG2, INTEL_SUBPLATFORM_G12)
>  #define IS_ADLS_RPLS(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_S,
> INTEL_SUBPLATFORM_RPL_S)
>  #define IS_ADLP_N(dev_priv) \
> @@ -1378,16 +1380,17 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,
>  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>=20
>  /*
> - * DG2 hardware steppings are a bit unusual.  The hardware design was fo=
rked
> - * to create two variants (G10 and G11) which have distinct workaround s=
ets.
> - * The G11 fork of the DG2 design resets the GT stepping back to "A0" fo=
r its
> - * first iteration, even though it's more similar to a G10 B0 stepping i=
n terms
> - * of functionality and workarounds.  However the display stepping does =
not
> - * reset in the same manner --- a specific stepping like "B0" has a cons=
istent
> - * meaning regardless of whether it belongs to a G10 or G11 DG2.
> + * DG2 hardware steppings are a bit unusual.  The hardware design was fo=
rked
> to
> + * create three variants (G10, G11, and G12) which each have distinct
> + * workaround sets.  The G11 and G12 forks of the DG2 design reset the G=
T
> + * stepping back to "A0" for their first iterations, even though they're=
 more
> + * similar to a G10 B0 stepping and G10 C0 stepping respectively in term=
s of
> + * functionality and workarounds.  However the display stepping does not=
 reset
> + * in the same manner --- a specific stepping like "B0" has a consistent
> + * meaning regardless of whether it belongs to a G10, G11, or G12 DG2.
>   *
>   * TLDR:  All GT workarounds and stepping-specific logic must be applied=
 in
> - * relation to a specific subplatform (G10 or G11), whereas display work=
arounds
> + * relation to a specific subplatform (G10/G11/G12), whereas display
> workarounds
>   * and stepping-specific logic will be applied with a general DG2-wide s=
tepping
>   * number.
>   */
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> b/drivers/gpu/drm/i915/intel_device_info.h
> index 3699b1c539ea..364abcc7aa54 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -96,7 +96,7 @@ enum intel_platform {
>   * it is fine for the same bit to be used on multiple parent platforms.
>   */
>=20
> -#define INTEL_SUBPLATFORM_BITS (2)
> +#define INTEL_SUBPLATFORM_BITS (3)
>  #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
>=20
>  /* HSW/BDW/SKL/KBL/CFL */
> @@ -109,6 +109,7 @@ enum intel_platform {
>  /* DG2 */
>  #define INTEL_SUBPLATFORM_G10	0
>  #define INTEL_SUBPLATFORM_G11	1
> +#define INTEL_SUBPLATFORM_G12	2
>=20
>  /* ADL-S */
>  #define INTEL_SUBPLATFORM_RPL_S	0
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index a4b16b9e2e55..46556883e93d 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -122,6 +122,10 @@ static const struct intel_step_info
> dg2_g11_revid_step_tbl[] =3D {
>  	[0x5] =3D { COMMON_GT_MEDIA_STEP(B1), .display_step =3D STEP_C0 },
>  };
>=20
> +static const struct intel_step_info dg2_g12_revid_step_tbl[] =3D {
> +	[0x0] =3D { COMMON_GT_MEDIA_STEP(A0), .display_step =3D STEP_C0 },
> +};
> +
>  void intel_step_init(struct drm_i915_private *i915)
>  {
>  	const struct intel_step_info *revids =3D NULL;
> @@ -135,6 +139,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_DG2_G11(i915)) {
>  		revids =3D dg2_g11_revid_step_tbl;
>  		size =3D ARRAY_SIZE(dg2_g11_revid_step_tbl);
> +	} else if (IS_DG2_G12(i915)) {
> +		revids =3D dg2_g12_revid_step_tbl;
> +		size =3D ARRAY_SIZE(dg2_g12_revid_step_tbl);
>  	} else if (IS_XEHPSDV(i915)) {
>  		revids =3D xehpsdv_revids;
>  		size =3D ARRAY_SIZE(xehpsdv_revids);
> --
> 2.34.1

