Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E309B61E4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 12:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD99B10E789;
	Wed, 30 Oct 2024 11:34:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8p1+cNU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6554610E789
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 11:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730288083; x=1761824083;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Ou0j7I7V95bUKDluZ/9KUPBZunkHNFEOfqat7UKuaPA=;
 b=Y8p1+cNUYqPv5iCr9wpHmATFV7GVuTBTFK3PXGfkzDnajWXZw+AbC9A7
 033bAPx7aUU5OrbAF7Iyd4K8oyWZe1B204Gp/89ALbt+WorEOKiYy0dUB
 /RX42T6BH62AeqFvC6Zulo9+7UkVYbMlkXon+8rNlIu2eWIoYeGNFibo6
 HImnoW1aZi64ZYHx3xVrEYngBG9c1I2bNf5OK7gA8mIHw6BmVA6fb876T
 3UusZMHDbliEqzYpiRH6McsSVSFAia9xCQF4id3M0lCKfIp6vuXodrXJe
 C9HH+BO+z7vKSdwEn8drJ4Ez2MOyd5vnqiz/LTKARJormLK1OdDLMD368 g==;
X-CSE-ConnectionGUID: qq7H4LXyQV6TOQmoxuclBQ==
X-CSE-MsgGUID: DqUO+VsRR+mFB1aHKOctCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11240"; a="17631825"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="17631825"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:34:43 -0700
X-CSE-ConnectionGUID: 8iIKt6LaR4OLYtyv4RDZyA==
X-CSE-MsgGUID: aFPiCJQ2Qq2zlVZg+qzy2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="86895662"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 04:34:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 06/11] drm/i915/cdclk: Extract vlv_dsi_min_cdclk()
In-Reply-To: <20241029215217.3697-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029215217.3697-1-ville.syrjala@linux.intel.com>
 <20241029215217.3697-7-ville.syrjala@linux.intel.com>
Date: Wed, 30 Oct 2024 13:34:38 +0200
Message-ID: <87frodn7sh.fsf@intel.com>
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
> Pull the DSI min cdclk calculation into a helper and hide
> it inside vlv_dsi.c in order to keep most DSI related
> details in one place.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 ++------------------
>  drivers/gpu/drm/i915/display/vlv_dsi.c     | 25 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/vlv_dsi.h     |  8 +++++++
>  3 files changed, 35 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 89d12c521411..e10378744607 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -46,6 +46,7 @@
>  #include "intel_vdsc.h"
>  #include "skl_watermark.h"
>  #include "skl_watermark_regs.h"
> +#include "vlv_dsi.h"
>  #include "vlv_sideband.h"
>=20=20
>  /**
> @@ -2849,8 +2850,6 @@ static int intel_vdsc_min_cdclk(const struct intel_=
crtc_state *crtc_state)
>=20=20
>  int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_sta=
te)
>  {
> -	struct intel_display *display =3D to_intel_display(crtc_state);
> -	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>  	int min_cdclk;
>=20=20
>  	if (!crtc_state->hw.enable)
> @@ -2859,25 +2858,7 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	min_cdclk =3D intel_pixel_rate_to_cdclk(crtc_state);
>  	min_cdclk =3D max(hsw_ips_min_cdclk(crtc_state), min_cdclk);
>  	min_cdclk =3D max(intel_audio_min_cdclk(crtc_state), min_cdclk);
> -
> -	/*
> -	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
> -	 * than 320000KHz.
> -	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> -	    IS_VALLEYVIEW(dev_priv))
> -		min_cdclk =3D max(320000, min_cdclk);
> -
> -	/*
> -	 * On Geminilake once the CDCLK gets as low as 79200
> -	 * picture gets unstable, despite that values are
> -	 * correct for DSI PLL and DE PLL.
> -	 */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> -	    IS_GEMINILAKE(dev_priv))
> -		min_cdclk =3D max(158400, min_cdclk);
> -
> -	/* Account for additional needs from the planes */
> +	min_cdclk =3D max(vlv_dsi_min_cdclk(crtc_state), min_cdclk);
>  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>=20=20
>  	if (crtc_state->dsc.compression_enable)
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 9383eedee2d4..49a895589150 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1760,6 +1760,31 @@ static void vlv_dphy_param_init(struct intel_dsi *=
intel_dsi)
>  	intel_dsi_log_params(intel_dsi);
>  }
>=20=20
> +int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	int min_cdclk =3D 0;
> +
> +	/*
> +	 * On Valleyview some DSI panels lose (v|h)sync when the clock is lower
> +	 * than 320000KHz.
> +	 */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> +	    IS_VALLEYVIEW(dev_priv))
> +		min_cdclk =3D max(320000, min_cdclk);
> +
> +	/*
> +	 * On Geminilake once the CDCLK gets as low as 79200
> +	 * picture gets unstable, despite that values are
> +	 * correct for DSI PLL and DE PLL.
> +	 */
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI) &&
> +	    IS_GEMINILAKE(dev_priv))
> +		min_cdclk =3D max(158400, min_cdclk);
> +
> +	return min_cdclk;
> +}
> +
>  typedef void (*vlv_dsi_dmi_quirk_func)(struct intel_dsi *intel_dsi);
>=20=20
>  /*
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.h b/drivers/gpu/drm/i91=
5/display/vlv_dsi.h
> index cf9d7b82f288..5f99059b4c48 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.h
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.h
> @@ -8,13 +8,17 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> +#include <drm/drm_mipi_dsi.h>
> +

Huh, why is this required? At least it's unrelated to the patch.

Other than that,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  enum port;
>  struct drm_i915_private;
> +struct intel_crtc_state;
>  struct intel_dsi;
>=20=20
>  #ifdef I915
>  void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_dsi, enum port =
port);
>  enum mipi_dsi_pixel_format pixel_format_from_register_bits(u32 fmt);
> +int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_state);
>  void vlv_dsi_init(struct drm_i915_private *dev_priv);
>  #else
>  static inline void vlv_dsi_wait_for_fifo_empty(struct intel_dsi *intel_d=
si, enum port port)
> @@ -24,6 +28,10 @@ static inline enum mipi_dsi_pixel_format pixel_format_=
from_register_bits(u32 fmt
>  {
>  	return 0;
>  }
> +static inline int vlv_dsi_min_cdclk(const struct intel_crtc_state *crtc_=
state)
> +{
> +	return 0;
> +}
>  static inline void vlv_dsi_init(struct drm_i915_private *dev_priv)
>  {
>  }

--=20
Jani Nikula, Intel
