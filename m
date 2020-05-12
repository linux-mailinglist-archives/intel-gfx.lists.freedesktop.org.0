Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F331CFA0A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 18:02:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A633689291;
	Tue, 12 May 2020 16:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7DC689A34
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 16:02:45 +0000 (UTC)
IronPort-SDR: X3IFrtvpHoX8XSoQI3uQ7iADnlbafPO8DhHoRwE6j2vb6AvpK1DgUB/N8sCk3cYSo/HyJcujKt
 vAB1oIlm987Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 09:02:35 -0700
IronPort-SDR: vxTa81YNQQ6Pnof28GCFsrSFzH6DkHQEDPIZGAUiAXS0E2MS2bJm+65e4L5TvbTbmPOrUaY+yn
 oLuBQsarV9bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="306520583"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 May 2020 09:02:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 19:02:31 +0300
Date: Tue, 12 May 2020 19:02:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200512160231.GX6112@intel.com>
References: <20200507144503.15506-1-stanislav.lisovskiy@intel.com>
 <20200507144503.15506-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507144503.15506-6-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v28 5/6] drm/i915: Restrict qgv points which
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

On Thu, May 07, 2020 at 05:45:02PM +0300, Stanislav Lisovskiy wrote:
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

> v20: - Return max bandwidth for 0 planes(Ville)
>      - Constify old_bw_state in bw_atomic_check(Ville)
>      - Removed some debugs(Ville)
>      - Added data rate to debug print when no QGV points(Ville)
>      - Removed some comments(Ville)
> =

> v21, v22, v23: - Fixed rebase conflict
> =

> v24: - Changed PCode mask to use ICL_ prefix
> v25: - Resolved rebase conflict
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c       | 139 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_bw.h       |   9 ++
>  .../drm/i915/display/intel_display_types.h    |   3 +
>  drivers/gpu/drm/i915/intel_pm.c               |  66 ++++++++-
>  drivers/gpu/drm/i915/intel_pm.h               |   2 +
>  5 files changed, 181 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 6e7cc3a4f1aa..5455420fde49 100644
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
> +				ICL_PCODE_POINTS_RESTRICTED_MASK,
> +				ICL_PCODE_POINTS_RESTRICTED,
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

> @@ -248,6 +281,11 @@ static unsigned int icl_max_bw(struct drm_i915_priva=
te *dev_priv,
>  {
>  	int i;
>  =

> +	/*
> +	 * Let's return max bw for 0 planes
> +	 */
> +	num_planes =3D max(1, num_planes);
> +
>  	for (i =3D 0; i < ARRAY_SIZE(dev_priv->max_bw); i++) {
>  		const struct intel_bw_info *bi =3D
>  			&dev_priv->max_bw[i];
> @@ -277,34 +315,6 @@ void intel_bw_init_hw(struct drm_i915_private *dev_p=
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
> @@ -415,10 +425,15 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>  	struct intel_bw_state *new_bw_state =3D NULL;
> -	unsigned int data_rate, max_data_rate;
> +	const struct intel_bw_state *old_bw_state =3D NULL;
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
> @@ -465,19 +480,73 @@ int intel_bw_atomic_check(struct intel_atomic_state=
 *state)
>  		return ret;
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
> +			      " bandwidth %d for display configuration.\n", data_rate);

Please use the drm_dbg_kms() & co. so as to not undo the changes other
people did to convert over to the per-device debugs/errors.

We also seem to lose the num_active_planes part of this debug message.
I think that might still be a nice piece of infomation to have around
when this fails.

>  		return -EINVAL;
>  	}
>  =

> +	/*
> +	 * Leave only single point with highest bandwidth, if
> +	 * we can't enable SAGV due to the increased memory latency it may
> +	 * cause.
> +	 */
> +	if (!intel_can_enable_sagv(dev_priv, new_bw_state)) {
> +		allowed_points =3D BIT(max_bw_point);
> +		DRM_DEBUG_KMS("No SAGV, using single QGV point %d\n",
> +			      max_bw_point);
> +	}
> +	/*
> +	 * We store the ones which need to be masked as that is what PCode
> +	 * actually accepts as a parameter.
> +	 */
> +	new_bw_state->qgv_points_mask =3D (~allowed_points) & mask;

Pointless parens.

> +
> +	old_bw_state =3D intel_atomic_get_old_bw_state(state);
> +	if (!old_bw_state)
> +		return -EINVAL;

This can't fail since you already have the new bw state.

> +
> +	/*
> +	 * If the actual mask had changed we need to make sure that
> +	 * the commits are serialized(in case this is a nomodeset, nonblocking)
> +	 */
> +	if (new_bw_state->qgv_points_mask !=3D old_bw_state->qgv_points_mask) {
> +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 898b4a85ccab..bbcaaa73ec1b 100644
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
>  =

> @@ -47,5 +54,7 @@ int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> +int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
> +				  u32 points_mask);
>  =

>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 8cede29c9562..6edf0844f8ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -692,6 +692,9 @@ struct skl_plane_wm {
>  	bool is_planar;
>  };
>  =

> +/* BSpec precisely defines this */
> +#define NUM_SAGV_POINTS 8
> +
>  struct skl_pipe_wm {
>  	struct skl_plane_wm planes[I915_MAX_PLANES];
>  	bool use_sagv_wm;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 934a686342ad..66775d4fb1ae 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3761,7 +3761,10 @@ intel_disable_sagv(struct drm_i915_private *dev_pr=
iv)
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	int ret;
>  	const struct intel_bw_state *new_bw_state;
> +	const struct intel_bw_state *old_bw_state;
> +	u32 new_mask =3D 0;
>  =

>  	/*
>  	 * Just return if we can't control SAGV or don't have it.
> @@ -3777,15 +3780,48 @@ void intel_sagv_pre_plane_update(struct intel_ato=
mic_state *state)
>  	if (!new_bw_state)
>  		return;
>  =

> -	if (!intel_can_enable_sagv(dev_priv, new_bw_state))
> +	if (INTEL_GEN(dev_priv) < 11 && !intel_can_enable_sagv(dev_priv, new_bw=
_state)) {
>  		intel_disable_sagv(dev_priv);
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_atomic_get_old_bw_state(state);
> +	if (!old_bw_state)
> +		return;

This too can't fail since we already checked that we have the
new_bw_state.

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
> +	 */
> +	ret =3D icl_pcode_restrict_qgv_points(dev_priv, new_mask);
> +	if (ret < 0)
> +		drm_err(&dev_priv->drm, "Could not mask required qgv points(%d)\n", re=
t);

I think we now have double error prints. One here, the other inside
icl_pcode_restrict_qgv_points(). Pls nuke one of them so we don't have
redundant error prints.

>  }
>  =

>  void intel_sagv_post_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	int ret;
>  	const struct intel_bw_state *new_bw_state;
> -
> +	const struct intel_bw_state *old_bw_state;
> +	u32 new_mask =3D 0;
>  	/*
>  	 * Just return if we can't control SAGV or don't have it.
>  	 * This is different from situation when we have SAGV but just can't
> @@ -3800,8 +3836,32 @@ void intel_sagv_post_plane_update(struct intel_ato=
mic_state *state)
>  	if (!new_bw_state)
>  		return;
>  =

> -	if (intel_can_enable_sagv(dev_priv, new_bw_state))
> +	if (INTEL_GEN(dev_priv) < 11 && intel_can_enable_sagv(dev_priv, new_bw_=
state)) {
>  		intel_enable_sagv(dev_priv);
> +		return;
> +	}
> +
> +	old_bw_state =3D intel_atomic_get_old_bw_state(state);
> +	if (!old_bw_state)
> +		return;

can't fail.

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
> +		drm_err(&dev_priv->drm, "Could not unmask required qgv points(%d)\n", =
ret);

Another double error print.

Apart from those issues this looks nice.


>  }
>  =

>  static bool skl_crtc_can_enable_sagv(const struct intel_crtc_state *crtc=
_state)
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 614ac7f8d4cc..528aba6267da 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -44,6 +44,8 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
>  bool intel_can_enable_sagv(struct drm_i915_private *dev_priv,
>  			   const struct intel_bw_state *bw_state);
> +void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> +void intel_sagv_post_plane_update(struct intel_atomic_state *state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
