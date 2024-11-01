Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B949B8F23
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BE910E991;
	Fri,  1 Nov 2024 10:26:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fs/jIoGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4768A10E991
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 10:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730456791; x=1761992791;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xTPw8lZfFd9nPxF8Z1gKLJOa6g1kURVHsWOob5UkTvM=;
 b=Fs/jIoGTVMUxQJX2Y58X1T0acNYxsofCJmY5SRnVNAK1aCufL6HWiJWh
 lTPD7nQ+HqXvpf3LT0Y8WDo0HRFfENWrq4VKwp0ceg1X+kQK2RmBetH+u
 HrzSHzSlsg0dhD6+INA22g757BmnktkC38+bn4tfz2Vag1iNth0p+rGJ3
 0nnaKlwqbdFyLVUhrwMrj6pbjCmeD6pYCj/FMJG7YEy/EGp96iuhp70rK
 qxBYEVJpH5Mw7wBQvk9nDyPp4D7yXuEnXYyglAW7KMfct1vQtV13v+TVt
 JakHwZv8/UBC1an0xnEzbryRndLgdFSMx0atGFMZBS+BtJSlxToyq1060 A==;
X-CSE-ConnectionGUID: gewHFBf2Q7yyupCiDxgW+g==
X-CSE-MsgGUID: oKWQZjQWQIOjylgQDjF6Kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41320184"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41320184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:26:31 -0700
X-CSE-ConnectionGUID: yZZg+kmpTgWjPwBgHxC57g==
X-CSE-MsgGUID: gOyy8iuKQ66v1w0rHf0n3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="83048879"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 03:26:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915: Relocate the SKL wm sanitation code
In-Reply-To: <20241031155646.15165-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-2-ville.syrjala@linux.intel.com>
Date: Fri, 01 Nov 2024 12:26:26 +0200
Message-ID: <87ikt7jlm5.fsf@intel.com>
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

On Thu, 31 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> In order to add more MBUS sanitation into the code we'll want
> to reuse a bunch of the code that performs the MBUS/related
> hardware programming. Currently that code comes after the
> main skl_wm_get_hw_state_and_sanitize() entrypoint. In order
> to avoid annoying forward declarations relocate the
> skl_wm_get_hw_state_and_sanitize() and related stuff nearer to
> the end of the file.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 420 +++++++++----------
>  1 file changed, 210 insertions(+), 210 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/d=
rm/i915/display/skl_watermark.c
> index 3b0e87edbacf..92794dfbd3bd 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3048,202 +3048,6 @@ static void skl_wm_get_hw_state(struct drm_i915_p=
rivate *i915)
>  	dbuf_state->enabled_slices =3D i915->display.dbuf.enabled_slices;
>  }
>=20=20
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
> -static void skl_wm_sanitize(struct drm_i915_private *i915)
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
> -static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i9=
15)
> -{
> -	skl_wm_get_hw_state(i915);
> -	skl_wm_sanitize(i915);
> -}
> -
> -void intel_wm_state_verify(struct intel_atomic_state *state,
> -			   struct intel_crtc *crtc)
> -{
> -	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct skl_hw_state {
> -		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> -		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> -		struct skl_pipe_wm wm;
> -	} *hw;
> -	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> -	struct intel_plane *plane;
> -	u8 hw_enabled_slices;
> -	int level;
> -
> -	if (DISPLAY_VER(i915) < 9 || !new_crtc_state->hw.active)
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
> -	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(i915);
> -
> -	if (DISPLAY_VER(i915) >=3D 11 &&
> -	    hw_enabled_slices !=3D i915->display.dbuf.enabled_slices)
> -		drm_err(&i915->drm,
> -			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
> -			i915->display.dbuf.enabled_slices,
> -			hw_enabled_slices);
> -
> -	for_each_intel_plane_on_crtc(&i915->drm, crtc, plane) {
> -		const struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
> -		const struct skl_wm_level *hw_wm_level, *sw_wm_level;
> -
> -		/* Watermarks */
> -		for (level =3D 0; level < i915->display.wm.num_levels; level++) {
> -			hw_wm_level =3D &hw->wm.planes[plane->id].wm[level];
> -			sw_wm_level =3D skl_plane_wm_level(sw_wm, plane->id, level);
> -
> -			if (skl_wm_level_equals(hw_wm_level, sw_wm_level))
> -				continue;
> -
> -			drm_err(&i915->drm,
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
> -			drm_err(&i915->drm,
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
> -		if (HAS_HW_SAGV_WM(i915) &&
> -		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&i915->drm,
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
> -		if (HAS_HW_SAGV_WM(i915) &&
> -		    !skl_wm_level_equals(hw_wm_level, sw_wm_level)) {
> -			drm_err(&i915->drm,
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
> -			drm_err(&i915->drm,
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
>  bool skl_watermark_ipc_enabled(struct drm_i915_private *i915)
>  {
>  	return i915->display.wm.ipc_enabled;
> @@ -3399,20 +3203,6 @@ static void skl_setup_wm_latency(struct drm_i915_p=
rivate *i915)
>  	intel_print_wm_latency(i915, "Gen9 Plane", i915->display.wm.skl_latency=
);
>  }
>=20=20
> -static const struct intel_wm_funcs skl_wm_funcs =3D {
> -	.compute_global_watermarks =3D skl_compute_wm,
> -	.get_hw_state =3D skl_wm_get_hw_state_and_sanitize,
> -};
> -
> -void skl_wm_init(struct drm_i915_private *i915)
> -{
> -	intel_sagv_init(i915);
> -
> -	skl_setup_wm_latency(i915);
> -
> -	i915->display.funcs.wm =3D &skl_wm_funcs;
> -}
> -
>  static struct intel_global_state *intel_dbuf_duplicate_state(struct inte=
l_global_obj *obj)
>  {
>  	struct intel_dbuf_state *dbuf_state;
> @@ -3757,6 +3547,216 @@ void intel_dbuf_post_plane_update(struct intel_at=
omic_state *state)
>  	gen9_dbuf_slices_update(i915, new_slices);
>  }
>=20=20
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
> +static void skl_wm_sanitize(struct drm_i915_private *i915)
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
> +static void skl_wm_get_hw_state_and_sanitize(struct drm_i915_private *i9=
15)
> +{
> +	skl_wm_get_hw_state(i915);
> +	skl_wm_sanitize(i915);
> +}
> +
> +void intel_wm_state_verify(struct intel_atomic_state *state,
> +			   struct intel_crtc *crtc)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(state->base.dev);
> +	const struct intel_crtc_state *new_crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct skl_hw_state {
> +		struct skl_ddb_entry ddb[I915_MAX_PLANES];
> +		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> +		struct skl_pipe_wm wm;
> +	} *hw;
> +	const struct skl_pipe_wm *sw_wm =3D &new_crtc_state->wm.skl.optimal;
> +	struct intel_plane *plane;
> +	u8 hw_enabled_slices;
> +	int level;
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
> +		for (level =3D 0; level < i915->display.wm.num_levels; level++) {
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
> +static const struct intel_wm_funcs skl_wm_funcs =3D {
> +	.compute_global_watermarks =3D skl_compute_wm,
> +	.get_hw_state =3D skl_wm_get_hw_state_and_sanitize,
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
>  static int skl_watermark_ipc_status_show(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *i915 =3D m->private;

--=20
Jani Nikula, Intel
