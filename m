Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 141741233C7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 18:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796046E0E9;
	Tue, 17 Dec 2019 17:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 569246E0C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 17:42:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 09:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="298125981"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 17 Dec 2019 09:42:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Dec 2019 19:42:54 +0200
Date: Tue, 17 Dec 2019 19:42:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191217174254.GG1208@intel.com>
References: <20191213141231.7330-1-stanislav.lisovskiy@intel.com>
 <20191213141231.7330-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213141231.7330-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v12 2/3] drm/i915: Restrict qgv points which
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

On Fri, Dec 13, 2019 at 04:12:30PM +0200, Stanislav Lisovskiy wrote:
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

> Reviewed-by: James Ausmus <james.ausmus@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 144 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bw.h       |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c  |  87 ++++++++++-
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/i915_drv.h               |   5 +
>  drivers/gpu/drm/i915/i915_reg.h               |   5 +
>  drivers/gpu/drm/i915/intel_sideband.c         |  27 +++-
>  7 files changed, 233 insertions(+), 40 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index dcb66a33be9b..95d8d7dfa769 100644
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
> @@ -236,6 +259,16 @@ static int icl_get_bw_info(struct drm_i915_private *=
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

> @@ -273,34 +306,6 @@ void intel_bw_init_hw(struct drm_i915_private *dev_p=
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
> @@ -392,7 +397,11 @@ int intel_bw_atomic_check(struct intel_atomic_state =
*state)
>  	unsigned int data_rate, max_data_rate;
>  	unsigned int num_active_planes;
>  	struct intel_crtc *crtc;
> -	int i;
> +	int i, ret;
> +	u32 allowed_points =3D 0;
> +	unsigned int max_bw_point =3D 0, max_bw =3D 0;
> +	unsigned int num_qgv_points =3D dev_priv->max_bw[0].num_qgv_points;
> +	u32 mask =3D (1 << num_qgv_points) - 1;
>  =

>  	/* FIXME earlier gens need some checks too */
>  	if (INTEL_GEN(dev_priv) < 11)
> @@ -436,16 +445,83 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  	data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
>  	num_active_planes =3D intel_bw_num_active_planes(dev_priv, bw_state);
>  =

> -	max_data_rate =3D intel_max_data_rate(dev_priv, num_active_planes);
> -
>  	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
>  =

> -	if (data_rate > max_data_rate) {
> -		DRM_DEBUG_KMS("Bandwidth %u MB/s exceeds max available %d MB/s (%d act=
ive planes)\n",
> -			      data_rate, max_data_rate, num_active_planes);
> +	for (i =3D 0; i < num_qgv_points; i++) {
> +		max_data_rate =3D icl_max_bw(dev_priv, num_active_planes, i);

max_data_rate no longer needed outside the loop, so should move the
declaration in.

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

Seems a bit redundant having both 'mask' and 'allowed_points'.

Could flip it around and just do:

allowed_points =3D (1<<num_points)-1;
for() {
	if (data_rate > max)
		allowed_points &=3D ~BIT(i)
}

> +		DRM_DEBUG_KMS("QGV point %d: max bw %d required %d\n",
> +			      i, max_data_rate, data_rate);
> +	}
> +
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
> +	if (!intel_can_enable_sagv(state)) {
> +		/*
> +		 * This is a special case, when we have 0 planes
> +		 * and SAGV can't be enabled means that we should keep QGV with
> +		 * highest bandwidth, however algorithm returns wrong result
> +		 * for 0 planes and 0 data rate case, so just stick to last config
> +		 * then. Otherwise use the QGV point with highest BW according
> +		 * to BSpec.
> +		 */
> +		if (!data_rate && !num_active_planes) {

Why would we need to special case this? AFAICS max_bw_point should be
valid regardless. We could also precompute it at init time and stuff
it into dev_priv alongside the res of the bw stuff.

> +			DRM_DEBUG_KMS("No SAGV, using old QGV mask\n");
> +			allowed_points =3D (~dev_priv->qgv_points_mask) & mask;
> +		} else {
> +			allowed_points =3D 1 << max_bw_point;
> +			DRM_DEBUG_KMS("No SAGV, using single QGV point %d\n",
> +				      max_bw_point);
> +		}
> +	}
> +	/*
> +	 * We store the ones which need to be masked as that is what PCode
> +	 * actually accepts as a parameter.
> +	 */
> +	state->qgv_points_mask =3D (~allowed_points) & mask;

Ah we need to invert it. I guess we do need two variables then.
Though we could just compute it as inverted already and then check

if (qgv_points_mask =3D=3D all_qgv_points)
	return -EINVAL;

> +
> +	DRM_DEBUG_KMS("New state %p qgv mask %x\n",
> +		      state, state->qgv_points_mask);
> +
> +	/*
> +	 * If the actual mask had changed we need to make sure that
> +	 * the commits are serialized(in case this is a nomodeset, nonblocking)
> +	 */
> +	if (state->qgv_points_mask !=3D dev_priv->qgv_points_mask) {
> +		ret =3D intel_atomic_serialize_global_state(state);
> +		if (ret) {
> +			DRM_DEBUG_KMS("Could not serialize global state\n");
> +			return ret;
> +		}
> +	}
> +
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 9db10af012f4..66bf9bc10b73 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -28,5 +28,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index d58c70fbc08e..92f2db6358f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14689,6 +14689,75 @@ static void intel_atomic_cleanup_work(struct wor=
k_struct *work)
>  	intel_atomic_helper_free_state(i915);
>  }
>  =

> +static void intel_qgv_points_mask(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	u32 new_mask =3D dev_priv->qgv_points_mask | state->qgv_points_mask;
> +	unsigned int num_qgv_points =3D dev_priv->max_bw[0].num_qgv_points;
> +	unsigned int mask =3D (1 << num_qgv_points) - 1;
> +
> +	/*
> +	 * As we don't know initial hardware state during initial commit
> +	 * we should not do anything, until we actually figure out,
> +	 * what are the qgv points to mask.
> +	 */
> +	if (!new_mask)
> +		return;

How can we get here with zero _new_ mask? We should have computed it
already.

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
> +	else
> +		dev_priv->qgv_points_mask =3D new_mask;

We should not frob this here. It should only be changed at swap_state().

> +}
> +
> +static void intel_qgv_points_unmask(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	u32 new_mask =3D dev_priv->qgv_points_mask & state->qgv_points_mask;

Shouldn't that just be the new mask and not old&new?

> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	if (new_mask =3D=3D dev_priv->qgv_points_mask)
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
> +	else
> +		dev_priv->qgv_points_mask =3D new_mask;
> +}
> +
>  static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  {
>  	struct drm_device *dev =3D state->base.dev;
> @@ -14716,6 +14785,9 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  		}
>  	}
>  =

> +	if ((INTEL_GEN(dev_priv) >=3D 11))
> +		intel_qgv_points_mask(state);

Hmm. Why isn't this next to the sagv disable?

> +
>  	intel_commit_modeset_disables(state);
>  =

>  	/* FIXME: Eventually get rid of our crtc->config pointer */
> @@ -14734,8 +14806,9 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  		 * SKL workaround: bspec recommends we disable the SAGV when we
>  		 * have more then one pipe enabled
>  		 */
> -		if (!intel_can_enable_sagv(state))
> -			intel_disable_sagv(dev_priv);
> +		if (INTEL_GEN(dev_priv) < 11)
> +			if (!intel_can_enable_sagv(state))
> +				intel_disable_sagv(dev_priv);
>  =

>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
> @@ -14832,8 +14905,12 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>  	if (state->modeset)
>  		intel_verify_planes(state);
>  =

> -	if (state->modeset && intel_can_enable_sagv(state))
> -		intel_enable_sagv(dev_priv);
> +	if (INTEL_GEN(dev_priv) < 11) {
> +		if (state->modeset && intel_can_enable_sagv(state))
> +			intel_enable_sagv(dev_priv);
> +	} else {
> +		intel_qgv_points_unmask(state);
> +	}
>  =

>  	drm_atomic_helper_commit_hw_done(&state->base);
>  =

> @@ -14980,7 +15057,7 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>  	intel_shared_dpll_swap_state(state);
>  	intel_atomic_track_fbs(state);
> =




> -	if (state->global_state_changed) {
> +	if (state->global_state_changed && state->modeset) {
>  		assert_global_state_locked(dev_priv);
>  =

>  		memcpy(dev_priv->min_cdclk, state->min_cdclk,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5301e1042b40..e1ac7c01bbda 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -528,6 +528,9 @@ struct intel_atomic_state {
>  	struct i915_sw_fence commit_ready;
>  =

>  	struct llist_node freed;
> +
> +	/* Gen11+ only */
> +	u32 qgv_points_mask;

u8 seems sufficient. Pls pack it next to some other u8 semi-related =

stuff if possible so we can try to avoid extra holes.

>  };
>  =

>  struct intel_plane_state {
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index b877c42213c4..ac9690d98910 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -850,6 +850,9 @@ enum intel_pipe_crc_source {
>  	INTEL_PIPE_CRC_SOURCE_MAX,
>  };
>  =

> +/* BSpec precisely defines this */
> +#define NUM_SAGV_POINTS 8
> +
>  #define INTEL_PIPE_CRC_ENTRIES_NR	128
>  struct intel_pipe_crc {
>  	spinlock_t lock;
> @@ -1244,6 +1247,8 @@ struct drm_i915_private {
>  		u8 num_planes;
>  	} max_bw[6];
>  =

> +	u32 qgv_points_mask;
> +
>  	struct drm_private_obj bw_obj;
>  =

>  	struct intel_runtime_pm runtime_pm;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 17f9dd3bda72..0a55bd529fbb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8999,6 +8999,8 @@ enum {
>  #define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
>  #define     GEN7_PCODE_TIMEOUT			0x2
>  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
> +#define     GEN11_PCODE_MAIL_BOX_LOCKED		0x6
> +#define     GEN11_PCODE_REJECTED		0x11
>  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
>  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
>  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> @@ -9020,6 +9022,7 @@ enum {
>  #define   ICL_PCODE_MEM_SUBSYSYSTEM_INFO	0xd
>  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
> +#define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
> @@ -9032,6 +9035,8 @@ enum {
>  #define     GEN9_SAGV_IS_DISABLED		0x1
>  #define     GEN9_SAGV_ENABLE			0x3
>  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> +#define GEN11_PCODE_POINTS_RESTRICTED		0x0
> +#define GEN11_PCODE_POINTS_RESTRICTED_MASK	0x1
>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> diff --git a/drivers/gpu/drm/i915/intel_sideband.c b/drivers/gpu/drm/i915=
/intel_sideband.c
> index e06b35b844a0..ff9dbed094d8 100644
> --- a/drivers/gpu/drm/i915/intel_sideband.c
> +++ b/drivers/gpu/drm/i915/intel_sideband.c
> @@ -371,6 +371,29 @@ static inline int gen7_check_mailbox_status(u32 mbox)
>  	}
>  }
>  =

> +static inline int gen11_check_mailbox_status(u32 mbox)
> +{
> +	switch (mbox & GEN6_PCODE_ERROR_MASK) {
> +	case GEN6_PCODE_SUCCESS:
> +		return 0;
> +	case GEN6_PCODE_ILLEGAL_CMD:
> +		return -ENXIO;
> +	case GEN7_PCODE_TIMEOUT:
> +		return -ETIMEDOUT;
> +	case GEN7_PCODE_ILLEGAL_DATA:
> +		return -EINVAL;
> +	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
> +		return -EOVERFLOW;
> +	case GEN11_PCODE_MAIL_BOX_LOCKED:
> +		return -EAGAIN;

Do we really expect it to work if we retry?

> +	case GEN11_PCODE_REJECTED:
> +		return -EACCES;

These things don't seem to conflict with the gen7 stuff so could
probably just stuff them into the gen7 function. In any case this
pcode change should be a separate patch.

> +	default:
> +		MISSING_CASE(mbox & GEN6_PCODE_ERROR_MASK);
> +		return 0;
> +	}
> +}
> +
>  static int __sandybridge_pcode_rw(struct drm_i915_private *i915,
>  				  u32 mbox, u32 *val, u32 *val1,
>  				  int fast_timeout_us,
> @@ -408,7 +431,9 @@ static int __sandybridge_pcode_rw(struct drm_i915_pri=
vate *i915,
>  	if (is_read && val1)
>  		*val1 =3D intel_uncore_read_fw(uncore, GEN6_PCODE_DATA1);
>  =

> -	if (INTEL_GEN(i915) > 6)
> +	if (INTEL_GEN(i915) >=3D 11)
> +		return gen11_check_mailbox_status(mbox);
> +	else if (INTEL_GEN(i915) > 6)
>  		return gen7_check_mailbox_status(mbox);
>  	else
>  		return gen6_check_mailbox_status(mbox);
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
