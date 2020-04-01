Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D6619A6FA
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 10:17:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10ABA6E04A;
	Wed,  1 Apr 2020 08:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9896E04A
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 08:17:39 +0000 (UTC)
IronPort-SDR: hbSwb1ruhQqfS+9OznJ38Rbn82RkucxAOaTaiXRZonnzoQ1HVv2RBQt5Vfc9E/jyWkXbnFPAZb
 psHsrjWDKtlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 01:17:38 -0700
IronPort-SDR: bZs9Vk6ZhoRzcBrtMxfsJ6x0wWaqIajwaQQ4DhDk291lwU9xWYK212jw0N97/6tMU9/pHpp+q/
 GH+7i8Uqe3wQ==
X-IronPort-AV: E=Sophos;i="5.72,331,1580803200"; d="scan'208";a="422624798"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2020 01:17:37 -0700
Date: Wed, 1 Apr 2020 11:13:57 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200401081357.GB1131@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225171125.28885-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 08/20] drm/i915: Introduce proper dbuf
 state
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

On Tue, Feb 25, 2020 at 07:11:13PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Add a global state to track the dbuf slices. Gets rid of all the nasty
> coupling between state->modeset and dbuf recomputation. Also we can now
> totally nuke state->active_pipe_changes.
> =

> dev_priv->wm.distrust_bios_wm still remains, but that too will get
> nuked soon.
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  67 +++++--
>  .../drm/i915/display/intel_display_power.c    |   8 +-
>  .../drm/i915/display/intel_display_types.h    |  13 --
>  drivers/gpu/drm/i915/i915_drv.h               |  11 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 189 ++++++++++++------
>  drivers/gpu/drm/i915/intel_pm.h               |  22 ++
>  6 files changed, 209 insertions(+), 101 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6952c398cc43..659b952c8e2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7581,6 +7581,8 @@ static void intel_crtc_disable_noatomic(struct inte=
l_crtc *crtc,
>  		to_intel_bw_state(dev_priv->bw_obj.state);
>  	struct intel_cdclk_state *cdclk_state =3D
>  		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>  	struct intel_crtc_state *crtc_state =3D
>  		to_intel_crtc_state(crtc->base.state);
>  	enum intel_display_power_domain domain;
> @@ -7654,6 +7656,8 @@ static void intel_crtc_disable_noatomic(struct inte=
l_crtc *crtc,
>  	cdclk_state->min_voltage_level[pipe] =3D 0;
>  	cdclk_state->active_pipes &=3D ~BIT(pipe);
>  =

> +	dbuf_state->active_pipes &=3D ~BIT(pipe);
> +
>  	bw_state->data_rate[pipe] =3D 0;
>  	bw_state->num_active_planes[pipe] =3D 0;
>  }
> @@ -13991,10 +13995,10 @@ static void verify_wm_state(struct intel_crtc *=
crtc,
>  	hw_enabled_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11 &&
> -	    hw_enabled_slices !=3D dev_priv->enabled_dbuf_slices_mask)
> +	    hw_enabled_slices !=3D dev_priv->dbuf.enabled_slices)
>  		drm_err(&dev_priv->drm,
>  			"mismatch in DBUF Slices (expected 0x%x, got 0x%x)\n",
> -			dev_priv->enabled_dbuf_slices_mask,
> +			dev_priv->dbuf.enabled_slices,
>  			hw_enabled_slices);
>  =

>  	/* planes */
> @@ -14529,9 +14533,7 @@ static int intel_modeset_checks(struct intel_atom=
ic_state *state)
>  	state->modeset =3D true;
>  	state->active_pipes =3D intel_calc_active_pipes(state, dev_priv->active=
_pipes);
>  =

> -	state->active_pipe_changes =3D state->active_pipes ^ dev_priv->active_p=
ipes;
> -
> -	if (state->active_pipe_changes) {
> +	if (state->active_pipes !=3D dev_priv->active_pipes) {
>  		ret =3D _intel_atomic_lock_global_state(state);
>  		if (ret)
>  			return ret;
> @@ -15292,22 +15294,38 @@ static void intel_update_trans_port_sync_crtcs(=
struct intel_crtc *crtc,
>  static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> -	u8 required_slices =3D state->enabled_dbuf_slices_mask;
> -	u8 slices_union =3D hw_enabled_slices | required_slices;
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11 && slices_union !=3D hw_enabled_slices)
> -		gen9_dbuf_slices_update(dev_priv, slices_union);
> +	if (!new_dbuf_state ||
> +	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(dev_priv,
> +				old_dbuf_state->enabled_slices |
> +				new_dbuf_state->enabled_slices);
>  }
>  =

>  static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_mask;
> -	u8 required_slices =3D state->enabled_dbuf_slices_mask;
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices !=3D hw_enabled_slic=
es)
> -		gen9_dbuf_slices_update(dev_priv, required_slices);
> +	if (!new_dbuf_state ||
> +	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(dev_priv,
> +				new_dbuf_state->enabled_slices);
>  }
>  =

>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
> @@ -15562,9 +15580,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  	if (state->modeset)
>  		intel_encoders_update_prepare(state);
>  =

> -	/* Enable all new slices, we might need */
> -	if (state->modeset)
> -		icl_dbuf_slice_pre_update(state);
> +	icl_dbuf_slice_pre_update(state);
>  =

>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.commit_modeset_enables(state);
> @@ -15619,9 +15635,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  			dev_priv->display.optimize_watermarks(state, crtc);
>  	}
>  =

> -	/* Disable all slices, we don't need */
> -	if (state->modeset)
> -		icl_dbuf_slice_post_update(state);
> +	icl_dbuf_slice_post_update(state);
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
>  		intel_post_plane_update(state, crtc);
> @@ -17507,10 +17521,14 @@ void intel_modeset_init_hw(struct drm_i915_priv=
ate *i915)
>  {
>  	struct intel_cdclk_state *cdclk_state =3D
>  		to_intel_cdclk_state(i915->cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(i915->dbuf.obj.state);
>  =

>  	intel_update_cdclk(i915);
>  	intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
>  	cdclk_state->logical =3D cdclk_state->actual =3D i915->cdclk.hw;
> +
> +	dbuf_state->enabled_slices =3D i915->dbuf.enabled_slices;
>  }
>  =

>  static int sanitize_watermarks_add_affected(struct drm_atomic_state *sta=
te)
> @@ -17800,6 +17818,10 @@ int intel_modeset_init(struct drm_i915_private *=
i915)
>  	if (ret)
>  		return ret;
>  =

> +	ret =3D intel_dbuf_init(i915);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D intel_bw_init(i915);
>  	if (ret)
>  		return ret;
> @@ -18303,6 +18325,8 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_cdclk_state *cdclk_state =3D
>  		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
>  	enum pipe pipe;
>  	struct intel_crtc *crtc;
>  	struct intel_encoder *encoder;
> @@ -18334,7 +18358,8 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			    enableddisabled(crtc_state->hw.active));
>  	}
>  =

> -	dev_priv->active_pipes =3D cdclk_state->active_pipes =3D active_pipes;
> +	dev_priv->active_pipes =3D cdclk_state->active_pipes =3D
> +		dbuf_state->active_pipes =3D active_pipes;

LGTM, however still active_pipes duplication looks redundant.
It can easily go out of sync somewhere.
Would be nice to do something about this. However yet again
my opinion is that it is more important to get the things going forward now.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


>  =

>  	readout_plane_state(dev_priv);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index ce3bbc4c7a27..dc0c9694b714 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1062,7 +1062,7 @@ static bool gen9_dc_off_power_well_enabled(struct d=
rm_i915_private *dev_priv,
>  static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
>  {
>  	u8 hw_enabled_dbuf_slices =3D intel_enabled_dbuf_slices_mask(dev_priv);
> -	u8 enabled_dbuf_slices =3D dev_priv->enabled_dbuf_slices_mask;
> +	u8 enabled_dbuf_slices =3D dev_priv->dbuf.enabled_slices;
>  =

>  	drm_WARN(&dev_priv->drm,
>  		 hw_enabled_dbuf_slices !=3D enabled_dbuf_slices,
> @@ -4481,14 +4481,14 @@ void gen9_dbuf_slices_update(struct drm_i915_priv=
ate *dev_priv,
>  	for (slice =3D DBUF_S1; slice < num_slices; slice++)
>  		gen9_dbuf_slice_set(dev_priv, slice, req_slices & BIT(slice));
>  =

> -	dev_priv->enabled_dbuf_slices_mask =3D req_slices;
> +	dev_priv->dbuf.enabled_slices =3D req_slices;
>  =

>  	mutex_unlock(&power_domains->lock);
>  }
>  =

>  static void gen9_dbuf_enable(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->enabled_dbuf_slices_mask =3D
> +	dev_priv->dbuf.enabled_slices =3D
>  		intel_enabled_dbuf_slices_mask(dev_priv);
>  =

>  	/*
> @@ -4496,7 +4496,7 @@ static void gen9_dbuf_enable(struct drm_i915_privat=
e *dev_priv)
>  	 * figure out later which slices we have and what we need.
>  	 */
>  	gen9_dbuf_slices_update(dev_priv, BIT(DBUF_S1) |
> -				dev_priv->enabled_dbuf_slices_mask);
> +				dev_priv->dbuf.enabled_slices);
>  }
>  =

>  static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 0d8a64305464..165efa00d88b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -471,16 +471,6 @@ struct intel_atomic_state {
>  =

>  	bool dpll_set, modeset;
>  =

> -	/*
> -	 * Does this transaction change the pipes that are active?  This mask
> -	 * tracks which CRTC's have changed their active state at the end of
> -	 * the transaction (not counting the temporary disable during modesets).
> -	 * This mask should only be non-zero when intel_state->modeset is true,
> -	 * but the converse is not necessarily true; simply changing a mode may
> -	 * not flip the final active status of any CRTC's
> -	 */
> -	u8 active_pipe_changes;
> -
>  	u8 active_pipes;
>  =

>  	struct intel_shared_dpll_state shared_dpll[I915_NUM_PLLS];
> @@ -498,9 +488,6 @@ struct intel_atomic_state {
>  	 */
>  	bool global_state_changed;
>  =

> -	/* Number of enabled DBuf slices */
> -	u8 enabled_dbuf_slices_mask;
> -
>  	struct i915_sw_fence commit_ready;
>  =

>  	struct llist_node freed;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 88e4fb8ac739..d03c84f373e6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1006,6 +1006,13 @@ struct drm_i915_private {
>  		struct intel_global_obj obj;
>  	} cdclk;
>  =

> +	struct {
> +		/* The current hardware dbuf configuration */
> +		u8 enabled_slices;
> +
> +		struct intel_global_obj obj;
> +	} dbuf;
> +
>  	/**
>  	 * wq - Driver workqueue for GEM.
>  	 *
> @@ -1181,12 +1188,12 @@ struct drm_i915_private {
>  		 * Set during HW readout of watermarks/DDB.  Some platforms
>  		 * need to know when we're still using BIOS-provided values
>  		 * (which we don't fully trust).
> +		 *
> +		 * FIXME get rid of this.
>  		 */
>  		bool distrust_bios_wm;
>  	} wm;
>  =

> -	u8 enabled_dbuf_slices_mask; /* GEN11 has configurable 2 slices */
> -
>  	struct dram_info {
>  		bool valid;
>  		bool is_16gb_dimm;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 640f4c4fd508..d4730d9b4e1b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3845,7 +3845,7 @@ static u16 intel_get_ddb_size(struct drm_i915_priva=
te *dev_priv)
>  static u8 skl_compute_dbuf_slices(const struct intel_crtc_state *crtc_st=
ate,
>  				  u8 active_pipes);
>  =

> -static void
> +static int
>  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
>  				   const struct intel_crtc_state *crtc_state,
>  				   const u64 total_data_rate,
> @@ -3858,30 +3858,29 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	const struct intel_crtc *crtc;
>  	u32 pipe_width =3D 0, total_width_in_range =3D 0, width_before_pipe_in_=
range =3D 0;
>  	enum pipe for_pipe =3D to_intel_crtc(for_crtc)->pipe;
> +	struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(intel_state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(intel_state);
> +	u8 active_pipes =3D new_dbuf_state->active_pipes;
>  	u16 ddb_size;
>  	u32 ddb_range_size;
>  	u32 i;
>  	u32 dbuf_slice_mask;
> -	u32 active_pipes;
>  	u32 offset;
>  	u32 slice_size;
>  	u32 total_slice_mask;
>  	u32 start, end;
> +	int ret;
>  =

> -	if (drm_WARN_ON(&dev_priv->drm, !state) || !crtc_state->hw.active) {
> +	*num_active =3D hweight8(active_pipes);
> +
> +	if (!crtc_state->hw.active) {
>  		alloc->start =3D 0;
>  		alloc->end =3D 0;
> -		*num_active =3D hweight8(dev_priv->active_pipes);
> -		return;
> +		return 0;
>  	}
>  =

> -	if (intel_state->active_pipe_changes)
> -		active_pipes =3D intel_state->active_pipes;
> -	else
> -		active_pipes =3D dev_priv->active_pipes;
> -
> -	*num_active =3D hweight8(active_pipes);
> -
>  	ddb_size =3D intel_get_ddb_size(dev_priv);
>  =

>  	slice_size =3D ddb_size / INTEL_INFO(dev_priv)->num_supported_dbuf_slic=
es;
> @@ -3894,13 +3893,16 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i91=
5_private *dev_priv,
>  	 * that changes the active CRTC list or do modeset would need to
>  	 * grab _all_ crtc locks, including the one we currently hold.
>  	 */
> -	if (!intel_state->active_pipe_changes && !intel_state->modeset) {
> +	if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes &&
> +	    !dev_priv->wm.distrust_bios_wm) {
>  		/*
>  		 * alloc may be cleared by clear_intel_crtc_state,
>  		 * copy from old state to be sure
> +		 *
> +		 * FIXME get rid of this mess
>  		 */
>  		*alloc =3D to_intel_crtc_state(for_crtc->state)->wm.skl.ddb;
> -		return;
> +		return 0;
>  	}
>  =

>  	/*
> @@ -3979,7 +3981,13 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	 * FIXME: For now we always enable slice S1 as per
>  	 * the Bspec display initialization sequence.
>  	 */
> -	intel_state->enabled_dbuf_slices_mask =3D total_slice_mask | BIT(DBUF_S=
1);
> +	new_dbuf_state->enabled_slices =3D total_slice_mask | BIT(DBUF_S1);
> +
> +	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices)=
 {
> +		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +	}
>  =

>  	start =3D ddb_range_size * width_before_pipe_in_range / total_width_in_=
range;
>  	end =3D ddb_range_size *
> @@ -3990,9 +3998,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915_=
private *dev_priv,
>  =

>  	DRM_DEBUG_KMS("Pipe %d ddb %d-%d\n", for_pipe,
>  		      alloc->start, alloc->end);
> -	DRM_DEBUG_KMS("Enabled ddb slices mask %x num supported %d\n",
> -		      intel_state->enabled_dbuf_slices_mask,
> -		      INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
> +
> +	return 0;
>  }
>  =

>  static int skl_compute_wm_params(const struct intel_crtc_state *crtc_sta=
te,
> @@ -4112,8 +4119,8 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *c=
rtc,
>  =

>  void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
>  {
> -	dev_priv->enabled_dbuf_slices_mask =3D
> -				intel_enabled_dbuf_slices_mask(dev_priv);
> +	dev_priv->dbuf.enabled_slices =3D
> +		intel_enabled_dbuf_slices_mask(dev_priv);
>  }
>  =

>  /*
> @@ -4546,6 +4553,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crtc=
_state)
>  	u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u32 blocks;
>  	int level;
> +	int ret;
>  =

>  	/* Clear the partitioning for disabled planes. */
>  	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.pla=
ne_ddb_y));
> @@ -4567,8 +4575,12 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  							 uv_plane_data_rate);
>  =

>  =

> -	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state, total_data_rat=
e,
> -					   alloc, &num_active);
> +	ret =3D skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> +						 total_data_rate,
> +						 alloc, &num_active);
> +	if (ret)
> +		return ret;
> +
>  	alloc_size =3D skl_ddb_entry_size(alloc);
>  	if (alloc_size =3D=3D 0)
>  		return 0;
> @@ -5451,14 +5463,11 @@ skl_ddb_add_affected_planes(const struct intel_cr=
tc_state *old_crtc_state,
>  static int
>  skl_compute_ddb(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  =

> -	state->enabled_dbuf_slices_mask =3D dev_priv->enabled_dbuf_slices_mask;
> -
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		ret =3D skl_allocate_pipe_ddb(new_crtc_state);
> @@ -5598,7 +5607,8 @@ skl_print_wm_changes(struct intel_atomic_state *sta=
te)
>  	}
>  }
>  =

> -static int intel_add_all_pipes(struct intel_atomic_state *state)
> +static int intel_add_affected_pipes(struct intel_atomic_state *state,
> +				    u8 pipe_mask)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
> @@ -5606,6 +5616,9 @@ static int intel_add_all_pipes(struct intel_atomic_=
state *state)
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state;
>  =

> +		if ((pipe_mask & BIT(crtc->pipe)) =3D=3D 0)
> +			continue;
> +
>  		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
>  		if (IS_ERR(crtc_state))
>  			return PTR_ERR(crtc_state);
> @@ -5618,49 +5631,54 @@ static int
>  skl_ddb_add_affected_pipes(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	int ret;
> +	struct intel_crtc_state *crtc_state;
> +	struct intel_crtc *crtc;
> +	int i, ret;
>  =

> -	/*
> -	 * If this is our first atomic update following hardware readout,
> -	 * we can't trust the DDB that the BIOS programmed for us.  Let's
> -	 * pretend that all pipes switched active status so that we'll
> -	 * ensure a full DDB recompute.
> -	 */
>  	if (dev_priv->wm.distrust_bios_wm) {
> -		ret =3D drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
> -				       state->base.acquire_ctx);
> -		if (ret)
> -			return ret;
> -
> -		state->active_pipe_changes =3D INTEL_INFO(dev_priv)->pipe_mask;
> -
>  		/*
> -		 * We usually only initialize state->active_pipes if we
> -		 * we're doing a modeset; make sure this field is always
> -		 * initialized during the sanitization process that happens
> -		 * on the first commit too.
> +		 * skl_ddb_get_pipe_allocation_limits() currently requires
> +		 * all active pipes to be included in the state so that
> +		 * it can redistribute the dbuf among them, and it really
> +		 * wants to recompute things when distrust_bios_wm is set
> +		 * so we add all the pipes to the state.
>  		 */
> -		if (!state->modeset)
> -			state->active_pipes =3D dev_priv->active_pipes;
> +		ret =3D intel_add_affected_pipes(state, ~0);
> +		if (ret)
> +			return ret;
>  	}
>  =

> -	/*
> -	 * If the modeset changes which CRTC's are active, we need to
> -	 * recompute the DDB allocation for *all* active pipes, even
> -	 * those that weren't otherwise being modified in any way by this
> -	 * atomic commit.  Due to the shrinking of the per-pipe allocations
> -	 * when new active CRTC's are added, it's possible for a pipe that
> -	 * we were already using and aren't changing at all here to suddenly
> -	 * become invalid if its DDB needs exceeds its new allocation.
> -	 *
> -	 * Note that if we wind up doing a full DDB recompute, we can't let
> -	 * any other display updates race with this transaction, so we need
> -	 * to grab the lock on *all* CRTC's.
> -	 */
> -	if (state->active_pipe_changes || state->modeset) {
> -		ret =3D intel_add_all_pipes(state);
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> +		struct intel_dbuf_state *new_dbuf_state;
> +		const struct intel_dbuf_state *old_dbuf_state;
> +
> +		new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> +		if (IS_ERR(new_dbuf_state))
> +			return ret;
> +
> +		old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> +
> +		new_dbuf_state->active_pipes =3D
> +			intel_calc_active_pipes(state, old_dbuf_state->active_pipes);
> +
> +		if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes)
> +			break;
> +
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +
> +		/*
> +		 * skl_ddb_get_pipe_allocation_limits() currently requires
> +		 * all active pipes to be included in the state so that
> +		 * it can redistribute the dbuf among them.
> +		 */
> +		ret =3D intel_add_affected_pipes(state,
> +					       new_dbuf_state->active_pipes);
>  		if (ret)
>  			return ret;
> +
> +		break;
>  	}
>  =

>  	return 0;
> @@ -7493,3 +7511,52 @@ void intel_pm_setup(struct drm_i915_private *dev_p=
riv)
>  	dev_priv->runtime_pm.suspended =3D false;
>  	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
>  }
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
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *dbuf_state;
> +
> +	dbuf_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->dbuf=
.obj);
> +	if (IS_ERR(dbuf_state))
> +		return ERR_CAST(dbuf_state);
> +
> +	return to_intel_dbuf_state(dbuf_state);
> +}
> +
> +int intel_dbuf_init(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_dbuf_state *dbuf_state;
> +
> +	dbuf_state =3D kzalloc(sizeof(*dbuf_state), GFP_KERNEL);
> +	if (!dbuf_state)
> +		return -ENOMEM;
> +
> +	intel_atomic_global_obj_init(dev_priv, &dev_priv->dbuf.obj,
> +				     &dbuf_state->base, &intel_dbuf_funcs);
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d60a85421c5a..fadf7cbc44c4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -8,6 +8,8 @@
>  =

>  #include <linux/types.h>
>  =

> +#include "display/intel_global_state.h"
> +
>  #include "i915_reg.h"
>  =

>  struct drm_device;
> @@ -59,4 +61,24 @@ void intel_enable_ipc(struct drm_i915_private *dev_pri=
v);
>  =

>  bool intel_set_memory_cxsr(struct drm_i915_private *dev_priv, bool enabl=
e);
>  =

> +struct intel_dbuf_state {
> +	struct intel_global_state base;
> +
> +	u8 enabled_slices;
> +	u8 active_pipes;
> +};
> +
> +int intel_dbuf_init(struct drm_i915_private *dev_priv);
> +
> +struct intel_dbuf_state *
> +intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
> +
> +#define to_intel_dbuf_state(x) container_of((x), struct intel_dbuf_state=
, base)
> +#define intel_atomic_get_old_dbuf_state(state) \
> +	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i9=
15(state->base.dev)->dbuf.obj))
> +#define intel_atomic_get_new_dbuf_state(state) \
> +	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i9=
15(state->base.dev)->dbuf.obj))
> +
> +int intel_dbuf_init(struct drm_i915_private *dev_priv);
> +
>  #endif /* __INTEL_PM_H__ */
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
