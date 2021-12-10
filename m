Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5294546FF98
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 12:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16EF810E42B;
	Fri, 10 Dec 2021 11:14:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31A8410E427
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Dec 2021 11:14:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238552405"
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="238552405"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 03:14:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,195,1635231600"; d="scan'208";a="516721300"
Received: from mpcorrig-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.4.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 03:14:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211209182109.29786-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211209182109.29786-1-ville.syrjala@linux.intel.com>
 <20211209182109.29786-4-ville.syrjala@linux.intel.com>
Date: Fri, 10 Dec 2021 13:14:22 +0200
Message-ID: <87r1ak1zld.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/fbc: Introduce device info
 fbc_mask
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

On Thu, 09 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Declare which FBC instances are present via a fbc_mask
> in device info. For the moment there is just the one.
>
> TODO: Need to figure out how to expose multiple FBC
> instances in debugs. Just different file names, or move
> the files under some subdirectory (per-crtc maybe), or
> something else? This will need igt changes as well.

I think I'd prefer moving under crtc subdirectory. That exposes the pipe
<-> fbc relationship in a natural way so that the userspace doesn't have
to know, right?

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 42 +++++++++++--------
>  .../drm/i915/display/skl_universal_plane.c    | 12 +++---
>  drivers/gpu/drm/i915/i915_drv.h               |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c               | 22 +++++-----
>  drivers/gpu/drm/i915/intel_device_info.c      |  4 +-
>  drivers/gpu/drm/i915/intel_device_info.h      |  2 +-
>  6 files changed, 48 insertions(+), 36 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 2f1a72f98c4b..359aa8389e5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -49,11 +49,12 @@
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
>=20=20
> -#define for_each_fbc_id(__fbc_id) \
> -	for ((__fbc_id) =3D FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++)
> +#define for_each_fbc_id(__dev_priv, __fbc_id) \
> +	for ((__fbc_id) =3D FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
> +		for_each_if(INTEL_INFO(__dev_priv)->fbc_mask & BIT(__fbc_id))
>=20=20
>  #define for_each_intel_fbc(__dev_priv, __fbc, __fbc_id) \
> -	for_each_fbc_id(__fbc_id) \
> +	for_each_fbc_id((__dev_priv), (__fbc_id)) \
>  		for_each_if((__fbc) =3D (__dev_priv)->fbc[(__fbc_id)])
>=20=20
>  struct intel_fbc_funcs {
> @@ -1693,32 +1694,35 @@ static struct intel_fbc *intel_fbc_create(struct =
drm_i915_private *i915,
>   */
>  void intel_fbc_init(struct drm_i915_private *i915)
>  {
> -	struct intel_fbc *fbc;
> +	enum fbc_id fbc_id;
>=20=20
>  	if (!drm_mm_initialized(&i915->mm.stolen))
> -		mkwrite_device_info(i915)->display.has_fbc =3D false;
> +		mkwrite_device_info(i915)->fbc_mask =3D 0;
>=20=20
>  	if (need_fbc_vtd_wa(i915))
> -		mkwrite_device_info(i915)->display.has_fbc =3D false;
> +		mkwrite_device_info(i915)->fbc_mask =3D 0;
>=20=20
>  	i915->params.enable_fbc =3D intel_sanitize_fbc_option(i915);
>  	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
>  		    i915->params.enable_fbc);
>=20=20
> -	if (!HAS_FBC(i915))
> -		return;
> +	for_each_fbc_id(i915, fbc_id) {
> +		struct intel_fbc *fbc;
>=20=20
> -	fbc =3D intel_fbc_create(i915, FBC_A);
> -	if (!fbc)
> -		return;
> +		fbc =3D intel_fbc_create(i915, fbc_id);
> +		if (!fbc)
> +			continue;
>=20=20
> -	/* We still don't have any sort of hardware state readout for FBC, so
> -	 * deactivate it in case the BIOS activated it to make sure software
> -	 * matches the hardware state. */
> -	if (intel_fbc_hw_is_active(fbc))
> -		intel_fbc_hw_deactivate(fbc);
> +		/*
> +		 * We still don't have any sort of hardware state readout
> +		 * for FBC, so deactivate it in case the BIOS activated it
> +		 * to make sure software matches the hardware state.
> +		 */
> +		if (intel_fbc_hw_is_active(fbc))
> +			intel_fbc_hw_deactivate(fbc);
>=20=20
> -	i915->fbc[fbc->id] =3D fbc;
> +		i915->fbc[fbc->id] =3D fbc;
> +	}
>  }
>=20=20
>  static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unuse=
d)
> @@ -1814,6 +1818,10 @@ void intel_fbc_debugfs_register(struct drm_i915_pr=
ivate *i915)
>  	struct intel_fbc *fbc;
>  	enum fbc_id fbc_id;
>=20=20
> +	/*
> +	 * FIXME: need to figure out how to name/place
> +	 * the debugfs files for each FBC instance.
> +	 */
>  	for_each_intel_fbc(i915, fbc, fbc_id)
>  		intel_fbc_debugfs_add(fbc);
>  }
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 9e31eb54b9f4..c8c96accf353 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1817,19 +1817,21 @@ static int skl_plane_check(struct intel_crtc_stat=
e *crtc_state,
>  }
>=20=20
>  static bool skl_plane_has_fbc(struct drm_i915_private *dev_priv,
> -			      enum pipe pipe, enum plane_id plane_id)
> +			      enum fbc_id fbc_id, enum plane_id plane_id)
>  {
> -	if (!HAS_FBC(dev_priv))
> +	if ((INTEL_INFO(dev_priv)->fbc_mask & BIT(fbc_id)) =3D=3D 0)
>  		return false;
>=20=20
> -	return pipe =3D=3D PIPE_A && plane_id =3D=3D PLANE_PRIMARY;
> +	return plane_id =3D=3D PLANE_PRIMARY;
>  }
>=20=20
>  static struct intel_fbc *skl_plane_fbc(struct drm_i915_private *dev_priv,
>  				       enum pipe pipe, enum plane_id plane_id)
>  {
> -	if (skl_plane_has_fbc(dev_priv, pipe, plane_id))
> -		return dev_priv->fbc[FBC_A];
> +	enum fbc_id fbc_id =3D pipe - PIPE_A + FBC_A;

I think this is magic enough that a small intel_fbc_for_pipe() helper
would be in order. Maybe just locally here if that's the only place
where the info is needed.

> +
> +	if (skl_plane_has_fbc(dev_priv, fbc_id, plane_id))
> +		return dev_priv->fbc[fbc_id];
>  	else
>  		return NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 7ae62e8e6d02..11bf7f4dc12e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1495,7 +1495,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_ho=
tplug)
>=20=20
>  #define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
> -#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_fbc)
> +#define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->fbc_mask !=3D 0)
>  #define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_p=
riv) >=3D 7)
>=20=20
>  #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv=
))
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 708a23415e9c..c64cc276f169 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -214,13 +214,13 @@ static const struct intel_device_info i845g_info =
=3D {
>  static const struct intel_device_info i85x_info =3D {
>  	I830_FEATURES,
>  	PLATFORM(INTEL_I85X),
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  };
>=20=20
>  static const struct intel_device_info i865g_info =3D {
>  	I845_FEATURES,
>  	PLATFORM(INTEL_I865G),
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  };
>=20=20
>  #define GEN3_FEATURES \
> @@ -258,7 +258,7 @@ static const struct intel_device_info i915gm_info =3D=
 {
>  	.display.has_overlay =3D 1,
>  	.display.overlay_needs_physical =3D 1,
>  	.display.supports_tv =3D 1,
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  	.hws_needs_physical =3D 1,
>  	.unfenced_needs_alignment =3D 1,
>  };
> @@ -283,7 +283,7 @@ static const struct intel_device_info i945gm_info =3D=
 {
>  	.display.has_overlay =3D 1,
>  	.display.overlay_needs_physical =3D 1,
>  	.display.supports_tv =3D 1,
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  	.hws_needs_physical =3D 1,
>  	.unfenced_needs_alignment =3D 1,
>  };
> @@ -342,7 +342,7 @@ static const struct intel_device_info i965gm_info =3D=
 {
>  	GEN4_FEATURES,
>  	PLATFORM(INTEL_I965GM),
>  	.is_mobile =3D 1,
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  	.display.has_overlay =3D 1,
>  	.display.supports_tv =3D 1,
>  	.hws_needs_physical =3D 1,
> @@ -360,7 +360,7 @@ static const struct intel_device_info gm45_info =3D {
>  	GEN4_FEATURES,
>  	PLATFORM(INTEL_GM45),
>  	.is_mobile =3D 1,
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  	.display.supports_tv =3D 1,
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0),
>  	.gpu_reset_clobbers_display =3D false,
> @@ -393,7 +393,7 @@ static const struct intel_device_info ilk_m_info =3D {
>  	PLATFORM(INTEL_IRONLAKE),
>  	.is_mobile =3D 1,
>  	.has_rps =3D true,
> -	.display.has_fbc =3D 1,
> +	.fbc_mask =3D BIT(FBC_A),
>  };
>=20=20
>  #define GEN6_FEATURES \
> @@ -401,7 +401,7 @@ static const struct intel_device_info ilk_m_info =3D {
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B), \
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B), \
>  	.display.has_hotplug =3D 1, \
> -	.display.has_fbc =3D 1, \
> +	.fbc_mask =3D BIT(FBC_A), \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt =3D true, \
>  	.has_llc =3D 1, \
> @@ -452,7 +452,7 @@ static const struct intel_device_info snb_m_gt2_info =
=3D {
>  	.pipe_mask =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C), \
>  	.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TR=
ANSCODER_C), \
>  	.display.has_hotplug =3D 1, \
> -	.display.has_fbc =3D 1, \
> +	.fbc_mask =3D BIT(FBC_A), \
>  	.platform_engine_mask =3D BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt =3D true, \
>  	.has_llc =3D 1, \
> @@ -693,7 +693,7 @@ static const struct intel_device_info skl_gt4_info =
=3D {
>  	.has_64bit_reloc =3D 1, \
>  	.display.has_ddi =3D 1, \
>  	.display.has_fpga_dbg =3D 1, \
> -	.display.has_fbc =3D 1, \
> +	.fbc_mask =3D BIT(FBC_A), \
>  	.display.has_hdcp =3D 1, \
>  	.display.has_psr =3D 1, \
>  	.display.has_psr_hw_tracking =3D 1, \
> @@ -948,7 +948,7 @@ static const struct intel_device_info adl_s_info =3D {
>  	.display.has_dp_mst =3D 1,						\
>  	.display.has_dsb =3D 1,							\
>  	.display.has_dsc =3D 1,							\
> -	.display.has_fbc =3D 1,							\
> +	.fbc_mask =3D BIT(FBC_A),							\
>  	.display.has_fpga_dbg =3D 1,						\
>  	.display.has_hdcp =3D 1,							\
>  	.display.has_hotplug =3D 1,						\
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index a3446a2abcb2..284a8aac51ed 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -328,6 +328,7 @@ void intel_device_info_runtime_init(struct drm_i915_p=
rivate *dev_priv)
>  				 "Display fused off, disabling\n");
>  			info->pipe_mask =3D 0;
>  			info->cpu_transcoder_mask =3D 0;
> +			info->fbc_mask =3D 0;
>  		} else if (fuse_strap & IVB_PIPE_C_DISABLE) {
>  			drm_info(&dev_priv->drm, "PipeC fused off\n");
>  			info->pipe_mask &=3D ~BIT(PIPE_C);
> @@ -339,6 +340,7 @@ void intel_device_info_runtime_init(struct drm_i915_p=
rivate *dev_priv)
>  		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
>  			info->pipe_mask &=3D ~BIT(PIPE_A);
>  			info->cpu_transcoder_mask &=3D ~BIT(TRANSCODER_A);
> +			info->fbc_mask &=3D ~BIT(FBC_A);
>  		}
>  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
>  			info->pipe_mask &=3D ~BIT(PIPE_B);
> @@ -359,7 +361,7 @@ void intel_device_info_runtime_init(struct drm_i915_p=
rivate *dev_priv)
>  			info->display.has_hdcp =3D 0;
>=20=20
>  		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
> -			info->display.has_fbc =3D 0;
> +			info->fbc_mask =3D 0;
>=20=20
>  		if (DISPLAY_VER(dev_priv) >=3D 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
>  			info->display.has_dmc =3D 0;
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index 213ae2c07126..89712019f073 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -156,7 +156,6 @@ enum intel_ppgtt_type {
>  	func(has_dp_mst); \
>  	func(has_dsb); \
>  	func(has_dsc); \
> -	func(has_fbc); \
>  	func(has_fpga_dbg); \
>  	func(has_gmch); \
>  	func(has_hdcp); \
> @@ -198,6 +197,7 @@ struct intel_device_info {
>=20=20
>  	u8 pipe_mask;
>  	u8 cpu_transcoder_mask;
> +	u8 fbc_mask;

I'd rather we started moving these under the display substruct instead
of the other way round.

Apart from the nitpicks looks good,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>



BR,
Jani.

>=20=20
>  	u8 abox_mask;

--=20
Jani Nikula, Intel Open Source Graphics Center
