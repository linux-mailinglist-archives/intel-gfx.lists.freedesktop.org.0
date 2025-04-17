Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C58A91E1E
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 15:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B301510EB09;
	Thu, 17 Apr 2025 13:32:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGafuVPz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E9410EB09
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744896773; x=1776432773;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=4DPLfZYtuRzjp8rRXge3008oIuZH6tfBJDXyy9jDUhI=;
 b=BGafuVPzWNVNbyL/TKWSqtIL0znT13BksjivkzfxvnUXba9GAYGenPlR
 tWZ2tE9VrC/tNNqF1JwsUxVbuUuwVxCARxaAWciX/eQvycdzeU3jPQdwX
 06q9d4aJyNr84ttuYYnSerfxdh9opiap2R8LIGPDi6QlpFkoeY35JRqhi
 3WhhUNy5LXGg4d4qNDNomuM/TXdw5fRWOEBTw6bVDCy6SXiHWf/0IgVxi
 ElelgjDphkK/RKUx5uUZWDNNmkyBRd2XR+ibeeyx6DcRJsGFeqXwsY5DA
 xfWiqtzVm2LQ964ZpVRVGbYfpTA0E69Ut5yRtqL6StCzjp1BA+dSj+IzB Q==;
X-CSE-ConnectionGUID: vxlqyyakQoqw5BIQMXGrsg==
X-CSE-MsgGUID: pqJhIA0nRbWGsiZg+R+yLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="34096132"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="34096132"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:32:52 -0700
X-CSE-ConnectionGUID: xM3kqUEXSfGLNHVETRnX9g==
X-CSE-MsgGUID: f1QgnvbrTrmdW6QF69m/cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="130745816"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 06:32:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/6] drm/i915/vga: Consolidate intel_vga_disable() calls
In-Reply-To: <20250417114454.12836-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
 <20250417114454.12836-7-ville.syrjala@linux.intel.com>
Date: Thu, 17 Apr 2025 16:32:48 +0300
Message-ID: <87cydaoqv3.fsf@intel.com>
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

On Thu, 17 Apr 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Currently we disable the VGA plane from various places, sometimes
> multiple times in the same init/resume sequence. Get rid of all this
> mess and do it just once. The most correct place seems to be just
> after intel_early_display_was() as that one applies various workarounds
> that need to be in place before we touch any planes (including the
> VGA plane).
>
> Actually, we do still have a second caller in
> vlv_display_power_well_init(). I think we still need that as the reset
> value of VGACNTR is 0x0 and thus technically the VGA plane will be
> (at least partially) enabled after the power well has been toggled.
>
> In both cases we have the necessary power reference already held
> (INIT power domain for load/resume case, and the display power well
> itself being what we need for vlv_display_power_well_init()).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Seems good.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../drm/i915/display/intel_display_driver.c   |  3 ---
>  .../drm/i915/display/intel_modeset_setup.c    |  3 +++
>  drivers/gpu/drm/i915/display/intel_vga.c      | 22 -------------------
>  drivers/gpu/drm/i915/display/intel_vga.h      |  1 -
>  drivers/gpu/drm/i915/i915_driver.c            |  3 ---
>  5 files changed, 3 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index eb3ae05d1569..ac0f79476675 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -455,8 +455,6 @@ int intel_display_driver_probe_nogem(struct intel_dis=
play *display)
>=20=20
>  	intel_hti_init(display);
>=20=20
> -	/* Just disable it once at startup */
> -	intel_vga_disable(display);
>  	intel_setup_outputs(display);
>=20=20
>  	ret =3D intel_dp_tunnel_mgr_init(display);
> @@ -693,7 +691,6 @@ __intel_display_driver_resume(struct intel_display *d=
isplay,
>  	int ret, i;
>=20=20
>  	intel_modeset_setup_hw_state(display, ctx);
> -	intel_vga_redisable(display);
>=20=20
>  	if (!state)
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> index 5d5ade7fdd77..0325b0c9506d 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -31,6 +31,7 @@
>  #include "intel_pmdemand.h"
>  #include "intel_tc.h"
>  #include "intel_vblank.h"
> +#include "intel_vga.h"
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>=20=20
> @@ -935,6 +936,8 @@ void intel_modeset_setup_hw_state(struct intel_displa=
y *display,
>  	wakeref =3D intel_display_power_get(display, POWER_DOMAIN_INIT);
>=20=20
>  	intel_early_display_was(display);
> +	intel_vga_disable(display);
> +
>  	intel_modeset_readout_hw_state(display);
>=20=20
>  	/* HW state is read out, now we need to sanitize this mess. */
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i=
915/display/intel_vga.c
> index d01de61105c1..a0940a050994 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.c
> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
> @@ -74,28 +74,6 @@ void intel_vga_disable(struct intel_display *display)
>  	intel_de_posting_read(display, vga_reg);
>  }
>=20=20
> -void intel_vga_redisable(struct intel_display *display)
> -{
> -	intel_wakeref_t wakeref;
> -
> -	/*
> -	 * This function can be called both from intel_modeset_setup_hw_state or
> -	 * at a very early point in our resume sequence, where the power well
> -	 * structures are not yet restored. Since this function is at a very
> -	 * paranoid "someone might have enabled VGA while we were not looking"
> -	 * level, just check if the power well is enabled instead of trying to
> -	 * follow the "don't touch the power well if we don't need it" policy
> -	 * the rest of the driver uses.
> -	 */
> -	wakeref =3D intel_display_power_get_if_enabled(display, POWER_DOMAIN_VG=
A);
> -	if (!wakeref)
> -		return;
> -
> -	intel_vga_disable(display);
> -
> -	intel_display_power_put(display, POWER_DOMAIN_VGA, wakeref);
> -}
> -
>  void intel_vga_reset_io_mem(struct intel_display *display)
>  {
>  	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i=
915/display/intel_vga.h
> index d0716782c1f9..16d699f3b641 100644
> --- a/drivers/gpu/drm/i915/display/intel_vga.h
> +++ b/drivers/gpu/drm/i915/display/intel_vga.h
> @@ -10,7 +10,6 @@ struct intel_display;
>=20=20
>  void intel_vga_reset_io_mem(struct intel_display *display);
>  void intel_vga_disable(struct intel_display *display);
> -void intel_vga_redisable(struct intel_display *display);
>  int intel_vga_register(struct intel_display *display);
>  void intel_vga_unregister(struct intel_display *display);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 97ff9855b5de..96a52f963475 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -62,7 +62,6 @@
>  #include "display/intel_pch_refclk.h"
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite_uapi.h"
> -#include "display/intel_vga.h"
>  #include "display/skl_watermark.h"
>=20=20
>  #include "gem/i915_gem_context.h"
> @@ -1202,8 +1201,6 @@ static int i915_drm_resume(struct drm_device *dev)
>=20=20
>  	i9xx_display_sr_restore(display);
>=20=20
> -	intel_vga_redisable(display);
> -
>  	intel_gmbus_reset(display);
>=20=20
>  	intel_pps_unlock_regs_wa(display);

--=20
Jani Nikula, Intel
