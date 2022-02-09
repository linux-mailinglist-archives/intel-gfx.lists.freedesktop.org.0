Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB2F4AF2D2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 14:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BFB410E130;
	Wed,  9 Feb 2022 13:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B7510E130
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 13:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644413673; x=1675949673;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=42zX2e5pE4xznDYTtjnV20O11UeuLFsMfhYyh7UlgnE=;
 b=hvj6EKMy3mqavPSu7hNvObz0Iuu192xTLQyYpgjLDTrtl10yBOrGpt3w
 BqyqJyg+/uf+a6rpcPfPNVCwfzFWhhor3qxF5BM9DCfC+WnVhfY1gDbM7
 mqO1uYDd8biSy5DhIGFKYv4fg6KAEeU1quL7CaY78BjHAjb7vHa1kmayW
 /DQmW+d1JaXGtDjWwedikW88MmfXj3a4wDpm7xKLfLBmqe0BcR6+EnDn0
 SgW3qjaU1k7WSSMqbsu+Fdy4snAAMsmjF4yzb6B6P6ltidKAdNPAczUeb
 ORpIgakgGEoAdHMGauvMkn1GEuLIiAu9YeAxNCqsbv/l1Mghy1Yc/HWUi g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="229173288"
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="229173288"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:34:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,355,1635231600"; d="scan'208";a="525986936"
Received: from rcallina-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.18.41])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2022 05:34:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220209113526.7595-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220209113526.7595-1-ville.syrjala@linux.intel.com>
 <20220209113526.7595-4-ville.syrjala@linux.intel.com>
Date: Wed, 09 Feb 2022 15:34:28 +0200
Message-ID: <87tud8noyj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: Move the IPS code to its own
 file
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

On Wed, 09 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> IPS is a prety well isolated feature. Move the relevant code

*pretty

> to a separate file from polluting intel_display.c.
>
> I stuck to the hsw_ips since that's what the function were already
> using, and also to avoid confusion with the ILK
> "Intelligen Power Sharing"/intel_ips GPU turbo stuff.
>
> And let's also do the s/dev_priv/i915/ rename while touching
> most of the code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                |   1 +
>  drivers/gpu/drm/i915/display/hsw_ips.c       | 251 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/hsw_ips.h       |  25 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c | 239 +-----------------
>  drivers/gpu/drm/i915/display/intel_display.h |   1 -
>  6 files changed, 279 insertions(+), 239 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/hsw_ips.c
>  create mode 100644 drivers/gpu/drm/i915/display/hsw_ips.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a26e6736bebb..226dbef5f64a 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -197,6 +197,7 @@ i915-y +=3D gt/uc/intel_uc.o \
>=20=20
>  # modesetting core code
>  i915-y +=3D \
> +	display/hsw_ips.o \
>  	display/intel_atomic.o \
>  	display/intel_atomic_plane.o \
>  	display/intel_audio.o \
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> new file mode 100644
> index 000000000000..fb34ef615025
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -0,0 +1,251 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#include "hsw_ips.h"
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_pcode.h"
> +
> +static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (!crtc_state->ips_enabled)
> +		return;
> +
> +	/*
> +	 * We can only enable IPS after we enable a plane and wait for a vblank
> +	 * This function is called from post_plane_update, which is run after
> +	 * a vblank wait.
> +	 */
> +	drm_WARN_ON(&i915->drm,
> +		    !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
> +
> +	if (IS_BROADWELL(i915)) {
> +		drm_WARN_ON(&i915->drm,
> +			    snb_pcode_write(i915, DISPLAY_IPS_CONTROL,
> +					    IPS_ENABLE | IPS_PCODE_CONTROL));
> +		/*
> +		 * Quoting Art Runyan: "its not safe to expect any particular
> +		 * value in IPS_CTL bit 31 after enabling IPS through the
> +		 * mailbox." Moreover, the mailbox may return a bogus state,
> +		 * so we need to just enable it and continue on.
> +		 */
> +	} else {
> +		intel_de_write(i915, IPS_CTL, IPS_ENABLE);
> +		/*
> +		 * The bit only becomes 1 in the next vblank, so this wait here
> +		 * is essentially intel_wait_for_vblank. If we don't have this
> +		 * and don't wait for vblanks until the end of crtc_enable, then
> +		 * the HW state readout code will complain that the expected
> +		 * IPS_CTL value is not the one we read.
> +		 */
> +		if (intel_de_wait_for_set(i915, IPS_CTL, IPS_ENABLE, 50))
> +			drm_err(&i915->drm,
> +				"Timed out waiting for IPS enable\n");
> +	}
> +}
> +
> +bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	bool need_vblank_wait =3D false;
> +
> +	if (!crtc_state->ips_enabled)
> +		return need_vblank_wait;
> +
> +	if (IS_BROADWELL(i915)) {
> +		drm_WARN_ON(&i915->drm,
> +			    snb_pcode_write(i915, DISPLAY_IPS_CONTROL, 0));
> +		/*
> +		 * Wait for PCODE to finish disabling IPS. The BSpec specified
> +		 * 42ms timeout value leads to occasional timeouts so use 100ms
> +		 * instead.
> +		 */
> +		if (intel_de_wait_for_clear(i915, IPS_CTL, IPS_ENABLE, 100))
> +			drm_err(&i915->drm,
> +				"Timed out waiting for IPS disable\n");
> +	} else {
> +		intel_de_write(i915, IPS_CTL, 0);
> +		intel_de_posting_read(i915, IPS_CTL);
> +	}
> +
> +	/* We need to wait for a vblank before we can disable the plane. */
> +	need_vblank_wait =3D true;
> +
> +	return need_vblank_wait;
> +}
> +
> +static bool hsw_ips_need_disable(struct intel_atomic_state *state,
> +				 struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!old_crtc_state->ips_enabled)
> +		return false;
> +
> +	if (intel_crtc_needs_modeset(new_crtc_state))
> +		return true;
> +
> +	/*
> +	 * Workaround : Do not read or write the pipe palette/gamma data while
> +	 * GAMMA_MODE is configured for split gamma and IPS_CTL has IPS enabled.
> +	 *
> +	 * Disable IPS before we program the LUT.
> +	 */
> +	if (IS_HASWELL(i915) &&
> +	    (new_crtc_state->uapi.color_mgmt_changed ||
> +	     new_crtc_state->update_pipe) &&
> +	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
> +		return true;
> +
> +	return !new_crtc_state->ips_enabled;
> +}
> +
> +bool hsw_ips_pre_update(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +
> +	if (!hsw_ips_need_disable(state, crtc))
> +		return false;
> +
> +	return hsw_ips_disable(old_crtc_state);
> +}
> +
> +static bool hsw_ips_need_enable(struct intel_atomic_state *state,
> +				struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!new_crtc_state->ips_enabled)
> +		return false;
> +
> +	if (intel_crtc_needs_modeset(new_crtc_state))
> +		return true;
> +
> +	/*
> +	 * Workaround : Do not read or write the pipe palette/gamma data while
> +	 * GAMMA_MODE is configured for split gamma and IPS_CTL has IPS enabled.
> +	 *
> +	 * Re-enable IPS after the LUT has been programmed.
> +	 */
> +	if (IS_HASWELL(i915) &&
> +	    (new_crtc_state->uapi.color_mgmt_changed ||
> +	     new_crtc_state->update_pipe) &&
> +	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
> +		return true;
> +
> +	/*
> +	 * We can't read out IPS on broadwell, assume the worst and
> +	 * forcibly enable IPS on the first fastset.
> +	 */
> +	if (new_crtc_state->update_pipe && old_crtc_state->inherited)
> +		return true;
> +
> +	return !old_crtc_state->ips_enabled;
> +}
> +
> +void hsw_ips_post_update(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc)
> +{
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	if (!hsw_ips_need_enable(state, crtc))
> +		return;
> +
> +	hsw_ips_enable(new_crtc_state);
> +}
> +
> +/* IPS only exists on ULT machines and is tied to pipe A. */
> +bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
> +{
> +	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe =3D=3D PIPE_A;
> +}
> +
> +bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	/* IPS only exists on ULT machines and is tied to pipe A. */
> +	if (!hsw_crtc_supports_ips(crtc))
> +		return false;
> +
> +	if (!i915->params.enable_ips)
> +		return false;
> +
> +	if (crtc_state->pipe_bpp > 24)
> +		return false;
> +
> +	/*
> +	 * We compare against max which means we must take
> +	 * the increased cdclk requirement into account when
> +	 * calculating the new cdclk.
> +	 *
> +	 * Should measure whether using a lower cdclk w/o IPS
> +	 */
> +	if (IS_BROADWELL(i915) &&
> +	    crtc_state->pixel_rate > i915->max_cdclk_freq * 95 / 100)
> +		return false;
> +
> +	return true;
> +}
> +
> +int hsw_ips_compute_config(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +
> +	crtc_state->ips_enabled =3D false;
> +
> +	if (!hsw_crtc_state_ips_capable(crtc_state))
> +		return 0;
> +
> +	/*
> +	 * When IPS gets enabled, the pipe CRC changes. Since IPS gets
> +	 * enabled and disabled dynamically based on package C states,
> +	 * user space can't make reliable use of the CRCs, so let's just
> +	 * completely disable it.
> +	 */
> +	if (crtc_state->crc_enabled)
> +		return 0;
> +
> +	/* IPS should be fine as long as at least one plane is enabled. */
> +	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
> +		return 0;
> +
> +	if (IS_BROADWELL(i915)) {
> +		const struct intel_cdclk_state *cdclk_state;
> +
> +		cdclk_state =3D intel_atomic_get_cdclk_state(state);
> +		if (IS_ERR(cdclk_state))
> +			return PTR_ERR(cdclk_state);
> +
> +		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> +		if (crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
> +			return 0;
> +	}
> +
> +	crtc_state->ips_enabled =3D true;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i91=
5/display/hsw_ips.h
> new file mode 100644
> index 000000000000..d63bdef5100a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __HSW_IPS_H__
> +#define __HSW_IPS_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_atomic_state;
> +struct intel_crtc;
> +struct intel_crtc_state;
> +
> +bool hsw_ips_disable(const struct intel_crtc_state *crtc_state);
> +bool hsw_ips_pre_update(struct intel_atomic_state *state,
> +			struct intel_crtc *crtc);
> +void hsw_ips_post_update(struct intel_atomic_state *state,
> +			 struct intel_crtc *crtc);
> +bool hsw_crtc_supports_ips(struct intel_crtc *crtc);
> +bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
> +int hsw_ips_compute_config(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc);
> +
> +#endif /* __HSW_IPS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 4b140a014ca8..118ef391b560 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -23,6 +23,7 @@
>=20=20
>  #include <linux/time.h>
>=20=20
> +#include "hsw_ips.h"
>  #include "intel_atomic.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_audio.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 08c59fdb24e5..134527981e2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -74,6 +74,7 @@
>=20=20
>  #include "g4x_dp.h"
>  #include "g4x_hdmi.h"
> +#include "hsw_ips.h"
>  #include "i915_drv.h"
>  #include "icl_dsi.h"
>  #include "intel_acpi.h"
> @@ -125,7 +126,6 @@ static void bdw_set_pipemisc(const struct intel_crtc_=
state *crtc_state);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> -static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state);
>=20=20
>  /**
>   * intel_update_watermarks - update FIFO watermark values based on curre=
nt modes
> @@ -1092,75 +1092,6 @@ static void ilk_pfit_enable(const struct intel_crt=
c_state *crtc_state)
>  	intel_de_write(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
>  }
>=20=20
> -static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -
> -	if (!crtc_state->ips_enabled)
> -		return;
> -
> -	/*
> -	 * We can only enable IPS after we enable a plane and wait for a vblank
> -	 * This function is called from post_plane_update, which is run after
> -	 * a vblank wait.
> -	 */
> -	drm_WARN_ON(dev, !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
> -
> -	if (IS_BROADWELL(dev_priv)) {
> -		drm_WARN_ON(dev, snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL,
> -						 IPS_ENABLE | IPS_PCODE_CONTROL));
> -		/* Quoting Art Runyan: "its not safe to expect any particular
> -		 * value in IPS_CTL bit 31 after enabling IPS through the
> -		 * mailbox." Moreover, the mailbox may return a bogus state,
> -		 * so we need to just enable it and continue on.
> -		 */
> -	} else {
> -		intel_de_write(dev_priv, IPS_CTL, IPS_ENABLE);
> -		/* The bit only becomes 1 in the next vblank, so this wait here
> -		 * is essentially intel_wait_for_vblank. If we don't have this
> -		 * and don't wait for vblanks until the end of crtc_enable, then
> -		 * the HW state readout code will complain that the expected
> -		 * IPS_CTL value is not the one we read. */
> -		if (intel_de_wait_for_set(dev_priv, IPS_CTL, IPS_ENABLE, 50))
> -			drm_err(&dev_priv->drm,
> -				"Timed out waiting for IPS enable\n");
> -	}
> -}
> -
> -static bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	bool need_vblank_wait =3D false;
> -
> -	if (!crtc_state->ips_enabled)
> -		return need_vblank_wait;
> -
> -	if (IS_BROADWELL(dev_priv)) {
> -		drm_WARN_ON(dev,
> -			    snb_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));
> -		/*
> -		 * Wait for PCODE to finish disabling IPS. The BSpec specified
> -		 * 42ms timeout value leads to occasional timeouts so use 100ms
> -		 * instead.
> -		 */
> -		if (intel_de_wait_for_clear(dev_priv, IPS_CTL, IPS_ENABLE, 100))
> -			drm_err(&dev_priv->drm,
> -				"Timed out waiting for IPS disable\n");
> -	} else {
> -		intel_de_write(dev_priv, IPS_CTL, 0);
> -		intel_de_posting_read(dev_priv, IPS_CTL);
> -	}
> -
> -	/* We need to wait for a vblank before we can disable the plane. */
> -	need_vblank_wait =3D true;
> -
> -	return need_vblank_wait;
> -}
> -
>  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
>  {
>  	if (crtc->overlay)
> @@ -1171,97 +1102,6 @@ static void intel_crtc_dpms_overlay_disable(struct=
 intel_crtc *crtc)
>  	 */
>  }
>=20=20
> -static bool hsw_ips_need_disable(struct intel_atomic_state *state,
> -				 struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	if (!old_crtc_state->ips_enabled)
> -		return false;
> -
> -	if (intel_crtc_needs_modeset(new_crtc_state))
> -		return true;
> -
> -	/*
> -	 * Workaround : Do not read or write the pipe palette/gamma data while
> -	 * GAMMA_MODE is configured for split gamma and IPS_CTL has IPS enabled.
> -	 *
> -	 * Disable IPS before we program the LUT.
> -	 */
> -	if (IS_HASWELL(dev_priv) &&
> -	    (new_crtc_state->uapi.color_mgmt_changed ||
> -	     new_crtc_state->update_pipe) &&
> -	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
> -		return true;
> -
> -	return !new_crtc_state->ips_enabled;
> -}
> -
> -static bool hsw_ips_pre_update(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc)
> -{
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -
> -	if (!hsw_ips_need_disable(state, crtc))
> -		return false;
> -
> -	return hsw_ips_disable(old_crtc_state);
> -}
> -
> -static bool hsw_ips_need_enable(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	if (!new_crtc_state->ips_enabled)
> -		return false;
> -
> -	if (intel_crtc_needs_modeset(new_crtc_state))
> -		return true;
> -
> -	/*
> -	 * Workaround : Do not read or write the pipe palette/gamma data while
> -	 * GAMMA_MODE is configured for split gamma and IPS_CTL has IPS enabled.
> -	 *
> -	 * Re-enable IPS after the LUT has been programmed.
> -	 */
> -	if (IS_HASWELL(dev_priv) &&
> -	    (new_crtc_state->uapi.color_mgmt_changed ||
> -	     new_crtc_state->update_pipe) &&
> -	    new_crtc_state->gamma_mode =3D=3D GAMMA_MODE_MODE_SPLIT)
> -		return true;
> -
> -	/*
> -	 * We can't read out IPS on broadwell, assume the worst and
> -	 * forcibly enable IPS on the first fastset.
> -	 */
> -	if (new_crtc_state->update_pipe && old_crtc_state->inherited)
> -		return true;
> -
> -	return !old_crtc_state->ips_enabled;
> -}
> -
> -static void hsw_ips_post_update(struct intel_atomic_state *state,
> -				struct intel_crtc *crtc)
> -{
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	if (!hsw_ips_need_enable(state, crtc))
> -		return;
> -
> -	hsw_ips_enable(new_crtc_state);
> -}
> -
>  static bool needs_nv12_wa(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> @@ -1938,12 +1778,6 @@ static void ilk_crtc_enable(struct intel_atomic_st=
ate *state,
>  	intel_set_pch_fifo_underrun_reporting(dev_priv, pipe, true);
>  }
>=20=20
> -/* IPS only exists on ULT machines and is tied to pipe A. */
> -static bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
> -{
> -	return HAS_IPS(to_i915(crtc->base.dev)) && crtc->pipe =3D=3D PIPE_A;
> -}
> -
>  static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev=
_priv,
>  					    enum pipe pipe, bool apply)
>  {
> @@ -2811,77 +2645,6 @@ static void intel_connector_verify_state(struct in=
tel_crtc_state *crtc_state,
>  	}
>  }
>=20=20
> -bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -
> -	/* IPS only exists on ULT machines and is tied to pipe A. */
> -	if (!hsw_crtc_supports_ips(crtc))
> -		return false;
> -
> -	if (!dev_priv->params.enable_ips)
> -		return false;
> -
> -	if (crtc_state->pipe_bpp > 24)
> -		return false;
> -
> -	/*
> -	 * We compare against max which means we must take
> -	 * the increased cdclk requirement into account when
> -	 * calculating the new cdclk.
> -	 *
> -	 * Should measure whether using a lower cdclk w/o IPS
> -	 */
> -	if (IS_BROADWELL(dev_priv) &&
> -	    crtc_state->pixel_rate > dev_priv->max_cdclk_freq * 95 / 100)
> -		return false;
> -
> -	return true;
> -}
> -
> -static int hsw_ips_compute_config(struct intel_atomic_state *state,
> -				  struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -
> -	crtc_state->ips_enabled =3D false;
> -
> -	if (!hsw_crtc_state_ips_capable(crtc_state))
> -		return 0;
> -
> -	/*
> -	 * When IPS gets enabled, the pipe CRC changes. Since IPS gets
> -	 * enabled and disabled dynamically based on package C states,
> -	 * user space can't make reliable use of the CRCs, so let's just
> -	 * completely disable it.
> -	 */
> -	if (crtc_state->crc_enabled)
> -		return 0;
> -
> -	/* IPS should be fine as long as at least one plane is enabled. */
> -	if (!(crtc_state->active_planes & ~BIT(PLANE_CURSOR)))
> -		return 0;
> -
> -	if (IS_BROADWELL(dev_priv)) {
> -		const struct intel_cdclk_state *cdclk_state;
> -
> -		cdclk_state =3D intel_atomic_get_cdclk_state(state);
> -		if (IS_ERR(cdclk_state))
> -			return PTR_ERR(cdclk_state);
> -
> -		/* pixel rate mustn't exceed 95% of cdclk with IPS on BDW */
> -		if (crtc_state->pixel_rate > cdclk_state->logical.cdclk * 95 / 100)
> -			return 0;
> -	}
> -
> -	crtc_state->ips_enabled =3D true;
> -
> -	return 0;
> -}
> -
>  static bool intel_crtc_supports_double_wide(const struct intel_crtc *crt=
c)
>  {
>  	const struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 2315088a280d..b8455e2b2373 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -632,7 +632,6 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc=
 *crtc,
>  void i9xx_crtc_clock_get(struct intel_crtc *crtc,
>  			 struct intel_crtc_state *pipe_config);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n =
*m_n);
> -bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_stat=
e);
>  enum intel_display_power_domain intel_port_to_power_domain(enum port por=
t);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);

--=20
Jani Nikula, Intel Open Source Graphics Center
