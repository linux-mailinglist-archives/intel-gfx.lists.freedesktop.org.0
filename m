Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8AF1E087D
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 10:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FD696E053;
	Mon, 25 May 2020 08:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B8576E053
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 May 2020 08:11:53 +0000 (UTC)
IronPort-SDR: jZITeeYYYWDiexyDkg/WEATSvkkDCXvgbZNDe0QRiss1xThBzz6ckOYwLur1UxVIgAKQHd7KKP
 Drq4BK23tA+g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:11:52 -0700
IronPort-SDR: DbIJXPLlwzK7KoIWfEwm9LNpWSGanFIDkVxFUHv+DcMA1+9K00jUZ+Eei7gJ0PYE9AXf855VIg
 NvtE6DbYqrhA==
X-IronPort-AV: E=Sophos;i="5.73,432,1583222400"; d="scan'208";a="441659329"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2020 01:11:50 -0700
Date: Mon, 25 May 2020 11:07:54 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200525080754.GA32204@intel.com>
References: <20200525080731.2244-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525080731.2244-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert CDCLK changes to unbreak
 geminilake
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 25, 2020 at 09:07:31AM +0100, Chris Wilson wrote:
> This reverts
> cac91e671ad5 ("drm/i915: Fix includes and local vars order")
> 82ea174dc542 ("drm/i915: Remove unneeded hack now for CDCLK")
> cd1915460861 ("drm/i915: Adjust CDCLK accordingly to our DBuf bw needs")
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: "Ville Syrj=E4l=E4" <ville.syrjala@linux.intel.com>


I guess we still need to check more precisely if this patch caused
this - or have you already bisected that?
It is rather strange that it breaks only a GLK and only single test.

Stan

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c      | 127 +------------------
>  drivers/gpu/drm/i915/display/intel_bw.h      |  10 --
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |  41 +++---
>  drivers/gpu/drm/i915/display/intel_display.c |  39 +-----
>  drivers/gpu/drm/i915/i915_drv.h              |   1 -
>  drivers/gpu/drm/i915/intel_pm.c              |  33 +----
>  drivers/gpu/drm/i915/intel_pm.h              |   6 +-
>  7 files changed, 29 insertions(+), 228 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index a79bd7aeb03b..98bbe719cf4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -5,12 +5,12 @@
>  =

>  #include <drm/drm_atomic_state_helper.h>
>  =

> -#include "intel_atomic.h"
>  #include "intel_bw.h"
> -#include "intel_cdclk.h"
>  #include "intel_display_types.h"
> -#include "intel_pm.h"
>  #include "intel_sideband.h"
> +#include "intel_atomic.h"
> +#include "intel_pm.h"
> +
>  =

>  /* Parameters for Qclk Geyserville (QGV) */
>  struct intel_qgv_point {
> @@ -428,127 +428,6 @@ intel_atomic_get_bw_state(struct intel_atomic_state=
 *state)
>  	return to_intel_bw_state(bw_state);
>  }
>  =

> -int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_bw_state *new_bw_state =3D NULL;
> -	struct intel_bw_state *old_bw_state =3D NULL;
> -	const struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -	int max_bw =3D 0;
> -	int slice_id;
> -	int i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		enum plane_id plane_id;
> -		struct intel_dbuf_bw *crtc_bw;
> -
> -		new_bw_state =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(new_bw_state))
> -			return PTR_ERR(new_bw_state);
> -
> -		crtc_bw =3D &new_bw_state->dbuf_bw[crtc->pipe];
> -
> -		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> -
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			const struct skl_ddb_entry *plane_alloc =3D
> -				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			const struct skl_ddb_entry *uv_plane_alloc =3D
> -				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> -			unsigned int data_rate =3D crtc_state->data_rate[plane_id];
> -			unsigned int dbuf_mask =3D 0;
> -
> -			dbuf_mask |=3D skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
> -			dbuf_mask |=3D skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
> -
> -			/*
> -			 * FIXME: To calculate that more properly we probably
> -			 * need to to split per plane data_rate into data_rate_y
> -			 * and data_rate_uv for multiplanar formats in order not
> -			 * to get accounted those twice if they happen to reside
> -			 * on different slices.
> -			 * However for pre-icl this would work anyway because
> -			 * we have only single slice and for icl+ uv plane has
> -			 * non-zero data rate.
> -			 * So in worst case those calculation are a bit
> -			 * pessimistic, which shouldn't pose any significant
> -			 * problem anyway.
> -			 */
> -			for_each_dbuf_slice_in_mask(slice_id, dbuf_mask)
> -				crtc_bw->used_bw[slice_id] +=3D data_rate;
> -		}
> -
> -		for_each_dbuf_slice(slice_id) {
> -			/*
> -			 * Current experimental observations show that contrary
> -			 * to BSpec we get underruns once we exceed 64 * CDCLK
> -			 * for slices in total.
> -			 * As a temporary measure in order not to keep CDCLK
> -			 * bumped up all the time we calculate CDCLK according
> -			 * to this formula for  overall bw consumed by slices.
> -			 */
> -			max_bw +=3D crtc_bw->used_bw[slice_id];
> -		}
> -
> -		new_bw_state->min_cdclk =3D max_bw / 64;
> -
> -		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> -	}
> -
> -	if (!old_bw_state)
> -		return 0;
> -
> -	if (new_bw_state->min_cdclk !=3D old_bw_state->min_cdclk) {
> -		int ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> -
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
> -int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> -{
> -	int i;
> -	const struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -	int min_cdclk =3D 0;
> -	struct intel_bw_state *new_bw_state =3D NULL;
> -	struct intel_bw_state *old_bw_state =3D NULL;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_cdclk_state *cdclk_state;
> -
> -		new_bw_state =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(new_bw_state))
> -			return PTR_ERR(new_bw_state);
> -
> -		cdclk_state =3D intel_atomic_get_cdclk_state(state);
> -		if (IS_ERR(cdclk_state))
> -			return PTR_ERR(cdclk_state);
> -
> -		min_cdclk =3D max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> -
> -		new_bw_state->min_cdclk =3D min_cdclk;
> -
> -		old_bw_state =3D intel_atomic_get_old_bw_state(state);
> -	}
> -
> -	if (!old_bw_state)
> -		return 0;
> -
> -	if (new_bw_state->min_cdclk !=3D old_bw_state->min_cdclk) {
> -		int ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> -
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
>  int intel_bw_atomic_check(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 46c6eecbd917..bbcaaa73ec1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -9,20 +9,14 @@
>  #include <drm/drm_atomic.h>
>  =

>  #include "intel_display.h"
> -#include "intel_display_power.h"
>  #include "intel_global_state.h"
>  =

>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  =

> -struct intel_dbuf_bw {
> -	int used_bw[I915_MAX_DBUF_SLICES];
> -};
> -
>  struct intel_bw_state {
>  	struct intel_global_state base;
> -	struct intel_dbuf_bw dbuf_bw[I915_MAX_PIPES];
>  =

>  	/*
>  	 * Contains a bit mask, used to determine, whether correspondent
> @@ -42,8 +36,6 @@ struct intel_bw_state {
>  =

>  	/* bitmask of active pipes */
>  	u8 active_pipes;
> -
> -	int min_cdclk;
>  };
>  =

>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
> @@ -64,7 +56,5 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_sta=
te,
>  			  const struct intel_crtc_state *crtc_state);
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  				  u32 points_mask);
> -int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
> -int skl_bw_calc_min_cdclk(struct intel_atomic_state *state);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index f9b0fc7317de..9419a4724357 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -21,10 +21,7 @@
>   * DEALINGS IN THE SOFTWARE.
>   */
>  =

> -#include <linux/time.h>
> -
>  #include "intel_atomic.h"
> -#include "intel_bw.h"
>  #include "intel_cdclk.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> @@ -2071,6 +2068,18 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  	/* Account for additional needs from the planes */
>  	min_cdclk =3D max(intel_planes_min_cdclk(crtc_state), min_cdclk);
>  =

> +	/*
> +	 * HACK. Currently for TGL platforms we calculate
> +	 * min_cdclk initially based on pixel_rate divided
> +	 * by 2, accounting for also plane requirements,
> +	 * however in some cases the lowest possible CDCLK
> +	 * doesn't work and causing the underruns.
> +	 * Explicitly stating here that this seems to be currently
> +	 * rather a Hack, than final solution.
> +	 */
> +	if (IS_TIGERLAKE(dev_priv))
> +		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> @@ -2084,9 +2093,11 @@ int intel_crtc_compute_min_cdclk(const struct inte=
l_crtc_state *crtc_state)
>  static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  {
>  	struct intel_atomic_state *state =3D cdclk_state->base.state;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  	int min_cdclk, i;
> +	enum pipe pipe;
>  =

>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		int ret;
> @@ -2106,18 +2117,8 @@ static int intel_compute_min_cdclk(struct intel_cd=
clk_state *cdclk_state)
>  	}
>  =

>  	min_cdclk =3D cdclk_state->force_min_cdclk;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_bw_state *bw_state;
> -
> -		min_cdclk =3D max(cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> -
> -		bw_state =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> -
> -		min_cdclk =3D max(bw_state->min_cdclk, min_cdclk);
> -	}
> +	for_each_pipe(dev_priv, pipe)
> +		min_cdclk =3D max(cdclk_state->min_cdclk[pipe], min_cdclk);
>  =

>  	return min_cdclk;
>  }
> @@ -2789,30 +2790,25 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te *dev_priv)
>  {
>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D tgl_calc_voltage_level;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (IS_ELKHARTLAKE(dev_priv)) {
>  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D ehl_calc_voltage_level;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (INTEL_GEN(dev_priv) >=3D 11) {
>  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D icl_calc_voltage_level;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (IS_CANNONLAKE(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D cnl_calc_voltage_level;
>  		dev_priv->cdclk.table =3D cnl_cdclk_table;
>  	} else if (IS_GEN9_LP(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D bxt_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk;
>  		dev_priv->display.calc_voltage_level =3D bxt_calc_voltage_level;
> @@ -2821,23 +2817,18 @@ void intel_init_cdclk_hooks(struct drm_i915_priva=
te *dev_priv)
>  		else
>  			dev_priv->cdclk.table =3D bxt_cdclk_table;
>  	} else if (IS_GEN9_BC(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D skl_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D skl_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D skl_modeset_calc_cdclk;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D bdw_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D bdw_modeset_calc_cdclk;
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D chv_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
>  	} else if (IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
>  		dev_priv->display.set_cdclk =3D vlv_set_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D vlv_modeset_calc_cdclk;
>  	} else {
> -		dev_priv->display.bw_calc_min_cdclk =3D intel_bw_calc_min_cdclk;
>  		dev_priv->display.modeset_calc_cdclk =3D fixed_modeset_calc_cdclk;
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f40b909952cc..fe3706a0aca1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14707,14 +14707,16 @@ static int intel_atomic_check_planes(struct int=
el_atomic_state *state)
>  static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
>  				    bool *need_cdclk_calc)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_cdclk_state *new_cdclk_state;
>  	int i;
>  	struct intel_plane_state *plane_state;
>  	struct intel_plane *plane;
>  	int ret;
> -	struct intel_cdclk_state *new_cdclk_state;
> -	struct intel_crtc_state *new_crtc_state;
> -	struct intel_crtc *crtc;
> +
> +	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
> +	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> +		*need_cdclk_calc =3D true;
> +
>  	/*
>  	 * active_planes bitmask has been updated, and potentially
>  	 * affected planes are part of the state. We can now
> @@ -14726,35 +14728,6 @@ static int intel_atomic_check_cdclk(struct intel=
_atomic_state *state,
>  			return ret;
>  	}
>  =

> -	new_cdclk_state =3D intel_atomic_get_new_cdclk_state(state);
> -
> -	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> -		*need_cdclk_calc =3D true;
> -
> -	ret =3D dev_priv->display.bw_calc_min_cdclk(state);
> -	if (ret)
> -		return ret;
> -
> -	if (!new_cdclk_state)
> -		return 0;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> -		struct intel_bw_state *bw_state;
> -		int min_cdclk =3D 0;
> -
> -		min_cdclk =3D max(new_cdclk_state->min_cdclk[crtc->pipe], min_cdclk);
> -
> -		bw_state =3D intel_atomic_get_bw_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> -
> -		/*
> -		 * Currently do this change only if we need to increase
> -		 */
> -		if (bw_state->min_cdclk > min_cdclk)
> -			*need_cdclk_calc =3D true;
> -	}
> -
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 98f2c448cd92..10383e01efde 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -273,7 +273,6 @@ struct drm_i915_display_funcs {
>  	void (*set_cdclk)(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe);
> -	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>  	int (*get_fifo_size)(struct drm_i915_private *dev_priv,
>  			     enum i9xx_plane_id i9xx_plane);
>  	int (*compute_pipe_wm)(struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b134a1b9d738..4d885ef0bac5 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -33,7 +33,6 @@
>  #include <drm/drm_plane_helper.h>
>  =

>  #include "display/intel_atomic.h"
> -#include "display/intel_bw.h"
>  #include "display/intel_display_types.h"
>  #include "display/intel_fbc.h"
>  #include "display/intel_sprite.h"
> @@ -44,6 +43,7 @@
>  #include "i915_fixed.h"
>  #include "i915_irq.h"
>  #include "i915_trace.h"
> +#include "display/intel_bw.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
> @@ -4031,9 +4031,10 @@ icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mas=
k,
>  	return offset;
>  }
>  =

> -u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
> +static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv)
>  {
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> +
>  	drm_WARN_ON(&dev_priv->drm, ddb_size =3D=3D 0);
>  =

>  	if (INTEL_GEN(dev_priv) < 11)
> @@ -4042,34 +4043,6 @@ u16 intel_get_ddb_size(struct drm_i915_private *de=
v_priv)
>  	return ddb_size;
>  }
>  =

> -u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> -			    const struct skl_ddb_entry *entry)
> -{
> -	u32 slice_mask =3D 0;
> -	u16 ddb_size =3D intel_get_ddb_size(dev_priv);
> -	u16 num_supported_slices =3D INTEL_INFO(dev_priv)->num_supported_dbuf_s=
lices;
> -	u16 slice_size =3D ddb_size / num_supported_slices;
> -	u16 start_slice;
> -	u16 end_slice;
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
>  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
>  				  u8 active_pipes);
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index a2473594c2db..6636d2a057cd 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -8,10 +8,10 @@
>  =

>  #include <linux/types.h>
>  =

> -#include "display/intel_bw.h"
>  #include "display/intel_global_state.h"
>  =

>  #include "i915_reg.h"
> +#include "display/intel_bw.h"
>  =

>  struct drm_device;
>  struct drm_i915_private;
> @@ -39,10 +39,6 @@ u8 intel_enabled_dbuf_slices_mask(struct drm_i915_priv=
ate *dev_priv);
>  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
> -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> -u16 intel_get_ddb_size(struct drm_i915_private *dev_priv);
> -u32 skl_ddb_dbuf_slice_mask(struct drm_i915_private *dev_priv,
> -			    const struct skl_ddb_entry *entry);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> -- =

> 2.20.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
