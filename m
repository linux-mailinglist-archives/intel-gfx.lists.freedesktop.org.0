Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE8F49ABC9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jan 2022 06:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6328A10E4D0;
	Tue, 25 Jan 2022 05:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D05C10E4D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jan 2022 05:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643088925; x=1674624925;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=+pKUBH2WUIkHN21c0rKaoS8ywuYBkH7t3yOEMfB7/sQ=;
 b=lcg+qrLrfSqOT0Zs2X73kvWSi6vbuOPFY2Sgm3JRGNeXEYmGpcZP/rGh
 FjA3GX9Tmmg7cuJ2rANU8Wp1o/7PIE1bOgQjtkAOdNqveHJFLYoukJRSm
 1PQevkHAB77zyOiFwGvIYJJNW1nI8zjEx0URcBFUe70fb+XsdIqJwgvMe
 Zxh2EjrcoVqam+WSTwcHGSsvIw+kZMu2Ea26we5hVTww7ONqK/ciHebmA
 1gyhSTuVrPWfwJeod3GMyMK0ayB6B/57MIFdK3BsLdVAluMKYxsB4+aEb
 8nwmFOpiI/eGWviRykoekFRLwA8N8GMmbYjYp7dZaUm9KlqG/18Z1bim1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="243823022"
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="243823022"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:35:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,314,1635231600"; d="scan'208";a="534575170"
Received: from skirillo-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.32.77])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 21:35:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220124193136.2397-1-ville.syrjala@linux.intel.com>
Date: Tue, 25 Jan 2022 07:35:08 +0200
Message-ID: <8735lc2x9v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: s/GRAPHICS_VER/DISPLAY_VER/
 where appropriate
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

On Mon, 24 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use DISPLAY_VER rather than GRAPHICS_VER to determine
> availability of display hardware features.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

On both patches,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 44c1f98144b4..e2b8409f9174 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1463,8 +1463,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
>  	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
>=20=20
> -#define HAS_GMBUS_IRQ(dev_priv) (GRAPHICS_VER(dev_priv) >=3D 4)
> -#define HAS_GMBUS_BURST_READ(dev_priv) (GRAPHICS_VER(dev_priv) >=3D 11 |=
| \
> +#define HAS_GMBUS_IRQ(dev_priv) (DISPLAY_VER(dev_priv) >=3D 4)
> +#define HAS_GMBUS_BURST_READ(dev_priv) (DISPLAY_VER(dev_priv) >=3D 11 ||=
 \
>  					IS_GEMINILAKE(dev_priv) || \
>  					IS_KABYLAKE(dev_priv))
>=20=20
> @@ -1476,9 +1476,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_t=
v)
>  #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_ho=
tplug)
>=20=20
> -#define HAS_FW_BLC(dev_priv)	(GRAPHICS_VER(dev_priv) > 2)
> +#define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
>  #define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask !=3D 0)
> -#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && GRAPHICS_VER(dev_p=
riv) >=3D 7)
> +#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_pr=
iv) >=3D 7)
>=20=20
>  #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv=
))
>=20=20
> @@ -1491,7 +1491,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
>  	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
> -#define HAS_PSR2_SEL_FETCH(dev_priv)	 (GRAPHICS_VER(dev_priv) >=3D 12)
> +#define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >=3D 12)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display=
.cpu_transcoder_mask & BIT(trans)) !=3D 0)
>=20=20
>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> @@ -1502,7 +1502,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20=20
>  #define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
>=20=20
> -#define HAS_MSO(i915)		(GRAPHICS_VER(i915) >=3D 12)
> +#define HAS_MSO(i915)		(DISPLAY_VER(i915) >=3D 12)
>=20=20
>  #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
>  #define HAS_64BIT_RELOC(dev_priv) (INTEL_INFO(dev_priv)->has_64bit_reloc)
> @@ -1535,7 +1535,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20=20
>  #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>=20=20
> -#define HAS_LSPCON(dev_priv) (IS_GRAPHICS_VER(dev_priv, 9, 10))
> +#define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
>=20=20
>  /* DPF =3D=3D dynamic parity feature */
>  #define HAS_L3_DPF(dev_priv) (INTEL_INFO(dev_priv)->has_l3_dpf)
> @@ -1549,7 +1549,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>=20=20
>  #define HAS_DISPLAY(dev_priv) (INTEL_INFO(dev_priv)->display.pipe_mask !=
=3D 0)
>=20=20
> -#define HAS_VRR(i915)	(GRAPHICS_VER(i915) >=3D 11)
> +#define HAS_VRR(i915)	(DISPLAY_VER(i915) >=3D 11)
>=20=20
>  #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >=3D 5)
>=20=20
> @@ -1579,7 +1579,7 @@ i915_print_iommu_status(struct drm_i915_private *i9=
15, struct drm_printer *p);
>=20=20
>  static inline bool intel_scanout_needs_vtd_wa(struct drm_i915_private *d=
ev_priv)
>  {
> -	return GRAPHICS_VER(dev_priv) >=3D 6 && intel_vtd_active(dev_priv);
> +	return DISPLAY_VER(dev_priv) >=3D 6 && intel_vtd_active(dev_priv);
>  }
>=20=20
>  static inline bool

--=20
Jani Nikula, Intel Open Source Graphics Center
