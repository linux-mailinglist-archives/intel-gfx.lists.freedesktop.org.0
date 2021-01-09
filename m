Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1501F2EFC12
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 01:20:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C43D6E8E3;
	Sat,  9 Jan 2021 00:20:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373B36E8E6
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Jan 2021 00:20:53 +0000 (UTC)
IronPort-SDR: DtRQ/FuIv+LKKfp9oyUdWKf/UIKrsGvgIP0dXI8Yc64yUjkgvdmROzG6rnQug2hiLk134OUwL6
 sEdNaCQ1rgtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="164750832"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="164750832"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 16:20:51 -0800
IronPort-SDR: kWW7b+oWoMdajdoLcuK7bnY6+MutA3+LSyQCs8X36WOXy+r/6SOT6VaZ0Km65OPeIOO6w7QXJS
 z/L4uE+GT9Cw==
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="396462208"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 16:20:51 -0800
Date: Fri, 8 Jan 2021 16:20:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20210109002050.GQ3894148@mdroper-desk1.amr.corp.intel.com>
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-3-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210108231853.2859646-3-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/adl_s: Add ADL-S platform info
 and PCI ids
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 08, 2021 at 03:18:53PM -0800, Aditya Swarup wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> =

> - Add the initial platform information for Alderlake-S.
> - Specify ppgtt_size value
> - Add dma_mask_size
> - Add ADLS REVIDs
> - HW tracking(Selective Update Tracking Enable) has been
>   removed from ADLS. Disable PSR2 till we enable software/
>   manual tracking.
> =

> v2:
> - Add support for different ADLS SOC steppings to select
>   correct GT/DISP stepping based on Bspec 53655 based on
>   feedback from Matt Roper.(aswarup)
> =

> v3:
> - Make display/gt steppings info generic for reuse with TGL and ADLS.
> - Modify the macros to reuse tgl_revids_get()
> - Add HTI support to adls device info.(mdroper)
> =

> v4:
> - Rebase on TGL patch for applying WAs based on stepping info from
>   Matt Roper's feedback.(aswarup)
> =

> Bspec: 53597
> Bspec: 53648
> Bspec: 53655
> Bspec: 48028
> Bspec: 53650
> BSpec: 50422
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  8 ++++++
>  drivers/gpu/drm/i915/i915_drv.h             | 27 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_pci.c             | 13 ++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c    |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h    |  1 +
>  include/drm/i915_pciids.h                   | 11 +++++++++
>  6 files changed, 60 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/dr=
m/i915/gt/intel_workarounds.c
> index 111d01e2f81e..c89bd653af17 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -84,6 +84,14 @@ const struct i915_rev_steppings tgl_revid_step_tbl[] =
=3D {
>  	[1] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP_D0 },
>  };
>  =

> +const struct i915_rev_steppings adls_revid_step_tbl[] =3D {
> +	[ADLS_REVID_A0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP=
_A0 },
> +	[ADLS_REVID_A2] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D STEP=
_A2 },
> +	[ADLS_REVID_B0] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D STEP=
_B0 },
> +	[ADLS_REVID_G0] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D STEP=
_B0 },
> +	[ADLS_REVID_C0] =3D { .gt_stepping =3D STEP_D0, .disp_stepping =3D STEP=
_C0 },
> +};

Now that we've disassociated IP steppings from revision ID, I don't
think we should use stepping terminology for the constant inputs to the
array anymore.  The terms you're using seem to roughly correspond to
what the bspec refers to as "SOC stepping" but even that's not terribly
accurate since, for example, PCI revision ID 0xC is used for SoC
steppings C0, C1, D0, and H0.  I'd just use the exact numeric PCI ID as
documented in the bspec to remove any ambiguity:

        const struct i915_rev_steppings adls_revid_step_tbl[] =3D {
                [0x0] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D ST=
EP_A0 },
                [0x1] =3D { .gt_stepping =3D STEP_A0, .disp_stepping =3D ST=
EP_A2 },
                [0x4] =3D { .gt_stepping =3D STEP_B0, .disp_stepping =3D ST=
EP_B0 },
                [0x8] =3D { .gt_stepping =3D STEP_C0, .disp_stepping =3D ST=
EP_B0 },
                [0xC] =3D { .gt_stepping =3D STEP_D0, .disp_stepping =3D ST=
EP_C0 },
        };

That also matches how we're indexing into the TGL arrays.


Matt

> +
>  static void wa_init_start(struct i915_wa_list *wal, const char *name, co=
nst char *engine_name)
>  {
>  	wal->name =3D name;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 11d6e8abde46..8d8a046a7b0c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1417,6 +1417,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
>  #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
>  #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
> +#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> @@ -1560,6 +1561,7 @@ extern const struct i915_rev_steppings kbl_revids[];
>  =

>  enum {
>  	STEP_A0,
> +	STEP_A2,
>  	STEP_B0,
>  	STEP_B1,
>  	STEP_C0,
> @@ -1568,9 +1570,11 @@ enum {
>  =

>  #define TGL_UY_REVID_STEP_TBL_SIZE	4
>  #define TGL_REVID_STEP_TBL_SIZE		2
> +#define ADLS_REVID_STEP_TBL_SIZE	13
>  =

>  extern const struct i915_rev_steppings tgl_uy_revid_step_tbl[TGL_UY_REVI=
D_STEP_TBL_SIZE];
>  extern const struct i915_rev_steppings tgl_revid_step_tbl[TGL_REVID_STEP=
_TBL_SIZE];
> +extern const struct i915_rev_steppings adls_revid_step_tbl[ADLS_REVID_ST=
EP_TBL_SIZE];
>  =

>  static inline const struct i915_rev_steppings *
>  tgl_stepping_get(struct drm_i915_private *dev_priv)
> @@ -1579,7 +1583,10 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>  	u8 size;
>  	const struct i915_rev_steppings *revid_step_tbl;
>  =

> -	if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
> +	if (IS_ALDERLAKE_S(dev_priv)) {
> +		revid_step_tbl =3D adls_revid_step_tbl;
> +		size =3D ARRAY_SIZE(adls_revid_step_tbl);
> +	} else if (IS_TGL_U(dev_priv) || IS_TGL_Y(dev_priv)) {
>  		revid_step_tbl =3D tgl_uy_revid_step_tbl;
>  		size =3D ARRAY_SIZE(tgl_uy_revid_step_tbl);
>  	} else {
> @@ -1621,6 +1628,24 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
>  #define IS_DG1_REVID(p, since, until) \
>  	(IS_DG1(p) && IS_REVID(p, since, until))
>  =

> +#define ADLS_REVID_A0		0x0
> +#define ADLS_REVID_A2		0x1
> +#define ADLS_REVID_B0		0x4
> +#define ADLS_REVID_G0		0x8
> +#define ADLS_REVID_C0		0xC /*Same as H0 ADLS SOC stepping*/
> +
> +extern const struct i915_rev_steppings adls_revids[];
> +
> +#define IS_ADLS_DISP_STEPPING(p, since, until) \
> +	(IS_ALDERLAKE_S(p) && \
> +	 tgl_stepping_get(p)->disp_stepping >=3D (since) && \
> +	 tgl_stepping_get(p)->disp_stepping <=3D (until))
> +
> +#define IS_ADLS_GT_STEPPING(p, since, until) \
> +	(IS_ALDERLAKE_S(p) && \
> +	 tgl_stepping_get(p)->gt_stepping >=3D (since) && \
> +	 tgl_stepping_get(p)->gt_stepping <=3D (until))
> +
>  #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
>  #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
>  #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 11fe790b1969..26e4bf8bb4ef 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -925,6 +925,18 @@ static const struct intel_device_info dg1_info __may=
be_unused =3D {
>  	.ppgtt_size =3D 47,
>  };
>  =

> +static const struct intel_device_info adl_s_info =3D {
> +	GEN12_FEATURES,
> +	PLATFORM(INTEL_ALDERLAKE_S),
> +	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +	.require_force_probe =3D 1,
> +	.display.has_hti =3D 1,
> +	.display.has_psr_hw_tracking =3D 0,
> +	.platform_engine_mask =3D
> +		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> +	.dma_mask_size =3D 46,
> +};
> +
>  #undef GEN
>  #undef PLATFORM
>  =

> @@ -1001,6 +1013,7 @@ static const struct pci_device_id pciidlist[] =3D {
>  	INTEL_JSL_IDS(&jsl_info),
>  	INTEL_TGL_12_IDS(&tgl_info),
>  	INTEL_RKL_IDS(&rkl_info),
> +	INTEL_ADLS_IDS(&adl_s_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index f2d5ae59081e..699412c14c1d 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -66,6 +66,7 @@ static const char * const platform_names[] =3D {
>  	PLATFORM_NAME(TIGERLAKE),
>  	PLATFORM_NAME(ROCKETLAKE),
>  	PLATFORM_NAME(DG1),
> +	PLATFORM_NAME(ALDERLAKE_S),
>  };
>  #undef PLATFORM_NAME
>  =

> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 17d0fdb94d2d..d09857cdc954 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -84,6 +84,7 @@ enum intel_platform {
>  	INTEL_TIGERLAKE,
>  	INTEL_ROCKETLAKE,
>  	INTEL_DG1,
> +	INTEL_ALDERLAKE_S,
>  	INTEL_MAX_PLATFORMS
>  };
>  =

> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 931e46191047..ebd0dd1c35b3 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -634,4 +634,15 @@
>  	INTEL_VGA_DEVICE(0x4907, info), \
>  	INTEL_VGA_DEVICE(0x4908, info)
>  =

> +/* ADL-S */
> +#define INTEL_ADLS_IDS(info) \
> +	INTEL_VGA_DEVICE(0x4680, info), \
> +	INTEL_VGA_DEVICE(0x4681, info), \
> +	INTEL_VGA_DEVICE(0x4682, info), \
> +	INTEL_VGA_DEVICE(0x4683, info), \
> +	INTEL_VGA_DEVICE(0x4690, info), \
> +	INTEL_VGA_DEVICE(0x4691, info), \
> +	INTEL_VGA_DEVICE(0x4692, info), \
> +	INTEL_VGA_DEVICE(0x4693, info)
> +
>  #endif /* _I915_PCIIDS_H */
> -- =

> 2.27.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
