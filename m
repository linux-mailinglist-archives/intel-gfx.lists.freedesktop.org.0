Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 896E2297664
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 20:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016636E364;
	Fri, 23 Oct 2020 18:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C086E364
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 18:05:36 +0000 (UTC)
IronPort-SDR: ex/St3T7sdakdX6zP22iLGS6f+GAua94NwWeNbwqZRJqps7V6hIDtaMKWkvVT1BUjtSStdytoA
 VkXprVmCu9Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="167806773"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="167806773"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 11:05:35 -0700
IronPort-SDR: vuwoGmtSbRpNrngoz4HVxEHFcIIakUILPkLQyR8bD4s03woGBs7c8i1zP0D/4xI3jHvGzb2dUY
 eRjt8Sai0Zbw==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="524756994"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 11:05:35 -0700
Date: Fri, 23 Oct 2020 11:05:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201023180533.GY627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-2-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021133213.328994-2-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/18] drm/i915/adl_s: Add ADL-S platform
 info and PCI ids
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

On Wed, Oct 21, 2020 at 06:31:56AM -0700, Aditya Swarup wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> =

> - Add the initial platform information for Alderlake-S.
> - Specify ppgtt_size value
> - Add dma_mask_size
> - Add ADLS REVIDs
> - HW tracking(Selective Update Tracking Enable) has been removed from
>   ADLS. Disable PSR2 till we enable software/manual tracking.
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
>  drivers/gpu/drm/i915/i915_drv.h          |  9 +++++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 12 ++++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  include/drm/i915_pciids.h                | 13 +++++++++++++
>  5 files changed, 36 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index bcd8650603d8..4fea3d5e01f4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1424,6 +1424,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_TIGERLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_TIGERLAKE)
>  #define IS_ROCKETLAKE(dev_priv)	IS_PLATFORM(dev_priv, INTEL_ROCKETLAKE)
>  #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
> +#define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> @@ -1613,6 +1614,14 @@ tgl_revids_get(struct drm_i915_private *dev_priv)
>  #define IS_DG1_REVID(p, since, until) \
>  	(IS_DG1(p) && IS_REVID(p, since, until))
>  =

> +#define ADLS_REVID_A0		0x0
> +#define ADLS_REVID_B0		0x4
> +#define ADLS_REVID_C0		0x8
> +#define ADLS_REVID_D0		0xC
> +
> +#define IS_ADLS_REVID(p, since, until) \
> +       (IS_ALDERLAKE_S(p) && IS_REVID(p, since, until))

Based on bspec 53655 it doesn't look like it's this simple anymore; the
display stepping and gfx/media stepping aren't the same for a given
revid.  We'll need to do something like we have on TGL and have a table
that maps them for use with IS_ADLS_GT_REVID() and IS_ADLS_DISP_REVID().


Matt

> +
>  #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
>  #define IS_GEN9_LP(dev_priv)	(IS_GEN(dev_priv, 9) && IS_LP(dev_priv))
>  #define IS_GEN9_BC(dev_priv)	(IS_GEN(dev_priv, 9) && !IS_LP(dev_priv))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 27964ac0638a..d39a7389b305 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -924,6 +924,17 @@ static const struct intel_device_info dg1_info __may=
be_unused =3D {
>  	.ppgtt_size =3D 47,
>  };
>  =

> +static const struct intel_device_info adl_s_info =3D {
> +	GEN12_FEATURES,
> +	PLATFORM(INTEL_ALDERLAKE_S),
> +	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +	.require_force_probe =3D 1,
> +	.display.has_psr_hw_tracking =3D 0,
> +	.platform_engine_mask =3D
> +		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> +	.dma_mask_size =3D 46,
> +};
> +
>  #undef GEN
>  #undef PLATFORM
>  =

> @@ -1000,6 +1011,7 @@ static const struct pci_device_id pciidlist[] =3D {
>  	INTEL_JSL_IDS(&jsl_info),
>  	INTEL_TGL_12_IDS(&tgl_info),
>  	INTEL_RKL_IDS(&rkl_info),
> +	INTEL_ADLS_IDS(&adl_s_info),
>  	{0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index e67cec8fa2aa..7310e019c611 100644
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
> index d92fa041c700..360f3f1835f5 100644
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
> index 3b5ed1e4f3ec..9a0d58524cb1 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -635,4 +635,17 @@
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
> +	INTEL_VGA_DEVICE(0x4693, info), \
> +	INTEL_VGA_DEVICE(0x4698, info), \
> +	INTEL_VGA_DEVICE(0x4699, info)
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
