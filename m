Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74465124FF9
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A40DD6E2EA;
	Wed, 18 Dec 2019 18:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A1786E2EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 18:01:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 10:01:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="212994807"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 18 Dec 2019 10:01:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 20:01:17 +0200
Date: Wed, 18 Dec 2019 20:01:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191218180117.GR1208@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213130228.29509-2-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 1/4] drm/i915: Remove skl_ddl_allocation
 struct
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

On Fri, Dec 13, 2019 at 03:02:25PM +0200, Stanislav Lisovskiy wrote:
> Current consensus that it is redundant as
> we already have skl_ddb_values struct out there,
> also this struct contains only single member
> which makes it unnecessary.
> =

> v2: As dirty_pipes soon going to be nuked away
>     from skl_ddb_values, evacuating enabled_slices
>     to safer in dev_priv.
> =

> v3: Changed "enabled_slices" to be "enabled_dbuf_slices_num"
>     (Matt Roper)
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 16 +++----
>  .../drm/i915/display/intel_display_power.c    |  8 ++--
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  drivers/gpu/drm/i915/i915_drv.h               |  7 +--
>  drivers/gpu/drm/i915/intel_pm.c               | 44 +++++++++----------
>  drivers/gpu/drm/i915/intel_pm.h               |  6 +--
>  6 files changed, 39 insertions(+), 45 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0f37f1d2026d..62e33bca7014 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13339,14 +13339,13 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
>  	struct skl_hw_state {
>  		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
>  		struct skl_ddb_entry ddb_uv[I915_MAX_PLANES];
> -		struct skl_ddb_allocation ddb;
>  		struct skl_pipe_wm wm;
>  	} *hw;
> -	struct skl_ddb_allocation *sw_ddb;
>  	struct skl_pipe_wm *sw_wm;
>  	struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
>  	const enum pipe pipe =3D crtc->pipe;
>  	int plane, level, max_level =3D ilk_wm_max_level(dev_priv);
> +	u8 hw_enabled_slices;
>  =

>  	if (INTEL_GEN(dev_priv) < 9 || !new_crtc_state->hw.active)
>  		return;
> @@ -13360,14 +13359,13 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
>  =

>  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
>  =

> -	skl_ddb_get_hw_state(dev_priv, &hw->ddb);
> -	sw_ddb =3D &dev_priv->wm.skl_hw.ddb;
> +	hw_enabled_slices =3D intel_enabled_dbuf_slices_num(dev_priv);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11 &&
> -	    hw->ddb.enabled_slices !=3D sw_ddb->enabled_slices)
> +	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_num)
>  		DRM_ERROR("mismatch in DBUF Slices (expected %u, got %u)\n",
> -			  sw_ddb->enabled_slices,
> -			  hw->ddb.enabled_slices);
> +			  dev_priv->enabled_dbuf_slices_num,
> +			  hw_enabled_slices);
>  =

>  	/* planes */
>  	for_each_universal_plane(dev_priv, pipe, plane) {
> @@ -14553,8 +14551,8 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> -	u8 hw_enabled_slices =3D dev_priv->wm.skl_hw.ddb.enabled_slices;
> -	u8 required_slices =3D state->wm_results.ddb.enabled_slices;
> +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> +	u8 required_slices =3D state->enabled_dbuf_slices_num;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
>  	u8 dirty_pipes =3D 0;
>  	int i;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 0b3dd2a3b94d..b8983422a882 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4264,7 +4264,7 @@ static u8 intel_dbuf_max_slices(struct drm_i915_pri=
vate *dev_priv)
>  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
>  			    u8 req_slices)
>  {
> -	const u8 hw_enabled_slices =3D dev_priv->wm.skl_hw.ddb.enabled_slices;
> +	const u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
>  	bool ret;
>  =

>  	if (req_slices > intel_dbuf_max_slices(dev_priv)) {
> @@ -4281,7 +4281,7 @@ void icl_dbuf_slices_update(struct drm_i915_private=
 *dev_priv,
>  		ret =3D intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2, false);
>  =

>  	if (ret)
> -		dev_priv->wm.skl_hw.ddb.enabled_slices =3D req_slices;
> +		dev_priv->enabled_dbuf_slices_num =3D req_slices;
>  }
>  =

>  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> @@ -4300,7 +4300,7 @@ static void icl_dbuf_enable(struct drm_i915_private=
 *dev_priv)
>  		 * FIXME: for now pretend that we only have 1 slice, see
>  		 * intel_enabled_dbuf_slices_num().
>  		 */
> -		dev_priv->wm.skl_hw.ddb.enabled_slices =3D 1;
> +		dev_priv->enabled_dbuf_slices_num =3D 1;
>  }
>  =

>  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
> @@ -4319,7 +4319,7 @@ static void icl_dbuf_disable(struct drm_i915_privat=
e *dev_priv)
>  		 * FIXME: for now pretend that the first slice is always
>  		 * enabled, see intel_enabled_dbuf_slices_num().
>  		 */
> -		dev_priv->wm.skl_hw.ddb.enabled_slices =3D 1;
> +		dev_priv->enabled_dbuf_slices_num =3D 1;
>  }
>  =

>  static void icl_mbus_init(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 83ea04149b77..70e65c2d525d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -517,6 +517,9 @@ struct intel_atomic_state {
>  	/* Gen9+ only */
>  	struct skl_ddb_values wm_results;
>  =

> +	/* Number of enabled DBuf slices */
> +	u8 enabled_dbuf_slices_num;

Usual pattern would be "num_enabled_dbuf_slices". It would even match
your comment 100% and thus the comment is entirely redundant.

> +
>  	struct i915_sw_fence commit_ready;
>  =

>  	struct llist_node freed;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 0781b6326b8c..7a2d9fa5a9a6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -798,13 +798,8 @@ static inline bool skl_ddb_entry_equal(const struct =
skl_ddb_entry *e1,
>  	return false;
>  }
>  =

> -struct skl_ddb_allocation {
> -	u8 enabled_slices; /* GEN11 has configurable 2 slices */
> -};
> -
>  struct skl_ddb_values {
>  	unsigned dirty_pipes;
> -	struct skl_ddb_allocation ddb;
>  };
>  =

>  struct skl_wm_level {
> @@ -1215,6 +1210,8 @@ struct drm_i915_private {
>  		bool distrust_bios_wm;
>  	} wm;
>  =

> +	u8 enabled_dbuf_slices_num; /* GEN11 has configurable 2 slices */

That comment is going to become stale immediately.

> +
>  	struct dram_info {
>  		bool valid;
>  		bool is_16gb_dimm;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index ccbbdf4a6aab..c2510978ccdf 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3616,16 +3616,16 @@ bool ilk_disable_lp_wm(struct drm_i915_private *d=
ev_priv)
>  	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
>  }
>  =

> -static u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_pri=
v)
> +u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv)
>  {
> -	u8 enabled_slices;
> +	u8 enabled_dbuf_slices_num;
>  =

>  	/* Slice 1 will always be enabled */
> -	enabled_slices =3D 1;
> +	enabled_dbuf_slices_num =3D 1;
>  =

>  	/* Gen prior to GEN11 have only one DBuf slice */
>  	if (INTEL_GEN(dev_priv) < 11)
> -		return enabled_slices;
> +		return enabled_dbuf_slices_num;
>  =

>  	/*
>  	 * FIXME: for now we'll only ever use 1 slice; pretend that we have
> @@ -3633,9 +3633,9 @@ static u8 intel_enabled_dbuf_slices_num(struct drm_=
i915_private *dev_priv)
>  	 * toggling of the second slice.
>  	 */
>  	if (0 && I915_READ(DBUF_CTL_S2) & DBUF_POWER_STATE)
> -		enabled_slices++;
> +		enabled_dbuf_slices_num++;
>  =

> -	return enabled_slices;
> +	return enabled_dbuf_slices_num;
>  }
>  =

>  /*
> @@ -3839,9 +3839,10 @@ bool intel_can_enable_sagv(struct intel_atomic_sta=
te *state)
>  static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const u64 total_data_rate,
> -			      const int num_active,
> -			      struct skl_ddb_allocation *ddb)
> +			      const int num_active)
>  {
> +	struct drm_atomic_state *state =3D crtc_state->uapi.state;
> +	struct intel_atomic_state *intel_state =3D to_intel_atomic_state(state);
>  	const struct drm_display_mode *adjusted_mode;
>  	u64 total_data_bw;
>  	u16 ddb_size =3D INTEL_INFO(dev_priv)->ddb_size;
> @@ -3863,9 +3864,9 @@ static u16 intel_get_ddb_size(struct drm_i915_priva=
te *dev_priv,
>  	 * - should validate we stay within the hw bandwidth limits
>  	 */
>  	if (0 && (num_active > 1 || total_data_bw >=3D GBps(12))) {
> -		ddb->enabled_slices =3D 2;
> +		intel_state->enabled_dbuf_slices_num =3D 2;
>  	} else {
> -		ddb->enabled_slices =3D 1;
> +		intel_state->enabled_dbuf_slices_num =3D 1;
>  		ddb_size /=3D 2;
>  	}
>  =

> @@ -3876,7 +3877,6 @@ static void
>  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const u64 total_data_rate,
> -				   struct skl_ddb_allocation *ddb,
>  				   struct skl_ddb_entry *alloc, /* out */
>  				   int *num_active /* out */)
>  {
> @@ -3902,7 +3902,7 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  		*num_active =3D hweight8(dev_priv->active_pipes);
>  =

>  	ddb_size =3D intel_get_ddb_size(dev_priv, crtc_state, total_data_rate,
> -				      *num_active, ddb);
> +				      *num_active);
>  =

>  	/*
>  	 * If the state doesn't change the active CRTC's or there is no
> @@ -4063,10 +4063,9 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *=
crtc,
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
>  =

> -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
> -			  struct skl_ddb_allocation *ddb /* out */)
> +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
>  {
> -	ddb->enabled_slices =3D intel_enabled_dbuf_slices_num(dev_priv);
> +	dev_priv->enabled_dbuf_slices_num =3D intel_enabled_dbuf_slices_num(dev=
_priv);
>  }
>  =

>  /*
> @@ -4243,8 +4242,7 @@ icl_get_total_relative_data_rate(struct intel_crtc_=
state *crtc_state,
>  }
>  =

>  static int
> -skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
> -		      struct skl_ddb_allocation *ddb /* out */)
> +skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_atomic_state *state =3D crtc_state->uapi.state;
>  	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> @@ -4286,7 +4284,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state,
>  =

>  =

>  	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rat=
e,
> -					   ddb, alloc, &num_active);
> +					   alloc, &num_active);
>  	alloc_size =3D skl_ddb_entry_size(alloc);
>  	if (alloc_size =3D=3D 0)
>  		return 0;
> @@ -5200,18 +5198,17 @@ skl_ddb_add_affected_planes(const struct intel_cr=
tc_state *old_crtc_state,
>  static int
>  skl_compute_ddb(struct intel_atomic_state *state)
>  {
> -	const struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct skl_ddb_allocation *ddb =3D &state->wm_results.ddb;
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  =

> -	memcpy(ddb, &dev_priv->wm.skl_hw.ddb, sizeof(*ddb));
> +	state->enabled_dbuf_slices_num =3D dev_priv->enabled_dbuf_slices_num;
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		ret =3D skl_allocate_pipe_ddb(new_crtc_state, ddb);
> +		ret =3D skl_allocate_pipe_ddb(new_crtc_state);
>  		if (ret)
>  			return ret;
>  =

> @@ -5683,11 +5680,10 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *=
crtc,
>  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  {
>  	struct skl_ddb_values *hw =3D &dev_priv->wm.skl_hw;
> -	struct skl_ddb_allocation *ddb =3D &dev_priv->wm.skl_hw.ddb;
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *crtc_state;
>  =

> -	skl_ddb_get_hw_state(dev_priv, ddb);
> +	skl_ddb_get_hw_state(dev_priv);
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		crtc_state =3D to_intel_crtc_state(crtc->base.state);
>  =

> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index c06c6a846d9a..a476f6c730e9 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -17,8 +17,8 @@ struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_plane;
> -struct skl_ddb_allocation;
>  struct skl_ddb_entry;
> +struct skl_ddb_values;
>  struct skl_pipe_wm;
>  struct skl_wm_level;
>  =

> @@ -33,11 +33,11 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev=
_priv);
>  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
>  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
> +u8 intel_enabled_dbuf_slices_num(struct drm_i915_private *dev_priv);
>  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  			       struct skl_ddb_entry *ddb_y,
>  			       struct skl_ddb_entry *ddb_uv);
> -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
> -			  struct skl_ddb_allocation *ddb /* out */);
> +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
>  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
