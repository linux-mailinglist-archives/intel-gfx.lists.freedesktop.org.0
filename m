Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A1BCB524F
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 09:43:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC74810E2A3;
	Thu, 11 Dec 2025 08:43:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IJYEPAoJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 941AE10E7B3;
 Thu, 11 Dec 2025 08:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765442581; x=1796978581;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=b77t2VQ/2RAS++3UoRsdltybAIwui66OQOh+7feADbs=;
 b=IJYEPAoJROkzdLy4vH3wNXU+mDKl7RXAuPsdyg2L1OoP8N0YfYUhYldr
 u/Xr1n/Nt9WVSkqAXhFHkXiIw4SRbr58/FAblaHLEVJkYcS555J7SIy4Q
 zL0fhbYyd9uuKJfvLL8rd1EyPvFVcNpuOHJnNlevU+PGLqZ3DmY7yhb91
 JpnVk0ctSRDCv9W+GytpMOKbGV8EwgHN9o959rBK0s1uTjmTi1Ww03wF9
 XRO3AEJdbTA0LS41lV21AzGMRg7x+208YTKKo6EGwI5sYYg/6RVZnrH+B
 TmFjfk2wmTXflg8JDbZxmUIAPVJ4s6o/dTdT7IhQw6YPyYP3he7ahT8jk g==;
X-CSE-ConnectionGUID: WEvoAi4cQBSEljJUBgREIw==
X-CSE-MsgGUID: EbWE9MVtQ3uQWl+R0X3naw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="54968465"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="54968465"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:43:01 -0800
X-CSE-ConnectionGUID: 9WXmHWZDTya4A4Hwijun5g==
X-CSE-MsgGUID: War+6dgiTUubBZGhf/yWgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="197570433"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 00:42:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/pc8: Add parent interface for PC8 forcewake
 tricks
In-Reply-To: <20251210172606.29729-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209111150.16853-1-ville.syrjala@linux.intel.com>
 <20251210172606.29729-1-ville.syrjala@linux.intel.com>
Date: Thu, 11 Dec 2025 10:42:56 +0200
Message-ID: <ea5b88f026aeb1f421082d0bb62a1ad5a42ed687@intel.com>
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

On Wed, 10 Dec 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We use forcewake to prevent the SoC from actually entering
> PC8 while performing the PC8 disable sequence. Hide that
> behind a new parent interface to eliminate the naked
> forcewake/uncore usage from the display power code.
>
> v2: Mark the interface optional and warn if
>     someone calls it when not provided (Jani)
>     Include the header to make sure the extern
>     declaration matches the definition (Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../drm/i915/display/intel_display_power.c    |  8 ++---
>  drivers/gpu/drm/i915/display/intel_parent.c   | 17 ++++++++++
>  drivers/gpu/drm/i915/display/intel_parent.h   |  3 ++
>  drivers/gpu/drm/i915/i915_display_pc8.c       | 31 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_display_pc8.h       |  9 ++++++
>  drivers/gpu/drm/i915/i915_driver.c            |  2 ++
>  include/drm/intel/display_parent_interface.h  |  8 +++++
>  8 files changed, 75 insertions(+), 4 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.c
>  create mode 100644 drivers/gpu/drm/i915/i915_display_pc8.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 175bd99e1d0d..b57e51d626b1 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -76,6 +76,7 @@ i915-$(CONFIG_PERF_EVENTS) +=3D \
>=20=20
>  # core display adaptation
>  i915-y +=3D \
> +	i915_display_pc8.o \
>  	i915_hdcp_gsc.o
>=20=20
>  # "Graphics Technology" (aka we talk to the gpu)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 9f323c39d798..47042a4c3a30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1339,10 +1339,10 @@ static void hsw_restore_lcpll(struct intel_displa=
y *display)
>  		return;
>=20=20
>  	/*
> -	 * Make sure we're not on PC8 state before disabling PC8, otherwise
> -	 * we'll hang the machine. To prevent PC8 state, just enable force_wake.
> +	 * Make sure we're not on PC8 state before disabling
> +	 * PC8, otherwise we'll hang the machine.
>  	 */
> -	intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
> +	intel_parent_pc8_block(display);
>=20=20
>  	if (val & LCPLL_POWER_DOWN_ALLOW) {
>  		val &=3D ~LCPLL_POWER_DOWN_ALLOW;
> @@ -1372,7 +1372,7 @@ static void hsw_restore_lcpll(struct intel_display =
*display)
>  				"Switching back to LCPLL failed\n");
>  	}
>=20=20
> -	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
> +	intel_parent_pc8_unblock(display);
>=20=20
>  	intel_update_cdclk(display);
>  	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/dr=
m/i915/display/intel_parent.c
> index 2ea310cc3509..ceb8ceea4ba4 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -17,6 +17,7 @@
>   * function pointer interface.
>   */
>=20=20
> +#include <drm/drm_print.h>
>  #include <drm/intel/display_parent_interface.h>
>=20=20
>  #include "intel_display_core.h"
> @@ -56,6 +57,22 @@ void intel_parent_irq_synchronize(struct intel_display=
 *display)
>  	display->parent->irq->synchronize(display->drm);
>  }
>=20=20
> +void intel_parent_pc8_block(struct intel_display *display)
> +{
> +	if (drm_WARN_ON_ONCE(display->drm, !display->parent->pc8))
> +		return;
> +
> +	display->parent->pc8->block(display->drm);
> +}
> +
> +void intel_parent_pc8_unblock(struct intel_display *display)
> +{
> +	if (drm_WARN_ON_ONCE(display->drm, !display->parent->pc8))
> +		return;
> +
> +	display->parent->pc8->unblock(display->drm);
> +}
> +
>  bool intel_parent_rps_available(struct intel_display *display)
>  {
>  	return display->parent->rps;
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/dr=
m/i915/display/intel_parent.h
> index 8f91a6f75c53..974a016ab3be 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -22,6 +22,9 @@ void intel_parent_hdcp_gsc_context_free(struct intel_di=
splay *display,
>  bool intel_parent_irq_enabled(struct intel_display *display);
>  void intel_parent_irq_synchronize(struct intel_display *display);
>=20=20
> +void intel_parent_pc8_block(struct intel_display *display);
> +void intel_parent_pc8_unblock(struct intel_display *display);
> +
>  bool intel_parent_rps_available(struct intel_display *display);
>  void intel_parent_rps_boost_if_not_started(struct intel_display *display=
, struct dma_fence *fence);
>  void intel_parent_rps_mark_interactive(struct intel_display *display, bo=
ol interactive);
> diff --git a/drivers/gpu/drm/i915/i915_display_pc8.c b/drivers/gpu/drm/i9=
15/i915_display_pc8.c
> new file mode 100644
> index 000000000000..2af5dbab20ef
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_display_pc8.c
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright 2025, Intel Corporation.
> + */
> +
> +#include <drm/drm_print.h>
> +#include <drm/intel/display_parent_interface.h>
> +
> +#include "i915_display_pc8.h"
> +#include "i915_drv.h"
> +#include "intel_uncore.h"
> +
> +static void i915_display_pc8_block(struct drm_device *drm)
> +{
> +	struct intel_uncore *uncore =3D &to_i915(drm)->uncore;
> +
> +	/* to prevent PC8 state, just enable force_wake */
> +	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
> +}
> +
> +static void i915_display_pc8_unblock(struct drm_device *drm)
> +{
> +	struct intel_uncore *uncore =3D &to_i915(drm)->uncore;
> +
> +	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
> +}
> +
> +const struct intel_display_pc8_interface i915_display_pc8_interface =3D {
> +	.block =3D i915_display_pc8_block,
> +	.unblock =3D i915_display_pc8_unblock,
> +};
> diff --git a/drivers/gpu/drm/i915/i915_display_pc8.h b/drivers/gpu/drm/i9=
15/i915_display_pc8.h
> new file mode 100644
> index 000000000000..717f313d2a21
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_display_pc8.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright =C2=A9 2025 Intel Corporation */
> +
> +#ifndef __I915_DISPLAY_PC8_H__
> +#define __I915_DISPLAY_PC8_H__
> +
> +extern const struct intel_display_pc8_interface i915_display_pc8_interfa=
ce;
> +
> +#endif /* __I915_DISPLAY_PC8_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index d98839427ef9..723cb424b2ba 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -89,6 +89,7 @@
>  #include "pxp/intel_pxp_pm.h"
>=20=20
>  #include "i915_debugfs.h"
> +#include "i915_display_pc8.h"
>  #include "i915_driver.h"
>  #include "i915_drm_client.h"
>  #include "i915_drv.h"
> @@ -761,6 +762,7 @@ static const struct intel_display_parent_interface pa=
rent =3D {
>  	.hdcp =3D &i915_display_hdcp_interface,
>  	.rpm =3D &i915_display_rpm_interface,
>  	.irq =3D &i915_display_irq_interface,
> +	.pc8 =3D &i915_display_pc8_interface,
>  	.rps =3D &i915_display_rps_interface,
>  	.vgpu_active =3D vgpu_active,
>  	.has_fenced_regions =3D has_fenced_regions,
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/i=
ntel/display_parent_interface.h
> index 61d1b22adc83..f07d265e90e5 100644
> --- a/include/drm/intel/display_parent_interface.h
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -41,6 +41,11 @@ struct intel_display_irq_interface {
>  	void (*synchronize)(struct drm_device *drm);
>  };
>=20=20
> +struct intel_display_pc8_interface {
> +	void (*block)(struct drm_device *drm);
> +	void (*unblock)(struct drm_device *drm);
> +};
> +
>  struct intel_display_rps_interface {
>  	void (*boost_if_not_started)(struct dma_fence *fence);
>  	void (*mark_interactive)(struct drm_device *drm, bool interactive);
> @@ -69,6 +74,9 @@ struct intel_display_parent_interface {
>  	/** @irq: IRQ interface */
>  	const struct intel_display_irq_interface *irq;
>=20=20
> +	/** @pc8: PC8 interface. Optional. */
> +	const struct intel_display_pc8_interface *pc8;
> +
>  	/** @rpm: RPS interface. Optional. */
>  	const struct intel_display_rps_interface *rps;

--=20
Jani Nikula, Intel
