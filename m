Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A429B6210
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11F310E02C;
	Wed, 30 Oct 2024 11:40:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XXSsyG4H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA8110E02C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288432; x=1761824432;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hh+fKUVU+mKdJJYD3jxuOUtQw5bgjzzIyzGNbb5UPhk=;
 b=XXSsyG4HkOvsbSBJnnl6RWnTNSY1keruw4OLHLSoer5m8GQQi05rkDoX
 bbaX75J9xbnWfmDv+Z8N7T4tkPNpM4M+F6z3JAJjaN2M82YVCEvj72txB
 U7axeecvFwA7IwKNRbk5luVfxhxhNnpP7FLYPTRlnytC1L+vbjeGU/BWz
 dui+hpU3AzILg8bQeoG9nErw/t8GKYHuPYT4Qphorop69geGZoAjaFDtZ
 jLv6xkEy4xSyAWUcEwRyUnTNWmSz8qNnptsVhPPGZrArCNAbNsR7JEgi4
 HRvrcWtpOmeNRQRUTHQdIlXlTU1IqPHqM4ihfUv1Q17dNSJLcfmQPAsjE g==;
X-CSE-ConnectionGUID: l0MDz+AqRlukCoyfnxFN0A==
X-CSE-MsgGUID: eSJykZWzRmiolewZyP6GTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="30199173"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="30199173"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:40:32 -0700
X-CSE-ConnectionGUID: qFYWKAV7RZSIMLIUyw4jdg==
X-CSE-MsgGUID: rW8ZBuhoSIGALkUI0fUzIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82198509"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:40:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/11] drm/i915/cdclk: Relocate intel_vdsc_min_cdclk()
In-Reply-To: <20241029215217.3697-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-11-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:40:27 +0200
Message-ID: <874j4tn7is.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

On Tue, 29 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move intel_vdsc_min_cdclk() into intel_vdsc.c from intel_cdclk.c
> so that details about DSC are better contained.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ----------------------
>  drivers/gpu/drm/i915/display/intel_vdsc.c  | 46 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.h  |  1 +
>  3 files changed, 47 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index d376f7bccf21..9f38dd14b2d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -37,7 +37,6 @@
>  #include "intel_cdclk.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> -#include "intel_dp.h"
>  #include "intel_display_types.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pci_config.h"
> @@ -2805,51 +2804,6 @@ static int intel_planes_min_cdclk(const struct int=
el_crtc_state *crtc_state)
>  	return min_cdclk;
>  }
>=20=20
> -static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_stat=
e)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_display *display =3D to_intel_display(crtc);
> -	int num_vdsc_instances =3D intel_dsc_get_num_vdsc_instances(crtc_state);
> -	int min_cdclk;
> -
> -	if (!crtc_state->dsc.compression_enable)
> -		return 0;
> -
> -	/*
> -	 * When we decide to use only one VDSC engine, since
> -	 * each VDSC operates with 1 ppc throughput, pixel clock
> -	 * cannot be higher than the VDSC clock (cdclk)
> -	 * If there 2 VDSC engines, then pixel clock can't be higher than
> -	 * VDSC clock(cdclk) * 2 and so on.
> -	 */
> -	min_cdclk =3D DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> -
> -	if (crtc_state->joiner_pipes) {
> -		int pixel_clock =3D intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted=
_mode.clock);
> -
> -		/*
> -		 * According to Bigjoiner bw check:
> -		 * compressed_bpp <=3D PPC * CDCLK * Big joiner Interface bits / Pixel=
 clock
> -		 *
> -		 * We have already computed compressed_bpp, so now compute the min CDC=
LK that
> -		 * is required to support this compressed_bpp.
> -		 *
> -		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock / (PPC * Bigjoiner Int=
erface bits)
> -		 *
> -		 * Since PPC =3D 2 with bigjoiner
> -		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner Inter=
face bits
> -		 */
> -		int bigjoiner_interface_bits =3D DISPLAY_VER(display) >=3D 14 ? 36 : 2=
4;
> -		int min_cdclk_bj =3D
> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> -
> -		min_cdclk =3D max(min_cdclk, min_cdclk_bj);
> -	}
> -
> -	return min_cdclk;
> -}
> -
>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_sta=
te)
>  {
>  	int min_cdclk;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index 40525f5c4c42..e6cb712373a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -14,6 +14,7 @@
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> +#include "intel_dp.h"
>  #include "intel_dsi.h"
>  #include "intel_qp_tables.h"
>  #include "intel_vdsc.h"
> @@ -1003,3 +1004,48 @@ void intel_vdsc_state_dump(struct drm_printer *p, =
int indent,
>  	intel_vdsc_dump_state(p, indent, crtc_state);
>  	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>  }
> +
> +int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	int num_vdsc_instances =3D intel_dsc_get_num_vdsc_instances(crtc_state);
> +	int min_cdclk;
> +
> +	if (!crtc_state->dsc.compression_enable)
> +		return 0;
> +
> +	/*
> +	 * When we decide to use only one VDSC engine, since
> +	 * each VDSC operates with 1 ppc throughput, pixel clock
> +	 * cannot be higher than the VDSC clock (cdclk)
> +	 * If there 2 VDSC engines, then pixel clock can't be higher than
> +	 * VDSC clock(cdclk) * 2 and so on.
> +	 */
> +	min_cdclk =3D DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
> +
> +	if (crtc_state->joiner_pipes) {
> +		int pixel_clock =3D intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted=
_mode.clock);
> +
> +		/*
> +		 * According to Bigjoiner bw check:
> +		 * compressed_bpp <=3D PPC * CDCLK * Big joiner Interface bits / Pixel=
 clock
> +		 *
> +		 * We have already computed compressed_bpp, so now compute the min CDC=
LK that
> +		 * is required to support this compressed_bpp.
> +		 *
> +		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock / (PPC * Bigjoiner Int=
erface bits)
> +		 *
> +		 * Since PPC =3D 2 with bigjoiner
> +		 * =3D> CDCLK >=3D compressed_bpp * Pixel clock  / 2 * Bigjoiner Inter=
face bits
> +		 */
> +		int bigjoiner_interface_bits =3D DISPLAY_VER(display) >=3D 14 ? 36 : 2=
4;
> +		int min_cdclk_bj =3D
> +			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> +			 pixel_clock) / (2 * bigjoiner_interface_bits);
> +
> +		min_cdclk =3D max(min_cdclk, min_cdclk_bj);
> +	}
> +
> +	return min_cdclk;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/=
i915/display/intel_vdsc.h
> index 290b2e9b3482..9e2812f99dd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -31,5 +31,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encod=
er,
>  			    const struct intel_crtc_state *crtc_state);
>  void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  			   const struct intel_crtc_state *crtc_state);
> +int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
>=20=20
>  #endif /* __INTEL_VDSC_H__ */

--=20
Jani Nikula, Intel
