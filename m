Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C42F3B9847
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 23:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A076EC68;
	Thu,  1 Jul 2021 21:42:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0112B6EC5E;
 Thu,  1 Jul 2021 21:42:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10032"; a="208448789"
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="208448789"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 14:42:03 -0700
X-IronPort-AV: E=Sophos;i="5.83,315,1616482800"; d="scan'208";a="457857785"
Received: from josefeth-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.93.40])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2021 14:41:59 -0700
Date: Thu, 1 Jul 2021 17:41:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YN42pr7P2iVLHIql@intel.com>
References: <20210701202427.1547543-1-matthew.d.roper@intel.com>
 <20210701202427.1547543-17-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701202427.1547543-17-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 16/53] drm/i915/xehpsdv: add initial XeHP
 SDV definitions
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 dri-devel@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 01, 2021 at 01:23:50PM -0700, Matt Roper wrote:
> From: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> XeHP SDV is a Intel=AE dGPU without display. This is just the definition
> of some basic platform macros, by large a copy of current state of
> Tigerlake which does not reflect the end state of this platform.
> =

> Bspec: 44467, 48077
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_device_info.c |  1 +
>  drivers/gpu/drm/i915/intel_device_info.h |  1 +
>  4 files changed, 32 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index c02600850246..63bed18a2be7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1406,6 +1406,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_DG1(dev_priv)        IS_PLATFORM(dev_priv, INTEL_DG1)
>  #define IS_ALDERLAKE_S(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_S)
>  #define IS_ALDERLAKE_P(dev_priv) IS_PLATFORM(dev_priv, INTEL_ALDERLAKE_P)
> +#define IS_XEHPSDV(dev_priv) IS_PLATFORM(dev_priv, INTEL_XEHPSDV)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) =3D=3D 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> @@ -1564,6 +1565,15 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_ALDERLAKE_P(__i915) && \
>  	 IS_GT_STEP(__i915, since, until))
>  =

> +#define XEHPSDV_REVID_A0		0x0
> +#define XEHPSDV_REVID_A1		0x1
> +#define XEHPSDV_REVID_A_LAST	XEHPSDV_REVID_A1
> +#define XEHPSDV_REVID_B0		0x4
> +#define XEHPSDV_REVID_C0		0x8
> +
> +#define IS_XEHPSDV_REVID(p, since, until) \
> +	(IS_XEHPSDV(p) && IS_REVID(p, since, until))
> +
>  #define IS_LP(dev_priv)		(INTEL_INFO(dev_priv)->is_lp)
>  #define IS_GEN9_LP(dev_priv)	(GRAPHICS_VER(dev_priv) =3D=3D 9 && IS_LP(d=
ev_priv))
>  #define IS_GEN9_BC(dev_priv)	(GRAPHICS_VER(dev_priv) =3D=3D 9 && !IS_LP(=
dev_priv))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 88b279452b87..046309e95f43 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1020,6 +1020,26 @@ static const struct intel_device_info adl_p_info =
=3D {
>  	.ppgtt_size =3D 48, \
>  	.ppgtt_type =3D INTEL_PPGTT_FULL
>  =

> +#define XE_HPM_FEATURES \
> +	.media_ver =3D 12, \
> +	.media_ver_release =3D 50
> +
> +__maybe_unused
> +static const struct intel_device_info xehpsdv_info =3D {
> +	XE_HP_FEATURES,
> +	XE_HPM_FEATURES,
> +	DGFX_FEATURES,
> +	PLATFORM(INTEL_XEHPSDV),
> +	.display =3D { },
> +	.pipe_mask =3D 0,
> +	.platform_engine_mask =3D
> +		BIT(RCS0) | BIT(BCS0) |
> +		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
> +		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
> +		BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7),
> +	.require_force_probe =3D 1,
> +};
> +
>  #undef PLATFORM
>  =

>  /*
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index e8ad14f002c1..7b37b68f4548 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -68,6 +68,7 @@ static const char * const platform_names[] =3D {
>  	PLATFORM_NAME(DG1),
>  	PLATFORM_NAME(ALDERLAKE_S),
>  	PLATFORM_NAME(ALDERLAKE_P),
> +	PLATFORM_NAME(XEHPSDV),
>  };
>  #undef PLATFORM_NAME
>  =

> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index f824de632cfe..e8684199b0c9 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -88,6 +88,7 @@ enum intel_platform {
>  	INTEL_DG1,
>  	INTEL_ALDERLAKE_S,
>  	INTEL_ALDERLAKE_P,
> +	INTEL_XEHPSDV,
>  	INTEL_MAX_PLATFORMS
>  };
>  =

> -- =

> 2.25.4
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
