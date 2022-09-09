Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EB75B3233
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 10:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE21810EC22;
	Fri,  9 Sep 2022 08:48:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F3010EC22
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 08:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662713304; x=1694249304;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=LZiDYrNdknfNh43fEfHsjlhyYPqJ10612T9qXJqTRAI=;
 b=dOIIliz4HOjjze+rShZsEF0tOlot/j9Wu9VycnL2zly7ojs914v/qVWO
 mLGup22FrNmnLHLcw4UMIauWyIBLrC/EXomTWhk7Yx70RMUsZKghzf/Dd
 f0OHlB5N+4JSC9mp6YImf8TDrs+rB0xMJF39ayoWtzz3DhR9s/4QNRazK
 7G7EppWpYXpyEeGmXXZXFgE3yg1HqxOSN1tecyD4WEDfIk6rDD5cx75Nn
 UiN0P5MSY7k5rOF2zy4SlecGccR2Q42NehjNPggGXT+aE65IW5bx6eGUh
 nZs/CZIBrtPlIDFvOE5eCEqtN06596u9v3q1pZzGr8TR7jiarLD34uBuK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383723678"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="383723678"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:48:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="677080607"
Received: from abaruah-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.45.217])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 01:48:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220908191646.20239-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220908191646.20239-1-ville.syrjala@linux.intel.com>
 <20220908191646.20239-3-ville.syrjala@linux.intel.com>
Date: Fri, 09 Sep 2022 11:48:00 +0300
Message-ID: <87mtb96iin.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Extract skl_watermark.c
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

On Thu, 08 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull all the skl+ watermark code (and the dbuf/sagv/ipc code
> since it's all sort of intertwined and I'm too lazy to think
> of a finer grained split right now) into its own file from the
> catch-all intel_pm.c.

It's a nice start, chops off a cool 3.5k lines from intel_pm.c.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Also sneak in the s/dev_priv/i915/ rename while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |    3 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c |    2 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |    4 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   |    2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |    1 +
>  .../drm/i915/display/intel_display_debugfs.c  |    1 +
>  .../drm/i915/display/intel_display_power.c    |    2 +-
>  .../i915/display/intel_display_power_well.c   |    2 +-
>  .../drm/i915/display/intel_modeset_setup.c    |    1 +
>  .../drm/i915/display/intel_modeset_verify.c   |    2 +-
>  .../drm/i915/display/skl_universal_plane.c    |    2 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 3470 ++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.h  |   78 +
>  drivers/gpu/drm/i915/i915_driver.c            |    1 +
>  drivers/gpu/drm/i915/intel_pm.c               | 3483 +----------------
>  drivers/gpu/drm/i915/intel_pm.h               |   65 +-
>  16 files changed, 3579 insertions(+), 3540 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/skl_watermark.c
>  create mode 100644 drivers/gpu/drm/i915/display/skl_watermark.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..8f35be02b80e 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -257,7 +257,8 @@ i915-y +=3D \
>  	display/intel_vga.o \
>  	display/i9xx_plane.o \
>  	display/skl_scaler.o \
> -	display/skl_universal_plane.o
> +	display/skl_universal_plane.o \
> +	display/skl_watermark.o
>  i915-$(CONFIG_ACPI) +=3D \
>  	display/intel_acpi.o \
>  	display/intel_opregion.o
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/=
gpu/drm/i915/display/intel_atomic_plane.c
> index dd876dbbaa39..aaa6708256d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -42,9 +42,9 @@
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
> -#include "intel_pm.h"
>  #include "intel_sprite.h"
>  #include "skl_scaler.h"
> +#include "skl_watermark.h"
>=20=20
>  static void intel_plane_state_reset(struct intel_plane_state *plane_stat=
e,
>  				    struct intel_plane *plane)
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 61308ebe48aa..6a1f0300430c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -5,15 +5,17 @@
>=20=20
>  #include <drm/drm_atomic_state_helper.h>
>=20=20
> +#include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "i915_utils.h"
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
>  #include "intel_cdclk.h"
> +#include "intel_display_core.h"
>  #include "intel_display_types.h"
> +#include "skl_watermark.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
> -#include "intel_pm.h"
>=20=20
>  /* Parameters for Qclk Geyserville (QGV) */
>  struct intel_qgv_point {
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index 16ac560eab49..87899e89b3a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -19,9 +19,9 @@
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> +#include "skl_watermark.h"
>=20=20
>  /* Cursor formats */
>  static const u32 intel_cursor_formats[] =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 264769d0e7ac..8f1f704c6b25 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -117,6 +117,7 @@
>  #include "i9xx_plane.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> +#include "skl_watermark.h"
>  #include "vlv_dsi.h"
>  #include "vlv_dsi_pll.h"
>  #include "vlv_dsi_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 5dc364e9db49..fe40e2a226d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -26,6 +26,7 @@
>  #include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
> +#include "skl_watermark.h"
>=20=20
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node=
 *node)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1af1705d730d..1e608b9e5055 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -19,8 +19,8 @@
>  #include "intel_mchbar_regs.h"
>  #include "intel_pch_refclk.h"
>  #include "intel_pcode.h"
> -#include "intel_pm.h"
>  #include "intel_snps_phy.h"
> +#include "skl_watermark.h"
>  #include "vlv_sideband.h"
>=20=20
>  #define for_each_power_domain_well(__dev_priv, __power_well, __domain)	\
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/dr=
ivers/gpu/drm/i915/display/intel_display_power_well.c
> index 29cc05c04c65..b8790edd454f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -17,10 +17,10 @@
>  #include "intel_dpll.h"
>  #include "intel_hotplug.h"
>  #include "intel_pcode.h"
> -#include "intel_pm.h"
>  #include "intel_pps.h"
>  #include "intel_tc.h"
>  #include "intel_vga.h"
> +#include "skl_watermark.h"
>  #include "vlv_sideband.h"
>  #include "vlv_sideband_reg.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> index aed386dce96a..cbfabd58b75a 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -23,6 +23,7 @@
>  #include "intel_modeset_setup.h"
>  #include "intel_pch_display.h"
>  #include "intel_pm.h"
> +#include "skl_watermark.h"
>=20=20
>  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  					struct drm_modeset_acquire_ctx *ctx)
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/driver=
s/gpu/drm/i915/display/intel_modeset_verify.c
> index 073607162acc..0fdcf2e6d57f 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -15,8 +15,8 @@
>  #include "intel_display_types.h"
>  #include "intel_fdi.h"
>  #include "intel_modeset_verify.h"
> -#include "intel_pm.h"
>  #include "intel_snps_phy.h"
> +#include "skl_watermark.h"
>=20=20
>  /*
>   * Cross check the actual hw state with our own modeset state tracking (=
and its
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 8f22a2739d1d..7cb713043408 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -14,11 +14,11 @@
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
> -#include "intel_pm.h"
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
> +#include "skl_watermark.h"
>  #include "pxp/intel_pxp.h"
>=20=20
>  static const u32 skl_plane_formats[] =3D {
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> new file mode 100644
> index 000000000000..25ca92ae8958
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -0,0 +1,3470 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#include <drm/drm_blend.h>
> +
> +#include "intel_atomic.h"
> +#include "intel_atomic_plane.h"
> +#include "intel_bw.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_power.h"
> +#include "intel_display_types.h"
> +#include "intel_fb.h"
> +#include "skl_watermark.h"
> +
> +#include "i915_drv.h"
> +#include "i915_fixed.h"
> +#include "i915_reg.h"
> +#include "intel_pcode.h"
> +#include "intel_pm.h"
> +
> +static void skl_sagv_disable(struct drm_i915_private *i915);
> +
> +/* Stores plane specific WM parameters */
> +struct skl_wm_params {
> +	bool x_tiled, y_tiled;
> +	bool rc_surface;
> +	bool is_planar;
> +	u32 width;
> +	u8 cpp;
> +	u32 plane_pixel_rate;
> +	u32 y_min_scanlines;
> +	u32 plane_bytes_per_line;
> +	uint_fixed_16_16_t plane_blocks_per_line;
> +	uint_fixed_16_16_t y_tile_minimum;
> +	u32 linetime_us;
> +	u32 dbuf_block_size;
> +};
> +
> +u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915)
> +{
> +	u8 enabled_slices =3D 0;
> +	enum dbuf_slice slice;
> +
> +	for_each_dbuf_slice(i915, slice) {
> +		if (intel_uncore_read(&i915->uncore,
> +				      DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
> +			enabled_slices |=3D BIT(slice);
> +	}
> +
> +	return enabled_slices;
> +}
> +
> +/*
> + * FIXME: We still don't have the proper code detect if we need to apply=
 the WA,
> + * so assume we'll always need it in order to avoid underruns.
> + */
> +static bool skl_needs_memory_bw_wa(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) =3D=3D 9;
> +}
> +
> +static bool
> +intel_has_sagv(struct drm_i915_private *i915)
> +{
> +	return DISPLAY_VER(i915) >=3D 9 && !IS_LP(i915) &&
> +		i915->display.sagv.status !=3D I915_SAGV_NOT_CONTROLLED;
> +}
> +
> +static u32
> +intel_sagv_block_time(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >=3D 12) {
> +		u32 val =3D 0;
> +		int ret;
> +
> +		ret =3D snb_pcode_read(&i915->uncore,
> +				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> +				     &val, NULL);
> +		if (ret) {
> +			drm_dbg_kms(&i915->drm, "Couldn't read SAGV block time!\n");
> +			return 0;
> +		}
> +
> +		return val;
> +	} else if (DISPLAY_VER(i915) =3D=3D 11) {
> +		return 10;
> +	} else if (DISPLAY_VER(i915) =3D=3D 9 && !IS_LP(i915)) {
> +		return 30;
> +	} else {
> +		return 0;
> +	}
> +}
> +
> +static void intel_sagv_init(struct drm_i915_private *i915)
> +{
> +	if (!intel_has_sagv(i915))
> +		i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> +
> +	/*
> +	 * Probe to see if we have working SAGV control.
> +	 * For icl+ this was already determined by intel_bw_init_hw().
> +	 */
> +	if (DISPLAY_VER(i915) < 11)
> +		skl_sagv_disable(i915);
> +
> +	drm_WARN_ON(&i915->drm, i915->display.sagv.status =3D=3D I915_SAGV_UNKN=
OWN);
> +
> +	i915->display.sagv.block_time_us =3D intel_sagv_block_time(i915);
> +
> +	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: =
%u us\n",
> +		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us=
);
> +
> +	/* avoid overflow when adding with wm0 latency/etc. */
> +	if (drm_WARN(&i915->drm, i915->display.sagv.block_time_us > U16_MAX,
> +		     "Excessive SAGV block time %u, ignoring\n",
> +		     i915->display.sagv.block_time_us))
> +		i915->display.sagv.block_time_us =3D 0;
> +
> +	if (!intel_has_sagv(i915))
> +		i915->display.sagv.block_time_us =3D 0;
> +}
> +
> +/*
> + * SAGV dynamically adjusts the system agent voltage and clock frequenci=
es
> + * depending on power and performance requirements. The display engine a=
ccess
> + * to system memory is blocked during the adjustment time. Because of the
> + * blocking time, having this enabled can cause full system hangs and/or=
 pipe
> + * underruns if we don't meet all of the following requirements:
> + *
> + *  - <=3D 1 pipe enabled
> + *  - All planes can enable watermarks for latencies >=3D SAGV engine bl=
ock time
> + *  - We're not using an interlaced display configuration
> + */
> +static void skl_sagv_enable(struct drm_i915_private *i915)
> +{
> +	int ret;
> +
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (i915->display.sagv.status =3D=3D I915_SAGV_ENABLED)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "Enabling SAGV\n");
> +	ret =3D snb_pcode_write(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> +			      GEN9_SAGV_ENABLE);
> +
> +	/* We don't need to wait for SAGV when enabling */
> +
> +	/*
> +	 * Some skl systems, pre-release machines in particular,
> +	 * don't actually have SAGV.
> +	 */
> +	if (IS_SKYLAKE(i915) && ret =3D=3D -ENXIO) {
> +		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
> +		i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> +		return;
> +	} else if (ret < 0) {
> +		drm_err(&i915->drm, "Failed to enable SAGV\n");
> +		return;
> +	}
> +
> +	i915->display.sagv.status =3D I915_SAGV_ENABLED;
> +}
> +
> +static void skl_sagv_disable(struct drm_i915_private *i915)
> +{
> +	int ret;
> +
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (i915->display.sagv.status =3D=3D I915_SAGV_DISABLED)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "Disabling SAGV\n");
> +	/* bspec says to keep retrying for at least 1 ms */
> +	ret =3D skl_pcode_request(&i915->uncore, GEN9_PCODE_SAGV_CONTROL,
> +				GEN9_SAGV_DISABLE,
> +				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
> +				1);
> +	/*
> +	 * Some skl systems, pre-release machines in particular,
> +	 * don't actually have SAGV.
> +	 */
> +	if (IS_SKYLAKE(i915) && ret =3D=3D -ENXIO) {
> +		drm_dbg(&i915->drm, "No SAGV found on system, ignoring\n");
> +		i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> +		return;
> +	} else if (ret < 0) {
> +		drm_err(&i915->drm, "Failed to disable SAGV (%d)\n", ret);
> +		return;
> +	}
> +
> +	i915->display.sagv.status =3D I915_SAGV_DISABLED;
> +}
> +
> +static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =3D
> +		intel_atomic_get_new_bw_state(state);
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	if (!intel_can_enable_sagv(i915, new_bw_state))
> +		skl_sagv_disable(i915);
> +}
> +
> +static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =3D
> +		intel_atomic_get_new_bw_state(state);
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	if (intel_can_enable_sagv(i915, new_bw_state))
> +		skl_sagv_enable(i915);
> +}
> +
> +static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *old_bw_state =3D
> +		intel_atomic_get_old_bw_state(state);
> +	const struct intel_bw_state *new_bw_state =3D
> +		intel_atomic_get_new_bw_state(state);
> +	u16 old_mask, new_mask;
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	old_mask =3D old_bw_state->qgv_points_mask;
> +	new_mask =3D old_bw_state->qgv_points_mask | new_bw_state->qgv_points_m=
ask;
> +
> +	if (old_mask =3D=3D new_mask)
> +		return;
> +
> +	WARN_ON(!new_bw_state->base.changed);
> +
> +	drm_dbg_kms(&i915->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
> +		    old_mask, new_mask);
> +
> +	/*
> +	 * Restrict required qgv points before updating the configuration.
> +	 * According to BSpec we can't mask and unmask qgv points at the same
> +	 * time. Also masking should be done before updating the configuration
> +	 * and unmasking afterwards.
> +	 */
> +	icl_pcode_restrict_qgv_points(i915, new_mask);
> +}
> +
> +static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *old_bw_state =3D
> +		intel_atomic_get_old_bw_state(state);
> +	const struct intel_bw_state *new_bw_state =3D
> +		intel_atomic_get_new_bw_state(state);
> +	u16 old_mask, new_mask;
> +
> +	if (!new_bw_state)
> +		return;
> +
> +	old_mask =3D old_bw_state->qgv_points_mask | new_bw_state->qgv_points_m=
ask;
> +	new_mask =3D new_bw_state->qgv_points_mask;
> +
> +	if (old_mask =3D=3D new_mask)
> +		return;
> +
> +	WARN_ON(!new_bw_state->base.changed);
> +
> +	drm_dbg_kms(&i915->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
> +		    old_mask, new_mask);
> +
> +	/*
> +	 * Allow required qgv points after updating the configuration.
> +	 * According to BSpec we can't mask and unmask qgv points at the same
> +	 * time. Also masking should be done before updating the configuration
> +	 * and unmasking afterwards.
> +	 */
> +	icl_pcode_restrict_qgv_points(i915, new_mask);
> +}
> +
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		icl_sagv_pre_plane_update(state);
> +	else
> +		skl_sagv_pre_plane_update(state);
> +}
> +
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(i915))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		icl_sagv_post_plane_update(state);
> +	else
> +		skl_sagv_post_plane_update(state);
> +}
> +
> +static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum plane_id plane_id;
> +	int max_level =3D INT_MAX;
> +
> +	if (!intel_has_sagv(i915))
> +		return false;
> +
> +	if (!crtc_state->hw.active)
> +		return true;
> +
> +	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +		return false;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +		int level;
> +
> +		/* Skip this plane if it's not enabled */
> +		if (!wm->wm[0].enable)
> +			continue;
> +
> +		/* Find the highest enabled wm level for this plane */
> +		for (level =3D ilk_wm_max_level(i915);
> +		     !wm->wm[level].enable; --level)
> +		     { }
> +
> +		/* Highest common enabled wm level for all planes */
> +		max_level =3D min(level, max_level);
> +	}
> +
> +	/* No enabled planes? */
> +	if (max_level =3D=3D INT_MAX)
> +		return true;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		/*
> +		 * All enabled planes must have enabled a common wm level that
> +		 * can tolerate memory latencies higher than sagv_block_time_us
> +		 */
> +		if (wm->wm[0].enable && !wm->wm[max_level].can_sagv)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	enum plane_id plane_id;
> +
> +	if (!crtc_state->hw.active)
> +		return true;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (wm->wm[0].enable && !wm->sagv.wm0.enable)
> +			return false;
> +	}
> +
> +	return true;
> +}
> +
> +static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (DISPLAY_VER(i915) >=3D 12)
> +		return tgl_crtc_can_enable_sagv(crtc_state);
> +	else
> +		return skl_crtc_can_enable_sagv(crtc_state);
> +}
> +
> +bool intel_can_enable_sagv(struct drm_i915_private *i915,
> +			   const struct intel_bw_state *bw_state)
> +{
> +	if (DISPLAY_VER(i915) < 11 &&
> +	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
> +		return false;
> +
> +	return bw_state->pipe_sagv_reject =3D=3D 0;
> +}
> +
> +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	int ret;
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	const struct intel_bw_state *old_bw_state =3D NULL;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		new_bw_state =3D intel_atomic_get_bw_state(state);
> +		if (IS_ERR(new_bw_state))
> +			return PTR_ERR(new_bw_state);
> +
> +		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> +
> +		if (intel_crtc_can_enable_sagv(new_crtc_state))
> +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> +		else
> +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> +	}
> +
> +	if (!new_bw_state)
> +		return 0;
> +
> +	new_bw_state->active_pipes =3D
> +		intel_calc_active_pipes(state, old_bw_state->active_pipes);
> +
> +	if (new_bw_state->active_pipes !=3D old_bw_state->active_pipes) {
> +		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (intel_can_enable_sagv(i915, new_bw_state) !=3D
> +	    intel_can_enable_sagv(i915, old_bw_state)) {
> +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	} else if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_=
reject) {
> +		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> +
> +		/*
> +		 * We store use_sagv_wm in the crtc state rather than relying on
> +		 * that bw state since we have no convenient way to get at the
> +		 * latter from the plane commit hooks (especially in the legacy
> +		 * cursor case)
> +		 */
> +		pipe_wm->use_sagv_wm =3D !HAS_HW_SAGV_WM(i915) &&
> +			DISPLAY_VER(i915) >=3D 12 &&
> +			intel_can_enable_sagv(i915, new_bw_state);
> +	}
> +
> +	return 0;
> +}
> +
> +static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
> +			      u16 start, u16 end)
> +{
> +	entry->start =3D start;
> +	entry->end =3D end;
> +
> +	return end;
> +}
> +
> +static int intel_dbuf_slice_size(struct drm_i915_private *i915)
> +{
> +	return INTEL_INFO(i915)->display.dbuf.size /
> +		hweight8(INTEL_INFO(i915)->display.dbuf.slice_mask);
> +}
> +
> +static void
> +skl_ddb_entry_for_slices(struct drm_i915_private *i915, u8 slice_mask,
> +			 struct skl_ddb_entry *ddb)
> +{
> +	int slice_size =3D intel_dbuf_slice_size(i915);
> +
> +	if (!slice_mask) {
> +		ddb->start =3D 0;
> +		ddb->end =3D 0;
> +		return;
> +	}
> +
> +	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> +	ddb->end =3D fls(slice_mask) * slice_size;
> +
> +	WARN_ON(ddb->start >=3D ddb->end);
> +	WARN_ON(ddb->end > INTEL_INFO(i915)->display.dbuf.size);
> +}
> +
> +static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 sl=
ice_mask)
> +{
> +	struct skl_ddb_entry ddb;
> +
> +	if (slice_mask & (BIT(DBUF_S1) | BIT(DBUF_S2)))
> +		slice_mask =3D BIT(DBUF_S1);
> +	else if (slice_mask & (BIT(DBUF_S3) | BIT(DBUF_S4)))
> +		slice_mask =3D BIT(DBUF_S3);
> +
> +	skl_ddb_entry_for_slices(i915, slice_mask, &ddb);
> +
> +	return ddb.start;
> +}
> +
> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
> +			    const struct skl_ddb_entry *entry)
> +{
> +	int slice_size =3D intel_dbuf_slice_size(i915);
> +	enum dbuf_slice start_slice, end_slice;
> +	u8 slice_mask =3D 0;
> +
> +	if (!skl_ddb_entry_size(entry))
> +		return 0;
> +
> +	start_slice =3D entry->start / slice_size;
> +	end_slice =3D (entry->end - 1) / slice_size;
> +
> +	/*
> +	 * Per plane DDB entry can in a really worst case be on multiple slices
> +	 * but single entry is anyway contigious.
> +	 */
> +	while (start_slice <=3D end_slice) {
> +		slice_mask |=3D BIT(start_slice);
> +		start_slice++;
> +	}
> +
> +	return slice_mask;
> +}
> +
> +static unsigned int intel_crtc_ddb_weight(const struct intel_crtc_state =
*crtc_state)
> +{
> +	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> +	int hdisplay, vdisplay;
> +
> +	if (!crtc_state->hw.active)
> +		return 0;
> +
> +	/*
> +	 * Watermark/ddb requirement highly depends upon width of the
> +	 * framebuffer, So instead of allocating DDB equally among pipes
> +	 * distribute DDB based on resolution/width of the display.
> +	 */
> +	drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
> +
> +	return hdisplay;
> +}
> +
> +static void intel_crtc_dbuf_weights(const struct intel_dbuf_state *dbuf_=
state,
> +				    enum pipe for_pipe,
> +				    unsigned int *weight_start,
> +				    unsigned int *weight_end,
> +				    unsigned int *weight_total)
> +{
> +	struct drm_i915_private *i915 =3D
> +		to_i915(dbuf_state->base.state->base.dev);
> +	enum pipe pipe;
> +
> +	*weight_start =3D 0;
> +	*weight_end =3D 0;
> +	*weight_total =3D 0;
> +
> +	for_each_pipe(i915, pipe) {
> +		int weight =3D dbuf_state->weight[pipe];
> +
> +		/*
> +		 * Do not account pipes using other slice sets
> +		 * luckily as of current BSpec slice sets do not partially
> +		 * intersect(pipes share either same one slice or same slice set
> +		 * i.e no partial intersection), so it is enough to check for
> +		 * equality for now.
> +		 */
> +		if (dbuf_state->slices[pipe] !=3D dbuf_state->slices[for_pipe])
> +			continue;
> +
> +		*weight_total +=3D weight;
> +		if (pipe < for_pipe) {
> +			*weight_start +=3D weight;
> +			*weight_end +=3D weight;
> +		} else if (pipe =3D=3D for_pipe) {
> +			*weight_end +=3D weight;
> +		}
> +	}
> +}
> +
> +static int
> +skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crt=
c *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	unsigned int weight_total, weight_start, weight_end;
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +	struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	struct intel_crtc_state *crtc_state;
> +	struct skl_ddb_entry ddb_slices;
> +	enum pipe pipe =3D crtc->pipe;
> +	unsigned int mbus_offset =3D 0;
> +	u32 ddb_range_size;
> +	u32 dbuf_slice_mask;
> +	u32 start, end;
> +	int ret;
> +
> +	if (new_dbuf_state->weight[pipe] =3D=3D 0) {
> +		skl_ddb_entry_init(&new_dbuf_state->ddb[pipe], 0, 0);
> +		goto out;
> +	}
> +
> +	dbuf_slice_mask =3D new_dbuf_state->slices[pipe];
> +
> +	skl_ddb_entry_for_slices(i915, dbuf_slice_mask, &ddb_slices);
> +	mbus_offset =3D mbus_ddb_offset(i915, dbuf_slice_mask);
> +	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
> +
> +	intel_crtc_dbuf_weights(new_dbuf_state, pipe,
> +				&weight_start, &weight_end, &weight_total);
> +
> +	start =3D ddb_range_size * weight_start / weight_total;
> +	end =3D ddb_range_size * weight_end / weight_total;
> +
> +	skl_ddb_entry_init(&new_dbuf_state->ddb[pipe],
> +			   ddb_slices.start - mbus_offset + start,
> +			   ddb_slices.start - mbus_offset + end);
> +
> +out:
> +	if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe] &&
> +	    skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
> +				&new_dbuf_state->ddb[pipe]))
> +		return 0;
> +
> +	ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +	if (ret)
> +		return ret;
> +
> +	crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> +	if (IS_ERR(crtc_state))
> +		return PTR_ERR(crtc_state);
> +
> +	/*
> +	 * Used for checking overlaps, so we need absolute
> +	 * offsets instead of MBUS relative offsets.
> +	 */
> +	crtc_state->wm.skl.ddb.start =3D mbus_offset + new_dbuf_state->ddb[pipe=
].start;
> +	crtc_state->wm.skl.ddb.end =3D mbus_offset + new_dbuf_state->ddb[pipe].=
end;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "[CRTC:%d:%s] dbuf slices 0x%x -> 0x%x, ddb (%d - %d) -> (%d - %d)=
, active pipes 0x%x -> 0x%x\n",
> +		    crtc->base.base.id, crtc->base.name,
> +		    old_dbuf_state->slices[pipe], new_dbuf_state->slices[pipe],
> +		    old_dbuf_state->ddb[pipe].start, old_dbuf_state->ddb[pipe].end,
> +		    new_dbuf_state->ddb[pipe].start, new_dbuf_state->ddb[pipe].end,
> +		    old_dbuf_state->active_pipes, new_dbuf_state->active_pipes);
> +
> +	return 0;
> +}
> +
> +static int skl_compute_wm_params(const struct intel_crtc_state *crtc_sta=
te,
> +				 int width, const struct drm_format_info *format,
> +				 u64 modifier, unsigned int rotation,
> +				 u32 plane_pixel_rate, struct skl_wm_params *wp,
> +				 int color_plane);
> +
> +static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
> +				 struct intel_plane *plane,
> +				 int level,
> +				 unsigned int latency,
> +				 const struct skl_wm_params *wp,
> +				 const struct skl_wm_level *result_prev,
> +				 struct skl_wm_level *result /* out */);
> +
> +static unsigned int
> +skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
> +		      int num_active)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(crtc_state->uapi.crtc->cur=
sor);
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +	struct skl_wm_level wm =3D {};
> +	int ret, min_ddb_alloc =3D 0;
> +	struct skl_wm_params wp;
> +
> +	ret =3D skl_compute_wm_params(crtc_state, 256,
> +				    drm_format_info(DRM_FORMAT_ARGB8888),
> +				    DRM_FORMAT_MOD_LINEAR,
> +				    DRM_MODE_ROTATE_0,
> +				    crtc_state->pixel_rate, &wp, 0);
> +	drm_WARN_ON(&i915->drm, ret);
> +
> +	for (level =3D 0; level <=3D max_level; level++) {
> +		unsigned int latency =3D i915->display.wm.skl_latency[level];
> +
> +		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
> +		if (wm.min_ddb_alloc =3D=3D U16_MAX)
> +			break;
> +
> +		min_ddb_alloc =3D wm.min_ddb_alloc;
> +	}
> +
> +	return max(num_active =3D=3D 1 ? 32 : 8, min_ddb_alloc);
> +}
> +
> +static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 =
reg)
> +{
> +	skl_ddb_entry_init(entry,
> +			   REG_FIELD_GET(PLANE_BUF_START_MASK, reg),
> +			   REG_FIELD_GET(PLANE_BUF_END_MASK, reg));
> +	if (entry->end)
> +		entry->end++;
> +}
> +
> +static void
> +skl_ddb_get_hw_plane_state(struct drm_i915_private *i915,
> +			   const enum pipe pipe,
> +			   const enum plane_id plane_id,
> +			   struct skl_ddb_entry *ddb,
> +			   struct skl_ddb_entry *ddb_y)
> +{
> +	u32 val;
> +
> +	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
> +	if (plane_id =3D=3D PLANE_CURSOR) {
> +		val =3D intel_uncore_read(&i915->uncore, CUR_BUF_CFG(pipe));
> +		skl_ddb_entry_init_from_hw(ddb, val);
> +		return;
> +	}
> +
> +	val =3D intel_uncore_read(&i915->uncore, PLANE_BUF_CFG(pipe, plane_id));
> +	skl_ddb_entry_init_from_hw(ddb, val);
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		return;
> +
> +	val =3D intel_uncore_read(&i915->uncore, PLANE_NV12_BUF_CFG(pipe, plane=
_id));
> +	skl_ddb_entry_init_from_hw(ddb_y, val);
> +}
> +
> +static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
> +				      struct skl_ddb_entry *ddb,
> +				      struct skl_ddb_entry *ddb_y)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum intel_display_power_domain power_domain;
> +	enum pipe pipe =3D crtc->pipe;
> +	intel_wakeref_t wakeref;
> +	enum plane_id plane_id;
> +
> +	power_domain =3D POWER_DOMAIN_PIPE(pipe);
> +	wakeref =3D intel_display_power_get_if_enabled(i915, power_domain);
> +	if (!wakeref)
> +		return;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id)
> +		skl_ddb_get_hw_plane_state(i915, pipe,
> +					   plane_id,
> +					   &ddb[plane_id],
> +					   &ddb_y[plane_id]);
> +
> +	intel_display_power_put(i915, power_domain, wakeref);
> +}
> +
> +struct dbuf_slice_conf_entry {
> +	u8 active_pipes;
> +	u8 dbuf_mask[I915_MAX_PIPES];
> +	bool join_mbus;
> +};
> +
> +/*
> + * Table taken from Bspec 12716
> + * Pipes do have some preferred DBuf slice affinity,
> + * plus there are some hardcoded requirements on how
> + * those should be distributed for multipipe scenarios.
> + * For more DBuf slices algorithm can get even more messy
> + * and less readable, so decided to use a table almost
> + * as is from BSpec itself - that way it is at least easier
> + * to compare, change and check.
> + */
> +static const struct dbuf_slice_conf_entry icl_allowed_dbufs[] =3D
> +/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> +{
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{}
> +};
> +
> +/*
> + * Table taken from Bspec 49255
> + * Pipes do have some preferred DBuf slice affinity,
> + * plus there are some hardcoded requirements on how
> + * those should be distributed for multipipe scenarios.
> + * For more DBuf slices algorithm can get even more messy
> + * and less readable, so decided to use a table almost
> + * as is from BSpec itself - that way it is at least easier
> + * to compare, change and check.
> + */
> +static const struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =3D
> +/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> +{
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S2) | BIT(DBUF_S1),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_D] =3D BIT(DBUF_S2) | BIT(DBUF_S1),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S1),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S1),
> +			[PIPE_C] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{}
> +};
> +
> +static const struct dbuf_slice_conf_entry dg2_allowed_dbufs[] =3D {
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S3),
> +			[PIPE_D] =3D BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3),
> +			[PIPE_D] =3D BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3),
> +			[PIPE_D] =3D BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1),
> +			[PIPE_B] =3D BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3),
> +			[PIPE_D] =3D BIT(DBUF_S4),
> +		},
> +	},
> +	{}
> +};
> +
> +static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] =3D {
> +	/*
> +	 * Keep the join_mbus cases first so check_mbus_joined()
> +	 * will prefer them over the !join_mbus cases.
> +	 */
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
> +		},
> +		.join_mbus =3D true,
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
> +		},
> +		.join_mbus =3D true,
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +		.join_mbus =3D false,
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +		.join_mbus =3D false,
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> +		.dbuf_mask =3D {
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{
> +		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> +		.dbuf_mask =3D {
> +			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> +			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> +		},
> +	},
> +	{}
> +
> +};
> +
> +static bool check_mbus_joined(u8 active_pipes,
> +			      const struct dbuf_slice_conf_entry *dbuf_slices)
> +{
> +	int i;
> +
> +	for (i =3D 0; dbuf_slices[i].active_pipes !=3D 0; i++) {
> +		if (dbuf_slices[i].active_pipes =3D=3D active_pipes)
> +			return dbuf_slices[i].join_mbus;
> +	}
> +	return false;
> +}
> +
> +static bool adlp_check_mbus_joined(u8 active_pipes)
> +{
> +	return check_mbus_joined(active_pipes, adlp_allowed_dbufs);
> +}
> +
> +static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join=
_mbus,
> +			      const struct dbuf_slice_conf_entry *dbuf_slices)
> +{
> +	int i;
> +
> +	for (i =3D 0; dbuf_slices[i].active_pipes !=3D 0; i++) {
> +		if (dbuf_slices[i].active_pipes =3D=3D active_pipes &&
> +		    dbuf_slices[i].join_mbus =3D=3D join_mbus)
> +			return dbuf_slices[i].dbuf_mask[pipe];
> +	}
> +	return 0;
> +}
> +
> +/*
> + * This function finds an entry with same enabled pipe configuration and
> + * returns correspondent DBuf slice mask as stated in BSpec for particul=
ar
> + * platform.
> + */
> +static u8 icl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> +{
> +	/*
> +	 * FIXME: For ICL this is still a bit unclear as prev BSpec revision
> +	 * required calculating "pipe ratio" in order to determine
> +	 * if one or two slices can be used for single pipe configurations
> +	 * as additional constraint to the existing table.
> +	 * However based on recent info, it should be not "pipe ratio"
> +	 * but rather ratio between pixel_rate and cdclk with additional
> +	 * constants, so for now we are using only table until this is
> +	 * clarified. Also this is the reason why crtc_state param is
> +	 * still here - we will need it once those additional constraints
> +	 * pop up.
> +	 */
> +	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> +				   icl_allowed_dbufs);
> +}
> +
> +static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> +{
> +	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> +				   tgl_allowed_dbufs);
> +}
> +
> +static u8 adlp_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool=
 join_mbus)
> +{
> +	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> +				   adlp_allowed_dbufs);
> +}
> +
> +static u8 dg2_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> +{
> +	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> +				   dg2_allowed_dbufs);
> +}
> +
> +static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pip=
es, bool join_mbus)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	if (IS_DG2(i915))
> +		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> +	else if (DISPLAY_VER(i915) >=3D 13)
> +		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> +	else if (DISPLAY_VER(i915) =3D=3D 12)
> +		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> +	else if (DISPLAY_VER(i915) =3D=3D 11)
> +		return icl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> +	/*
> +	 * For anything else just return one slice yet.
> +	 * Should be extended for other platforms.
> +	 */
> +	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
> +}
> +
> +static bool
> +use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
> +		     struct intel_plane *plane)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +
> +	return DISPLAY_VER(i915) >=3D 13 &&
> +	       crtc_state->uapi.async_flip &&
> +	       plane->async_flip;
> +}
> +
> +static u64
> +skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum plane_id plane_id;
> +	u64 data_rate =3D 0;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		if (plane_id =3D=3D PLANE_CURSOR)
> +			continue;
> +
> +		data_rate +=3D crtc_state->rel_data_rate[plane_id];
> +
> +		if (DISPLAY_VER(i915) < 11)
> +			data_rate +=3D crtc_state->rel_data_rate_y[plane_id];
> +	}
> +
> +	return data_rate;
> +}
> +
> +static const struct skl_wm_level *
> +skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
> +		   enum plane_id plane_id,
> +		   int level)
> +{
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +	if (level =3D=3D 0 && pipe_wm->use_sagv_wm)
> +		return &wm->sagv.wm0;
> +
> +	return &wm->wm[level];
> +}
> +
> +static const struct skl_wm_level *
> +skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
> +		   enum plane_id plane_id)
> +{
> +	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +	if (pipe_wm->use_sagv_wm)
> +		return &wm->sagv.trans_wm;
> +
> +	return &wm->trans_wm;
> +}
> +
> +/*
> + * We only disable the watermarks for each plane if
> + * they exceed the ddb allocation of said plane. This
> + * is done so that we don't end up touching cursor
> + * watermarks needlessly when some other plane reduces
> + * our max possible watermark level.
> + *
> + * Bspec has this to say about the PLANE_WM enable bit:
> + * "All the watermarks at this level for all enabled
> + *  planes must be enabled before the level will be used."
> + * So this is actually safe to do.
> + */
> +static void
> +skl_check_wm_level(struct skl_wm_level *wm, const struct skl_ddb_entry *=
ddb)
> +{
> +	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb))
> +		memset(wm, 0, sizeof(*wm));
> +}
> +
> +static void
> +skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
> +			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
> +{
> +	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
> +	    uv_wm->min_ddb_alloc > skl_ddb_entry_size(ddb)) {
> +		memset(wm, 0, sizeof(*wm));
> +		memset(uv_wm, 0, sizeof(*uv_wm));
> +	}
> +}
> +
> +static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> +			    enum plane_id plane_id)
> +{
> +	/*
> +	 * Wa_1408961008:icl, ehl
> +	 * Wa_14012656716:tgl, adl
> +	 * Underruns with WM1+ disabled
> +	 */
> +	return DISPLAY_VER(i915) =3D=3D 11 ||
> +	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id =3D=3D PLANE_CURSOR);
> +}
> +
> +struct skl_plane_ddb_iter {
> +	u64 data_rate;
> +	u16 start, size;
> +};
> +
> +static void
> +skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
> +		       struct skl_ddb_entry *ddb,
> +		       const struct skl_wm_level *wm,
> +		       u64 data_rate)
> +{
> +	u16 size, extra =3D 0;
> +
> +	if (data_rate) {
> +		extra =3D min_t(u16, iter->size,
> +			      DIV64_U64_ROUND_UP(iter->size * data_rate,
> +						 iter->data_rate));
> +		iter->size -=3D extra;
> +		iter->data_rate -=3D data_rate;
> +	}
> +
> +	/*
> +	 * Keep ddb entry of all disabled planes explicitly zeroed
> +	 * to avoid skl_ddb_add_affected_planes() adding them to
> +	 * the state when other planes change their allocations.
> +	 */
> +	size =3D wm->min_ddb_alloc + extra;
> +	if (size)
> +		iter->start =3D skl_ddb_entry_init(ddb, iter->start,
> +						 iter->start + size);
> +}
> +
> +static int
> +skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_dbuf_state *dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
> +	int num_active =3D hweight8(dbuf_state->active_pipes);
> +	struct skl_plane_ddb_iter iter;
> +	enum plane_id plane_id;
> +	u16 cursor_size;
> +	u32 blocks;
> +	int level;
> +
> +	/* Clear the partitioning for disabled planes. */
> +	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state->wm.skl.plane=
_ddb));
> +	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.pla=
ne_ddb_y));
> +
> +	if (!crtc_state->hw.active)
> +		return 0;
> +
> +	iter.start =3D alloc->start;
> +	iter.size =3D skl_ddb_entry_size(alloc);
> +	if (iter.size =3D=3D 0)
> +		return 0;
> +
> +	/* Allocate fixed number of blocks for cursor. */
> +	cursor_size =3D skl_cursor_allocation(crtc_state, num_active);
> +	iter.size -=3D cursor_size;
> +	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> +			   alloc->end - cursor_size, alloc->end);
> +
> +	iter.data_rate =3D skl_total_relative_data_rate(crtc_state);
> +
> +	/*
> +	 * Find the highest watermark level for which we can satisfy the block
> +	 * requirement of active planes.
> +	 */
> +	for (level =3D ilk_wm_max_level(i915); level >=3D 0; level--) {
> +		blocks =3D 0;
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			const struct skl_plane_wm *wm =3D
> +				&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +			if (plane_id =3D=3D PLANE_CURSOR) {
> +				const struct skl_ddb_entry *ddb =3D
> +					&crtc_state->wm.skl.plane_ddb[plane_id];
> +
> +				if (wm->wm[level].min_ddb_alloc > skl_ddb_entry_size(ddb)) {
> +					drm_WARN_ON(&i915->drm,
> +						    wm->wm[level].min_ddb_alloc !=3D U16_MAX);
> +					blocks =3D U32_MAX;
> +					break;
> +				}
> +				continue;
> +			}
> +
> +			blocks +=3D wm->wm[level].min_ddb_alloc;
> +			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> +		}
> +
> +		if (blocks <=3D iter.size) {
> +			iter.size -=3D blocks;
> +			break;
> +		}
> +	}
> +
> +	if (level < 0) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Requested display configuration exceeds system DDB limitations");
> +		drm_dbg_kms(&i915->drm, "minimum required %d/%d\n",
> +			    blocks, iter.size);
> +		return -EINVAL;
> +	}
> +
> +	/* avoid the WARN later when we don't allocate any extra DDB */
> +	if (iter.data_rate =3D=3D 0)
> +		iter.size =3D 0;
> +
> +	/*
> +	 * Grant each plane the blocks it requires at the highest achievable
> +	 * watermark level, plus an extra share of the leftover blocks
> +	 * proportional to its relative data rate.
> +	 */
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		struct skl_ddb_entry *ddb =3D
> +			&crtc_state->wm.skl.plane_ddb[plane_id];
> +		struct skl_ddb_entry *ddb_y =3D
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		const struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (plane_id =3D=3D PLANE_CURSOR)
> +			continue;
> +
> +		if (DISPLAY_VER(i915) < 11 &&
> +		    crtc_state->nv12_planes & BIT(plane_id)) {
> +			skl_allocate_plane_ddb(&iter, ddb_y, &wm->wm[level],
> +					       crtc_state->rel_data_rate_y[plane_id]);
> +			skl_allocate_plane_ddb(&iter, ddb, &wm->uv_wm[level],
> +					       crtc_state->rel_data_rate[plane_id]);
> +		} else {
> +			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
> +					       crtc_state->rel_data_rate[plane_id]);
> +		}
> +	}
> +	drm_WARN_ON(&i915->drm, iter.size !=3D 0 || iter.data_rate !=3D 0);
> +
> +	/*
> +	 * When we calculated watermark values we didn't know how high
> +	 * of a level we'd actually be able to hit, so we just marked
> +	 * all levels as "enabled."  Go back now and disable the ones
> +	 * that aren't actually possible.
> +	 */
> +	for (level++; level <=3D ilk_wm_max_level(i915); level++) {
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			const struct skl_ddb_entry *ddb =3D
> +				&crtc_state->wm.skl.plane_ddb[plane_id];
> +			const struct skl_ddb_entry *ddb_y =3D
> +				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			struct skl_plane_wm *wm =3D
> +				&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +			if (DISPLAY_VER(i915) < 11 &&
> +			    crtc_state->nv12_planes & BIT(plane_id))
> +				skl_check_nv12_wm_level(&wm->wm[level],
> +							&wm->uv_wm[level],
> +							ddb_y, ddb);
> +			else
> +				skl_check_wm_level(&wm->wm[level], ddb);
> +
> +			if (icl_need_wm1_wa(i915, plane_id) &&
> +			    level =3D=3D 1 && wm->wm[0].enable) {
> +				wm->wm[level].blocks =3D wm->wm[0].blocks;
> +				wm->wm[level].lines =3D wm->wm[0].lines;
> +				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
> +			}
> +		}
> +	}
> +
> +	/*
> +	 * Go back and disable the transition and SAGV watermarks
> +	 * if it turns out we don't have enough DDB blocks for them.
> +	 */
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_ddb_entry *ddb =3D
> +			&crtc_state->wm.skl.plane_ddb[plane_id];
> +		const struct skl_ddb_entry *ddb_y =3D
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		struct skl_plane_wm *wm =3D
> +			&crtc_state->wm.skl.optimal.planes[plane_id];
> +
> +		if (DISPLAY_VER(i915) < 11 &&
> +		    crtc_state->nv12_planes & BIT(plane_id)) {
> +			skl_check_wm_level(&wm->trans_wm, ddb_y);
> +		} else {
> +			WARN_ON(skl_ddb_entry_size(ddb_y));
> +
> +			skl_check_wm_level(&wm->trans_wm, ddb);
> +		}
> +
> +		skl_check_wm_level(&wm->sagv.wm0, ddb);
> +		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
> +	}
> +
> +	return 0;
> +}
> +
> +/*
> + * The max latency should be 257 (max the punit can code is 255 and we a=
dd 2us
> + * for the read latency) and cpp should always be <=3D 8, so that
> + * should allow pixel_rate up to ~2 GHz which seems sufficient since max
> + * 2xcdclk is 1350 MHz and the pixel rate should never exceed that.
> + */
> +static uint_fixed_16_16_t
> +skl_wm_method1(const struct drm_i915_private *i915, u32 pixel_rate,
> +	       u8 cpp, u32 latency, u32 dbuf_block_size)
> +{
> +	u32 wm_intermediate_val;
> +	uint_fixed_16_16_t ret;
> +
> +	if (latency =3D=3D 0)
> +		return FP_16_16_MAX;
> +
> +	wm_intermediate_val =3D latency * pixel_rate * cpp;
> +	ret =3D div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
> +
> +	if (DISPLAY_VER(i915) >=3D 10)
> +		ret =3D add_fixed16_u32(ret, 1);
> +
> +	return ret;
> +}
> +
> +static uint_fixed_16_16_t
> +skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
> +	       uint_fixed_16_16_t plane_blocks_per_line)
> +{
> +	u32 wm_intermediate_val;
> +	uint_fixed_16_16_t ret;
> +
> +	if (latency =3D=3D 0)
> +		return FP_16_16_MAX;
> +
> +	wm_intermediate_val =3D latency * pixel_rate;
> +	wm_intermediate_val =3D DIV_ROUND_UP(wm_intermediate_val,
> +					   pipe_htotal * 1000);
> +	ret =3D mul_u32_fixed16(wm_intermediate_val, plane_blocks_per_line);
> +	return ret;
> +}
> +
> +static uint_fixed_16_16_t
> +intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	u32 pixel_rate;
> +	u32 crtc_htotal;
> +	uint_fixed_16_16_t linetime_us;
> +
> +	if (!crtc_state->hw.active)
> +		return u32_to_fixed16(0);
> +
> +	pixel_rate =3D crtc_state->pixel_rate;
> +
> +	if (drm_WARN_ON(&i915->drm, pixel_rate =3D=3D 0))
> +		return u32_to_fixed16(0);
> +
> +	crtc_htotal =3D crtc_state->hw.pipe_mode.crtc_htotal;
> +	linetime_us =3D div_fixed16(crtc_htotal * 1000, pixel_rate);
> +
> +	return linetime_us;
> +}
> +
> +static int
> +skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> +		      int width, const struct drm_format_info *format,
> +		      u64 modifier, unsigned int rotation,
> +		      u32 plane_pixel_rate, struct skl_wm_params *wp,
> +		      int color_plane)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	u32 interm_pbpl;
> +
> +	/* only planar format has two planes */
> +	if (color_plane =3D=3D 1 &&
> +	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Non planar format have single plane\n");
> +		return -EINVAL;
> +	}
> +
> +	wp->y_tiled =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> +		      modifier =3D=3D I915_FORMAT_MOD_4_TILED ||
> +		      modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
> +		      modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> +		      modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> +	wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> +	wp->rc_surface =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> +			 modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> +	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, modifier);
> +
> +	wp->width =3D width;
> +	if (color_plane =3D=3D 1 && wp->is_planar)
> +		wp->width /=3D 2;
> +
> +	wp->cpp =3D format->cpp[color_plane];
> +	wp->plane_pixel_rate =3D plane_pixel_rate;
> +
> +	if (DISPLAY_VER(i915) >=3D 11 &&
> +	    modifier =3D=3D I915_FORMAT_MOD_Yf_TILED  && wp->cpp =3D=3D 1)
> +		wp->dbuf_block_size =3D 256;
> +	else
> +		wp->dbuf_block_size =3D 512;
> +
> +	if (drm_rotation_90_or_270(rotation)) {
> +		switch (wp->cpp) {
> +		case 1:
> +			wp->y_min_scanlines =3D 16;
> +			break;
> +		case 2:
> +			wp->y_min_scanlines =3D 8;
> +			break;
> +		case 4:
> +			wp->y_min_scanlines =3D 4;
> +			break;
> +		default:
> +			MISSING_CASE(wp->cpp);
> +			return -EINVAL;
> +		}
> +	} else {
> +		wp->y_min_scanlines =3D 4;
> +	}
> +
> +	if (skl_needs_memory_bw_wa(i915))
> +		wp->y_min_scanlines *=3D 2;
> +
> +	wp->plane_bytes_per_line =3D wp->width * wp->cpp;
> +	if (wp->y_tiled) {
> +		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line *
> +					   wp->y_min_scanlines,
> +					   wp->dbuf_block_size);
> +
> +		if (DISPLAY_VER(i915) >=3D 10)
> +			interm_pbpl++;
> +
> +		wp->plane_blocks_per_line =3D div_fixed16(interm_pbpl,
> +							wp->y_min_scanlines);
> +	} else {
> +		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> +					   wp->dbuf_block_size);
> +
> +		if (!wp->x_tiled || DISPLAY_VER(i915) >=3D 10)
> +			interm_pbpl++;
> +
> +		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
> +	}
> +
> +	wp->y_tile_minimum =3D mul_u32_fixed16(wp->y_min_scanlines,
> +					     wp->plane_blocks_per_line);
> +
> +	wp->linetime_us =3D fixed16_to_u32_round_up(intel_get_linetime_us(crtc_=
state));
> +
> +	return 0;
> +}
> +
> +static int
> +skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
> +			    const struct intel_plane_state *plane_state,
> +			    struct skl_wm_params *wp, int color_plane)
> +{
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int width;
> +
> +	/*
> +	 * Src coordinates are already rotated by 270 degrees for
> +	 * the 90/270 degree plane rotation cases (to match the
> +	 * GTT mapping), hence no need to account for rotation here.
> +	 */
> +	width =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> +
> +	return skl_compute_wm_params(crtc_state, width,
> +				     fb->format, fb->modifier,
> +				     plane_state->hw.rotation,
> +				     intel_plane_pixel_rate(crtc_state, plane_state),
> +				     wp, color_plane);
> +}
> +
> +static bool skl_wm_has_lines(struct drm_i915_private *i915, int level)
> +{
> +	if (DISPLAY_VER(i915) >=3D 10)
> +		return true;
> +
> +	/* The number of lines are ignored for the level 0 watermark. */
> +	return level > 0;
> +}
> +
> +static int skl_wm_max_lines(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >=3D 13)
> +		return 255;
> +	else
> +		return 31;
> +}
> +
> +static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
> +				 struct intel_plane *plane,
> +				 int level,
> +				 unsigned int latency,
> +				 const struct skl_wm_params *wp,
> +				 const struct skl_wm_level *result_prev,
> +				 struct skl_wm_level *result /* out */)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	uint_fixed_16_16_t method1, method2;
> +	uint_fixed_16_16_t selected_result;
> +	u32 blocks, lines, min_ddb_alloc =3D 0;
> +
> +	if (latency =3D=3D 0 ||
> +	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
> +		/* reject it */
> +		result->min_ddb_alloc =3D U16_MAX;
> +		return;
> +	}
> +
> +	/*
> +	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
> +	 * Display WA #1141: kbl,cfl
> +	 */
> +	if ((IS_KABYLAKE(i915) ||
> +	     IS_COFFEELAKE(i915) ||
> +	     IS_COMETLAKE(i915)) &&
> +	    i915->ipc_enabled)
> +		latency +=3D 4;
> +
> +	if (skl_needs_memory_bw_wa(i915) && wp->x_tiled)
> +		latency +=3D 15;
> +
> +	method1 =3D skl_wm_method1(i915, wp->plane_pixel_rate,
> +				 wp->cpp, latency, wp->dbuf_block_size);
> +	method2 =3D skl_wm_method2(wp->plane_pixel_rate,
> +				 crtc_state->hw.pipe_mode.crtc_htotal,
> +				 latency,
> +				 wp->plane_blocks_per_line);
> +
> +	if (wp->y_tiled) {
> +		selected_result =3D max_fixed16(method2, wp->y_tile_minimum);
> +	} else {
> +		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> +		     wp->dbuf_block_size < 1) &&
> +		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
> +			selected_result =3D method2;
> +		} else if (latency >=3D wp->linetime_us) {
> +			if (DISPLAY_VER(i915) =3D=3D 9)
> +				selected_result =3D min_fixed16(method1, method2);
> +			else
> +				selected_result =3D method2;
> +		} else {
> +			selected_result =3D method1;
> +		}
> +	}
> +
> +	blocks =3D fixed16_to_u32_round_up(selected_result) + 1;
> +	/*
> +	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> +	 * as there will be at minimum one line for lines configuration. This
> +	 * is a work around for FIFO underruns observed with resolutions like
> +	 * 4k 60 Hz in single channel DRAM configurations.
> +	 *
> +	 * As per the Bspec 49325, if the ddb allocation can hold at least
> +	 * one plane_blocks_per_line, we should have selected method2 in
> +	 * the above logic. Assuming that modern versions have enough dbuf
> +	 * and method2 guarantees blocks equivalent to at least 1 line,
> +	 * select the blocks as plane_blocks_per_line.
> +	 *
> +	 * TODO: Revisit the logic when we have better understanding on DRAM
> +	 * channels' impact on the level 0 memory latency and the relevant
> +	 * wm calculations.
> +	 */
> +	if (skl_wm_has_lines(i915, level))
> +		blocks =3D max(blocks,
> +			     fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> +	lines =3D div_round_up_fixed16(selected_result,
> +				     wp->plane_blocks_per_line);
> +
> +	if (DISPLAY_VER(i915) =3D=3D 9) {
> +		/* Display WA #1125: skl,bxt,kbl */
> +		if (level =3D=3D 0 && wp->rc_surface)
> +			blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> +
> +		/* Display WA #1126: skl,bxt,kbl */
> +		if (level >=3D 1 && level <=3D 7) {
> +			if (wp->y_tiled) {
> +				blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> +				lines +=3D wp->y_min_scanlines;
> +			} else {
> +				blocks++;
> +			}
> +
> +			/*
> +			 * Make sure result blocks for higher latency levels are
> +			 * at least as high as level below the current level.
> +			 * Assumption in DDB algorithm optimization for special
> +			 * cases. Also covers Display WA #1125 for RC.
> +			 */
> +			if (result_prev->blocks > blocks)
> +				blocks =3D result_prev->blocks;
> +		}
> +	}
> +
> +	if (DISPLAY_VER(i915) >=3D 11) {
> +		if (wp->y_tiled) {
> +			int extra_lines;
> +
> +			if (lines % wp->y_min_scanlines =3D=3D 0)
> +				extra_lines =3D wp->y_min_scanlines;
> +			else
> +				extra_lines =3D wp->y_min_scanlines * 2 -
> +					lines % wp->y_min_scanlines;
> +
> +			min_ddb_alloc =3D mul_round_up_u32_fixed16(lines + extra_lines,
> +								 wp->plane_blocks_per_line);
> +		} else {
> +			min_ddb_alloc =3D blocks + DIV_ROUND_UP(blocks, 10);
> +		}
> +	}
> +
> +	if (!skl_wm_has_lines(i915, level))
> +		lines =3D 0;
> +
> +	if (lines > skl_wm_max_lines(i915)) {
> +		/* reject it */
> +		result->min_ddb_alloc =3D U16_MAX;
> +		return;
> +	}
> +
> +	/*
> +	 * If lines is valid, assume we can use this watermark level
> +	 * for now.  We'll come back and disable it after we calculate the
> +	 * DDB allocation if it turns out we don't actually have enough
> +	 * blocks to satisfy it.
> +	 */
> +	result->blocks =3D blocks;
> +	result->lines =3D lines;
> +	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here */
> +	result->min_ddb_alloc =3D max(min_ddb_alloc, blocks) + 1;
> +	result->enable =3D true;
> +
> +	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
> +		result->can_sagv =3D latency >=3D i915->display.sagv.block_time_us;
> +}
> +
> +static void
> +skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> +		      struct intel_plane *plane,
> +		      const struct skl_wm_params *wm_params,
> +		      struct skl_wm_level *levels)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +	struct skl_wm_level *result_prev =3D &levels[0];
> +
> +	for (level =3D 0; level <=3D max_level; level++) {
> +		struct skl_wm_level *result =3D &levels[level];
> +		unsigned int latency =3D i915->display.wm.skl_latency[level];
> +
> +		skl_compute_plane_wm(crtc_state, plane, level, latency,
> +				     wm_params, result_prev, result);
> +
> +		result_prev =3D result;
> +	}
> +}
> +
> +static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_stat=
e,
> +				struct intel_plane *plane,
> +				const struct skl_wm_params *wm_params,
> +				struct skl_plane_wm *plane_wm)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	struct skl_wm_level *sagv_wm =3D &plane_wm->sagv.wm0;
> +	struct skl_wm_level *levels =3D plane_wm->wm;
> +	unsigned int latency =3D 0;
> +
> +	if (i915->display.sagv.block_time_us)
> +		latency =3D i915->display.sagv.block_time_us + i915->display.wm.skl_la=
tency[0];
> +
> +	skl_compute_plane_wm(crtc_state, plane, 0, latency,
> +			     wm_params, &levels[0],
> +			     sagv_wm);
> +}
> +
> +static void skl_compute_transition_wm(struct drm_i915_private *i915,
> +				      struct skl_wm_level *trans_wm,
> +				      const struct skl_wm_level *wm0,
> +				      const struct skl_wm_params *wp)
> +{
> +	u16 trans_min, trans_amount, trans_y_tile_min;
> +	u16 wm0_blocks, trans_offset, blocks;
> +
> +	/* Transition WM don't make any sense if ipc is disabled */
> +	if (!i915->ipc_enabled)
> +		return;
> +
> +	/*
> +	 * WaDisableTWM:skl,kbl,cfl,bxt
> +	 * Transition WM are not recommended by HW team for GEN9
> +	 */
> +	if (DISPLAY_VER(i915) =3D=3D 9)
> +		return;
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		trans_min =3D 4;
> +	else
> +		trans_min =3D 14;
> +
> +	/* Display WA #1140: glk,cnl */
> +	if (DISPLAY_VER(i915) =3D=3D 10)
> +		trans_amount =3D 0;
> +	else
> +		trans_amount =3D 10; /* This is configurable amount */
> +
> +	trans_offset =3D trans_min + trans_amount;
> +
> +	/*
> +	 * The spec asks for Selected Result Blocks for wm0 (the real value),
> +	 * not Result Blocks (the integer value). Pay attention to the capital
> +	 * letters. The value wm_l0->blocks is actually Result Blocks, but
> +	 * since Result Blocks is the ceiling of Selected Result Blocks plus 1,
> +	 * and since we later will have to get the ceiling of the sum in the
> +	 * transition watermarks calculation, we can just pretend Selected
> +	 * Result Blocks is Result Blocks minus 1 and it should work for the
> +	 * current platforms.
> +	 */
> +	wm0_blocks =3D wm0->blocks - 1;
> +
> +	if (wp->y_tiled) {
> +		trans_y_tile_min =3D
> +			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
> +		blocks =3D max(wm0_blocks, trans_y_tile_min) + trans_offset;
> +	} else {
> +		blocks =3D wm0_blocks + trans_offset;
> +	}
> +	blocks++;
> +
> +	/*
> +	 * Just assume we can enable the transition watermark.  After
> +	 * computing the DDB we'll come back and disable it if that
> +	 * assumption turns out to be false.
> +	 */
> +	trans_wm->blocks =3D blocks;
> +	trans_wm->min_ddb_alloc =3D max_t(u16, wm0->min_ddb_alloc, blocks + 1);
> +	trans_wm->enable =3D true;
> +}
> +
> +static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
> +				     const struct intel_plane_state *plane_state,
> +				     struct intel_plane *plane, int color_plane)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane->id];
> +	struct skl_wm_params wm_params;
> +	int ret;
> +
> +	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> +					  &wm_params, color_plane);
> +	if (ret)
> +		return ret;
> +
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
> +
> +	skl_compute_transition_wm(i915, &wm->trans_wm,
> +				  &wm->wm[0], &wm_params);
> +
> +	if (DISPLAY_VER(i915) >=3D 12) {
> +		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
> +
> +		skl_compute_transition_wm(i915, &wm->sagv.trans_wm,
> +					  &wm->sagv.wm0, &wm_params);
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
> +				 const struct intel_plane_state *plane_state,
> +				 struct intel_plane *plane)
> +{
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane->id];
> +	struct skl_wm_params wm_params;
> +	int ret;
> +
> +	wm->is_planar =3D true;
> +
> +	/* uv plane watermarks must also be validated for NV12/Planar */
> +	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> +					  &wm_params, 1);
> +	if (ret)
> +		return ret;
> +
> +	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
> +
> +	return 0;
> +}
> +
> +static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
> +			      const struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	enum plane_id plane_id =3D plane->id;
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	int ret;
> +
> +	memset(wm, 0, sizeof(*wm));
> +
> +	if (!intel_wm_plane_visible(crtc_state, plane_state))
> +		return 0;
> +
> +	ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> +					plane, 0);
> +	if (ret)
> +		return ret;
> +
> +	if (fb->format->is_yuv && fb->format->num_planes > 1) {
> +		ret =3D skl_build_plane_wm_uv(crtc_state, plane_state,
> +					    plane);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
> +			      const struct intel_plane_state *plane_state)
> +{
> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	enum plane_id plane_id =3D plane->id;
> +	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
> +	int ret;
> +
> +	/* Watermarks calculated in master */
> +	if (plane_state->planar_slave)
> +		return 0;
> +
> +	memset(wm, 0, sizeof(*wm));
> +
> +	if (plane_state->planar_linked_plane) {
> +		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +
> +		drm_WARN_ON(&i915->drm,
> +			    !intel_wm_plane_visible(crtc_state, plane_state));
> +		drm_WARN_ON(&i915->drm, !fb->format->is_yuv ||
> +			    fb->format->num_planes =3D=3D 1);
> +
> +		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> +						plane_state->planar_linked_plane, 0);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> +						plane, 1);
> +		if (ret)
> +			return ret;
> +	} else if (intel_wm_plane_visible(crtc_state, plane_state)) {
> +		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> +						plane, 0);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int skl_build_pipe_wm(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
> +	int ret, i;
> +
> +	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> +		/*
> +		 * FIXME should perhaps check {old,new}_plane_crtc->hw.crtc
> +		 * instead but we don't populate that correctly for NV12 Y
> +		 * planes so for now hack this.
> +		 */
> +		if (plane->pipe !=3D crtc->pipe)
> +			continue;
> +
> +		if (DISPLAY_VER(i915) >=3D 11)
> +			ret =3D icl_build_plane_wm(crtc_state, plane_state);
> +		else
> +			ret =3D skl_build_plane_wm(crtc_state, plane_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	crtc_state->wm.skl.optimal =3D crtc_state->wm.skl.raw;
> +
> +	return 0;
> +}
> +
> +static void skl_ddb_entry_write(struct drm_i915_private *i915,
> +				i915_reg_t reg,
> +				const struct skl_ddb_entry *entry)
> +{
> +	if (entry->end)
> +		intel_de_write_fw(i915, reg,
> +				  PLANE_BUF_END(entry->end - 1) |
> +				  PLANE_BUF_START(entry->start));
> +	else
> +		intel_de_write_fw(i915, reg, 0);
> +}
> +
> +static void skl_write_wm_level(struct drm_i915_private *i915,
> +			       i915_reg_t reg,
> +			       const struct skl_wm_level *level)
> +{
> +	u32 val =3D 0;
> +
> +	if (level->enable)
> +		val |=3D PLANE_WM_EN;
> +	if (level->ignore_lines)
> +		val |=3D PLANE_WM_IGNORE_LINES;
> +	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
> +	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
> +
> +	intel_de_write_fw(i915, reg, val);
> +}
> +
> +void skl_write_plane_wm(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe =3D plane->pipe;
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_ddb_entry *ddb =3D
> +		&crtc_state->wm.skl.plane_ddb[plane_id];
> +	const struct skl_ddb_entry *ddb_y =3D
> +		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +
> +	for (level =3D 0; level <=3D max_level; level++)
> +		skl_write_wm_level(i915, PLANE_WM(pipe, plane_id, level),
> +				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +
> +	skl_write_wm_level(i915, PLANE_WM_TRANS(pipe, plane_id),
> +			   skl_plane_trans_wm(pipe_wm, plane_id));
> +
> +	if (HAS_HW_SAGV_WM(i915)) {
> +		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +		skl_write_wm_level(i915, PLANE_WM_SAGV(pipe, plane_id),
> +				   &wm->sagv.wm0);
> +		skl_write_wm_level(i915, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> +				   &wm->sagv.trans_wm);
> +	}
> +
> +	skl_ddb_entry_write(i915,
> +			    PLANE_BUF_CFG(pipe, plane_id), ddb);
> +
> +	if (DISPLAY_VER(i915) < 11)
> +		skl_ddb_entry_write(i915,
> +				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> +}
> +
> +void skl_write_cursor_wm(struct intel_plane *plane,
> +			 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +	enum plane_id plane_id =3D plane->id;
> +	enum pipe pipe =3D plane->pipe;
> +	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> +	const struct skl_ddb_entry *ddb =3D
> +		&crtc_state->wm.skl.plane_ddb[plane_id];
> +
> +	for (level =3D 0; level <=3D max_level; level++)
> +		skl_write_wm_level(i915, CUR_WM(pipe, level),
> +				   skl_plane_wm_level(pipe_wm, plane_id, level));
> +
> +	skl_write_wm_level(i915, CUR_WM_TRANS(pipe),
> +			   skl_plane_trans_wm(pipe_wm, plane_id));
> +
> +	if (HAS_HW_SAGV_WM(i915)) {
> +		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> +
> +		skl_write_wm_level(i915, CUR_WM_SAGV(pipe),
> +				   &wm->sagv.wm0);
> +		skl_write_wm_level(i915, CUR_WM_SAGV_TRANS(pipe),
> +				   &wm->sagv.trans_wm);
> +	}
> +
> +	skl_ddb_entry_write(i915, CUR_BUF_CFG(pipe), ddb);
> +}
> +
> +static bool skl_wm_level_equals(const struct skl_wm_level *l1,
> +				const struct skl_wm_level *l2)
> +{
> +	return l1->enable =3D=3D l2->enable &&
> +		l1->ignore_lines =3D=3D l2->ignore_lines &&
> +		l1->lines =3D=3D l2->lines &&
> +		l1->blocks =3D=3D l2->blocks;
> +}
> +
> +static bool skl_plane_wm_equals(struct drm_i915_private *i915,
> +				const struct skl_plane_wm *wm1,
> +				const struct skl_plane_wm *wm2)
> +{
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +
> +	for (level =3D 0; level <=3D max_level; level++) {
> +		/*
> +		 * We don't check uv_wm as the hardware doesn't actually
> +		 * use it. It only gets used for calculating the required
> +		 * ddb allocation.
> +		 */
> +		if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]))
> +			return false;
> +	}
> +
> +	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
> +		skl_wm_level_equals(&wm1->sagv.wm0, &wm2->sagv.wm0) &&
> +		skl_wm_level_equals(&wm1->sagv.trans_wm, &wm2->sagv.trans_wm);
> +}
> +
> +static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
> +				    const struct skl_ddb_entry *b)
> +{
> +	return a->start < b->end && b->start < a->end;
> +}
> +
> +static void skl_ddb_entry_union(struct skl_ddb_entry *a,
> +				const struct skl_ddb_entry *b)
> +{
> +	if (a->end && b->end) {
> +		a->start =3D min(a->start, b->start);
> +		a->end =3D max(a->end, b->end);
> +	} else if (b->end) {
> +		a->start =3D b->start;
> +		a->end =3D b->end;
> +	}
> +}
> +
> +bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> +				 const struct skl_ddb_entry *entries,
> +				 int num_entries, int ignore_idx)
> +{
> +	int i;
> +
> +	for (i =3D 0; i < num_entries; i++) {
> +		if (i !=3D ignore_idx &&
> +		    skl_ddb_entries_overlap(ddb, &entries[i]))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +static int
> +skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_stat=
e,
> +			    struct intel_crtc_state *new_crtc_state)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(new_crtc_sta=
te->uapi.state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +		struct intel_plane_state *plane_state;
> +		enum plane_id plane_id =3D plane->id;
> +
> +		if (skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb[plane_id],
> +					&new_crtc_state->wm.skl.plane_ddb[plane_id]) &&
> +		    skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb_y[plane_id],
> +					&new_crtc_state->wm.skl.plane_ddb_y[plane_id]))
> +			continue;
> +
> +		plane_state =3D intel_atomic_get_plane_state(state, plane);
> +		if (IS_ERR(plane_state))
> +			return PTR_ERR(plane_state);
> +
> +		new_crtc_state->update_planes |=3D BIT(plane_id);
> +	}
> +
> +	return 0;
> +}
> +
> +static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_=
state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dbuf_state->base.state->base.=
dev);
> +	u8 enabled_slices;
> +	enum pipe pipe;
> +
> +	/*
> +	 * FIXME: For now we always enable slice S1 as per
> +	 * the Bspec display initialization sequence.
> +	 */
> +	enabled_slices =3D BIT(DBUF_S1);
> +
> +	for_each_pipe(i915, pipe)
> +		enabled_slices |=3D dbuf_state->slices[pipe];
> +
> +	return enabled_slices;
> +}
> +
> +static int
> +skl_compute_ddb(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *old_dbuf_state;
> +	struct intel_dbuf_state *new_dbuf_state =3D NULL;
> +	const struct intel_crtc_state *old_crtc_state;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int ret, i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> +		if (IS_ERR(new_dbuf_state))
> +			return PTR_ERR(new_dbuf_state);
> +
> +		old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> +		break;
> +	}
> +
> +	if (!new_dbuf_state)
> +		return 0;
> +
> +	new_dbuf_state->active_pipes =3D
> +		intel_calc_active_pipes(state, old_dbuf_state->active_pipes);
> +
> +	if (old_dbuf_state->active_pipes !=3D new_dbuf_state->active_pipes) {
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	if (HAS_MBUS_JOINING(i915))
> +		new_dbuf_state->joined_mbus =3D
> +			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		new_dbuf_state->slices[pipe] =3D
> +			skl_compute_dbuf_slices(crtc, new_dbuf_state->active_pipes,
> +						new_dbuf_state->joined_mbus);
> +
> +		if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe])
> +			continue;
> +
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	new_dbuf_state->enabled_slices =3D intel_dbuf_enabled_slices(new_dbuf_s=
tate);
> +
> +	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices =
||
> +	    old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
> +		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +
> +		if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
> +			/* TODO: Implement vblank synchronized MBUS joining changes */
> +			ret =3D intel_modeset_all_pipes(state);
> +			if (ret)
> +				return ret;
> +		}
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus =
joined? %s->%s\n",
> +			    old_dbuf_state->enabled_slices,
> +			    new_dbuf_state->enabled_slices,
> +			    INTEL_INFO(i915)->display.dbuf.slice_mask,
> +			    str_yes_no(old_dbuf_state->joined_mbus),
> +			    str_yes_no(new_dbuf_state->joined_mbus));
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		new_dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(new_crtc_state);
> +
> +		if (old_dbuf_state->weight[pipe] =3D=3D new_dbuf_state->weight[pipe])
> +			continue;
> +
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		ret =3D skl_crtc_allocate_ddb(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		ret =3D skl_crtc_allocate_plane_ddb(state, crtc);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D skl_ddb_add_affected_planes(old_crtc_state,
> +						  new_crtc_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static char enast(bool enable)
> +{
> +	return enable ? '*' : ' ';
> +}
> +
> +static void
> +skl_print_wm_changes(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *old_crtc_state;
> +	const struct intel_crtc_state *new_crtc_state;
> +	struct intel_plane *plane;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	if (!drm_debug_enabled(DRM_UT_KMS))
> +		return;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		const struct skl_pipe_wm *old_pipe_wm, *new_pipe_wm;
> +
> +		old_pipe_wm =3D &old_crtc_state->wm.skl.optimal;
> +		new_pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> +
> +		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +			enum plane_id plane_id =3D plane->id;
> +			const struct skl_ddb_entry *old, *new;
> +
> +			old =3D &old_crtc_state->wm.skl.plane_ddb[plane_id];
> +			new =3D &new_crtc_state->wm.skl.plane_ddb[plane_id];
> +
> +			if (skl_ddb_entry_equal(old, new))
> +				continue;
> +
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n=
",
> +				    plane->base.base.id, plane->base.name,
> +				    old->start, old->end, new->start, new->end,
> +				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
> +		}
> +
> +		for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +			enum plane_id plane_id =3D plane->id;
> +			const struct skl_plane_wm *old_wm, *new_wm;
> +
> +			old_wm =3D &old_pipe_wm->planes[plane_id];
> +			new_wm =3D &new_pipe_wm->planes[plane_id];
> +
> +			if (skl_plane_wm_equals(i915, old_wm, new_wm))
> +				continue;
> +
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm,%cstwm"
> +				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
,%cstwm\n",
> +				    plane->base.base.id, plane->base.name,
> +				    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
> +				    enast(old_wm->wm[2].enable), enast(old_wm->wm[3].enable),
> +				    enast(old_wm->wm[4].enable), enast(old_wm->wm[5].enable),
> +				    enast(old_wm->wm[6].enable), enast(old_wm->wm[7].enable),
> +				    enast(old_wm->trans_wm.enable),
> +				    enast(old_wm->sagv.wm0.enable),
> +				    enast(old_wm->sagv.trans_wm.enable),
> +				    enast(new_wm->wm[0].enable), enast(new_wm->wm[1].enable),
> +				    enast(new_wm->wm[2].enable), enast(new_wm->wm[3].enable),
> +				    enast(new_wm->wm[4].enable), enast(new_wm->wm[5].enable),
> +				    enast(new_wm->wm[6].enable), enast(new_wm->wm[7].enable),
> +				    enast(new_wm->trans_wm.enable),
> +				    enast(new_wm->sagv.wm0.enable),
> +				    enast(new_wm->sagv.trans_wm.enable));
> +
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d,%c%4d"
> +				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d,%c%4d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
> +				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].lines,
> +				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].lines,
> +				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].lines,
> +				    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].lines,
> +				    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].lines,
> +				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].lines,
> +				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].lines,
> +				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.lines,
> +				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.lines,
> +				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm=
.lines,
> +				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].lines,
> +				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].lines,
> +				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].lines,
> +				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].lines,
> +				    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].lines,
> +				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].lines,
> +				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].lines,
> +				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].lines,
> +				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.lines,
> +				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.lines,
> +				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm=
.lines);
> +
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
> +				    old_wm->wm[2].blocks, old_wm->wm[3].blocks,
> +				    old_wm->wm[4].blocks, old_wm->wm[5].blocks,
> +				    old_wm->wm[6].blocks, old_wm->wm[7].blocks,
> +				    old_wm->trans_wm.blocks,
> +				    old_wm->sagv.wm0.blocks,
> +				    old_wm->sagv.trans_wm.blocks,
> +				    new_wm->wm[0].blocks, new_wm->wm[1].blocks,
> +				    new_wm->wm[2].blocks, new_wm->wm[3].blocks,
> +				    new_wm->wm[4].blocks, new_wm->wm[5].blocks,
> +				    new_wm->wm[6].blocks, new_wm->wm[7].blocks,
> +				    new_wm->trans_wm.blocks,
> +				    new_wm->sagv.wm0.blocks,
> +				    new_wm->sagv.trans_wm.blocks);
> +
> +			drm_dbg_kms(&i915->drm,
> +				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> +				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
> +				    plane->base.base.id, plane->base.name,
> +				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> +				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
> +				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
> +				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
> +				    old_wm->trans_wm.min_ddb_alloc,
> +				    old_wm->sagv.wm0.min_ddb_alloc,
> +				    old_wm->sagv.trans_wm.min_ddb_alloc,
> +				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
> +				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
> +				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
> +				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
> +				    new_wm->trans_wm.min_ddb_alloc,
> +				    new_wm->sagv.wm0.min_ddb_alloc,
> +				    new_wm->sagv.trans_wm.min_ddb_alloc);
> +		}
> +	}
> +}
> +
> +static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
> +					 const struct skl_pipe_wm *old_pipe_wm,
> +					 const struct skl_pipe_wm *new_pipe_wm)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +
> +	for (level =3D 0; level <=3D max_level; level++) {
> +		/*
> +		 * We don't check uv_wm as the hardware doesn't actually
> +		 * use it. It only gets used for calculating the required
> +		 * ddb allocation.
> +		 */
> +		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, plane->id, le=
vel),
> +					 skl_plane_wm_level(new_pipe_wm, plane->id, level)))
> +			return false;
> +	}
> +
> +	if (HAS_HW_SAGV_WM(i915)) {
> +		const struct skl_plane_wm *old_wm =3D &old_pipe_wm->planes[plane->id];
> +		const struct skl_plane_wm *new_wm =3D &new_pipe_wm->planes[plane->id];
> +
> +		if (!skl_wm_level_equals(&old_wm->sagv.wm0, &new_wm->sagv.wm0) ||
> +		    !skl_wm_level_equals(&old_wm->sagv.trans_wm, &new_wm->sagv.trans_w=
m))
> +			return false;
> +	}
> +
> +	return skl_wm_level_equals(skl_plane_trans_wm(old_pipe_wm, plane->id),
> +				   skl_plane_trans_wm(new_pipe_wm, plane->id));
> +}
> +
> +/*
> + * To make sure the cursor watermark registers are always consistent
> + * with our computed state the following scenario needs special
> + * treatment:
> + *
> + * 1. enable cursor
> + * 2. move cursor entirely offscreen
> + * 3. disable cursor
> + *
> + * Step 2. does call .disable_plane() but does not zero the watermarks
> + * (since we consider an offscreen cursor still active for the purposes
> + * of watermarks). Step 3. would not normally call .disable_plane()
> + * because the actual plane visibility isn't changing, and we don't
> + * deallocate the cursor ddb until the pipe gets disabled. So we must
> + * force step 3. to call .disable_plane() to update the watermark
> + * registers properly.
> + *
> + * Other planes do not suffer from this issues as their watermarks are
> + * calculated based on the actual plane visibility. The only time this
> + * can trigger for the other planes is during the initial readout as the
> + * default value of the watermarks registers is not zero.
> + */
> +static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
> +				      struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +		struct intel_plane_state *plane_state;
> +		enum plane_id plane_id =3D plane->id;
> +
> +		/*
> +		 * Force a full wm update for every plane on modeset.
> +		 * Required because the reset value of the wm registers
> +		 * is non-zero, whereas we want all disabled planes to
> +		 * have zero watermarks. So if we turn off the relevant
> +		 * power well the hardware state will go out of sync
> +		 * with the software state.
> +		 */
> +		if (!drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) &&
> +		    skl_plane_selected_wm_equals(plane,
> +						 &old_crtc_state->wm.skl.optimal,
> +						 &new_crtc_state->wm.skl.optimal))
> +			continue;
> +
> +		plane_state =3D intel_atomic_get_plane_state(state, plane);
> +		if (IS_ERR(plane_state))
> +			return PTR_ERR(plane_state);
> +
> +		new_crtc_state->update_planes |=3D BIT(plane_id);
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +skl_compute_wm(struct intel_atomic_state *state)
> +{
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *new_crtc_state;
> +	int ret, i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		ret =3D skl_build_pipe_wm(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret =3D skl_compute_ddb(state);
> +	if (ret)
> +		return ret;
> +
> +	ret =3D intel_compute_sagv_mask(state);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * skl_compute_ddb() will have adjusted the final watermarks
> +	 * based on how much ddb is available. Now we can actually
> +	 * check if the final watermarks changed.
> +	 */
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		ret =3D skl_wm_add_affected_planes(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	skl_print_wm_changes(state);
> +
> +	return 0;
> +}
> +
> +static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *leve=
l)
> +{
> +	level->enable =3D val & PLANE_WM_EN;
> +	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES;
> +	level->blocks =3D REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
> +	level->lines =3D REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
> +}
> +
> +static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> +				     struct skl_pipe_wm *out)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	enum pipe pipe =3D crtc->pipe;
> +	int level, max_level;
> +	enum plane_id plane_id;
> +	u32 val;
> +
> +	max_level =3D ilk_wm_max_level(i915);
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		struct skl_plane_wm *wm =3D &out->planes[plane_id];
> +
> +		for (level =3D 0; level <=3D max_level; level++) {
> +			if (plane_id !=3D PLANE_CURSOR)
> +				val =3D intel_uncore_read(&i915->uncore, PLANE_WM(pipe, plane_id, le=
vel));
> +			else
> +				val =3D intel_uncore_read(&i915->uncore, CUR_WM(pipe, level));
> +
> +			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> +		}
> +
> +		if (plane_id !=3D PLANE_CURSOR)
> +			val =3D intel_uncore_read(&i915->uncore, PLANE_WM_TRANS(pipe, plane_i=
d));
> +		else
> +			val =3D intel_uncore_read(&i915->uncore, CUR_WM_TRANS(pipe));
> +
> +		skl_wm_level_from_reg_val(val, &wm->trans_wm);
> +
> +		if (HAS_HW_SAGV_WM(i915)) {
> +			if (plane_id !=3D PLANE_CURSOR)
> +				val =3D intel_uncore_read(&i915->uncore,
> +							PLANE_WM_SAGV(pipe, plane_id));
> +			else
> +				val =3D intel_uncore_read(&i915->uncore,
> +							CUR_WM_SAGV(pipe));
> +
> +			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
> +
> +			if (plane_id !=3D PLANE_CURSOR)
> +				val =3D intel_uncore_read(&i915->uncore,
> +							PLANE_WM_SAGV_TRANS(pipe, plane_id));
> +			else
> +				val =3D intel_uncore_read(&i915->uncore,
> +							CUR_WM_SAGV_TRANS(pipe));
> +
> +			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
> +		} else if (DISPLAY_VER(i915) >=3D 12) {
> +			wm->sagv.wm0 =3D wm->wm[0];
> +			wm->sagv.trans_wm =3D wm->trans_wm;
> +		}
> +	}
> +}
> +
> +void skl_wm_get_hw_state(struct drm_i915_private *i915)
> +{
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> +	struct intel_crtc *crtc;
> +
> +	if (HAS_MBUS_JOINING(i915))
> +		dbuf_state->joined_mbus =3D intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		enum pipe pipe =3D crtc->pipe;
> +		unsigned int mbus_offset;
> +		enum plane_id plane_id;
> +		u8 slices;
> +
> +		memset(&crtc_state->wm.skl.optimal, 0,
> +		       sizeof(crtc_state->wm.skl.optimal));
> +		if (crtc_state->hw.active)
> +			skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> +		crtc_state->wm.skl.raw =3D crtc_state->wm.skl.optimal;
> +
> +		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
> +
> +		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			struct skl_ddb_entry *ddb =3D
> +				&crtc_state->wm.skl.plane_ddb[plane_id];
> +			struct skl_ddb_entry *ddb_y =3D
> +				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +
> +			if (!crtc_state->hw.active)
> +				continue;
> +
> +			skl_ddb_get_hw_plane_state(i915, crtc->pipe,
> +						   plane_id, ddb, ddb_y);
> +
> +			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
> +			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
> +		}
> +
> +		dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(crtc_state);
> +
> +		/*
> +		 * Used for checking overlaps, so we need absolute
> +		 * offsets instead of MBUS relative offsets.
> +		 */
> +		slices =3D skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> +						 dbuf_state->joined_mbus);
> +		mbus_offset =3D mbus_ddb_offset(i915, slices);
> +		crtc_state->wm.skl.ddb.start =3D mbus_offset + dbuf_state->ddb[pipe].s=
tart;
> +		crtc_state->wm.skl.ddb.end =3D mbus_offset + dbuf_state->ddb[pipe].end;
> +
> +		/* The slices actually used by the planes on the pipe */
> +		dbuf_state->slices[pipe] =3D
> +			skl_ddb_dbuf_slice_mask(i915, &crtc_state->wm.skl.ddb);
> +
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x,=
 mbus joined: %s\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> +			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes,
> +			    str_yes_no(dbuf_state->joined_mbus));
> +	}
> +
> +	dbuf_state->enabled_slices =3D i915->display.dbuf.enabled_slices;
> +}
> +
> +static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
> +{
> +	const struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> +	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		const struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		entries[crtc->pipe] =3D crtc_state->wm.skl.ddb;
> +	}
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		const struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		u8 slices;
> +
> +		slices =3D skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> +						 dbuf_state->joined_mbus);
> +		if (dbuf_state->slices[crtc->pipe] & ~slices)
> +			return true;
> +
> +		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
> +						I915_MAX_PIPES, crtc->pipe))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void skl_wm_sanitize(struct drm_i915_private *i915)
> +{
> +	struct intel_crtc *crtc;
> +
> +	/*
> +	 * On TGL/RKL (at least) the BIOS likes to assign the planes
> +	 * to the wrong DBUF slices. This will cause an infinite loop
> +	 * in skl_commit_modeset_enables() as it can't find a way to
> +	 * transition between the old bogus DBUF layout to the new
> +	 * proper DBUF layout without DBUF allocation overlaps between
> +	 * the planes (which cannot be allowed or else the hardware
> +	 * may hang). If we detect a bogus DBUF layout just turn off
> +	 * all the planes so that skl_commit_modeset_enables() can
> +	 * simply ignore them.
> +	 */
> +	if (!skl_dbuf_is_misconfigured(i915))
> +		return;
> +
> +	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all=
 planes\n");
> +
> +	for_each_intel_crtc(&i915->drm, crtc) {
> +		struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> +		const struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		if (plane_state->uapi.visible)
> +			intel_plane_disable_noatomic(crtc, plane);
> +
> +		drm_WARN_ON(&i915->drm, crtc_state->active_planes !=3D 0);
> +
> +		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
> +	}
> +}
> +
> +void intel_wm_state_verify(struct intel_crtc *crtc,
> +			   struct intel_crtc_state *new_crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct skl_hw_state {
> +		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> +		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> +		struct skl_pipe_wm wm;
> +	} *hw;
> +	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> +	int level, max_level =3D ilk_wm_max_level(i915);
> +	struct intel_plane *plane;
> +	u8 hw_enabled_slices;
> +
> +	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
> +		return;
> +
> +	hw =3D kzalloc(sizeof(*hw), GFP_KERNEL);
> +	if (!hw)
> +		return;
> +
> +	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
> +
> +	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
> +
> +	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(i915);
> +
> +	if (DISPLAY_VER(i915) >=3D 11 &&
> +	    hw_enabled_slices !=3D i915->display.dbuf.enabled_slices)
> +		drm_err(&i915->drm,
> +			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
> +			i915->display.dbuf.enabled_slices,
> +			hw_enabled_slices);
> +
> +	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> +		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
> +		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
> +
> +		/* Watermarks */
> +		for (level =3D 0; level <=3D max_level; level++) {
> +			hw_wm_level =3D &hw->wm.planes[plane->id].wm[level];
> +			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane->id, level);
> +
> +			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
> +				continue;
> +
> +			drm_err(&i915->drm,
> +				"[PLANE:%d:%s] mismatch in WM%d (expected e=3D%d b=3D%u l=3D%u, got =
e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name, level,
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
> +		}
> +
> +		hw_wm_level =3D &hw->wm.planes[plane->id].trans_wm;
> +		sw_wm_level =3D skl_plane_trans_wm(sw_wm, plane->id);
> +
> +		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> +			drm_err(&i915->drm,
> +				"[PLANE:%d:%s] mismatch in trans WM (expected e=3D%d b=3D%u l=3D%u, =
got e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name,
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
> +		}
> +
> +		hw_wm_level =3D &hw->wm.planes[plane->id].sagv.wm0;
> +		sw_wm_level =3D &sw_wm->planes[plane->id].sagv.wm0;
> +
> +		if (HAS_HW_SAGV_WM(i915) &&
> +		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> +			drm_err(&i915->drm,
> +				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=3D%d b=3D%u l=3D%u, g=
ot e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name,
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
> +		}
> +
> +		hw_wm_level =3D &hw->wm.planes[plane->id].sagv.trans_wm;
> +		sw_wm_level =3D &sw_wm->planes[plane->id].sagv.trans_wm;
> +
> +		if (HAS_HW_SAGV_WM(i915) &&
> +		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> +			drm_err(&i915->drm,
> +				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=3D%d b=3D%u l=
=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
> +				plane->base.base.id, plane->base.name,
> +				sw_wm_level->enable,
> +				sw_wm_level->blocks,
> +				sw_wm_level->lines,
> +				hw_wm_level->enable,
> +				hw_wm_level->blocks,
> +				hw_wm_level->lines);
> +		}
> +
> +		/* DDB */
> +		hw_ddb_entry =3D &hw->ddb[PLANE_CURSOR];
> +		sw_ddb_entry =3D &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
> +
> +		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
> +			drm_err(&i915->drm,
> +				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
> +				plane->base.base.id, plane->base.name,
> +				sw_ddb_entry->start, sw_ddb_entry->end,
> +				hw_ddb_entry->start, hw_ddb_entry->end);
> +		}
> +	}
> +
> +	kfree(hw);
> +}
> +
> +void intel_enable_ipc(struct drm_i915_private *i915)
> +{
> +	u32 val;
> +
> +	if (!HAS_IPC(i915))
> +		return;
> +
> +	val =3D intel_uncore_read(&i915->uncore, DISP_ARB_CTL2);
> +
> +	if (i915->ipc_enabled)
> +		val |=3D DISP_IPC_ENABLE;
> +	else
> +		val &=3D ~DISP_IPC_ENABLE;
> +
> +	intel_uncore_write(&i915->uncore, DISP_ARB_CTL2, val);
> +}
> +
> +static bool intel_can_enable_ipc(struct drm_i915_private *i915)
> +{
> +	/* Display WA #0477 WaDisableIPC: skl */
> +	if (IS_SKYLAKE(i915))
> +		return false;
> +
> +	/* Display WA #1141: SKL:all KBL:all CFL */
> +	if (IS_KABYLAKE(i915) ||
> +	    IS_COFFEELAKE(i915) ||
> +	    IS_COMETLAKE(i915))
> +		return i915->dram_info.symmetric_memory;
> +
> +	return true;
> +}
> +
> +void intel_init_ipc(struct drm_i915_private *i915)
> +{
> +	if (!HAS_IPC(i915))
> +		return;
> +
> +	i915->ipc_enabled =3D intel_can_enable_ipc(i915);
> +
> +	intel_enable_ipc(i915);
> +}
> +
> +static void
> +adjust_wm_latency(struct drm_i915_private *i915,
> +		  u16 wm[], int max_level, int read_latency)
> +{
> +	bool wm_lv_0_adjust_needed =3D i915->dram_info.wm_lv_0_adjust_needed;
> +	int i, level;
> +
> +	/*
> +	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
> +	 * need to be disabled. We make sure to sanitize the values out
> +	 * of the punit to satisfy this requirement.
> +	 */
> +	for (level =3D 1; level <=3D max_level; level++) {
> +		if (wm[level] =3D=3D 0) {
> +			for (i =3D level + 1; i <=3D max_level; i++)
> +				wm[i] =3D 0;
> +
> +			max_level =3D level - 1;
> +			break;
> +		}
> +	}
> +
> +	/*
> +	 * WaWmMemoryReadLatency
> +	 *
> +	 * punit doesn't take into account the read latency so we need
> +	 * to add proper adjustement to each valid level we retrieve
> +	 * from the punit when level 0 response data is 0us.
> +	 */
> +	if (wm[0] =3D=3D 0) {
> +		for (level =3D 0; level <=3D max_level; level++)
> +			wm[level] +=3D read_latency;
> +	}
> +
> +	/*
> +	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
> +	 * If we could not get dimm info enable this WA to prevent from
> +	 * any underrun. If not able to get Dimm info assume 16GB dimm
> +	 * to avoid any underrun.
> +	 */
> +	if (wm_lv_0_adjust_needed)
> +		wm[0] +=3D 1;
> +}
> +
> +static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	int max_level =3D ilk_wm_max_level(i915);
> +	u32 val;
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> +	wm[0] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[1] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> +	wm[2] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[3] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> +	wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> +	wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> +
> +	adjust_wm_latency(i915, wm, max_level, 6);
> +}
> +
> +static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> +{
> +	int max_level =3D ilk_wm_max_level(i915);
> +	int read_latency =3D DISPLAY_VER(i915) >=3D 12 ? 3 : 2;
> +	int mult =3D IS_DG2(i915) ? 2 : 1;
> +	u32 val;
> +	int ret;
> +
> +	/* read the first set of memory latencies[0:3] */
> +	val =3D 0; /* data0 to be programmed to 0 for first set */
> +	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> +	if (ret) {
> +		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> +		return;
> +	}
> +
> +	wm[0] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[1] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[2] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[3] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +
> +	/* read the second set of memory latencies[4:7] */
> +	val =3D 1; /* data0 to be programmed to 1 for second set */
> +	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> +	if (ret) {
> +		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> +		return;
> +	}
> +
> +	wm[4] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[5] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[6] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +	wm[7] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> +		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> +
> +	adjust_wm_latency(i915, wm, max_level, read_latency);
> +}
> +
> +static void skl_setup_wm_latency(struct drm_i915_private *i915)
> +{
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		mtl_read_wm_latency(i915, i915->display.wm.skl_latency);
> +	else
> +		skl_read_wm_latency(i915, i915->display.wm.skl_latency);
> +
> +	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency=
);
> +}
> +
> +static const struct intel_wm_funcs skl_wm_funcs =3D {
> +	.compute_global_watermarks =3D skl_compute_wm,
> +};
> +
> +void skl_wm_init(struct drm_i915_private *i915)
> +{
> +	intel_sagv_init(i915);
> +
> +	skl_setup_wm_latency(i915);
> +
> +	i915->display.funcs.wm =3D &skl_wm_funcs;
> +}
> +
> +static struct intel_global_state *intel_dbuf_duplicate_state(struct inte=
l_global_obj *obj)
> +{
> +	struct intel_dbuf_state *dbuf_state;
> +
> +	dbuf_state =3D kmemdup(obj->state, sizeof(*dbuf_state), GFP_KERNEL);
> +	if (!dbuf_state)
> +		return NULL;
> +
> +	return &dbuf_state->base;
> +}
> +
> +static void intel_dbuf_destroy_state(struct intel_global_obj *obj,
> +				     struct intel_global_state *state)
> +{
> +	kfree(state);
> +}
> +
> +static const struct intel_global_state_funcs intel_dbuf_funcs =3D {
> +	.atomic_duplicate_state =3D intel_dbuf_duplicate_state,
> +	.atomic_destroy_state =3D intel_dbuf_destroy_state,
> +};
> +
> +struct intel_dbuf_state *
> +intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	struct intel_global_state *dbuf_state;
> +
> +	dbuf_state =3D intel_atomic_get_global_obj_state(state, &i915->display.=
dbuf.obj);
> +	if (IS_ERR(dbuf_state))
> +		return ERR_CAST(dbuf_state);
> +
> +	return to_intel_dbuf_state(dbuf_state);
> +}
> +
> +int intel_dbuf_init(struct drm_i915_private *i915)
> +{
> +	struct intel_dbuf_state *dbuf_state;
> +
> +	dbuf_state =3D kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
> +	if (!dbuf_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(i915, &i915->display.dbuf.obj,
> +				     &dbuf_state->base, &intel_dbuf_funcs);
> +
> +	return 0;
> +}
> +
> +/*
> + * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus stat=
e before
> + * update the request state of all DBUS slices.
> + */
> +static void update_mbus_pre_enable(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	u32 mbus_ctl, dbuf_min_tracker_val;
> +	enum dbuf_slice slice;
> +	const struct intel_dbuf_state *dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +
> +	if (!HAS_MBUS_JOINING(i915))
> +		return;
> +
> +	/*
> +	 * TODO: Implement vblank synchronized MBUS joining changes.
> +	 * Must be properly coordinated with dbuf reprogramming.
> +	 */
> +	if (dbuf_state->joined_mbus) {
> +		mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(3);
> +	} else {
> +		mbus_ctl =3D MBUS_HASHING_MODE_2x2 |
> +			MBUS_JOIN_PIPE_SELECT_NONE;
> +		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(1);
> +	}
> +
> +	intel_de_rmw(i915, MBUS_CTL,
> +		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> +		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> +
> +	for_each_dbuf_slice(i915, slice)
> +		intel_de_rmw(i915, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     dbuf_min_tracker_val);
> +}
> +
> +void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slic=
es &&
> +	     new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus))
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	update_mbus_pre_enable(state);
> +	gen9_dbuf_slices_update(i915,
> +				old_dbuf_state->enabled_slices |
> +				new_dbuf_state->enabled_slices);
> +}
> +
> +void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slic=
es &&
> +	     new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus))
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(i915,
> +				new_dbuf_state->enabled_slices);
> +}
> +
> +void intel_mbus_dbox_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> +	const struct intel_crtc_state *new_crtc_state;
> +	const struct intel_crtc *crtc;
> +	u32 val =3D 0;
> +	int i;
> +
> +	if (DISPLAY_VER(i915) < 11)
> +		return;
> +
> +	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> +	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> +	if (!new_dbuf_state ||
> +	    (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_pipes))
> +		return;
> +
> +	if (DISPLAY_VER(i915) >=3D 12) {
> +		val |=3D MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
> +		val |=3D MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
> +		val |=3D MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
> +	}
> +
> +	/* Wa_22010947358:adl-p */
> +	if (IS_ALDERLAKE_P(i915))
> +		val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> +						     MBUS_DBOX_A_CREDIT(4);
> +	else
> +		val |=3D MBUS_DBOX_A_CREDIT(2);
> +
> +	if (IS_ALDERLAKE_P(i915)) {
> +		val |=3D MBUS_DBOX_BW_CREDIT(2);
> +		val |=3D MBUS_DBOX_B_CREDIT(8);
> +	} else if (DISPLAY_VER(i915) >=3D 12) {
> +		val |=3D MBUS_DBOX_BW_CREDIT(2);
> +		val |=3D MBUS_DBOX_B_CREDIT(12);
> +	} else {
> +		val |=3D MBUS_DBOX_BW_CREDIT(1);
> +		val |=3D MBUS_DBOX_B_CREDIT(8);
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		if (!new_crtc_state->hw.active ||
> +		    !intel_crtc_needs_modeset(new_crtc_state))
> +			continue;
> +
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/d=
rm/i915/display/skl_watermark.h
> new file mode 100644
> index 000000000000..50da05932750
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -0,0 +1,78 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __SKL_WATERMARK_H__
> +#define __SKL_WATERMARK_H__
> +
> +#include <linux/types.h>
> +
> +#include "intel_display.h"
> +#include "intel_global_state.h"
> +#include "intel_pm_types.h"
> +
> +struct drm_i915_private;
> +struct intel_atomic_state;
> +struct intel_bw_state;
> +struct intel_crtc;
> +struct intel_crtc_state;
> +struct intel_plane;
> +
> +u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *i915);
> +
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state);
> +bool intel_can_enable_sagv(struct drm_i915_private *i915,
> +			   const struct intel_bw_state *bw_state);
> +
> +u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *i915,
> +			    const struct skl_ddb_entry *entry);
> +
> +void skl_write_plane_wm(struct intel_plane *plane,
> +			const struct intel_crtc_state *crtc_state);
> +void skl_write_cursor_wm(struct intel_plane *plane,
> +			 const struct intel_crtc_state *crtc_state);
> +
> +bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> +				 const struct skl_ddb_entry *entries,
> +				 int num_entries, int ignore_idx);
> +
> +void skl_wm_get_hw_state(struct drm_i915_private *i915);
> +void skl_wm_sanitize(struct drm_i915_private *i915);
> +
> +void intel_wm_state_verify(struct intel_crtc *crtc,
> +			   struct intel_crtc_state *new_crtc_state);
> +
> +void intel_enable_ipc(struct drm_i915_private *i915);
> +void intel_init_ipc(struct drm_i915_private *i915);
> +
> +void skl_wm_init(struct drm_i915_private *i915);
> +
> +struct intel_dbuf_state {
> +	struct intel_global_state base;
> +
> +	struct skl_ddb_entry ddb[I915_MAX_PIPES];
> +	unsigned int weight[I915_MAX_PIPES];
> +	u8 slices[I915_MAX_PIPES];
> +	u8 enabled_slices;
> +	u8 active_pipes;
> +	bool joined_mbus;
> +};
> +
> +struct intel_dbuf_state *
> +intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
> +
> +#define to_intel_dbuf_state(x) container_of((x), struct intel_dbuf_state=
, base)
> +#define intel_atomic_get_old_dbuf_state(state) \
> +	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i9=
15(state->base.dev)->display.dbuf.obj))
> +#define intel_atomic_get_new_dbuf_state(state) \
> +	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i9=
15(state->base.dev)->display.dbuf.obj))
> +
> +int intel_dbuf_init(struct drm_i915_private *i915);
> +void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> +void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> +void intel_mbus_dbox_update(struct intel_atomic_state *state);
> +
> +#endif /* __SKL_WATERMARK_H__ */
> +
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 56a2bcddb2af..8ab908512800 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -61,6 +61,7 @@
>  #include "display/intel_pps.h"
>  #include "display/intel_sprite.h"
>  #include "display/intel_vga.h"
> +#include "display/skl_watermark.h"
>=20=20
>  #include "gem/i915_gem_context.h"
>  #include "gem/i915_gem_create.h"
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 096c311ed29f..7b454314ab85 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -25,60 +25,22 @@
>   *
>   */
>=20=20
> -#include <linux/module.h>
> -#include <linux/string_helpers.h>
> -#include <linux/pm_runtime.h>
> -
> -#include <drm/drm_atomic_helper.h>
> -#include <drm/drm_blend.h>
> -#include <drm/drm_fourcc.h>
> -
> -#include "display/intel_atomic.h"
> -#include "display/intel_atomic_plane.h"
> -#include "display/intel_bw.h"
>  #include "display/intel_de.h"
>  #include "display/intel_display_trace.h"
> -#include "display/intel_display_types.h"
> -#include "display/intel_fb.h"
> -#include "display/intel_fbc.h"
> -#include "display/intel_sprite.h"
> -#include "display/skl_universal_plane.h"
> +#include "display/skl_watermark.h"
>=20=20
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_gt_regs.h"
> -#include "gt/intel_llc.h"
>=20=20
>  #include "i915_drv.h"
> -#include "i915_fixed.h"
> -#include "i915_irq.h"
>  #include "intel_mchbar_regs.h"
> -#include "intel_pcode.h"
>  #include "intel_pm.h"
>  #include "vlv_sideband.h"
> -#include "../../../platform/x86/intel_ips.h"
> -
> -static void skl_sagv_disable(struct drm_i915_private *dev_priv);
>=20=20
>  struct drm_i915_clock_gating_funcs {
>  	void (*init_clock_gating)(struct drm_i915_private *i915);
>  };
>=20=20
> -/* Stores plane specific WM parameters */
> -struct skl_wm_params {
> -	bool x_tiled, y_tiled;
> -	bool rc_surface;
> -	bool is_planar;
> -	u32 width;
> -	u8 cpp;
> -	u32 plane_pixel_rate;
> -	u32 y_min_scanlines;
> -	u32 plane_bytes_per_line;
> -	uint_fixed_16_16_t plane_blocks_per_line;
> -	uint_fixed_16_16_t y_tile_minimum;
> -	u32 linetime_us;
> -	u32 dbuf_block_size;
> -};
> -
>  /* used in computing the new watermarks state */
>  struct intel_wm_config {
>  	unsigned int num_pipes_active;
> @@ -837,8 +799,8 @@ static int intel_wm_num_levels(struct drm_i915_privat=
e *dev_priv)
>  	return dev_priv->display.wm.max_level + 1;
>  }
>=20=20
> -static bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_s=
tate,
> -				   const struct intel_plane_state *plane_state)
> +bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
> +			    const struct intel_plane_state *plane_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>=20=20
> @@ -2861,114 +2823,6 @@ static void ilk_compute_wm_level(const struct drm=
_i915_private *dev_priv,
>  	result->enable =3D true;
>  }
>=20=20
> -static void
> -adjust_wm_latency(struct drm_i915_private *i915,
> -		  u16 wm[], int max_level, int read_latency)
> -{
> -	bool wm_lv_0_adjust_needed =3D i915->dram_info.wm_lv_0_adjust_needed;
> -	int i, level;
> -
> -	/*
> -	 * If a level n (n > 1) has a 0us latency, all levels m (m >=3D n)
> -	 * need to be disabled. We make sure to sanitize the values out
> -	 * of the punit to satisfy this requirement.
> -	 */
> -	for (level =3D 1; level <=3D max_level; level++) {
> -		if (wm[level] =3D=3D 0) {
> -			for (i =3D level + 1; i <=3D max_level; i++)
> -				wm[i] =3D 0;
> -
> -			max_level =3D level - 1;
> -			break;
> -		}
> -	}
> -
> -	/*
> -	 * WaWmMemoryReadLatency
> -	 *
> -	 * punit doesn't take into account the read latency so we need
> -	 * to add proper adjustement to each valid level we retrieve
> -	 * from the punit when level 0 response data is 0us.
> -	 */
> -	if (wm[0] =3D=3D 0) {
> -		for (level =3D 0; level <=3D max_level; level++)
> -			wm[level] +=3D read_latency;
> -	}
> -
> -	/*
> -	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
> -	 * If we could not get dimm info enable this WA to prevent from
> -	 * any underrun. If not able to get Dimm info assume 16GB dimm
> -	 * to avoid any underrun.
> -	 */
> -	if (wm_lv_0_adjust_needed)
> -		wm[0] +=3D 1;
> -}
> -
> -static void mtl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> -{
> -	struct intel_uncore *uncore =3D &i915->uncore;
> -	int max_level =3D ilk_wm_max_level(i915);
> -	u32 val;
> -
> -	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> -	wm[0] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -	wm[1] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -
> -	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> -	wm[2] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -	wm[3] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -
> -	val =3D intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> -	wm[4] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_EVEN_MASK, val);
> -	wm[5] =3D REG_FIELD_GET(MTL_LATENCY_LEVEL_ODD_MASK, val);
> -
> -	adjust_wm_latency(i915, wm, max_level, 6);
> -}
> -
> -static void skl_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
> -{
> -	int max_level =3D ilk_wm_max_level(i915);
> -	int read_latency =3D DISPLAY_VER(i915) >=3D 12 ? 3 : 2;
> -	int mult =3D IS_DG2(i915) ? 2 : 1;
> -	u32 val;
> -	int ret;
> -
> -	/* read the first set of memory latencies[0:3] */
> -	val =3D 0; /* data0 to be programmed to 0 for first set */
> -	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> -	if (ret) {
> -		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> -		return;
> -	}
> -
> -	wm[0] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[1] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[2] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[3] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -
> -	/* read the second set of memory latencies[4:7] */
> -	val =3D 1; /* data0 to be programmed to 1 for second set */
> -	ret =3D snb_pcode_read(&i915->uncore, GEN9_PCODE_READ_MEM_LATENCY, &val=
, NULL);
> -	if (ret) {
> -		drm_err(&i915->drm, "SKL Mailbox read error =3D %d\n", ret);
> -		return;
> -	}
> -
> -	wm[4] =3D (val & GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[5] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[6] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -	wm[7] =3D ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
> -		 GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
> -
> -	adjust_wm_latency(i915, wm, max_level, read_latency);
> -}
> -
>  static void hsw_read_wm_latency(struct drm_i915_private *i915, u16 wm[])
>  {
>  	u64 sskpd;
> @@ -3039,9 +2893,8 @@ int ilk_wm_max_level(const struct drm_i915_private =
*dev_priv)
>  		return 2;
>  }
>=20=20
> -static void intel_print_wm_latency(struct drm_i915_private *dev_priv,
> -				   const char *name,
> -				   const u16 wm[])
> +void intel_print_wm_latency(struct drm_i915_private *dev_priv,
> +			    const char *name, const u16 wm[])
>  {
>  	int level, max_level =3D ilk_wm_max_level(dev_priv);
>=20=20
> @@ -3163,16 +3016,6 @@ static void ilk_setup_wm_latency(struct drm_i915_p=
rivate *dev_priv)
>  	}
>  }
>=20=20
> -static void skl_setup_wm_latency(struct drm_i915_private *dev_priv)
> -{
> -	if (DISPLAY_VER(dev_priv) >=3D 14)
> -		mtl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> -	else
> -		skl_read_wm_latency(dev_priv, dev_priv->display.wm.skl_latency);
> -
> -	intel_print_wm_latency(dev_priv, "Gen9 Plane", dev_priv->display.wm.skl=
_latency);
> -}
> -
>  static bool ilk_validate_pipe_wm(const struct drm_i915_private *dev_priv,
>  				 struct intel_pipe_wm *pipe_wm)
>  {
> @@ -3683,2765 +3526,6 @@ bool ilk_disable_lp_wm(struct drm_i915_private *=
dev_priv)
>  	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
>  }
>=20=20
> -u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv)
> -{
> -	u8 enabled_slices =3D 0;
> -	enum dbuf_slice slice;
> -
> -	for_each_dbuf_slice(dev_priv, slice) {
> -		if (intel_uncore_read(&dev_priv->uncore,
> -				      DBUF_CTL_S(slice)) & DBUF_POWER_STATE)
> -			enabled_slices |=3D BIT(slice);
> -	}
> -
> -	return enabled_slices;
> -}
> -
> -/*
> - * FIXME: We still don't have the proper code detect if we need to apply=
 the WA,
> - * so assume we'll always need it in order to avoid underruns.
> - */
> -static bool skl_needs_memory_bw_wa(struct drm_i915_private *dev_priv)
> -{
> -	return DISPLAY_VER(dev_priv) =3D=3D 9;
> -}
> -
> -static bool
> -intel_has_sagv(struct drm_i915_private *dev_priv)
> -{
> -	return DISPLAY_VER(dev_priv) >=3D 9 && !IS_LP(dev_priv) &&
> -		dev_priv->display.sagv.status !=3D I915_SAGV_NOT_CONTROLLED;
> -}
> -
> -static u32
> -intel_sagv_block_time(struct drm_i915_private *dev_priv)
> -{
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		u32 val =3D 0;
> -		int ret;
> -
> -		ret =3D snb_pcode_read(&dev_priv->uncore,
> -				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
> -				     &val, NULL);
> -		if (ret) {
> -			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
> -			return 0;
> -		}
> -
> -		return val;
> -	} else if (DISPLAY_VER(dev_priv) =3D=3D 11) {
> -		return 10;
> -	} else if (DISPLAY_VER(dev_priv) =3D=3D 9 && !IS_LP(dev_priv)) {
> -		return 30;
> -	} else {
> -		return 0;
> -	}
> -}
> -
> -static void intel_sagv_init(struct drm_i915_private *i915)
> -{
> -	if (!intel_has_sagv(i915))
> -		i915->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> -
> -	/*
> -	 * Probe to see if we have working SAGV control.
> -	 * For icl+ this was already determined by intel_bw_init_hw().
> -	 */
> -	if (DISPLAY_VER(i915) < 11)
> -		skl_sagv_disable(i915);
> -
> -	drm_WARN_ON(&i915->drm, i915->display.sagv.status =3D=3D I915_SAGV_UNKN=
OWN);
> -
> -	i915->display.sagv.block_time_us =3D intel_sagv_block_time(i915);
> -
> -	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: =
%u us\n",
> -		    str_yes_no(intel_has_sagv(i915)), i915->display.sagv.block_time_us=
);
> -
> -	/* avoid overflow when adding with wm0 latency/etc. */
> -	if (drm_WARN(&i915->drm, i915->display.sagv.block_time_us > U16_MAX,
> -		     "Excessive SAGV block time %u, ignoring\n",
> -		     i915->display.sagv.block_time_us))
> -		i915->display.sagv.block_time_us =3D 0;
> -
> -	if (!intel_has_sagv(i915))
> -		i915->display.sagv.block_time_us =3D 0;
> -}
> -
> -/*
> - * SAGV dynamically adjusts the system agent voltage and clock frequenci=
es
> - * depending on power and performance requirements. The display engine a=
ccess
> - * to system memory is blocked during the adjustment time. Because of the
> - * blocking time, having this enabled can cause full system hangs and/or=
 pipe
> - * underruns if we don't meet all of the following requirements:
> - *
> - *  - <=3D 1 pipe enabled
> - *  - All planes can enable watermarks for latencies >=3D SAGV engine bl=
ock time
> - *  - We're not using an interlaced display configuration
> - */
> -static void skl_sagv_enable(struct drm_i915_private *dev_priv)
> -{
> -	int ret;
> -
> -	if (!intel_has_sagv(dev_priv))
> -		return;
> -
> -	if (dev_priv->display.sagv.status =3D=3D I915_SAGV_ENABLED)
> -		return;
> -
> -	drm_dbg_kms(&dev_priv->drm, "Enabling SAGV\n");
> -	ret =3D snb_pcode_write(&dev_priv->uncore, GEN9_PCODE_SAGV_CONTROL,
> -			      GEN9_SAGV_ENABLE);
> -
> -	/* We don't need to wait for SAGV when enabling */
> -
> -	/*
> -	 * Some skl systems, pre-release machines in particular,
> -	 * don't actually have SAGV.
> -	 */
> -	if (IS_SKYLAKE(dev_priv) && ret =3D=3D -ENXIO) {
> -		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
> -		dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> -		return;
> -	} else if (ret < 0) {
> -		drm_err(&dev_priv->drm, "Failed to enable SAGV\n");
> -		return;
> -	}
> -
> -	dev_priv->display.sagv.status =3D I915_SAGV_ENABLED;
> -}
> -
> -static void skl_sagv_disable(struct drm_i915_private *dev_priv)
> -{
> -	int ret;
> -
> -	if (!intel_has_sagv(dev_priv))
> -		return;
> -
> -	if (dev_priv->display.sagv.status =3D=3D I915_SAGV_DISABLED)
> -		return;
> -
> -	drm_dbg_kms(&dev_priv->drm, "Disabling SAGV\n");
> -	/* bspec says to keep retrying for at least 1 ms */
> -	ret =3D skl_pcode_request(&dev_priv->uncore, GEN9_PCODE_SAGV_CONTROL,
> -				GEN9_SAGV_DISABLE,
> -				GEN9_SAGV_IS_DISABLED, GEN9_SAGV_IS_DISABLED,
> -				1);
> -	/*
> -	 * Some skl systems, pre-release machines in particular,
> -	 * don't actually have SAGV.
> -	 */
> -	if (IS_SKYLAKE(dev_priv) && ret =3D=3D -ENXIO) {
> -		drm_dbg(&dev_priv->drm, "No SAGV found on system, ignoring\n");
> -		dev_priv->display.sagv.status =3D I915_SAGV_NOT_CONTROLLED;
> -		return;
> -	} else if (ret < 0) {
> -		drm_err(&dev_priv->drm, "Failed to disable SAGV (%d)\n", ret);
> -		return;
> -	}
> -
> -	dev_priv->display.sagv.status =3D I915_SAGV_DISABLED;
> -}
> -
> -static void skl_sagv_pre_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_bw_state *new_bw_state =3D
> -		intel_atomic_get_new_bw_state(state);
> -
> -	if (!new_bw_state)
> -		return;
> -
> -	if (!intel_can_enable_sagv(i915, new_bw_state))
> -		skl_sagv_disable(i915);
> -}
> -
> -static void skl_sagv_post_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_bw_state *new_bw_state =3D
> -		intel_atomic_get_new_bw_state(state);
> -
> -	if (!new_bw_state)
> -		return;
> -
> -	if (intel_can_enable_sagv(i915, new_bw_state))
> -		skl_sagv_enable(i915);
> -}
> -
> -static void icl_sagv_pre_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_bw_state *old_bw_state =3D
> -		intel_atomic_get_old_bw_state(state);
> -	const struct intel_bw_state *new_bw_state =3D
> -		intel_atomic_get_new_bw_state(state);
> -	u16 old_mask, new_mask;
> -
> -	if (!new_bw_state)
> -		return;
> -
> -	old_mask =3D old_bw_state->qgv_points_mask;
> -	new_mask =3D old_bw_state->qgv_points_mask | new_bw_state->qgv_points_m=
ask;
> -
> -	if (old_mask =3D=3D new_mask)
> -		return;
> -
> -	WARN_ON(!new_bw_state->base.changed);
> -
> -	drm_dbg_kms(&dev_priv->drm, "Restricting QGV points: 0x%x -> 0x%x\n",
> -		    old_mask, new_mask);
> -
> -	/*
> -	 * Restrict required qgv points before updating the configuration.
> -	 * According to BSpec we can't mask and unmask qgv points at the same
> -	 * time. Also masking should be done before updating the configuration
> -	 * and unmasking afterwards.
> -	 */
> -	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> -}
> -
> -static void icl_sagv_post_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_bw_state *old_bw_state =3D
> -		intel_atomic_get_old_bw_state(state);
> -	const struct intel_bw_state *new_bw_state =3D
> -		intel_atomic_get_new_bw_state(state);
> -	u16 old_mask, new_mask;
> -
> -	if (!new_bw_state)
> -		return;
> -
> -	old_mask =3D old_bw_state->qgv_points_mask | new_bw_state->qgv_points_m=
ask;
> -	new_mask =3D new_bw_state->qgv_points_mask;
> -
> -	if (old_mask =3D=3D new_mask)
> -		return;
> -
> -	WARN_ON(!new_bw_state->base.changed);
> -
> -	drm_dbg_kms(&dev_priv->drm, "Relaxing QGV points: 0x%x -> 0x%x\n",
> -		    old_mask, new_mask);
> -
> -	/*
> -	 * Allow required qgv points after updating the configuration.
> -	 * According to BSpec we can't mask and unmask qgv points at the same
> -	 * time. Also masking should be done before updating the configuration
> -	 * and unmasking afterwards.
> -	 */
> -	icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> -}
> -
> -void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -
> -	/*
> -	 * Just return if we can't control SAGV or don't have it.
> -	 * This is different from situation when we have SAGV but just can't
> -	 * afford it due to DBuf limitation - in case if SAGV is completely
> -	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> -	 * as it will throw an error. So have to check it here.
> -	 */
> -	if (!intel_has_sagv(i915))
> -		return;
> -
> -	if (DISPLAY_VER(i915) >=3D 11)
> -		icl_sagv_pre_plane_update(state);
> -	else
> -		skl_sagv_pre_plane_update(state);
> -}
> -
> -void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -
> -	/*
> -	 * Just return if we can't control SAGV or don't have it.
> -	 * This is different from situation when we have SAGV but just can't
> -	 * afford it due to DBuf limitation - in case if SAGV is completely
> -	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> -	 * as it will throw an error. So have to check it here.
> -	 */
> -	if (!intel_has_sagv(i915))
> -		return;
> -
> -	if (DISPLAY_VER(i915) >=3D 11)
> -		icl_sagv_post_plane_update(state);
> -	else
> -		skl_sagv_post_plane_update(state);
> -}
> -
> -static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum plane_id plane_id;
> -	int max_level =3D INT_MAX;
> -
> -	if (!intel_has_sagv(dev_priv))
> -		return false;
> -
> -	if (!crtc_state->hw.active)
> -		return true;
> -
> -	if (crtc_state->hw.pipe_mode.flags & DRM_MODE_FLAG_INTERLACE)
> -		return false;
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> -		int level;
> -
> -		/* Skip this plane if it's not enabled */
> -		if (!wm->wm[0].enable)
> -			continue;
> -
> -		/* Find the highest enabled wm level for this plane */
> -		for (level =3D ilk_wm_max_level(dev_priv);
> -		     !wm->wm[level].enable; --level)
> -		     { }
> -
> -		/* Highest common enabled wm level for all planes */
> -		max_level =3D min(level, max_level);
> -	}
> -
> -	/* No enabled planes? */
> -	if (max_level =3D=3D INT_MAX)
> -		return true;
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -		/*
> -		 * All enabled planes must have enabled a common wm level that
> -		 * can tolerate memory latencies higher than sagv_block_time_us
> -		 */
> -		if (wm->wm[0].enable && !wm->wm[max_level].can_sagv)
> -			return false;
> -	}
> -
> -	return true;
> -}
> -
> -static bool tgl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	enum plane_id plane_id;
> -
> -	if (!crtc_state->hw.active)
> -		return true;
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -		if (wm->wm[0].enable && !wm->sagv.wm0.enable)
> -			return false;
> -	}
> -
> -	return true;
> -}
> -
> -static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 12)
> -		return tgl_crtc_can_enable_sagv(crtc_state);
> -	else
> -		return skl_crtc_can_enable_sagv(crtc_state);
> -}
> -
> -bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> -			   const struct intel_bw_state *bw_state)
> -{
> -	if (DISPLAY_VER(dev_priv) < 11 &&
> -	    bw_state->active_pipes && !is_power_of_2(bw_state->active_pipes))
> -		return false;
> -
> -	return bw_state->pipe_sagv_reject =3D=3D 0;
> -}
> -
> -static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	int ret;
> -	struct intel_crtc *crtc;
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_bw_state *new_bw_state =3D NULL;
> -	const struct intel_bw_state *old_bw_state =3D NULL;
> -	int i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc,
> -					 new_crtc_state, i) {
> -		new_bw_state =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(new_bw_state))
> -			return PTR_ERR(new_bw_state);
> -
> -		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> -
> -		if (intel_crtc_can_enable_sagv(new_crtc_state))
> -			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> -		else
> -			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> -	}
> -
> -	if (!new_bw_state)
> -		return 0;
> -
> -	new_bw_state->active_pipes =3D
> -		intel_calc_active_pipes(state, old_bw_state->active_pipes);
> -
> -	if (new_bw_state->active_pipes !=3D old_bw_state->active_pipes) {
> -		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=3D
> -	    intel_can_enable_sagv(dev_priv, old_bw_state)) {
> -		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> -		if (ret)
> -			return ret;
> -	} else if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_=
reject) {
> -		ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	for_each_new_intel_crtc_in_state(state, crtc,
> -					 new_crtc_state, i) {
> -		struct skl_pipe_wm *pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> -
> -		/*
> -		 * We store use_sagv_wm in the crtc state rather than relying on
> -		 * that bw state since we have no convenient way to get at the
> -		 * latter from the plane commit hooks (especially in the legacy
> -		 * cursor case)
> -		 */
> -		pipe_wm->use_sagv_wm =3D !HAS_HW_SAGV_WM(dev_priv) &&
> -			DISPLAY_VER(dev_priv) >=3D 12 &&
> -			intel_can_enable_sagv(dev_priv, new_bw_state);
> -	}
> -
> -	return 0;
> -}
> -
> -static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
> -			      u16 start, u16 end)
> -{
> -	entry->start =3D start;
> -	entry->end =3D end;
> -
> -	return end;
> -}
> -
> -static int intel_dbuf_slice_size(struct drm_i915_private *dev_priv)
> -{
> -	return INTEL_INFO(dev_priv)->display.dbuf.size /
> -		hweight8(INTEL_INFO(dev_priv)->display.dbuf.slice_mask);
> -}
> -
> -static void
> -skl_ddb_entry_for_slices(struct drm_i915_private *dev_priv, u8 slice_mas=
k,
> -			 struct skl_ddb_entry *ddb)
> -{
> -	int slice_size =3D intel_dbuf_slice_size(dev_priv);
> -
> -	if (!slice_mask) {
> -		ddb->start =3D 0;
> -		ddb->end =3D 0;
> -		return;
> -	}
> -
> -	ddb->start =3D (ffs(slice_mask) - 1) * slice_size;
> -	ddb->end =3D fls(slice_mask) * slice_size;
> -
> -	WARN_ON(ddb->start >=3D ddb->end);
> -	WARN_ON(ddb->end > INTEL_INFO(dev_priv)->display.dbuf.size);
> -}
> -
> -static unsigned int mbus_ddb_offset(struct drm_i915_private *i915, u8 sl=
ice_mask)
> -{
> -	struct skl_ddb_entry ddb;
> -
> -	if (slice_mask & (BIT(DBUF_S1) | BIT(DBUF_S2)))
> -		slice_mask =3D BIT(DBUF_S1);
> -	else if (slice_mask & (BIT(DBUF_S3) | BIT(DBUF_S4)))
> -		slice_mask =3D BIT(DBUF_S3);
> -
> -	skl_ddb_entry_for_slices(i915, slice_mask, &ddb);
> -
> -	return ddb.start;
> -}
> -
> -u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> -			    const struct skl_ddb_entry *entry)
> -{
> -	int slice_size =3D intel_dbuf_slice_size(dev_priv);
> -	enum dbuf_slice start_slice, end_slice;
> -	u8 slice_mask =3D 0;
> -
> -	if (!skl_ddb_entry_size(entry))
> -		return 0;
> -
> -	start_slice =3D entry->start / slice_size;
> -	end_slice =3D (entry->end - 1) / slice_size;
> -
> -	/*
> -	 * Per plane DDB entry can in a really worst case be on multiple slices
> -	 * but single entry is anyway contigious.
> -	 */
> -	while (start_slice <=3D end_slice) {
> -		slice_mask |=3D BIT(start_slice);
> -		start_slice++;
> -	}
> -
> -	return slice_mask;
> -}
> -
> -static unsigned int intel_crtc_ddb_weight(const struct intel_crtc_state =
*crtc_state)
> -{
> -	const struct drm_display_mode *pipe_mode =3D &crtc_state->hw.pipe_mode;
> -	int hdisplay, vdisplay;
> -
> -	if (!crtc_state->hw.active)
> -		return 0;
> -
> -	/*
> -	 * Watermark/ddb requirement highly depends upon width of the
> -	 * framebuffer, So instead of allocating DDB equally among pipes
> -	 * distribute DDB based on resolution/width of the display.
> -	 */
> -	drm_mode_get_hv_timing(pipe_mode, &hdisplay, &vdisplay);
> -
> -	return hdisplay;
> -}
> -
> -static void intel_crtc_dbuf_weights(const struct intel_dbuf_state *dbuf_=
state,
> -				    enum pipe for_pipe,
> -				    unsigned int *weight_start,
> -				    unsigned int *weight_end,
> -				    unsigned int *weight_total)
> -{
> -	struct drm_i915_private *dev_priv =3D
> -		to_i915(dbuf_state->base.state->base.dev);
> -	enum pipe pipe;
> -
> -	*weight_start =3D 0;
> -	*weight_end =3D 0;
> -	*weight_total =3D 0;
> -
> -	for_each_pipe(dev_priv, pipe) {
> -		int weight =3D dbuf_state->weight[pipe];
> -
> -		/*
> -		 * Do not account pipes using other slice sets
> -		 * luckily as of current BSpec slice sets do not partially
> -		 * intersect(pipes share either same one slice or same slice set
> -		 * i.e no partial intersection), so it is enough to check for
> -		 * equality for now.
> -		 */
> -		if (dbuf_state->slices[pipe] !=3D dbuf_state->slices[for_pipe])
> -			continue;
> -
> -		*weight_total +=3D weight;
> -		if (pipe < for_pipe) {
> -			*weight_start +=3D weight;
> -			*weight_end +=3D weight;
> -		} else if (pipe =3D=3D for_pipe) {
> -			*weight_end +=3D weight;
> -		}
> -	}
> -}
> -
> -static int
> -skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crt=
c *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	unsigned int weight_total, weight_start, weight_end;
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -	struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	struct intel_crtc_state *crtc_state;
> -	struct skl_ddb_entry ddb_slices;
> -	enum pipe pipe =3D crtc->pipe;
> -	unsigned int mbus_offset =3D 0;
> -	u32 ddb_range_size;
> -	u32 dbuf_slice_mask;
> -	u32 start, end;
> -	int ret;
> -
> -	if (new_dbuf_state->weight[pipe] =3D=3D 0) {
> -		skl_ddb_entry_init(&new_dbuf_state->ddb[pipe], 0, 0);
> -		goto out;
> -	}
> -
> -	dbuf_slice_mask =3D new_dbuf_state->slices[pipe];
> -
> -	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
> -	mbus_offset =3D mbus_ddb_offset(dev_priv, dbuf_slice_mask);
> -	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
> -
> -	intel_crtc_dbuf_weights(new_dbuf_state, pipe,
> -				&weight_start, &weight_end, &weight_total);
> -
> -	start =3D ddb_range_size * weight_start / weight_total;
> -	end =3D ddb_range_size * weight_end / weight_total;
> -
> -	skl_ddb_entry_init(&new_dbuf_state->ddb[pipe],
> -			   ddb_slices.start - mbus_offset + start,
> -			   ddb_slices.start - mbus_offset + end);
> -
> -out:
> -	if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe] &&
> -	    skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
> -				&new_dbuf_state->ddb[pipe]))
> -		return 0;
> -
> -	ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> -	if (ret)
> -		return ret;
> -
> -	crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> -	if (IS_ERR(crtc_state))
> -		return PTR_ERR(crtc_state);
> -
> -	/*
> -	 * Used for checking overlaps, so we need absolute
> -	 * offsets instead of MBUS relative offsets.
> -	 */
> -	crtc_state->wm.skl.ddb.start =3D mbus_offset + new_dbuf_state->ddb[pipe=
].start;
> -	crtc_state->wm.skl.ddb.end =3D mbus_offset + new_dbuf_state->ddb[pipe].=
end;
> -
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[CRTC:%d:%s] dbuf slices 0x%x -> 0x%x, ddb (%d - %d) -> (%d - %d)=
, active pipes 0x%x -> 0x%x\n",
> -		    crtc->base.base.id, crtc->base.name,
> -		    old_dbuf_state->slices[pipe], new_dbuf_state->slices[pipe],
> -		    old_dbuf_state->ddb[pipe].start, old_dbuf_state->ddb[pipe].end,
> -		    new_dbuf_state->ddb[pipe].start, new_dbuf_state->ddb[pipe].end,
> -		    old_dbuf_state->active_pipes, new_dbuf_state->active_pipes);
> -
> -	return 0;
> -}
> -
> -static int skl_compute_wm_params(const struct intel_crtc_state *crtc_sta=
te,
> -				 int width, const struct drm_format_info *format,
> -				 u64 modifier, unsigned int rotation,
> -				 u32 plane_pixel_rate, struct skl_wm_params *wp,
> -				 int color_plane);
> -
> -static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
> -				 struct intel_plane *plane,
> -				 int level,
> -				 unsigned int latency,
> -				 const struct skl_wm_params *wp,
> -				 const struct skl_wm_level *result_prev,
> -				 struct skl_wm_level *result /* out */);
> -
> -static unsigned int
> -skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
> -		      int num_active)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(crtc_state->uapi.crtc->cur=
sor);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -	struct skl_wm_level wm =3D {};
> -	int ret, min_ddb_alloc =3D 0;
> -	struct skl_wm_params wp;
> -
> -	ret =3D skl_compute_wm_params(crtc_state, 256,
> -				    drm_format_info(DRM_FORMAT_ARGB8888),
> -				    DRM_FORMAT_MOD_LINEAR,
> -				    DRM_MODE_ROTATE_0,
> -				    crtc_state->pixel_rate, &wp, 0);
> -	drm_WARN_ON(&dev_priv->drm, ret);
> -
> -	for (level =3D 0; level <=3D max_level; level++) {
> -		unsigned int latency =3D dev_priv->display.wm.skl_latency[level];
> -
> -		skl_compute_plane_wm(crtc_state, plane, level, latency, &wp, &wm, &wm);
> -		if (wm.min_ddb_alloc =3D=3D U16_MAX)
> -			break;
> -
> -		min_ddb_alloc =3D wm.min_ddb_alloc;
> -	}
> -
> -	return max(num_active =3D=3D 1 ? 32 : 8, min_ddb_alloc);
> -}
> -
> -static void skl_ddb_entry_init_from_hw(struct skl_ddb_entry *entry, u32 =
reg)
> -{
> -	skl_ddb_entry_init(entry,
> -			   REG_FIELD_GET(PLANE_BUF_START_MASK, reg),
> -			   REG_FIELD_GET(PLANE_BUF_END_MASK, reg));
> -	if (entry->end)
> -		entry->end++;
> -}
> -
> -static void
> -skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
> -			   const enum pipe pipe,
> -			   const enum plane_id plane_id,
> -			   struct skl_ddb_entry *ddb,
> -			   struct skl_ddb_entry *ddb_y)
> -{
> -	u32 val;
> -
> -	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
> -	if (plane_id =3D=3D PLANE_CURSOR) {
> -		val =3D intel_uncore_read(&dev_priv->uncore, CUR_BUF_CFG(pipe));
> -		skl_ddb_entry_init_from_hw(ddb, val);
> -		return;
> -	}
> -
> -	val =3D intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_=
id));
> -	skl_ddb_entry_init_from_hw(ddb, val);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11)
> -		return;
> -
> -	val =3D intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, p=
lane_id));
> -	skl_ddb_entry_init_from_hw(ddb_y, val);
> -}
> -
> -static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
> -				      struct skl_ddb_entry *ddb,
> -				      struct skl_ddb_entry *ddb_y)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum intel_display_power_domain power_domain;
> -	enum pipe pipe =3D crtc->pipe;
> -	intel_wakeref_t wakeref;
> -	enum plane_id plane_id;
> -
> -	power_domain =3D POWER_DOMAIN_PIPE(pipe);
> -	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
> -	if (!wakeref)
> -		return;
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id)
> -		skl_ddb_get_hw_plane_state(dev_priv, pipe,
> -					   plane_id,
> -					   &ddb[plane_id],
> -					   &ddb_y[plane_id]);
> -
> -	intel_display_power_put(dev_priv, power_domain, wakeref);
> -}
> -
> -struct dbuf_slice_conf_entry {
> -	u8 active_pipes;
> -	u8 dbuf_mask[I915_MAX_PIPES];
> -	bool join_mbus;
> -};
> -
> -/*
> - * Table taken from Bspec 12716
> - * Pipes do have some preferred DBuf slice affinity,
> - * plus there are some hardcoded requirements on how
> - * those should be distributed for multipipe scenarios.
> - * For more DBuf slices algorithm can get even more messy
> - * and less readable, so decided to use a table almost
> - * as is from BSpec itself - that way it is at least easier
> - * to compare, change and check.
> - */
> -static const struct dbuf_slice_conf_entry icl_allowed_dbufs[] =3D
> -/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> -{
> -	{
> -		.active_pipes =3D BIT(PIPE_A),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{}
> -};
> -
> -/*
> - * Table taken from Bspec 49255
> - * Pipes do have some preferred DBuf slice affinity,
> - * plus there are some hardcoded requirements on how
> - * those should be distributed for multipipe scenarios.
> - * For more DBuf slices algorithm can get even more messy
> - * and less readable, so decided to use a table almost
> - * as is from BSpec itself - that way it is at least easier
> - * to compare, change and check.
> - */
> -static const struct dbuf_slice_conf_entry tgl_allowed_dbufs[] =3D
> -/* Autogenerated with igt/tools/intel_dbuf_map tool: */
> -{
> -	{
> -		.active_pipes =3D BIT(PIPE_A),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S2),
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S2) | BIT(DBUF_S1),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_D] =3D BIT(DBUF_S2) | BIT(DBUF_S1),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S1),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S1),
> -			[PIPE_C] =3D BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{}
> -};
> -
> -static const struct dbuf_slice_conf_entry dg2_allowed_dbufs[] =3D {
> -	{
> -		.active_pipes =3D BIT(PIPE_A),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S3),
> -			[PIPE_D] =3D BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3),
> -			[PIPE_D] =3D BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3),
> -			[PIPE_D] =3D BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1),
> -			[PIPE_B] =3D BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3),
> -			[PIPE_D] =3D BIT(DBUF_S4),
> -		},
> -	},
> -	{}
> -};
> -
> -static const struct dbuf_slice_conf_entry adlp_allowed_dbufs[] =3D {
> -	/*
> -	 * Keep the join_mbus cases first so check_mbus_joined()
> -	 * will prefer them over the !join_mbus cases.
> -	 */
> -	{
> -		.active_pipes =3D BIT(PIPE_A),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
> -		},
> -		.join_mbus =3D true,
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) | BIT(DBUF_S4=
),
> -		},
> -		.join_mbus =3D true,
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -		.join_mbus =3D false,
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -		.join_mbus =3D false,
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> -		.dbuf_mask =3D {
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{
> -		.active_pipes =3D BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D=
),
> -		.dbuf_mask =3D {
> -			[PIPE_A] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -			[PIPE_B] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_C] =3D BIT(DBUF_S3) | BIT(DBUF_S4),
> -			[PIPE_D] =3D BIT(DBUF_S1) | BIT(DBUF_S2),
> -		},
> -	},
> -	{}
> -
> -};
> -
> -static bool check_mbus_joined(u8 active_pipes,
> -			      const struct dbuf_slice_conf_entry *dbuf_slices)
> -{
> -	int i;
> -
> -	for (i =3D 0; dbuf_slices[i].active_pipes !=3D 0; i++) {
> -		if (dbuf_slices[i].active_pipes =3D=3D active_pipes)
> -			return dbuf_slices[i].join_mbus;
> -	}
> -	return false;
> -}
> -
> -static bool adlp_check_mbus_joined(u8 active_pipes)
> -{
> -	return check_mbus_joined(active_pipes, adlp_allowed_dbufs);
> -}
> -
> -static u8 compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool join=
_mbus,
> -			      const struct dbuf_slice_conf_entry *dbuf_slices)
> -{
> -	int i;
> -
> -	for (i =3D 0; dbuf_slices[i].active_pipes !=3D 0; i++) {
> -		if (dbuf_slices[i].active_pipes =3D=3D active_pipes &&
> -		    dbuf_slices[i].join_mbus =3D=3D join_mbus)
> -			return dbuf_slices[i].dbuf_mask[pipe];
> -	}
> -	return 0;
> -}
> -
> -/*
> - * This function finds an entry with same enabled pipe configuration and
> - * returns correspondent DBuf slice mask as stated in BSpec for particul=
ar
> - * platform.
> - */
> -static u8 icl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> -{
> -	/*
> -	 * FIXME: For ICL this is still a bit unclear as prev BSpec revision
> -	 * required calculating "pipe ratio" in order to determine
> -	 * if one or two slices can be used for single pipe configurations
> -	 * as additional constraint to the existing table.
> -	 * However based on recent info, it should be not "pipe ratio"
> -	 * but rather ratio between pixel_rate and cdclk with additional
> -	 * constants, so for now we are using only table until this is
> -	 * clarified. Also this is the reason why crtc_state param is
> -	 * still here - we will need it once those additional constraints
> -	 * pop up.
> -	 */
> -	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> -				   icl_allowed_dbufs);
> -}
> -
> -static u8 tgl_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> -{
> -	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> -				   tgl_allowed_dbufs);
> -}
> -
> -static u8 adlp_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool=
 join_mbus)
> -{
> -	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> -				   adlp_allowed_dbufs);
> -}
> -
> -static u8 dg2_compute_dbuf_slices(enum pipe pipe, u8 active_pipes, bool =
join_mbus)
> -{
> -	return compute_dbuf_slices(pipe, active_pipes, join_mbus,
> -				   dg2_allowed_dbufs);
> -}
> -
> -static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc, u8 active_pip=
es, bool join_mbus)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -
> -	if (IS_DG2(dev_priv))
> -		return dg2_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -	else if (DISPLAY_VER(dev_priv) >=3D 13)
> -		return adlp_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -	else if (DISPLAY_VER(dev_priv) =3D=3D 12)
> -		return tgl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -	else if (DISPLAY_VER(dev_priv) =3D=3D 11)
> -		return icl_compute_dbuf_slices(pipe, active_pipes, join_mbus);
> -	/*
> -	 * For anything else just return one slice yet.
> -	 * Should be extended for other platforms.
> -	 */
> -	return active_pipes & BIT(pipe) ? BIT(DBUF_S1) : 0;
> -}
> -
> -static bool
> -use_minimal_wm0_only(const struct intel_crtc_state *crtc_state,
> -		     struct intel_plane *plane)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -
> -	return DISPLAY_VER(i915) >=3D 13 &&
> -	       crtc_state->uapi.async_flip &&
> -	       plane->async_flip;
> -}
> -
> -static u64
> -skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	enum plane_id plane_id;
> -	u64 data_rate =3D 0;
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		if (plane_id =3D=3D PLANE_CURSOR)
> -			continue;
> -
> -		data_rate +=3D crtc_state->rel_data_rate[plane_id];
> -
> -		if (DISPLAY_VER(i915) < 11)
> -			data_rate +=3D crtc_state->rel_data_rate_y[plane_id];
> -	}
> -
> -	return data_rate;
> -}
> -
> -static const struct skl_wm_level *
> -skl_plane_wm_level(const struct skl_pipe_wm *pipe_wm,
> -		   enum plane_id plane_id,
> -		   int level)
> -{
> -	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -	if (level =3D=3D 0 && pipe_wm->use_sagv_wm)
> -		return &wm->sagv.wm0;
> -
> -	return &wm->wm[level];
> -}
> -
> -static const struct skl_wm_level *
> -skl_plane_trans_wm(const struct skl_pipe_wm *pipe_wm,
> -		   enum plane_id plane_id)
> -{
> -	const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -	if (pipe_wm->use_sagv_wm)
> -		return &wm->sagv.trans_wm;
> -
> -	return &wm->trans_wm;
> -}
> -
> -/*
> - * We only disable the watermarks for each plane if
> - * they exceed the ddb allocation of said plane. This
> - * is done so that we don't end up touching cursor
> - * watermarks needlessly when some other plane reduces
> - * our max possible watermark level.
> - *
> - * Bspec has this to say about the PLANE_WM enable bit:
> - * "All the watermarks at this level for all enabled
> - *  planes must be enabled before the level will be used."
> - * So this is actually safe to do.
> - */
> -static void
> -skl_check_wm_level(struct skl_wm_level *wm, const struct skl_ddb_entry *=
ddb)
> -{
> -	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb))
> -		memset(wm, 0, sizeof(*wm));
> -}
> -
> -static void
> -skl_check_nv12_wm_level(struct skl_wm_level *wm, struct skl_wm_level *uv=
_wm,
> -			const struct skl_ddb_entry *ddb_y, const struct skl_ddb_entry *ddb)
> -{
> -	if (wm->min_ddb_alloc > skl_ddb_entry_size(ddb_y) ||
> -	    uv_wm->min_ddb_alloc > skl_ddb_entry_size(ddb)) {
> -		memset(wm, 0, sizeof(*wm));
> -		memset(uv_wm, 0, sizeof(*uv_wm));
> -	}
> -}
> -
> -static bool icl_need_wm1_wa(struct drm_i915_private *i915,
> -			    enum plane_id plane_id)
> -{
> -	/*
> -	 * Wa_1408961008:icl, ehl
> -	 * Wa_14012656716:tgl, adl
> -	 * Underruns with WM1+ disabled
> -	 */
> -	return DISPLAY_VER(i915) =3D=3D 11 ||
> -	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id =3D=3D PLANE_CURSOR);
> -}
> -
> -struct skl_plane_ddb_iter {
> -	u64 data_rate;
> -	u16 start, size;
> -};
> -
> -static void
> -skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
> -		       struct skl_ddb_entry *ddb,
> -		       const struct skl_wm_level *wm,
> -		       u64 data_rate)
> -{
> -	u16 size, extra =3D 0;
> -
> -	if (data_rate) {
> -		extra =3D min_t(u16, iter->size,
> -			      DIV64_U64_ROUND_UP(iter->size * data_rate,
> -						 iter->data_rate));
> -		iter->size -=3D extra;
> -		iter->data_rate -=3D data_rate;
> -	}
> -
> -	/*
> -	 * Keep ddb entry of all disabled planes explicitly zeroed
> -	 * to avoid skl_ddb_add_affected_planes() adding them to
> -	 * the state when other planes change their allocations.
> -	 */
> -	size =3D wm->min_ddb_alloc + extra;
> -	if (size)
> -		iter->start =3D skl_ddb_entry_init(ddb, iter->start,
> -						 iter->start + size);
> -}
> -
> -static int
> -skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> -			    struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	const struct intel_dbuf_state *dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	const struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
> -	int num_active =3D hweight8(dbuf_state->active_pipes);
> -	struct skl_plane_ddb_iter iter;
> -	enum plane_id plane_id;
> -	u16 cursor_size;
> -	u32 blocks;
> -	int level;
> -
> -	/* Clear the partitioning for disabled planes. */
> -	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state->wm.skl.plane=
_ddb));
> -	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.pla=
ne_ddb_y));
> -
> -	if (!crtc_state->hw.active)
> -		return 0;
> -
> -	iter.start =3D alloc->start;
> -	iter.size =3D skl_ddb_entry_size(alloc);
> -	if (iter.size =3D=3D 0)
> -		return 0;
> -
> -	/* Allocate fixed number of blocks for cursor. */
> -	cursor_size =3D skl_cursor_allocation(crtc_state, num_active);
> -	iter.size -=3D cursor_size;
> -	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> -			   alloc->end - cursor_size, alloc->end);
> -
> -	iter.data_rate =3D skl_total_relative_data_rate(crtc_state);
> -
> -	/*
> -	 * Find the highest watermark level for which we can satisfy the block
> -	 * requirement of active planes.
> -	 */
> -	for (level =3D ilk_wm_max_level(dev_priv); level >=3D 0; level--) {
> -		blocks =3D 0;
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			const struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -			if (plane_id =3D=3D PLANE_CURSOR) {
> -				const struct skl_ddb_entry *ddb =3D
> -					&crtc_state->wm.skl.plane_ddb[plane_id];
> -
> -				if (wm->wm[level].min_ddb_alloc > skl_ddb_entry_size(ddb)) {
> -					drm_WARN_ON(&dev_priv->drm,
> -						    wm->wm[level].min_ddb_alloc !=3D U16_MAX);
> -					blocks =3D U32_MAX;
> -					break;
> -				}
> -				continue;
> -			}
> -
> -			blocks +=3D wm->wm[level].min_ddb_alloc;
> -			blocks +=3D wm->uv_wm[level].min_ddb_alloc;
> -		}
> -
> -		if (blocks <=3D iter.size) {
> -			iter.size -=3D blocks;
> -			break;
> -		}
> -	}
> -
> -	if (level < 0) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Requested display configuration exceeds system DDB limitations");
> -		drm_dbg_kms(&dev_priv->drm, "minimum required %d/%d\n",
> -			    blocks, iter.size);
> -		return -EINVAL;
> -	}
> -
> -	/* avoid the WARN later when we don't allocate any extra DDB */
> -	if (iter.data_rate =3D=3D 0)
> -		iter.size =3D 0;
> -
> -	/*
> -	 * Grant each plane the blocks it requires at the highest achievable
> -	 * watermark level, plus an extra share of the leftover blocks
> -	 * proportional to its relative data rate.
> -	 */
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		struct skl_ddb_entry *ddb =3D
> -			&crtc_state->wm.skl.plane_ddb[plane_id];
> -		struct skl_ddb_entry *ddb_y =3D
> -			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		const struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -		if (plane_id =3D=3D PLANE_CURSOR)
> -			continue;
> -
> -		if (DISPLAY_VER(dev_priv) < 11 &&
> -		    crtc_state->nv12_planes & BIT(plane_id)) {
> -			skl_allocate_plane_ddb(&iter, ddb_y, &wm->wm[level],
> -					       crtc_state->rel_data_rate_y[plane_id]);
> -			skl_allocate_plane_ddb(&iter, ddb, &wm->uv_wm[level],
> -					       crtc_state->rel_data_rate[plane_id]);
> -		} else {
> -			skl_allocate_plane_ddb(&iter, ddb, &wm->wm[level],
> -					       crtc_state->rel_data_rate[plane_id]);
> -		}
> -	}
> -	drm_WARN_ON(&dev_priv->drm, iter.size !=3D 0 || iter.data_rate !=3D 0);
> -
> -	/*
> -	 * When we calculated watermark values we didn't know how high
> -	 * of a level we'd actually be able to hit, so we just marked
> -	 * all levels as "enabled."  Go back now and disable the ones
> -	 * that aren't actually possible.
> -	 */
> -	for (level++; level <=3D ilk_wm_max_level(dev_priv); level++) {
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			const struct skl_ddb_entry *ddb =3D
> -				&crtc_state->wm.skl.plane_ddb[plane_id];
> -			const struct skl_ddb_entry *ddb_y =3D
> -				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			struct skl_plane_wm *wm =3D
> -				&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -			if (DISPLAY_VER(dev_priv) < 11 &&
> -			    crtc_state->nv12_planes & BIT(plane_id))
> -				skl_check_nv12_wm_level(&wm->wm[level],
> -							&wm->uv_wm[level],
> -							ddb_y, ddb);
> -			else
> -				skl_check_wm_level(&wm->wm[level], ddb);
> -
> -			if (icl_need_wm1_wa(dev_priv, plane_id) &&
> -			    level =3D=3D 1 && wm->wm[0].enable) {
> -				wm->wm[level].blocks =3D wm->wm[0].blocks;
> -				wm->wm[level].lines =3D wm->wm[0].lines;
> -				wm->wm[level].ignore_lines =3D wm->wm[0].ignore_lines;
> -			}
> -		}
> -	}
> -
> -	/*
> -	 * Go back and disable the transition and SAGV watermarks
> -	 * if it turns out we don't have enough DDB blocks for them.
> -	 */
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		const struct skl_ddb_entry *ddb =3D
> -			&crtc_state->wm.skl.plane_ddb[plane_id];
> -		const struct skl_ddb_entry *ddb_y =3D
> -			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		struct skl_plane_wm *wm =3D
> -			&crtc_state->wm.skl.optimal.planes[plane_id];
> -
> -		if (DISPLAY_VER(dev_priv) < 11 &&
> -		    crtc_state->nv12_planes & BIT(plane_id)) {
> -			skl_check_wm_level(&wm->trans_wm, ddb_y);
> -		} else {
> -			WARN_ON(skl_ddb_entry_size(ddb_y));
> -
> -			skl_check_wm_level(&wm->trans_wm, ddb);
> -		}
> -
> -		skl_check_wm_level(&wm->sagv.wm0, ddb);
> -		skl_check_wm_level(&wm->sagv.trans_wm, ddb);
> -	}
> -
> -	return 0;
> -}
> -
> -/*
> - * The max latency should be 257 (max the punit can code is 255 and we a=
dd 2us
> - * for the read latency) and cpp should always be <=3D 8, so that
> - * should allow pixel_rate up to ~2 GHz which seems sufficient since max
> - * 2xcdclk is 1350 MHz and the pixel rate should never exceed that.
> -*/
> -static uint_fixed_16_16_t
> -skl_wm_method1(const struct drm_i915_private *dev_priv, u32 pixel_rate,
> -	       u8 cpp, u32 latency, u32 dbuf_block_size)
> -{
> -	u32 wm_intermediate_val;
> -	uint_fixed_16_16_t ret;
> -
> -	if (latency =3D=3D 0)
> -		return FP_16_16_MAX;
> -
> -	wm_intermediate_val =3D latency * pixel_rate * cpp;
> -	ret =3D div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> -		ret =3D add_fixed16_u32(ret, 1);
> -
> -	return ret;
> -}
> -
> -static uint_fixed_16_16_t
> -skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
> -	       uint_fixed_16_16_t plane_blocks_per_line)
> -{
> -	u32 wm_intermediate_val;
> -	uint_fixed_16_16_t ret;
> -
> -	if (latency =3D=3D 0)
> -		return FP_16_16_MAX;
> -
> -	wm_intermediate_val =3D latency * pixel_rate;
> -	wm_intermediate_val =3D DIV_ROUND_UP(wm_intermediate_val,
> -					   pipe_htotal * 1000);
> -	ret =3D mul_u32_fixed16(wm_intermediate_val, plane_blocks_per_line);
> -	return ret;
> -}
> -
> -static uint_fixed_16_16_t
> -intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	u32 pixel_rate;
> -	u32 crtc_htotal;
> -	uint_fixed_16_16_t linetime_us;
> -
> -	if (!crtc_state->hw.active)
> -		return u32_to_fixed16(0);
> -
> -	pixel_rate =3D crtc_state->pixel_rate;
> -
> -	if (drm_WARN_ON(&dev_priv->drm, pixel_rate =3D=3D 0))
> -		return u32_to_fixed16(0);
> -
> -	crtc_htotal =3D crtc_state->hw.pipe_mode.crtc_htotal;
> -	linetime_us =3D div_fixed16(crtc_htotal * 1000, pixel_rate);
> -
> -	return linetime_us;
> -}
> -
> -static int
> -skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> -		      int width, const struct drm_format_info *format,
> -		      u64 modifier, unsigned int rotation,
> -		      u32 plane_pixel_rate, struct skl_wm_params *wp,
> -		      int color_plane)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	u32 interm_pbpl;
> -
> -	/* only planar format has two planes */
> -	if (color_plane =3D=3D 1 &&
> -	    !intel_format_info_is_yuv_semiplanar(format, modifier)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Non planar format have single plane\n");
> -		return -EINVAL;
> -	}
> -
> -	wp->y_tiled =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> -		      modifier =3D=3D I915_FORMAT_MOD_4_TILED ||
> -		      modifier =3D=3D I915_FORMAT_MOD_Yf_TILED ||
> -		      modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> -		      modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -	wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
> -	wp->rc_surface =3D modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> -			 modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -	wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, modifier);
> -
> -	wp->width =3D width;
> -	if (color_plane =3D=3D 1 && wp->is_planar)
> -		wp->width /=3D 2;
> -
> -	wp->cpp =3D format->cpp[color_plane];
> -	wp->plane_pixel_rate =3D plane_pixel_rate;
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11 &&
> -	    modifier =3D=3D I915_FORMAT_MOD_Yf_TILED  && wp->cpp =3D=3D 1)
> -		wp->dbuf_block_size =3D 256;
> -	else
> -		wp->dbuf_block_size =3D 512;
> -
> -	if (drm_rotation_90_or_270(rotation)) {
> -		switch (wp->cpp) {
> -		case 1:
> -			wp->y_min_scanlines =3D 16;
> -			break;
> -		case 2:
> -			wp->y_min_scanlines =3D 8;
> -			break;
> -		case 4:
> -			wp->y_min_scanlines =3D 4;
> -			break;
> -		default:
> -			MISSING_CASE(wp->cpp);
> -			return -EINVAL;
> -		}
> -	} else {
> -		wp->y_min_scanlines =3D 4;
> -	}
> -
> -	if (skl_needs_memory_bw_wa(dev_priv))
> -		wp->y_min_scanlines *=3D 2;
> -
> -	wp->plane_bytes_per_line =3D wp->width * wp->cpp;
> -	if (wp->y_tiled) {
> -		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line *
> -					   wp->y_min_scanlines,
> -					   wp->dbuf_block_size);
> -
> -		if (DISPLAY_VER(dev_priv) >=3D 10)
> -			interm_pbpl++;
> -
> -		wp->plane_blocks_per_line =3D div_fixed16(interm_pbpl,
> -							wp->y_min_scanlines);
> -	} else {
> -		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> -					   wp->dbuf_block_size);
> -
> -		if (!wp->x_tiled || DISPLAY_VER(dev_priv) >=3D 10)
> -			interm_pbpl++;
> -
> -		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
> -	}
> -
> -	wp->y_tile_minimum =3D mul_u32_fixed16(wp->y_min_scanlines,
> -					     wp->plane_blocks_per_line);
> -
> -	wp->linetime_us =3D fixed16_to_u32_round_up(
> -					intel_get_linetime_us(crtc_state));
> -
> -	return 0;
> -}
> -
> -static int
> -skl_compute_plane_wm_params(const struct intel_crtc_state *crtc_state,
> -			    const struct intel_plane_state *plane_state,
> -			    struct skl_wm_params *wp, int color_plane)
> -{
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int width;
> -
> -	/*
> -	 * Src coordinates are already rotated by 270 degrees for
> -	 * the 90/270 degree plane rotation cases (to match the
> -	 * GTT mapping), hence no need to account for rotation here.
> -	 */
> -	width =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -
> -	return skl_compute_wm_params(crtc_state, width,
> -				     fb->format, fb->modifier,
> -				     plane_state->hw.rotation,
> -				     intel_plane_pixel_rate(crtc_state, plane_state),
> -				     wp, color_plane);
> -}
> -
> -static bool skl_wm_has_lines(struct drm_i915_private *dev_priv, int leve=
l)
> -{
> -	if (DISPLAY_VER(dev_priv) >=3D 10)
> -		return true;
> -
> -	/* The number of lines are ignored for the level 0 watermark. */
> -	return level > 0;
> -}
> -
> -static int skl_wm_max_lines(struct drm_i915_private *dev_priv)
> -{
> -	if (DISPLAY_VER(dev_priv) >=3D 13)
> -		return 255;
> -	else
> -		return 31;
> -}
> -
> -static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_sta=
te,
> -				 struct intel_plane *plane,
> -				 int level,
> -				 unsigned int latency,
> -				 const struct skl_wm_params *wp,
> -				 const struct skl_wm_level *result_prev,
> -				 struct skl_wm_level *result /* out */)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	uint_fixed_16_16_t method1, method2;
> -	uint_fixed_16_16_t selected_result;
> -	u32 blocks, lines, min_ddb_alloc =3D 0;
> -
> -	if (latency =3D=3D 0 ||
> -	    (use_minimal_wm0_only(crtc_state, plane) && level > 0)) {
> -		/* reject it */
> -		result->min_ddb_alloc =3D U16_MAX;
> -		return;
> -	}
> -
> -	/*
> -	 * WaIncreaseLatencyIPCEnabled: kbl,cfl
> -	 * Display WA #1141: kbl,cfl
> -	 */
> -	if ((IS_KABYLAKE(dev_priv) ||
> -	     IS_COFFEELAKE(dev_priv) ||
> -	     IS_COMETLAKE(dev_priv)) &&
> -	    dev_priv->ipc_enabled)
> -		latency +=3D 4;
> -
> -	if (skl_needs_memory_bw_wa(dev_priv) && wp->x_tiled)
> -		latency +=3D 15;
> -
> -	method1 =3D skl_wm_method1(dev_priv, wp->plane_pixel_rate,
> -				 wp->cpp, latency, wp->dbuf_block_size);
> -	method2 =3D skl_wm_method2(wp->plane_pixel_rate,
> -				 crtc_state->hw.pipe_mode.crtc_htotal,
> -				 latency,
> -				 wp->plane_blocks_per_line);
> -
> -	if (wp->y_tiled) {
> -		selected_result =3D max_fixed16(method2, wp->y_tile_minimum);
> -	} else {
> -		if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
> -		     wp->dbuf_block_size < 1) &&
> -		     (wp->plane_bytes_per_line / wp->dbuf_block_size < 1)) {
> -			selected_result =3D method2;
> -		} else if (latency >=3D wp->linetime_us) {
> -			if (DISPLAY_VER(dev_priv) =3D=3D 9)
> -				selected_result =3D min_fixed16(method1, method2);
> -			else
> -				selected_result =3D method2;
> -		} else {
> -			selected_result =3D method1;
> -		}
> -	}
> -
> -	blocks =3D fixed16_to_u32_round_up(selected_result) + 1;
> -	/*
> -	 * Lets have blocks at minimum equivalent to plane_blocks_per_line
> -	 * as there will be at minimum one line for lines configuration. This
> -	 * is a work around for FIFO underruns observed with resolutions like
> -	 * 4k 60 Hz in single channel DRAM configurations.
> -	 *
> -	 * As per the Bspec 49325, if the ddb allocation can hold at least
> -	 * one plane_blocks_per_line, we should have selected method2 in
> -	 * the above logic. Assuming that modern versions have enough dbuf
> -	 * and method2 guarantees blocks equivalent to at least 1 line,
> -	 * select the blocks as plane_blocks_per_line.
> -	 *
> -	 * TODO: Revisit the logic when we have better understanding on DRAM
> -	 * channels' impact on the level 0 memory latency and the relevant
> -	 * wm calculations.
> -	 */
> -	if (skl_wm_has_lines(dev_priv, level))
> -		blocks =3D max(blocks,
> -			     fixed16_to_u32_round_up(wp->plane_blocks_per_line));
> -	lines =3D div_round_up_fixed16(selected_result,
> -				     wp->plane_blocks_per_line);
> -
> -	if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> -		/* Display WA #1125: skl,bxt,kbl */
> -		if (level =3D=3D 0 && wp->rc_surface)
> -			blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> -
> -		/* Display WA #1126: skl,bxt,kbl */
> -		if (level >=3D 1 && level <=3D 7) {
> -			if (wp->y_tiled) {
> -				blocks +=3D fixed16_to_u32_round_up(wp->y_tile_minimum);
> -				lines +=3D wp->y_min_scanlines;
> -			} else {
> -				blocks++;
> -			}
> -
> -			/*
> -			 * Make sure result blocks for higher latency levels are
> -			 * atleast as high as level below the current level.
> -			 * Assumption in DDB algorithm optimization for special
> -			 * cases. Also covers Display WA #1125 for RC.
> -			 */
> -			if (result_prev->blocks > blocks)
> -				blocks =3D result_prev->blocks;
> -		}
> -	}
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		if (wp->y_tiled) {
> -			int extra_lines;
> -
> -			if (lines % wp->y_min_scanlines =3D=3D 0)
> -				extra_lines =3D wp->y_min_scanlines;
> -			else
> -				extra_lines =3D wp->y_min_scanlines * 2 -
> -					lines % wp->y_min_scanlines;
> -
> -			min_ddb_alloc =3D mul_round_up_u32_fixed16(lines + extra_lines,
> -								 wp->plane_blocks_per_line);
> -		} else {
> -			min_ddb_alloc =3D blocks + DIV_ROUND_UP(blocks, 10);
> -		}
> -	}
> -
> -	if (!skl_wm_has_lines(dev_priv, level))
> -		lines =3D 0;
> -
> -	if (lines > skl_wm_max_lines(dev_priv)) {
> -		/* reject it */
> -		result->min_ddb_alloc =3D U16_MAX;
> -		return;
> -	}
> -
> -	/*
> -	 * If lines is valid, assume we can use this watermark level
> -	 * for now.  We'll come back and disable it after we calculate the
> -	 * DDB allocation if it turns out we don't actually have enough
> -	 * blocks to satisfy it.
> -	 */
> -	result->blocks =3D blocks;
> -	result->lines =3D lines;
> -	/* Bspec says: value >=3D plane ddb allocation -> invalid, hence the +1=
 here */
> -	result->min_ddb_alloc =3D max(min_ddb_alloc, blocks) + 1;
> -	result->enable =3D true;
> -
> -	if (DISPLAY_VER(dev_priv) < 12 && dev_priv->display.sagv.block_time_us)
> -		result->can_sagv =3D latency >=3D dev_priv->display.sagv.block_time_us;
> -}
> -
> -static void
> -skl_compute_wm_levels(const struct intel_crtc_state *crtc_state,
> -		      struct intel_plane *plane,
> -		      const struct skl_wm_params *wm_params,
> -		      struct skl_wm_level *levels)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -	struct skl_wm_level *result_prev =3D &levels[0];
> -
> -	for (level =3D 0; level <=3D max_level; level++) {
> -		struct skl_wm_level *result =3D &levels[level];
> -		unsigned int latency =3D dev_priv->display.wm.skl_latency[level];
> -
> -		skl_compute_plane_wm(crtc_state, plane, level, latency,
> -				     wm_params, result_prev, result);
> -
> -		result_prev =3D result;
> -	}
> -}
> -
> -static void tgl_compute_sagv_wm(const struct intel_crtc_state *crtc_stat=
e,
> -				struct intel_plane *plane,
> -				const struct skl_wm_params *wm_params,
> -				struct skl_plane_wm *plane_wm)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -	struct skl_wm_level *sagv_wm =3D &plane_wm->sagv.wm0;
> -	struct skl_wm_level *levels =3D plane_wm->wm;
> -	unsigned int latency =3D 0;
> -
> -	if (dev_priv->display.sagv.block_time_us)
> -		latency =3D dev_priv->display.sagv.block_time_us + dev_priv->display.w=
m.skl_latency[0];
> -
> -	skl_compute_plane_wm(crtc_state, plane, 0, latency,
> -			     wm_params, &levels[0],
> -			     sagv_wm);
> -}
> -
> -static void skl_compute_transition_wm(struct drm_i915_private *dev_priv,
> -				      struct skl_wm_level *trans_wm,
> -				      const struct skl_wm_level *wm0,
> -				      const struct skl_wm_params *wp)
> -{
> -	u16 trans_min, trans_amount, trans_y_tile_min;
> -	u16 wm0_blocks, trans_offset, blocks;
> -
> -	/* Transition WM don't make any sense if ipc is disabled */
> -	if (!dev_priv->ipc_enabled)
> -		return;
> -
> -	/*
> -	 * WaDisableTWM:skl,kbl,cfl,bxt
> -	 * Transition WM are not recommended by HW team for GEN9
> -	 */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 9)
> -		return;
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11)
> -		trans_min =3D 4;
> -	else
> -		trans_min =3D 14;
> -
> -	/* Display WA #1140: glk,cnl */
> -	if (DISPLAY_VER(dev_priv) =3D=3D 10)
> -		trans_amount =3D 0;
> -	else
> -		trans_amount =3D 10; /* This is configurable amount */
> -
> -	trans_offset =3D trans_min + trans_amount;
> -
> -	/*
> -	 * The spec asks for Selected Result Blocks for wm0 (the real value),
> -	 * not Result Blocks (the integer value). Pay attention to the capital
> -	 * letters. The value wm_l0->blocks is actually Result Blocks, but
> -	 * since Result Blocks is the ceiling of Selected Result Blocks plus 1,
> -	 * and since we later will have to get the ceiling of the sum in the
> -	 * transition watermarks calculation, we can just pretend Selected
> -	 * Result Blocks is Result Blocks minus 1 and it should work for the
> -	 * current platforms.
> -	 */
> -	wm0_blocks =3D wm0->blocks - 1;
> -
> -	if (wp->y_tiled) {
> -		trans_y_tile_min =3D
> -			(u16)mul_round_up_u32_fixed16(2, wp->y_tile_minimum);
> -		blocks =3D max(wm0_blocks, trans_y_tile_min) + trans_offset;
> -	} else {
> -		blocks =3D wm0_blocks + trans_offset;
> -	}
> -	blocks++;
> -
> -	/*
> -	 * Just assume we can enable the transition watermark.  After
> -	 * computing the DDB we'll come back and disable it if that
> -	 * assumption turns out to be false.
> -	 */
> -	trans_wm->blocks =3D blocks;
> -	trans_wm->min_ddb_alloc =3D max_t(u16, wm0->min_ddb_alloc, blocks + 1);
> -	trans_wm->enable =3D true;
> -}
> -
> -static int skl_build_plane_wm_single(struct intel_crtc_state *crtc_state,
> -				     const struct intel_plane_state *plane_state,
> -				     struct intel_plane *plane, int color_plane)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane->id];
> -	struct skl_wm_params wm_params;
> -	int ret;
> -
> -	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> -					  &wm_params, color_plane);
> -	if (ret)
> -		return ret;
> -
> -	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->wm);
> -
> -	skl_compute_transition_wm(dev_priv, &wm->trans_wm,
> -				  &wm->wm[0], &wm_params);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		tgl_compute_sagv_wm(crtc_state, plane, &wm_params, wm);
> -
> -		skl_compute_transition_wm(dev_priv, &wm->sagv.trans_wm,
> -					  &wm->sagv.wm0, &wm_params);
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_build_plane_wm_uv(struct intel_crtc_state *crtc_state,
> -				 const struct intel_plane_state *plane_state,
> -				 struct intel_plane *plane)
> -{
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane->id];
> -	struct skl_wm_params wm_params;
> -	int ret;
> -
> -	wm->is_planar =3D true;
> -
> -	/* uv plane watermarks must also be validated for NV12/Planar */
> -	ret =3D skl_compute_plane_wm_params(crtc_state, plane_state,
> -					  &wm_params, 1);
> -	if (ret)
> -		return ret;
> -
> -	skl_compute_wm_levels(crtc_state, plane, &wm_params, wm->uv_wm);
> -
> -	return 0;
> -}
> -
> -static int skl_build_plane_wm(struct intel_crtc_state *crtc_state,
> -			      const struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	enum plane_id plane_id =3D plane->id;
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
> -	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret;
> -
> -	memset(wm, 0, sizeof(*wm));
> -
> -	if (!intel_wm_plane_visible(crtc_state, plane_state))
> -		return 0;
> -
> -	ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -					plane, 0);
> -	if (ret)
> -		return ret;
> -
> -	if (fb->format->is_yuv && fb->format->num_planes > 1) {
> -		ret =3D skl_build_plane_wm_uv(crtc_state, plane_state,
> -					    plane);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -static int icl_build_plane_wm(struct intel_crtc_state *crtc_state,
> -			      const struct intel_plane_state *plane_state)
> -{
> -	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	enum plane_id plane_id =3D plane->id;
> -	struct skl_plane_wm *wm =3D &crtc_state->wm.skl.raw.planes[plane_id];
> -	int ret;
> -
> -	/* Watermarks calculated in master */
> -	if (plane_state->planar_slave)
> -		return 0;
> -
> -	memset(wm, 0, sizeof(*wm));
> -
> -	if (plane_state->planar_linked_plane) {
> -		const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -
> -		drm_WARN_ON(&dev_priv->drm,
> -			    !intel_wm_plane_visible(crtc_state, plane_state));
> -		drm_WARN_ON(&dev_priv->drm, !fb->format->is_yuv ||
> -			    fb->format->num_planes =3D=3D 1);
> -
> -		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane_state->planar_linked_plane, 0);
> -		if (ret)
> -			return ret;
> -
> -		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane, 1);
> -		if (ret)
> -			return ret;
> -	} else if (intel_wm_plane_visible(crtc_state, plane_state)) {
> -		ret =3D skl_build_plane_wm_single(crtc_state, plane_state,
> -						plane, 0);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -static int skl_build_pipe_wm(struct intel_atomic_state *state,
> -			     struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_crtc_state *crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	const struct intel_plane_state *plane_state;
> -	struct intel_plane *plane;
> -	int ret, i;
> -
> -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> -		/*
> -		 * FIXME should perhaps check {old,new}_plane_crtc->hw.crtc
> -		 * instead but we don't populate that correctly for NV12 Y
> -		 * planes so for now hack this.
> -		 */
> -		if (plane->pipe !=3D crtc->pipe)
> -			continue;
> -
> -		if (DISPLAY_VER(dev_priv) >=3D 11)
> -			ret =3D icl_build_plane_wm(crtc_state, plane_state);
> -		else
> -			ret =3D skl_build_plane_wm(crtc_state, plane_state);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	crtc_state->wm.skl.optimal =3D crtc_state->wm.skl.raw;
> -
> -	return 0;
> -}
> -
> -static void skl_ddb_entry_write(struct drm_i915_private *dev_priv,
> -				i915_reg_t reg,
> -				const struct skl_ddb_entry *entry)
> -{
> -	if (entry->end)
> -		intel_de_write_fw(dev_priv, reg,
> -				  PLANE_BUF_END(entry->end - 1) |
> -				  PLANE_BUF_START(entry->start));
> -	else
> -		intel_de_write_fw(dev_priv, reg, 0);
> -}
> -
> -static void skl_write_wm_level(struct drm_i915_private *dev_priv,
> -			       i915_reg_t reg,
> -			       const struct skl_wm_level *level)
> -{
> -	u32 val =3D 0;
> -
> -	if (level->enable)
> -		val |=3D PLANE_WM_EN;
> -	if (level->ignore_lines)
> -		val |=3D PLANE_WM_IGNORE_LINES;
> -	val |=3D REG_FIELD_PREP(PLANE_WM_BLOCKS_MASK, level->blocks);
> -	val |=3D REG_FIELD_PREP(PLANE_WM_LINES_MASK, level->lines);
> -
> -	intel_de_write_fw(dev_priv, reg, val);
> -}
> -
> -void skl_write_plane_wm(struct intel_plane *plane,
> -			const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	const struct skl_ddb_entry *ddb =3D
> -		&crtc_state->wm.skl.plane_ddb[plane_id];
> -	const struct skl_ddb_entry *ddb_y =3D
> -		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -
> -	for (level =3D 0; level <=3D max_level; level++)
> -		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> -				   skl_plane_wm_level(pipe_wm, plane_id, level));
> -
> -	skl_write_wm_level(dev_priv, PLANE_WM_TRANS(pipe, plane_id),
> -			   skl_plane_trans_wm(pipe_wm, plane_id));
> -
> -	if (HAS_HW_SAGV_WM(dev_priv)) {
> -		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -		skl_write_wm_level(dev_priv, PLANE_WM_SAGV(pipe, plane_id),
> -				   &wm->sagv.wm0);
> -		skl_write_wm_level(dev_priv, PLANE_WM_SAGV_TRANS(pipe, plane_id),
> -				   &wm->sagv.trans_wm);
> -	}
> -
> -	skl_ddb_entry_write(dev_priv,
> -			    PLANE_BUF_CFG(pipe, plane_id), ddb);
> -
> -	if (DISPLAY_VER(dev_priv) < 11)
> -		skl_ddb_entry_write(dev_priv,
> -				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
> -}
> -
> -void skl_write_cursor_wm(struct intel_plane *plane,
> -			 const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -	enum plane_id plane_id =3D plane->id;
> -	enum pipe pipe =3D plane->pipe;
> -	const struct skl_pipe_wm *pipe_wm =3D &crtc_state->wm.skl.optimal;
> -	const struct skl_ddb_entry *ddb =3D
> -		&crtc_state->wm.skl.plane_ddb[plane_id];
> -
> -	for (level =3D 0; level <=3D max_level; level++)
> -		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> -				   skl_plane_wm_level(pipe_wm, plane_id, level));
> -
> -	skl_write_wm_level(dev_priv, CUR_WM_TRANS(pipe),
> -			   skl_plane_trans_wm(pipe_wm, plane_id));
> -
> -	if (HAS_HW_SAGV_WM(dev_priv)) {
> -		const struct skl_plane_wm *wm =3D &pipe_wm->planes[plane_id];
> -
> -		skl_write_wm_level(dev_priv, CUR_WM_SAGV(pipe),
> -				   &wm->sagv.wm0);
> -		skl_write_wm_level(dev_priv, CUR_WM_SAGV_TRANS(pipe),
> -				   &wm->sagv.trans_wm);
> -	}
> -
> -	skl_ddb_entry_write(dev_priv, CUR_BUF_CFG(pipe), ddb);
> -}
> -
> -static bool skl_wm_level_equals(const struct skl_wm_level *l1,
> -				const struct skl_wm_level *l2)
> -{
> -	return l1->enable =3D=3D l2->enable &&
> -		l1->ignore_lines =3D=3D l2->ignore_lines &&
> -		l1->lines =3D=3D l2->lines &&
> -		l1->blocks =3D=3D l2->blocks;
> -}
> -
> -static bool skl_plane_wm_equals(struct drm_i915_private *dev_priv,
> -				const struct skl_plane_wm *wm1,
> -				const struct skl_plane_wm *wm2)
> -{
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -
> -	for (level =3D 0; level <=3D max_level; level++) {
> -		/*
> -		 * We don't check uv_wm as the hardware doesn't actually
> -		 * use it. It only gets used for calculating the required
> -		 * ddb allocation.
> -		 */
> -		if (!skl_wm_level_equals(&wm1->wm[level], &wm2->wm[level]))
> -			return false;
> -	}
> -
> -	return skl_wm_level_equals(&wm1->trans_wm, &wm2->trans_wm) &&
> -		skl_wm_level_equals(&wm1->sagv.wm0, &wm2->sagv.wm0) &&
> -		skl_wm_level_equals(&wm1->sagv.trans_wm, &wm2->sagv.trans_wm);
> -}
> -
> -static bool skl_ddb_entries_overlap(const struct skl_ddb_entry *a,
> -				    const struct skl_ddb_entry *b)
> -{
> -	return a->start < b->end && b->start < a->end;
> -}
> -
> -static void skl_ddb_entry_union(struct skl_ddb_entry *a,
> -				const struct skl_ddb_entry *b)
> -{
> -	if (a->end && b->end) {
> -		a->start =3D min(a->start, b->start);
> -		a->end =3D max(a->end, b->end);
> -	} else if (b->end) {
> -		a->start =3D b->start;
> -		a->end =3D b->end;
> -	}
> -}
> -
> -bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> -				 const struct skl_ddb_entry *entries,
> -				 int num_entries, int ignore_idx)
> -{
> -	int i;
> -
> -	for (i =3D 0; i < num_entries; i++) {
> -		if (i !=3D ignore_idx &&
> -		    skl_ddb_entries_overlap(ddb, &entries[i]))
> -			return true;
> -	}
> -
> -	return false;
> -}
> -
> -static int
> -skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_stat=
e,
> -			    struct intel_crtc_state *new_crtc_state)
> -{
> -	struct intel_atomic_state *state =3D to_intel_atomic_state(new_crtc_sta=
te->uapi.state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(new_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_plane *plane;
> -
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -		struct intel_plane_state *plane_state;
> -		enum plane_id plane_id =3D plane->id;
> -
> -		if (skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb[plane_id],
> -					&new_crtc_state->wm.skl.plane_ddb[plane_id]) &&
> -		    skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb_y[plane_id],
> -					&new_crtc_state->wm.skl.plane_ddb_y[plane_id]))
> -			continue;
> -
> -		plane_state =3D intel_atomic_get_plane_state(state, plane);
> -		if (IS_ERR(plane_state))
> -			return PTR_ERR(plane_state);
> -
> -		new_crtc_state->update_planes |=3D BIT(plane_id);
> -	}
> -
> -	return 0;
> -}
> -
> -static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_=
state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(dbuf_state->base.state->b=
ase.dev);
> -	u8 enabled_slices;
> -	enum pipe pipe;
> -
> -	/*
> -	 * FIXME: For now we always enable slice S1 as per
> -	 * the Bspec display initialization sequence.
> -	 */
> -	enabled_slices =3D BIT(DBUF_S1);
> -
> -	for_each_pipe(dev_priv, pipe)
> -		enabled_slices |=3D dbuf_state->slices[pipe];
> -
> -	return enabled_slices;
> -}
> -
> -static int
> -skl_compute_ddb(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *old_dbuf_state;
> -	struct intel_dbuf_state *new_dbuf_state =3D NULL;
> -	const struct intel_crtc_state *old_crtc_state;
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc *crtc;
> -	int ret, i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> -		if (IS_ERR(new_dbuf_state))
> -			return PTR_ERR(new_dbuf_state);
> -
> -		old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -		break;
> -	}
> -
> -	if (!new_dbuf_state)
> -		return 0;
> -
> -	new_dbuf_state->active_pipes =3D
> -		intel_calc_active_pipes(state, old_dbuf_state->active_pipes);
> -
> -	if (old_dbuf_state->active_pipes !=3D new_dbuf_state->active_pipes) {
> -		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	if (HAS_MBUS_JOINING(dev_priv))
> -		new_dbuf_state->joined_mbus =3D
> -			adlp_check_mbus_joined(new_dbuf_state->active_pipes);
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		enum pipe pipe =3D crtc->pipe;
> -
> -		new_dbuf_state->slices[pipe] =3D
> -			skl_compute_dbuf_slices(crtc, new_dbuf_state->active_pipes,
> -						new_dbuf_state->joined_mbus);
> -
> -		if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe])
> -			continue;
> -
> -		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	new_dbuf_state->enabled_slices =3D intel_dbuf_enabled_slices(new_dbuf_s=
tate);
> -
> -	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices =
||
> -	    old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
> -		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -
> -		if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->joined_mbus) {
> -			/* TODO: Implement vblank synchronized MBUS joining changes */
> -			ret =3D intel_modeset_all_pipes(state);
> -			if (ret)
> -				return ret;
> -		}
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus =
joined? %s->%s\n",
> -			    old_dbuf_state->enabled_slices,
> -			    new_dbuf_state->enabled_slices,
> -			    INTEL_INFO(dev_priv)->display.dbuf.slice_mask,
> -			    str_yes_no(old_dbuf_state->joined_mbus),
> -			    str_yes_no(new_dbuf_state->joined_mbus));
> -	}
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		enum pipe pipe =3D crtc->pipe;
> -
> -		new_dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(new_crtc_state);
> -
> -		if (old_dbuf_state->weight[pipe] =3D=3D new_dbuf_state->weight[pipe])
> -			continue;
> -
> -		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		ret =3D skl_crtc_allocate_ddb(state, crtc);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		ret =3D skl_crtc_allocate_plane_ddb(state, crtc);
> -		if (ret)
> -			return ret;
> -
> -		ret =3D skl_ddb_add_affected_planes(old_crtc_state,
> -						  new_crtc_state);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -static char enast(bool enable)
> -{
> -	return enable ? '*' : ' ';
> -}
> -
> -static void
> -skl_print_wm_changes(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_crtc_state *old_crtc_state;
> -	const struct intel_crtc_state *new_crtc_state;
> -	struct intel_plane *plane;
> -	struct intel_crtc *crtc;
> -	int i;
> -
> -	if (!drm_debug_enabled(DRM_UT_KMS))
> -		return;
> -
> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		const struct skl_pipe_wm *old_pipe_wm, *new_pipe_wm;
> -
> -		old_pipe_wm =3D &old_crtc_state->wm.skl.optimal;
> -		new_pipe_wm =3D &new_crtc_state->wm.skl.optimal;
> -
> -		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -			enum plane_id plane_id =3D plane->id;
> -			const struct skl_ddb_entry *old, *new;
> -
> -			old =3D &old_crtc_state->wm.skl.plane_ddb[plane_id];
> -			new =3D &new_crtc_state->wm.skl.plane_ddb[plane_id];
> -
> -			if (skl_ddb_entry_equal(old, new))
> -				continue;
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s] ddb (%4d - %4d) -> (%4d - %4d), size %4d -> %4d\n=
",
> -				    plane->base.base.id, plane->base.name,
> -				    old->start, old->end, new->start, new->end,
> -				    skl_ddb_entry_size(old), skl_ddb_entry_size(new));
> -		}
> -
> -		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -			enum plane_id plane_id =3D plane->id;
> -			const struct skl_plane_wm *old_wm, *new_wm;
> -
> -			old_wm =3D &old_pipe_wm->planes[plane_id];
> -			new_wm =3D &new_pipe_wm->planes[plane_id];
> -
> -			if (skl_plane_wm_equals(dev_priv, old_wm, new_wm))
> -				continue;
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   level %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6=
,%cwm7,%ctwm,%cswm,%cstwm"
> -				    " -> %cwm0,%cwm1,%cwm2,%cwm3,%cwm4,%cwm5,%cwm6,%cwm7,%ctwm,%cswm=
,%cstwm\n",
> -				    plane->base.base.id, plane->base.name,
> -				    enast(old_wm->wm[0].enable), enast(old_wm->wm[1].enable),
> -				    enast(old_wm->wm[2].enable), enast(old_wm->wm[3].enable),
> -				    enast(old_wm->wm[4].enable), enast(old_wm->wm[5].enable),
> -				    enast(old_wm->wm[6].enable), enast(old_wm->wm[7].enable),
> -				    enast(old_wm->trans_wm.enable),
> -				    enast(old_wm->sagv.wm0.enable),
> -				    enast(old_wm->sagv.trans_wm.enable),
> -				    enast(new_wm->wm[0].enable), enast(new_wm->wm[1].enable),
> -				    enast(new_wm->wm[2].enable), enast(new_wm->wm[3].enable),
> -				    enast(new_wm->wm[4].enable), enast(new_wm->wm[5].enable),
> -				    enast(new_wm->wm[6].enable), enast(new_wm->wm[7].enable),
> -				    enast(new_wm->trans_wm.enable),
> -				    enast(new_wm->sagv.wm0.enable),
> -				    enast(new_wm->sagv.trans_wm.enable));
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]   lines %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d=
,%c%3d,%c%3d,%c%3d,%c%4d"
> -				      " -> %c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%3d,%c%=
3d,%c%4d\n",
> -				    plane->base.base.id, plane->base.name,
> -				    enast(old_wm->wm[0].ignore_lines), old_wm->wm[0].lines,
> -				    enast(old_wm->wm[1].ignore_lines), old_wm->wm[1].lines,
> -				    enast(old_wm->wm[2].ignore_lines), old_wm->wm[2].lines,
> -				    enast(old_wm->wm[3].ignore_lines), old_wm->wm[3].lines,
> -				    enast(old_wm->wm[4].ignore_lines), old_wm->wm[4].lines,
> -				    enast(old_wm->wm[5].ignore_lines), old_wm->wm[5].lines,
> -				    enast(old_wm->wm[6].ignore_lines), old_wm->wm[6].lines,
> -				    enast(old_wm->wm[7].ignore_lines), old_wm->wm[7].lines,
> -				    enast(old_wm->trans_wm.ignore_lines), old_wm->trans_wm.lines,
> -				    enast(old_wm->sagv.wm0.ignore_lines), old_wm->sagv.wm0.lines,
> -				    enast(old_wm->sagv.trans_wm.ignore_lines), old_wm->sagv.trans_wm=
.lines,
> -				    enast(new_wm->wm[0].ignore_lines), new_wm->wm[0].lines,
> -				    enast(new_wm->wm[1].ignore_lines), new_wm->wm[1].lines,
> -				    enast(new_wm->wm[2].ignore_lines), new_wm->wm[2].lines,
> -				    enast(new_wm->wm[3].ignore_lines), new_wm->wm[3].lines,
> -				    enast(new_wm->wm[4].ignore_lines), new_wm->wm[4].lines,
> -				    enast(new_wm->wm[5].ignore_lines), new_wm->wm[5].lines,
> -				    enast(new_wm->wm[6].ignore_lines), new_wm->wm[6].lines,
> -				    enast(new_wm->wm[7].ignore_lines), new_wm->wm[7].lines,
> -				    enast(new_wm->trans_wm.ignore_lines), new_wm->trans_wm.lines,
> -				    enast(new_wm->sagv.wm0.ignore_lines), new_wm->sagv.wm0.lines,
> -				    enast(new_wm->sagv.trans_wm.ignore_lines), new_wm->sagv.trans_wm=
.lines);
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s]  blocks %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
> -				    plane->base.base.id, plane->base.name,
> -				    old_wm->wm[0].blocks, old_wm->wm[1].blocks,
> -				    old_wm->wm[2].blocks, old_wm->wm[3].blocks,
> -				    old_wm->wm[4].blocks, old_wm->wm[5].blocks,
> -				    old_wm->wm[6].blocks, old_wm->wm[7].blocks,
> -				    old_wm->trans_wm.blocks,
> -				    old_wm->sagv.wm0.blocks,
> -				    old_wm->sagv.trans_wm.blocks,
> -				    new_wm->wm[0].blocks, new_wm->wm[1].blocks,
> -				    new_wm->wm[2].blocks, new_wm->wm[3].blocks,
> -				    new_wm->wm[4].blocks, new_wm->wm[5].blocks,
> -				    new_wm->wm[6].blocks, new_wm->wm[7].blocks,
> -				    new_wm->trans_wm.blocks,
> -				    new_wm->sagv.wm0.blocks,
> -				    new_wm->sagv.trans_wm.blocks);
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s] min_ddb %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%=
5d"
> -				    " -> %4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%4d,%5d\n",
> -				    plane->base.base.id, plane->base.name,
> -				    old_wm->wm[0].min_ddb_alloc, old_wm->wm[1].min_ddb_alloc,
> -				    old_wm->wm[2].min_ddb_alloc, old_wm->wm[3].min_ddb_alloc,
> -				    old_wm->wm[4].min_ddb_alloc, old_wm->wm[5].min_ddb_alloc,
> -				    old_wm->wm[6].min_ddb_alloc, old_wm->wm[7].min_ddb_alloc,
> -				    old_wm->trans_wm.min_ddb_alloc,
> -				    old_wm->sagv.wm0.min_ddb_alloc,
> -				    old_wm->sagv.trans_wm.min_ddb_alloc,
> -				    new_wm->wm[0].min_ddb_alloc, new_wm->wm[1].min_ddb_alloc,
> -				    new_wm->wm[2].min_ddb_alloc, new_wm->wm[3].min_ddb_alloc,
> -				    new_wm->wm[4].min_ddb_alloc, new_wm->wm[5].min_ddb_alloc,
> -				    new_wm->wm[6].min_ddb_alloc, new_wm->wm[7].min_ddb_alloc,
> -				    new_wm->trans_wm.min_ddb_alloc,
> -				    new_wm->sagv.wm0.min_ddb_alloc,
> -				    new_wm->sagv.trans_wm.min_ddb_alloc);
> -		}
> -	}
> -}
> -
> -static bool skl_plane_selected_wm_equals(struct intel_plane *plane,
> -					 const struct skl_pipe_wm *old_pipe_wm,
> -					 const struct skl_pipe_wm *new_pipe_wm)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> -	int level, max_level =3D ilk_wm_max_level(i915);
> -
> -	for (level =3D 0; level <=3D max_level; level++) {
> -		/*
> -		 * We don't check uv_wm as the hardware doesn't actually
> -		 * use it. It only gets used for calculating the required
> -		 * ddb allocation.
> -		 */
> -		if (!skl_wm_level_equals(skl_plane_wm_level(old_pipe_wm, plane->id, le=
vel),
> -					 skl_plane_wm_level(new_pipe_wm, plane->id, level)))
> -			return false;
> -	}
> -
> -	if (HAS_HW_SAGV_WM(i915)) {
> -		const struct skl_plane_wm *old_wm =3D &old_pipe_wm->planes[plane->id];
> -		const struct skl_plane_wm *new_wm =3D &new_pipe_wm->planes[plane->id];
> -
> -		if (!skl_wm_level_equals(&old_wm->sagv.wm0, &new_wm->sagv.wm0) ||
> -		    !skl_wm_level_equals(&old_wm->sagv.trans_wm, &new_wm->sagv.trans_w=
m))
> -			return false;
> -	}
> -
> -	return skl_wm_level_equals(skl_plane_trans_wm(old_pipe_wm, plane->id),
> -				   skl_plane_trans_wm(new_pipe_wm, plane->id));
> -}
> -
> -/*
> - * To make sure the cursor watermark registers are always consistent
> - * with our computed state the following scenario needs special
> - * treatment:
> - *
> - * 1. enable cursor
> - * 2. move cursor entirely offscreen
> - * 3. disable cursor
> - *
> - * Step 2. does call .disable_plane() but does not zero the watermarks
> - * (since we consider an offscreen cursor still active for the purposes
> - * of watermarks). Step 3. would not normally call .disable_plane()
> - * because the actual plane visibility isn't changing, and we don't
> - * deallocate the cursor ddb until the pipe gets disabled. So we must
> - * force step 3. to call .disable_plane() to update the watermark
> - * registers properly.
> - *
> - * Other planes do not suffer from this issues as their watermarks are
> - * calculated based on the actual plane visibility. The only time this
> - * can trigger for the other planes is during the initial readout as the
> - * default value of the watermarks registers is not zero.
> - */
> -static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
> -				      struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	const struct intel_crtc_state *old_crtc_state =3D
> -		intel_atomic_get_old_crtc_state(state, crtc);
> -	struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_plane *plane;
> -
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -		struct intel_plane_state *plane_state;
> -		enum plane_id plane_id =3D plane->id;
> -
> -		/*
> -		 * Force a full wm update for every plane on modeset.
> -		 * Required because the reset value of the wm registers
> -		 * is non-zero, whereas we want all disabled planes to
> -		 * have zero watermarks. So if we turn off the relevant
> -		 * power well the hardware state will go out of sync
> -		 * with the software state.
> -		 */
> -		if (!drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi) &&
> -		    skl_plane_selected_wm_equals(plane,
> -						 &old_crtc_state->wm.skl.optimal,
> -						 &new_crtc_state->wm.skl.optimal))
> -			continue;
> -
> -		plane_state =3D intel_atomic_get_plane_state(state, plane);
> -		if (IS_ERR(plane_state))
> -			return PTR_ERR(plane_state);
> -
> -		new_crtc_state->update_planes |=3D BIT(plane_id);
> -	}
> -
> -	return 0;
> -}
> -
> -static int
> -skl_compute_wm(struct intel_atomic_state *state)
> -{
> -	struct intel_crtc *crtc;
> -	struct intel_crtc_state *new_crtc_state;
> -	int ret, i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		ret =3D skl_build_pipe_wm(state, crtc);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	ret =3D skl_compute_ddb(state);
> -	if (ret)
> -		return ret;
> -
> -	ret =3D intel_compute_sagv_mask(state);
> -	if (ret)
> -		return ret;
> -
> -	/*
> -	 * skl_compute_ddb() will have adjusted the final watermarks
> -	 * based on how much ddb is available. Now we can actually
> -	 * check if the final watermarks changed.
> -	 */
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		ret =3D skl_wm_add_affected_planes(state, crtc);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	skl_print_wm_changes(state);
> -
> -	return 0;
> -}
> -
>  static void ilk_compute_wm_config(struct drm_i915_private *dev_priv,
>  				  struct intel_wm_config *config)
>  {
> @@ -6521,205 +3605,6 @@ static void ilk_optimize_watermarks(struct intel_=
atomic_state *state,
>  	mutex_unlock(&dev_priv->display.wm.wm_mutex);
>  }
>=20=20
> -static void skl_wm_level_from_reg_val(u32 val, struct skl_wm_level *leve=
l)
> -{
> -	level->enable =3D val & PLANE_WM_EN;
> -	level->ignore_lines =3D val & PLANE_WM_IGNORE_LINES;
> -	level->blocks =3D REG_FIELD_GET(PLANE_WM_BLOCKS_MASK, val);
> -	level->lines =3D REG_FIELD_GET(PLANE_WM_LINES_MASK, val);
> -}
> -
> -static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> -				     struct skl_pipe_wm *out)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	enum pipe pipe =3D crtc->pipe;
> -	int level, max_level;
> -	enum plane_id plane_id;
> -	u32 val;
> -
> -	max_level =3D ilk_wm_max_level(dev_priv);
> -
> -	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		struct skl_plane_wm *wm =3D &out->planes[plane_id];
> -
> -		for (level =3D 0; level <=3D max_level; level++) {
> -			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_uncore_read(&dev_priv->uncore, PLANE_WM(pipe, plane_id=
, level));
> -			else
> -				val =3D intel_uncore_read(&dev_priv->uncore, CUR_WM(pipe, level));
> -
> -			skl_wm_level_from_reg_val(val, &wm->wm[level]);
> -		}
> -
> -		if (plane_id !=3D PLANE_CURSOR)
> -			val =3D intel_uncore_read(&dev_priv->uncore, PLANE_WM_TRANS(pipe, pla=
ne_id));
> -		else
> -			val =3D intel_uncore_read(&dev_priv->uncore, CUR_WM_TRANS(pipe));
> -
> -		skl_wm_level_from_reg_val(val, &wm->trans_wm);
> -
> -		if (HAS_HW_SAGV_WM(dev_priv)) {
> -			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_uncore_read(&dev_priv->uncore,
> -							PLANE_WM_SAGV(pipe, plane_id));
> -			else
> -				val =3D intel_uncore_read(&dev_priv->uncore,
> -							CUR_WM_SAGV(pipe));
> -
> -			skl_wm_level_from_reg_val(val, &wm->sagv.wm0);
> -
> -			if (plane_id !=3D PLANE_CURSOR)
> -				val =3D intel_uncore_read(&dev_priv->uncore,
> -							PLANE_WM_SAGV_TRANS(pipe, plane_id));
> -			else
> -				val =3D intel_uncore_read(&dev_priv->uncore,
> -							CUR_WM_SAGV_TRANS(pipe));
> -
> -			skl_wm_level_from_reg_val(val, &wm->sagv.trans_wm);
> -		} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> -			wm->sagv.wm0 =3D wm->wm[0];
> -			wm->sagv.trans_wm =3D wm->trans_wm;
> -		}
> -	}
> -}
> -
> -void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_dbuf_state *dbuf_state =3D
> -		to_intel_dbuf_state(dev_priv->display.dbuf.obj.state);
> -	struct intel_crtc *crtc;
> -
> -	if (HAS_MBUS_JOINING(dev_priv))
> -		dbuf_state->joined_mbus =3D intel_de_read(dev_priv, MBUS_CTL) & MBUS_J=
OIN;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -		enum pipe pipe =3D crtc->pipe;
> -		unsigned int mbus_offset;
> -		enum plane_id plane_id;
> -		u8 slices;
> -
> -		memset(&crtc_state->wm.skl.optimal, 0,
> -		       sizeof(crtc_state->wm.skl.optimal));
> -		if (crtc_state->hw.active)
> -			skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
> -		crtc_state->wm.skl.raw =3D crtc_state->wm.skl.optimal;
> -
> -		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
> -
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			struct skl_ddb_entry *ddb =3D
> -				&crtc_state->wm.skl.plane_ddb[plane_id];
> -			struct skl_ddb_entry *ddb_y =3D
> -				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -
> -			if (!crtc_state->hw.active)
> -				continue;
> -
> -			skl_ddb_get_hw_plane_state(dev_priv, crtc->pipe,
> -						   plane_id, ddb, ddb_y);
> -
> -			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
> -			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
> -		}
> -
> -		dbuf_state->weight[pipe] =3D intel_crtc_ddb_weight(crtc_state);
> -
> -		/*
> -		 * Used for checking overlaps, so we need absolute
> -		 * offsets instead of MBUS relative offsets.
> -		 */
> -		slices =3D skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> -						 dbuf_state->joined_mbus);
> -		mbus_offset =3D mbus_ddb_offset(dev_priv, slices);
> -		crtc_state->wm.skl.ddb.start =3D mbus_offset + dbuf_state->ddb[pipe].s=
tart;
> -		crtc_state->wm.skl.ddb.end =3D mbus_offset + dbuf_state->ddb[pipe].end;
> -
> -		/* The slices actually used by the planes on the pipe */
> -		dbuf_state->slices[pipe] =3D
> -			skl_ddb_dbuf_slice_mask(dev_priv, &crtc_state->wm.skl.ddb);
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x,=
 mbus joined: %s\n",
> -			    crtc->base.base.id, crtc->base.name,
> -			    dbuf_state->slices[pipe], dbuf_state->ddb[pipe].start,
> -			    dbuf_state->ddb[pipe].end, dbuf_state->active_pipes,
> -			    str_yes_no(dbuf_state->joined_mbus));
> -	}
> -
> -	dbuf_state->enabled_slices =3D dev_priv->display.dbuf.enabled_slices;
> -}
> -
> -static bool skl_dbuf_is_misconfigured(struct drm_i915_private *i915)
> -{
> -	const struct intel_dbuf_state *dbuf_state =3D
> -		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> -	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(&i915->drm, crtc) {
> -		const struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		entries[crtc->pipe] =3D crtc_state->wm.skl.ddb;
> -	}
> -
> -	for_each_intel_crtc(&i915->drm, crtc) {
> -		const struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -		u8 slices;
> -
> -		slices =3D skl_compute_dbuf_slices(crtc, dbuf_state->active_pipes,
> -						 dbuf_state->joined_mbus);
> -		if (dbuf_state->slices[crtc->pipe] & ~slices)
> -			return true;
> -
> -		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.ddb, entries,
> -						I915_MAX_PIPES, crtc->pipe))
> -			return true;
> -	}
> -
> -	return false;
> -}
> -
> -void skl_wm_sanitize(struct drm_i915_private *i915)
> -{
> -	struct intel_crtc *crtc;
> -
> -	/*
> -	 * On TGL/RKL (at least) the BIOS likes to assign the planes
> -	 * to the wrong DBUF slices. This will cause an infinite loop
> -	 * in skl_commit_modeset_enables() as it can't find a way to
> -	 * transition between the old bogus DBUF layout to the new
> -	 * proper DBUF layout without DBUF allocation overlaps between
> -	 * the planes (which cannot be allowed or else the hardware
> -	 * may hang). If we detect a bogus DBUF layout just turn off
> -	 * all the planes so that skl_commit_modeset_enables() can
> -	 * simply ignore them.
> -	 */
> -	if (!skl_dbuf_is_misconfigured(i915))
> -		return;
> -
> -	drm_dbg_kms(&i915->drm, "BIOS has misprogrammed the DBUF, disabling all=
 planes\n");
> -
> -	for_each_intel_crtc(&i915->drm, crtc) {
> -		struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> -		const struct intel_plane_state *plane_state =3D
> -			to_intel_plane_state(plane->base.state);
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		if (plane_state->uapi.visible)
> -			intel_plane_disable_noatomic(crtc, plane);
> -
> -		drm_WARN_ON(&i915->drm, crtc_state->active_planes !=3D 0);
> -
> -		memset(&crtc_state->wm.skl.ddb, 0, sizeof(crtc_state->wm.skl.ddb));
> -	}
> -}
> -
>  static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
> @@ -7213,168 +4098,6 @@ void ilk_wm_get_hw_state(struct drm_i915_private =
*dev_priv)
>  		!(intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL) & DISP_FBC_WM_DIS=
);
>  }
>=20=20
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   struct intel_crtc_state *new_crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct skl_hw_state {
> -		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> -		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> -		struct skl_pipe_wm wm;
> -	} *hw;
> -	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> -	int level, max_level =3D ilk_wm_max_level(dev_priv);
> -	struct intel_plane *plane;
> -	u8 hw_enabled_slices;
> -
> -	if (DISPLAY_VER(dev_priv) < 9 || !new_crtc_state->hw.active)
> -		return;
> -
> -	hw =3D kzalloc(sizeof(*hw), GFP_KERNEL);
> -	if (!hw)
> -		return;
> -
> -	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
> -
> -	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
> -
> -	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 11 &&
> -	    hw_enabled_slices !=3D dev_priv->display.dbuf.enabled_slices)
> -		drm_err(&dev_priv->drm,
> -			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
> -			dev_priv->display.dbuf.enabled_slices,
> -			hw_enabled_slices);
> -
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
> -		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
> -
> -		/* Watermarks */
> -		for (level =3D 0; level <=3D max_level; level++) {
> -			hw_wm_level =3D &hw->wm.planes[plane->id].wm[level];
> -			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane->id, level);
> -
> -			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
> -				continue;
> -
> -			drm_err(&dev_priv->drm,
> -				"[PLANE:%d:%s] mismatch in WM%d (expected e=3D%d b=3D%u l=3D%u, got =
e=3D%d b=3D%u l=3D%u)\n",
> -				plane->base.base.id, plane->base.name, level,
> -				sw_wm_level->enable,
> -				sw_wm_level->blocks,
> -				sw_wm_level->lines,
> -				hw_wm_level->enable,
> -				hw_wm_level->blocks,
> -				hw_wm_level->lines);
> -		}
> -
> -		hw_wm_level =3D &hw->wm.planes[plane->id].trans_wm;
> -		sw_wm_level =3D skl_plane_trans_wm(sw_wm, plane->id);
> -
> -		if (!skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&dev_priv->drm,
> -				"[PLANE:%d:%s] mismatch in trans WM (expected e=3D%d b=3D%u l=3D%u, =
got e=3D%d b=3D%u l=3D%u)\n",
> -				plane->base.base.id, plane->base.name,
> -				sw_wm_level->enable,
> -				sw_wm_level->blocks,
> -				sw_wm_level->lines,
> -				hw_wm_level->enable,
> -				hw_wm_level->blocks,
> -				hw_wm_level->lines);
> -		}
> -
> -		hw_wm_level =3D &hw->wm.planes[plane->id].sagv.wm0;
> -		sw_wm_level =3D &sw_wm->planes[plane->id].sagv.wm0;
> -
> -		if (HAS_HW_SAGV_WM(dev_priv) &&
> -		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&dev_priv->drm,
> -				"[PLANE:%d:%s] mismatch in SAGV WM (expected e=3D%d b=3D%u l=3D%u, g=
ot e=3D%d b=3D%u l=3D%u)\n",
> -				plane->base.base.id, plane->base.name,
> -				sw_wm_level->enable,
> -				sw_wm_level->blocks,
> -				sw_wm_level->lines,
> -				hw_wm_level->enable,
> -				hw_wm_level->blocks,
> -				hw_wm_level->lines);
> -		}
> -
> -		hw_wm_level =3D &hw->wm.planes[plane->id].sagv.trans_wm;
> -		sw_wm_level =3D &sw_wm->planes[plane->id].sagv.trans_wm;
> -
> -		if (HAS_HW_SAGV_WM(dev_priv) &&
> -		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&dev_priv->drm,
> -				"[PLANE:%d:%s] mismatch in SAGV trans WM (expected e=3D%d b=3D%u l=
=3D%u, got e=3D%d b=3D%u l=3D%u)\n",
> -				plane->base.base.id, plane->base.name,
> -				sw_wm_level->enable,
> -				sw_wm_level->blocks,
> -				sw_wm_level->lines,
> -				hw_wm_level->enable,
> -				hw_wm_level->blocks,
> -				hw_wm_level->lines);
> -		}
> -
> -		/* DDB */
> -		hw_ddb_entry =3D &hw->ddb[PLANE_CURSOR];
> -		sw_ddb_entry =3D &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
> -
> -		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
> -			drm_err(&dev_priv->drm,
> -				"[PLANE:%d:%s] mismatch in DDB (expected (%u,%u), found (%u,%u))\n",
> -				plane->base.base.id, plane->base.name,
> -				sw_ddb_entry->start, sw_ddb_entry->end,
> -				hw_ddb_entry->start, hw_ddb_entry->end);
> -		}
> -	}
> -
> -	kfree(hw);
> -}
> -
> -void intel_enable_ipc(struct drm_i915_private *dev_priv)
> -{
> -	u32 val;
> -
> -	if (!HAS_IPC(dev_priv))
> -		return;
> -
> -	val =3D intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
> -
> -	if (dev_priv->ipc_enabled)
> -		val |=3D DISP_IPC_ENABLE;
> -	else
> -		val &=3D ~DISP_IPC_ENABLE;
> -
> -	intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
> -}
> -
> -static bool intel_can_enable_ipc(struct drm_i915_private *dev_priv)
> -{
> -	/* Display WA #0477 WaDisableIPC: skl */
> -	if (IS_SKYLAKE(dev_priv))
> -		return false;
> -
> -	/* Display WA #1141: SKL:all KBL:all CFL */
> -	if (IS_KABYLAKE(dev_priv) ||
> -	    IS_COFFEELAKE(dev_priv) ||
> -	    IS_COMETLAKE(dev_priv))
> -		return dev_priv->dram_info.symmetric_memory;
> -
> -	return true;
> -}
> -
> -void intel_init_ipc(struct drm_i915_private *dev_priv)
> -{
> -	if (!HAS_IPC(dev_priv))
> -		return;
> -
> -	dev_priv->ipc_enabled =3D intel_can_enable_ipc(dev_priv);
> -
> -	intel_enable_ipc(dev_priv);
> -}
> -
>  static void ibx_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -8215,10 +4938,6 @@ void intel_init_clock_gating_hooks(struct drm_i915=
_private *dev_priv)
>  	}
>  }
>=20=20
> -static const struct intel_wm_funcs skl_wm_funcs =3D {
> -	.compute_global_watermarks =3D skl_compute_wm,
> -};
> -
>  static const struct intel_wm_funcs ilk_wm_funcs =3D {
>  	.compute_pipe_wm =3D ilk_compute_pipe_wm,
>  	.compute_intermediate_wm =3D ilk_compute_intermediate_wm,
> @@ -8263,19 +4982,19 @@ static const struct intel_wm_funcs nop_funcs =3D {
>  /* Set up chip specific power management-related functions */
>  void intel_init_pm(struct drm_i915_private *dev_priv)
>  {
> +	if (DISPLAY_VER(dev_priv) >=3D 9) {
> +		skl_wm_init(dev_priv);
> +		return;
> +	}
> +
>  	/* For cxsr */
>  	if (IS_PINEVIEW(dev_priv))
>  		pnv_get_mem_freq(dev_priv);
>  	else if (GRAPHICS_VER(dev_priv) =3D=3D 5)
>  		ilk_get_mem_freq(dev_priv);
>=20=20
> -	intel_sagv_init(dev_priv);
> -
>  	/* For FIFO watermark updates */
> -	if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		skl_setup_wm_latency(dev_priv);
> -		dev_priv->display.funcs.wm =3D &skl_wm_funcs;
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +	if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
>=20=20
>  		if ((DISPLAY_VER(dev_priv) =3D=3D 5 && dev_priv->display.wm.pri_latenc=
y[1] &&
> @@ -8332,183 +5051,3 @@ void intel_pm_setup(struct drm_i915_private *dev_=
priv)
>  	dev_priv->runtime_pm.suspended =3D false;
>  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
>  }
> -
> -static struct intel_global_state *intel_dbuf_duplicate_state(struct inte=
l_global_obj *obj)
> -{
> -	struct intel_dbuf_state *dbuf_state;
> -
> -	dbuf_state =3D kmemdup(obj->state, sizeof(*dbuf_state), GFP_KERNEL);
> -	if (!dbuf_state)
> -		return NULL;
> -
> -	return &dbuf_state->base;
> -}
> -
> -static void intel_dbuf_destroy_state(struct intel_global_obj *obj,
> -				     struct intel_global_state *state)
> -{
> -	kfree(state);
> -}
> -
> -static const struct intel_global_state_funcs intel_dbuf_funcs =3D {
> -	.atomic_duplicate_state =3D intel_dbuf_duplicate_state,
> -	.atomic_destroy_state =3D intel_dbuf_destroy_state,
> -};
> -
> -struct intel_dbuf_state *
> -intel_atomic_get_dbuf_state(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_global_state *dbuf_state;
> -
> -	dbuf_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->disp=
lay.dbuf.obj);
> -	if (IS_ERR(dbuf_state))
> -		return ERR_CAST(dbuf_state);
> -
> -	return to_intel_dbuf_state(dbuf_state);
> -}
> -
> -int intel_dbuf_init(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_dbuf_state *dbuf_state;
> -
> -	dbuf_state =3D kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
> -	if (!dbuf_state)
> -		return -ENOMEM;
> -
> -	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.dbuf.obj,
> -				     &dbuf_state->base, &intel_dbuf_funcs);
> -
> -	return 0;
> -}
> -
> -/*
> - * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus stat=
e before
> - * update the request state of all DBUS slices.
> - */
> -static void update_mbus_pre_enable(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	u32 mbus_ctl, dbuf_min_tracker_val;
> -	enum dbuf_slice slice;
> -	const struct intel_dbuf_state *dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -
> -	if (!HAS_MBUS_JOINING(dev_priv))
> -		return;
> -
> -	/*
> -	 * TODO: Implement vblank synchronized MBUS joining changes.
> -	 * Must be properly coordinated with dbuf reprogramming.
> -	 */
> -	if (dbuf_state->joined_mbus) {
> -		mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
> -			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(3);
> -	} else {
> -		mbus_ctl =3D MBUS_HASHING_MODE_2x2 |
> -			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val =3D DBUF_MIN_TRACKER_STATE_SERVICE(1);
> -	}
> -
> -	intel_de_rmw(dev_priv, MBUS_CTL,
> -		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
> -		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> -
> -	for_each_dbuf_slice(dev_priv, slice)
> -		intel_de_rmw(dev_priv, DBUF_CTL_S(slice),
> -			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> -			     dbuf_min_tracker_val);
> -}
> -
> -void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -
> -	if (!new_dbuf_state ||
> -	    ((new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_sli=
ces)
> -	    && (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus)=
))
> -		return;
> -
> -	WARN_ON(!new_dbuf_state->base.changed);
> -
> -	update_mbus_pre_enable(state);
> -	gen9_dbuf_slices_update(dev_priv,
> -				old_dbuf_state->enabled_slices |
> -				new_dbuf_state->enabled_slices);
> -}
> -
> -void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -
> -	if (!new_dbuf_state ||
> -	    ((new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_sli=
ces)
> -	    && (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus)=
))
> -		return;
> -
> -	WARN_ON(!new_dbuf_state->base.changed);
> -
> -	gen9_dbuf_slices_update(dev_priv,
> -				new_dbuf_state->enabled_slices);
> -}
> -
> -void intel_mbus_dbox_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> -	const struct intel_crtc_state *new_crtc_state;
> -	const struct intel_crtc *crtc;
> -	u32 val =3D 0;
> -	int i;
> -
> -	if (DISPLAY_VER(i915) < 11)
> -		return;
> -
> -	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> -	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -	if (!new_dbuf_state ||
> -	    (new_dbuf_state->joined_mbus =3D=3D old_dbuf_state->joined_mbus &&
> -	     new_dbuf_state->active_pipes =3D=3D old_dbuf_state->active_pipes))
> -		return;
> -
> -	if (DISPLAY_VER(i915) >=3D 12) {
> -		val |=3D MBUS_DBOX_B2B_TRANSACTIONS_MAX(16);
> -		val |=3D MBUS_DBOX_B2B_TRANSACTIONS_DELAY(1);
> -		val |=3D MBUS_DBOX_REGULATE_B2B_TRANSACTIONS_EN;
> -	}
> -
> -	/* Wa_22010947358:adl-p */
> -	if (IS_ALDERLAKE_P(i915))
> -		val |=3D new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> -						     MBUS_DBOX_A_CREDIT(4);
> -	else
> -		val |=3D MBUS_DBOX_A_CREDIT(2);
> -
> -	if (IS_ALDERLAKE_P(i915)) {
> -		val |=3D MBUS_DBOX_BW_CREDIT(2);
> -		val |=3D MBUS_DBOX_B_CREDIT(8);
> -	} else if (DISPLAY_VER(i915) >=3D 12) {
> -		val |=3D MBUS_DBOX_BW_CREDIT(2);
> -		val |=3D MBUS_DBOX_B_CREDIT(12);
> -	} else {
> -		val |=3D MBUS_DBOX_BW_CREDIT(1);
> -		val |=3D MBUS_DBOX_B_CREDIT(8);
> -	}
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		if (!new_crtc_state->hw.active ||
> -		    !intel_crtc_needs_modeset(new_crtc_state))
> -			continue;
> -
> -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
> -	}
> -}
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 3ee71831d1a4..c09b872d65c8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -8,22 +8,9 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> -#include "display/intel_display.h"
> -#include "display/intel_global_state.h"
> -
> -#include "i915_drv.h"
> -
> -struct drm_device;
>  struct drm_i915_private;
> -struct i915_request;
> -struct intel_atomic_state;
> -struct intel_bw_state;
> -struct intel_crtc;
>  struct intel_crtc_state;
> -struct intel_plane;
> -struct skl_ddb_entry;
> -struct skl_pipe_wm;
> -struct skl_wm_level;
> +struct intel_plane_state;
>=20=20
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
>  void intel_suspend_hw(struct drm_i915_private *dev_priv);
> @@ -34,56 +21,14 @@ void intel_pm_setup(struct drm_i915_private *dev_priv=
);
>  void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
> -void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
> -void intel_wm_state_verify(struct intel_crtc *crtc,
> -			   struct intel_crtc_state *new_crtc_state);
> -u8 intel_enabled_dbuf_slices_mask(struct drm_i915_private *dev_priv);
> -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> -u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> -			    const struct skl_ddb_entry *entry);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> -void skl_wm_sanitize(struct drm_i915_private *dev_priv);
> -bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
> -			   const struct intel_bw_state *bw_state);
> -void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> -void intel_sagv_post_plane_update(struct intel_atomic_state *state);
> -bool skl_ddb_allocation_overlaps(const struct skl_ddb_entry *ddb,
> -				 const struct skl_ddb_entry *entries,
> -				 int num_entries, int ignore_idx);
> -void skl_write_plane_wm(struct intel_plane *plane,
> -			const struct intel_crtc_state *crtc_state);
> -void skl_write_cursor_wm(struct intel_plane *plane,
> -			 const struct intel_crtc_state *crtc_state);
>  bool ilk_disable_lp_wm(struct drm_i915_private *dev_priv);
> -void intel_init_ipc(struct drm_i915_private *dev_priv);
> -void intel_enable_ipc(struct drm_i915_private *dev_priv);
> +bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
> +			    const struct intel_plane_state *plane_state);
> +void intel_print_wm_latency(struct drm_i915_private *dev_priv,
> +			    const char *name, const u16 wm[]);
>=20=20
>  bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl=
e);
>=20=20
> -struct intel_dbuf_state {
> -	struct intel_global_state base;
> -
> -	struct skl_ddb_entry ddb[I915_MAX_PIPES];
> -	unsigned int weight[I915_MAX_PIPES];
> -	u8 slices[I915_MAX_PIPES];
> -	u8 enabled_slices;
> -	u8 active_pipes;
> -	bool joined_mbus;
> -};
> -
> -struct intel_dbuf_state *
> -intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
> -
> -#define to_intel_dbuf_state(x) container_of((x), struct intel_dbuf_state=
, base)
> -#define intel_atomic_get_old_dbuf_state(state) \
> -	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i9=
15(state->base.dev)->display.dbuf.obj))
> -#define intel_atomic_get_new_dbuf_state(state) \
> -	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i9=
15(state->base.dev)->display.dbuf.obj))
> -
> -int intel_dbuf_init(struct drm_i915_private *dev_priv);
> -void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> -void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> -void intel_mbus_dbox_update(struct intel_atomic_state *state);
> -
>  #endif /* __INTEL_PM_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
