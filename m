Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB9E172315
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 17:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55CE36E926;
	Thu, 27 Feb 2020 16:20:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA276E926
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 16:20:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 08:20:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="285375511"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Feb 2020 08:20:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 18:20:14 +0200
Date: Thu, 27 Feb 2020 18:20:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200227162014.GS13686@intel.com>
References: <20200224153240.9047-8-stanislav.lisovskiy@intel.com>
 <20200225150043.32475-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225150043.32475-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v18 7/8] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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

On Tue, Feb 25, 2020 at 05:00:43PM +0200, Stanislav Lisovskiy wrote:
> According to BSpec 53998, we should try to
> restrict qgv points, which can't provide
> enough bandwidth for desired display configuration.
> =

> Currently we are just comparing against all of
> those and take minimum(worst case).
> =

> v2: Fixed wrong PCode reply mask, removed hardcoded
>     values.
> =

> v3: Forbid simultaneous legacy SAGV PCode requests and
>     restricting qgv points. Put the actual restriction
>     to commit function, added serialization(thanks to Ville)
>     to prevent commit being applied out of order in case of
>     nonblocking and/or nomodeset commits.
> =

> v4:
>     - Minor code refactoring, fixed few typos(thanks to James Ausmus)
>     - Change the naming of qgv point
>       masking/unmasking functions(James Ausmus).
>     - Simplify the masking/unmasking operation itself,
>       as we don't need to mask only single point per request(James Ausmus)
>     - Reject and stick to highest bandwidth point if SAGV
>       can't be enabled(BSpec)
> =

> v5:
>     - Add new mailbox reply codes, which seems to happen during boot
>       time for TGL and indicate that QGV setting is not yet available.
> =

> v6:
>     - Increase number of supported QGV points to be in sync with BSpec.
> =

> v7: - Rebased and resolved conflict to fix build failure.
>     - Fix NUM_QGV_POINTS to 8 and moved that to header file(James Ausmus)
> =

> v8: - Don't report an error if we can't restrict qgv points, as SAGV
>       can be disabled by BIOS, which is completely legal. So don't
>       make CI panic. Instead if we detect that there is only 1 QGV
>       point accessible just analyze if we can fit the required bandwidth
>       requirements, but no need in restricting.
> =

> v9: - Fix wrong QGV transition if we have 0 planes and no SAGV
>       simultaneously.
> =

> v10: - Fix CDCLK corruption, because of global state getting serialized
>        without modeset, which caused copying of non-calculated cdclk
>        to be copied to dev_priv(thanks to Ville for the hint).
> =

> v11: - Remove unneeded headers and spaces(Matthew Roper)
>      - Remove unneeded intel_qgv_info qi struct from bw check and zero
>        out the needed one(Matthew Roper)
>      - Changed QGV error message to have more clear meaning(Matthew Roper)
>      - Use state->modeset_set instead of any_ms(Matthew Roper)
>      - Moved NUM_SAGV_POINTS from i915_reg.h to i915_drv.h where it's used
>      - Keep using crtc_state->hw.active instead of .enable(Matthew Roper)
>      - Moved unrelated changes to other patch(using latency as parameter
>        for plane wm calculation, moved to SAGV refactoring patch)
> =

> v12: - Fix rebase conflict with own temporary SAGV/QGV fix.
>      - Remove unnecessary mask being zero check when unmasking
>        qgv points as this is completely legal(Matt Roper)
>      - Check if we are setting the same mask as already being set
>        in hardware to prevent error from PCode.
>      - Fix error message when restricting/unrestricting qgv points
>        to "mask/unmask" which sounds more accurate(Matt Roper)
>      - Move sagv status setting to icl_get_bw_info from atomic check
>        as this should be calculated only once.(Matt Roper)
>      - Edited comments for the case when we can't enable SAGV and
>        use only 1 QGV point with highest bandwidth to be more
>        understandable.(Matt Roper)
> =

> v13: - Moved max_data_rate in bw check to closer scope(Ville Syrj=E4l=E4)
>      - Changed comment for zero new_mask in qgv points masking function
>        to better reflect reality(Ville Syrj=E4l=E4)
>      - Simplified bit mask operation in qgv points masking function
>        (Ville Syrj=E4l=E4)
>      - Moved intel_qgv_points_mask closer to gen11 SAGV disabling,
>        however this still can't be under modeset condition(Ville Syrj=E4l=
=E4)
>      - Packed qgv_points_mask as u8 and moved closer to pipe_sagv_mask
>        (Ville Syrj=E4l=E4)
>      - Extracted PCode changes to separate patch.(Ville Syrj=E4l=E4)
>      - Now treat num_planes 0 same as 1 to avoid confusion and
>        returning max_bw as 0, which would prevent choosing QGV
>        point having max bandwidth in case if SAGV is not allowed,
>        as per BSpec(Ville Syrj=E4l=E4)
>      - Do the actual qgv_points_mask swap in the same place as
>        all other global state parts like cdclk are swapped.
>        In the next patch, this all will be moved to bw state as
>        global state, once new global state patch series from Ville
>        lands
> =

> v14: - Now using global state to serialize access to qgv points
>      - Added global state locking back, otherwise we seem to read
>        bw state in a wrong way.
> =

> v15: - Added TODO comment for near atomic global state locking in
>        bw code.
> =

> v16: - Fixed intel_atomic_bw_* functions to be intel_bw_* as discussed
>        with Jani Nikula.
>      - Take bw_state_changed flag into use.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c      | 184 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_bw.h      |   9 +
>  drivers/gpu/drm/i915/display/intel_display.c | 125 ++++++++++++-
>  drivers/gpu/drm/i915/i915_drv.h              |   3 +
>  4 files changed, 255 insertions(+), 66 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index d5be603b8b03..4986a5464700 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -8,6 +8,9 @@
>  #include "intel_bw.h"
>  #include "intel_display_types.h"
>  #include "intel_sideband.h"
> +#include "intel_atomic.h"
> +#include "intel_pm.h"
> +
>  =

>  /* Parameters for Qclk Geyserville (QGV) */
>  struct intel_qgv_point {
> @@ -113,6 +116,26 @@ static int icl_pcode_read_qgv_point_info(struct drm_=
i915_private *dev_priv,
>  	return 0;
>  }
>  =

> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask)
> +{
> +	int ret;
> +
> +	/* bspec says to keep retrying for at least 1 ms */
> +	ret =3D skl_pcode_request(dev_priv, ICL_PCODE_SAGV_DE_MEM_SS_CONFIG,
> +				points_mask,
> +				GEN11_PCODE_POINTS_RESTRICTED_MASK,
> +				GEN11_PCODE_POINTS_RESTRICTED,
> +				1);
> +
> +	if (ret < 0) {
> +		DRM_ERROR("Failed to disable qgv points (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			      struct intel_qgv_info *qi)
>  {
> @@ -240,6 +263,16 @@ static int icl_get_bw_info(struct drm_i915_private *=
dev_priv, const struct intel
>  			break;
>  	}
>  =

> +	/*
> +	 * In case if SAGV is disabled in BIOS, we always get 1
> +	 * SAGV point, but we can't send PCode commands to restrict it
> +	 * as it will fail and pointless anyway.
> +	 */
> +	if (qi.num_points =3D=3D 1)
> +		dev_priv->sagv_status =3D I915_SAGV_NOT_CONTROLLED;
> +	else
> +		dev_priv->sagv_status =3D I915_SAGV_ENABLED;
> +
>  	return 0;
>  }
>  =

> @@ -259,7 +292,7 @@ static unsigned int icl_max_bw(struct drm_i915_privat=
e *dev_priv,
>  		if (qgv_point >=3D bi->num_qgv_points)
>  			return UINT_MAX;
>  =

> -		if (num_planes >=3D bi->num_planes)
> +		if (num_planes >=3D bi->num_planes || !num_planes)
>  			return bi->deratedbw[qgv_point];
>  	}
>  =

> @@ -277,34 +310,6 @@ void intel_bw_init_hw(struct drm_i915_private *dev_p=
riv)
>  		icl_get_bw_info(dev_priv, &icl_sa_info);
>  }
>  =

> -static unsigned int intel_max_data_rate(struct drm_i915_private *dev_pri=
v,
> -					int num_planes)
> -{
> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> -		/*
> -		 * Any bw group has same amount of QGV points
> -		 */
> -		const struct intel_bw_info *bi =3D
> -			&dev_priv->max_bw[0];
> -		unsigned int min_bw =3D UINT_MAX;
> -		int i;
> -
> -		/*
> -		 * FIXME with SAGV disabled maybe we can assume
> -		 * point 1 will always be used? Seems to match
> -		 * the behaviour observed in the wild.
> -		 */
> -		for (i =3D 0; i < bi->num_qgv_points; i++) {
> -			unsigned int bw =3D icl_max_bw(dev_priv, num_planes, i);
> -
> -			min_bw =3D min(bw, min_bw);
> -		}
> -		return min_bw;
> -	} else {
> -		return UINT_MAX;
> -	}
> -}
> -
>  static unsigned int intel_bw_crtc_num_active_planes(const struct intel_c=
rtc_state *crtc_state)
>  {
>  	/*
> @@ -418,11 +423,16 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
> -	struct intel_bw_state *bw_state =3D NULL;
> -	unsigned int data_rate, max_data_rate;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
> +	unsigned int data_rate;
>  	unsigned int num_active_planes;
>  	struct intel_crtc *crtc;
>  	int i, ret;
> +	u32 allowed_points =3D 0;
> +	unsigned int max_bw_point =3D 0, max_bw =3D 0;
> +	unsigned int num_qgv_points =3D dev_priv->max_bw[0].num_qgv_points;
> +	u32 mask =3D (1 << num_qgv_points) - 1;
>  =

>  	/*
>  	 * For earlier Gens let's consider bandwidth changed if ddb requirement=
s,
> @@ -430,11 +440,11 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  	 */
>  	if (INTEL_GEN(dev_priv) < 11) {
>  		if (state->ddb_state_changed) {
> -			bw_state =3D intel_bw_get_state(state);
> -			if (IS_ERR(bw_state))
> -				return PTR_ERR(bw_state);
> +			new_bw_state =3D intel_bw_get_state(state);
> +			if (IS_ERR(new_bw_state))
> +				return PTR_ERR(new_bw_state);

Lot's of rename noise in the patch. Can't really see what's going on
unless those are split out.

>  =

> -			ret =3D intel_atomic_lock_global_state(&bw_state->base);
> +			ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
>  			if (ret)
>  				return ret;
>  =

> @@ -465,45 +475,107 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>  		    old_active_planes =3D=3D new_active_planes)
>  			continue;
>  =

> -		bw_state =3D intel_bw_get_state(state);
> -		if (IS_ERR(bw_state))
> -			return PTR_ERR(bw_state);
> +		new_bw_state =3D intel_bw_get_state(state);
> +		if (IS_ERR(new_bw_state))
> +			return PTR_ERR(new_bw_state);
>  =

> -		bw_state->data_rate[crtc->pipe] =3D new_data_rate;
> -		bw_state->num_active_planes[crtc->pipe] =3D new_active_planes;
> +		new_bw_state->data_rate[crtc->pipe] =3D new_data_rate;
> +		new_bw_state->num_active_planes[crtc->pipe] =3D new_active_planes;
>  =

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "pipe %c data rate %u num active planes %u\n",
>  			    pipe_name(crtc->pipe),
> -			    bw_state->data_rate[crtc->pipe],
> -			    bw_state->num_active_planes[crtc->pipe]);
> +			    new_bw_state->data_rate[crtc->pipe],
> +			    new_bw_state->num_active_planes[crtc->pipe]);
>  	}
>  =

> -	if (!bw_state)
> +	if (!new_bw_state)
>  		return 0;
>  =

> -	ret =3D intel_atomic_lock_global_state(&bw_state->base);
> -	if (ret)
> +	ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> +	if (ret) {
> +		DRM_DEBUG_KMS("Could not lock global state\n");
>  		return ret;
> +	}
>  =

> -	DRM_DEBUG_KMS("Marking bw state changed for atomic state %p\n", state);
> -
> -	state->bw_state_changed =3D true;
> +	data_rate =3D intel_bw_data_rate(dev_priv, new_bw_state);
> +	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>  =

> -	data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
> -	num_active_planes =3D intel_bw_num_active_planes(dev_priv, bw_state);
> +	num_active_planes =3D intel_bw_num_active_planes(dev_priv, new_bw_state=
);
>  =

> -	max_data_rate =3D intel_max_data_rate(dev_priv, num_active_planes);
> +	for (i =3D 0; i < num_qgv_points; i++) {
> +		unsigned int max_data_rate;
>  =

> -	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
> +		max_data_rate =3D icl_max_bw(dev_priv, num_active_planes, i);
> +		/*
> +		 * We need to know which qgv point gives us
> +		 * maximum bandwidth in order to disable SAGV
> +		 * if we find that we exceed SAGV block time
> +		 * with watermarks. By that moment we already
> +		 * have those, as it is calculated earlier in
> +		 * intel_atomic_check,
> +		 */
> +		if (max_data_rate > max_bw) {
> +			max_bw_point =3D i;
> +			max_bw =3D max_data_rate;
> +		}
> +		if (max_data_rate >=3D data_rate)
> +			allowed_points |=3D BIT(i);
> +		DRM_DEBUG_KMS("QGV point %d: max bw %d required %d\n",
> +			      i, max_data_rate, data_rate);
> +	}
>  =

> -	if (data_rate > max_data_rate) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Bandwidth %u MB/s exceeds max available %d MB/s (%d active plane=
s)\n",
> -			    data_rate, max_data_rate, num_active_planes);
> +	/*
> +	 * BSpec states that we always should have at least one allowed point
> +	 * left, so if we couldn't - simply reject the configuration for obvious
> +	 * reasons.
> +	 */
> +	if (allowed_points =3D=3D 0) {
> +		DRM_DEBUG_KMS("No QGV points provide sufficient memory"
> +			      " bandwidth for display configuration.\n");
>  		return -EINVAL;
>  	}
>  =

> +	/*
> +	 * Leave only single point with highest bandwidth, if
> +	 * we can't enable SAGV due to the increased memory latency it may
> +	 * cause.
> +	 */
> +	if (!intel_can_enable_sagv_for_state(state)) {
> +		allowed_points =3D 1 << max_bw_point;
> +		DRM_DEBUG_KMS("No SAGV, using single QGV point %d\n",
> +			      max_bw_point);
> +	}
> +	/*
> +	 * We store the ones which need to be masked as that is what PCode
> +	 * actually accepts as a parameter.
> +	 */
> +	new_bw_state->qgv_points_mask =3D (~allowed_points) & mask;
> +
> +	DRM_DEBUG_KMS("New state %p qgv mask %x\n",
> +		      state, new_bw_state->qgv_points_mask);
> +
> +	old_bw_state =3D intel_bw_get_old_state(state);
> +	if (IS_ERR(old_bw_state)) {
> +		DRM_DEBUG_KMS("Could not get old bw state!\n");
> +		return PTR_ERR(old_bw_state);
> +	}
> +
> +	/*
> +	 * If the actual mask had changed we need to make sure that
> +	 * the commits are serialized(in case this is a nomodeset, nonblocking)
> +	 */
> +	if (new_bw_state->qgv_points_mask !=3D old_bw_state->qgv_points_mask) {
> +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret) {
> +			DRM_DEBUG_KMS("Could not serialize global state\n");
> +			return ret;
> +		}
> +
> +		DRM_DEBUG_KMS("Marking bw state changed for atomic state %p\n", state);
> +		state->bw_state_changed =3D true;
> +	}
> +
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index c32b5285c12f..b3522389a181 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -36,6 +36,13 @@ struct intel_bw_state {
>  	 */
>  	bool can_sagv;
>  =

> +	/*
> +	 * Current QGV points mask, which restricts
> +	 * some particular SAGV states, not to confuse
> +	 * with pipe_sagv_mask.
> +	 */
> +	u8 qgv_points_mask;
> +
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
> @@ -56,5 +63,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6df836cbe0cd..cb1d10af88ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15504,6 +15504,105 @@ static void intel_atomic_cleanup_work(struct wo=
rk_struct *work)
>  	intel_atomic_helper_free_state(i915);
>  }
>  =

> +static void intel_qgv_points_mask(struct intel_atomic_state *state)

I think we should move these next to the other sagv code and just
call them somehting like intel_sagv_{pre,post}_plane_update()  to
a) avoid the caller having to know anything about them, b) match
the pattern used for other similar things.

And I think the internals should just be something like:
intel_sagv_pre/post_plane_update()
{
	new_bw_state =3D get_new_bw_state();
	old_bw_state =3D get_old_bw_state();

	if (!new_bw_state ||
	     new_bw_state->sagv_mask =3D=3D old_bw_state->sagv_mask)
	     return;

	do the pcode dance
}

I don't see a need for any more checks than than because that
would just mean that bw_check() is broken and needs to be fixed.


> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
> +	u32 new_mask =3D 0;
> +	unsigned int num_qgv_points =3D dev_priv->max_bw[0].num_qgv_points;
> +	unsigned int mask =3D (1 << num_qgv_points) - 1;
> +
> +	new_bw_state =3D intel_bw_get_state(state);
> +	if (IS_ERR(new_bw_state)) {
> +		WARN(1, "Could not get new bw_state!\n");
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_bw_get_old_state(state);
> +	if (IS_ERR(old_bw_state)) {
> +		WARN(1, "Could not get old bw_state!\n");
> +		return;
> +	}
> +
> +	new_mask =3D old_bw_state->qgv_points_mask | new_bw_state->qgv_points_m=
ask;
> +
> +	/*
> +	 * If new mask is zero - means there is nothing to mask,
> +	 * we can only unmask, which should be done in unmask.
> +	 */
> +	if (!new_mask)
> +		return;
> +
> +	WARN_ON(new_mask =3D=3D mask);
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	/*
> +	 * Restrict required qgv points before updating the configuration.
> +	 * According to BSpec we can't mask and unmask qgv points at the same
> +	 * time. Also masking should be done before updating the configuration
> +	 * and unmasking afterwards.
> +	 */
> +	ret =3D icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> +	if (ret < 0)
> +		DRM_DEBUG_KMS("Could not mask required qgv points(%d)\n",
> +			      ret);
> +}
> +
> +static void intel_qgv_points_unmask(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
> +	u32 new_mask =3D 0;
> +
> +	new_bw_state =3D intel_bw_get_state(state);
> +	if (IS_ERR(new_bw_state)) {
> +		WARN(1, "Could not get new bw_state!\n");
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_bw_get_old_state(state);
> +	if (IS_ERR(old_bw_state)) {
> +		WARN(1, "Could not get new bw_state!\n");
> +		return;
> +	}
> +
> +	new_mask =3D new_bw_state->qgv_points_mask;
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	/*
> +	 * Nothing to unmask
> +	 */
> +	if (new_mask =3D=3D old_bw_state->qgv_points_mask)
> +		return;
> +
> +	/*
> +	 * Allow required qgv points after updating the configuration.
> +	 * According to BSpec we can't mask and unmask qgv points at the same
> +	 * time. Also masking should be done before updating the configuration
> +	 * and unmasking afterwards.
> +	 */
> +	ret =3D icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> +	if (ret < 0)
> +		DRM_DEBUG_KMS("Could not unmask required qgv points(%d)\n",
> +			      ret);
> +}
> +
>  static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  {
>  	struct drm_device *dev =3D state->base.dev;
> @@ -15537,6 +15636,15 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>  		crtc->config =3D new_crtc_state;
>  =

> +	/*
> +	 * Now we need to check if SAGV needs to be disabled(i.e QGV points
> +	 * modified even, when no modeset is done(for example plane updates
> +	 * can now trigger that).
> +	 */
> +	if ((INTEL_GEN(dev_priv) >=3D 11))
> +		if (state->bw_state_changed)
> +			intel_qgv_points_mask(state);
> +
>  	if (state->modeset) {
>  		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
>  =

> @@ -15546,12 +15654,9 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  		 * SKL workaround: bspec recommends we disable the SAGV when we
>  		 * have more then one pipe enabled
>  		 */
> -		if (INTEL_GEN(dev_priv) < 11) {
> -			if (state->bw_state_changed) {
> -				if (!intel_can_enable_sagv(dev_priv))
> -					intel_disable_sagv(dev_priv);
> -			}
> -		}
> +		if ((INTEL_GEN(dev_priv) < 11))
> +			if (!intel_can_enable_sagv(dev_priv))
> +				intel_disable_sagv(dev_priv);
>  =

>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
> @@ -15652,10 +15757,10 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
>  		intel_verify_planes(state);
>  =

>  	if (INTEL_GEN(dev_priv) < 11) {
> -		if (state->bw_state_changed) {
> -			if (intel_can_enable_sagv(dev_priv))
> -				intel_enable_sagv(dev_priv);
> -		}
> +		if (intel_can_enable_sagv(dev_priv))
> +			intel_enable_sagv(dev_priv);
> +	} else if (state->bw_state_changed) {
> +		intel_qgv_points_unmask(state);
>  	}
>  =

>  	drm_atomic_helper_commit_hw_done(&state->base);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 4305ccc4c683..0a589700a071 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -841,6 +841,9 @@ enum intel_pipe_crc_source {
>  	INTEL_PIPE_CRC_SOURCE_MAX,
>  };
>  =

> +/* BSpec precisely defines this */
> +#define NUM_SAGV_POINTS 8
> +
>  #define INTEL_PIPE_CRC_ENTRIES_NR	128
>  struct intel_pipe_crc {
>  	spinlock_t lock;
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
