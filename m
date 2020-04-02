Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E38E919C856
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 19:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF86C6E145;
	Thu,  2 Apr 2020 17:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD0E56E145
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 17:50:42 +0000 (UTC)
IronPort-SDR: nAjRYG6xaixABK3dJMF/kju3a5iscAFeuUf1YtxA3z5lIKeQxWKhMBiUNaKelYtPAC532gjcmI
 LLzlUj0C82NQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 10:50:42 -0700
IronPort-SDR: sHMnwQyNO6E6jbQbMqPGEWJ/g0JLf+9kau3G4meem85xiBE8HoQMURAx9okhEoW3gpTcAGvG9L
 wi4476bPdHug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="243140159"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 02 Apr 2020 10:50:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 20:50:38 +0300
Date: Thu, 2 Apr 2020 20:50:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402175038.GG13686@intel.com>
References: <20200326181005.11775-10-stanislav.lisovskiy@intel.com>
 <20200326183657.22700-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326183657.22700-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 09/10] drm/i915: Restrict qgv points
 which don't have enough bandwidth.
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:36:57PM +0200, Stanislav Lisovskiy wrote:
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

> v17: - Moved qgv point related manipulations next to SAGV code, as
>        those are semantically related(Ville Syrj=E4l=E4)
>      - Renamed those into intel_sagv_(pre)|(post)_plane_update
>        (Ville Syrj=E4l=E4)
> =

> v18: - Move sagv related calls from commit tail into
>        intel_sagv_(pre)|(post)_plane_update(Ville Syrj=E4l=E4)
> =

> v19: - Use intel_atomic_get_bw_(old)|(new)_state which is intended
>        for commit tail stage.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 147 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bw.h       |   9 ++
>  drivers/gpu/drm/i915/display/intel_display.c  |  29 +---
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/intel_pm.c               | 119 ++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h               |   2 +
>  6 files changed, 251 insertions(+), 58 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index d16771dd2b10..d5a93e8f7134 100644
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

So we're returning the first bandwidth number here? Isn't that the
lowest bandwidth (ie. max num_planes)?

I would think we want to return the max bandwidth. So I'd just do the
'num_planes =3D num_planes ?: 1'/etc. trick instead.

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
> @@ -419,10 +424,15 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_bw_state *new_bw_state =3D NULL;
> -	unsigned int data_rate, max_data_rate;
> +	struct intel_bw_state *old_bw_state =3D NULL;

const

> +	unsigned int data_rate;
>  	unsigned int num_active_planes;
>  	struct intel_crtc *crtc;
>  	int i, ret;
> +	u32 allowed_points =3D 0;
> +	unsigned int max_bw_point =3D 0, max_bw =3D 0;
> +	unsigned int num_qgv_points =3D dev_priv->max_bw[0].num_qgv_points;
> +	u32 mask =3D (1 << num_qgv_points) - 1;
>  =

>  	/* FIXME earlier gens need some checks too */
>  	if (INTEL_GEN(dev_priv) < 11)
> @@ -465,23 +475,86 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  		return 0;
>  =

>  	ret =3D intel_atomic_lock_global_state(&new_bw_state->base);
> -	if (ret)
> +	if (ret) {
> +		DRM_DEBUG_KMS("Could not lock global state\n");

Again, no debugs pls.

>  		return ret;
> +	}
>  =

>  	data_rate =3D intel_bw_data_rate(dev_priv, new_bw_state);
> +	data_rate =3D DIV_ROUND_UP(data_rate, 1000);
> +
>  	num_active_planes =3D intel_bw_num_active_planes(dev_priv, new_bw_state=
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

We lost the numbers here? Also pls switch to per-device debugs all over.

>  		return -EINVAL;
>  	}
>  =

> +	/*
> +	 * Leave only single point with highest bandwidth, if
> +	 * we can't enable SAGV due to the increased memory latency it may
> +	 * cause.
> +	 */
> +	if (!intel_can_enable_sagv(new_bw_state)) {
> +		allowed_points =3D 1 << max_bw_point;

BIT()

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

The debugs seem a bit excessive in general.

> +
> +	old_bw_state =3D intel_atomic_get_bw_old_state(state);
> +	if (IS_ERR(old_bw_state)) {

Can't error.

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
> +	}
> +
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 6ad3ea7cedfe..5cb0717c2df8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,13 @@ struct intel_bw_state {
>  	 */
>  	u8 pipe_sagv_reject;
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
> @@ -44,5 +51,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8a0d952c67bf..ab3d94e3e97e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15539,23 +15539,17 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
>  		crtc->config =3D new_crtc_state;
>  =

>  	if (state->modeset) {
> -		struct intel_bw_state *bw_state;
> -
> -		bw_state =3D intel_atomic_get_bw_new_state(state);
> +		/*
> +		 * Now we need to check if SAGV needs to be disabled(i.e QGV points
> +		 * modified even, when no modeset is done(for example plane updates
> +		 * can now trigger that).
> +		 */

Too many comments.

> +		intel_sagv_pre_plane_update(state);
>  =

>  		drm_atomic_helper_update_legacy_modeset_state(dev, &state->base);
>  =

>  		intel_set_cdclk_pre_plane_update(state);
>  =

> -		/*
> -		 * SKL workaround: bspec recommends we disable the SAGV when we
> -		 * have more then one pipe enabled
> -		 */
> -		if (INTEL_GEN(dev_priv) < 11) {
> -			if (bw_state && !intel_can_enable_sagv(bw_state))
> -				intel_disable_sagv(dev_priv);
> -		}
> -
>  		intel_modeset_verify_disabled(dev_priv, state);
>  	}
>  =

> @@ -15651,17 +15645,10 @@ static void intel_atomic_commit_tail(struct int=
el_atomic_state *state)
>  	intel_check_cpu_fifo_underruns(dev_priv);
>  	intel_check_pch_fifo_underruns(dev_priv);
>  =

> -	if (state->modeset)
> +	if (state->modeset) {
>  		intel_verify_planes(state);
>  =

> -	if (INTEL_GEN(dev_priv) < 11) {
> -		struct intel_bw_state *bw_state;
> -
> -		bw_state =3D intel_atomic_get_bw_new_state(state);
> -
> -		if (bw_state && state->modeset && intel_can_enable_sagv(bw_state)) {
> -			intel_enable_sagv(dev_priv);
> -		}
> +		intel_sagv_post_plane_update(state);
>  	}
>  =

>  	drm_atomic_helper_commit_hw_done(&state->base);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 51fa5a746a5f..8655038bafe7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -689,6 +689,9 @@ enum color_plane {
>  	COLOR_PLANE_UV
>  };
>  =

> +/* BSpec precisely defines this */
> +#define NUM_SAGV_POINTS 8
> +
>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
>  	bool can_sagv;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 63c46918d1ed..4b96c14f9361 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3758,6 +3758,125 @@ intel_disable_sagv(struct drm_i915_private *dev_p=
riv)
>  	return 0;
>  }
>  =

> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;

No redundant 'dev' variables pls.

> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
> +	u32 new_mask =3D 0;
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	new_bw_state =3D intel_atomic_get_bw_new_state(state);
> +	if (!new_bw_state) {
> +		WARN(1, "Could not get new bw_state\n");

Argh.

> +		return;
> +	}
> +
> +	if ((INTEL_GEN(dev_priv) < 11) && !intel_can_enable_sagv(new_bw_state))=
 {

Pointless parens.

> +		intel_disable_sagv(dev_priv);
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_atomic_get_bw_old_state(state);
> +	if (!old_bw_state) {
> +		WARN(1, "Could not get old bw_state\n");
> +		return;
> +	}
> +
> +	/*
> +	 * Nothing to mask
> +	 */
> +	if (new_bw_state->qgv_points_mask =3D=3D old_bw_state->qgv_points_mask)
> +		return;
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
> +	/*
> +	 * Restrict required qgv points before updating the configuration.
> +	 * According to BSpec we can't mask and unmask qgv points at the same
> +	 * time. Also masking should be done before updating the configuration
> +	 * and unmasking afterwards.
> +	 *
> +	ret =3D icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> +	if (ret < 0)
> +		DRM_DEBUG_KMS("Could not mask required qgv points(%d)\n",
> +			      ret);

Maybe error print instead?

> +}
> +
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	int ret;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	struct intel_bw_state *old_bw_state =3D NULL;
> +	u32 new_mask =3D 0;
> +
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	new_bw_state =3D intel_atomic_get_bw_new_state(state);
> +	if (!new_bw_state) {
> +		WARN(1, "Could not get new bw_state\n");
> +		return;
> +	}
> +
> +	if ((INTEL_GEN(dev_priv) < 11) && intel_can_enable_sagv(new_bw_state)) {
> +		intel_enable_sagv(dev_priv);
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_atomic_get_bw_old_state(state);
> +	if (!old_bw_state) {
> +		WARN(1, "Could not get old bw_state\n");
> +		return;
> +	}
> +
> +	/*
> +	 * Nothing to unmask
> +	 */
> +	if (new_bw_state->qgv_points_mask =3D=3D old_bw_state->qgv_points_mask)
> +		return;
> +
> +	new_mask =3D new_bw_state->qgv_points_mask;
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
>  static bool icl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_st=
ate)
>  {
>  	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 5fb32db4abc5..793a4add9831 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -42,6 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state);
>  bool intel_has_sagv(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct intel_bw_state *bw_state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
