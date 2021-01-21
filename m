Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965392FEAB8
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 13:54:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025C06E0BC;
	Thu, 21 Jan 2021 12:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A0A96E0BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 12:54:13 +0000 (UTC)
IronPort-SDR: yNCCUpq3AlP+P7VwSIC0Su83wb1F+MYqgNpywwHXzY5sBVCsvmMS7AxbV/213x+cvawJz4v/ys
 CfhAGjQzDwig==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="158441456"
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="158441456"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:54:07 -0800
IronPort-SDR: hs2aIayIyyyDEaPpkIZFiqN9rFUkZHv0E3uOkoZn1xcr97WVectVtbs7bQKZytXmrZRxs/xSqv
 VKIq+FSgi8cQ==
X-IronPort-AV: E=Sophos;i="5.79,363,1602572400"; d="scan'208";a="385288911"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 04:54:06 -0800
Date: Thu, 21 Jan 2021 14:55:39 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20210121125539.GA29064@intel.com>
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
 <20200225171125.28885-19-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225171125.28885-19-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 18/20] drm/i915: Encapsulate dbuf state
 handling harder
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

On Tue, Feb 25, 2020 at 07:11:23PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> In order to make the dbuf state computation less fragile
> let's make it stand on its own feet by now requiring someone
> to peek into a crystall ball ahead of time to figure out
> which pipes need to be added to the state under which potential
> future conditions. Instead we compute each piece of the state
> as we go along, and if any fallout occurs that affects more than
> the current set of pipes we add the affected pipes to the state
> naturally.
> =

> That requires that we track a few extra thigns in the global
> dbuf state: dbuf slices for each pipe, and the weight each
> pipe has when distributing the same set of slice(s) between
> multiple pipes. Easy enough.
> =

> We do need to follow a somewhat careful sequence of computations
> though as there are several steps involved in cooking up the dbuf
> state. Thoguh we could avoid some of that by computing more things
> on demand instead of relying on earlier step of the algorithm to
> have filled it out. I think the end result is still reasonable
> as the entire sequence is pretty much consolidated into a single
> function instead of being spread around all over.
> =

> The rough sequence is this:
> 1. calculate active_pipes
> 2. calculate dbuf slices for every pipe
> 3. calculate total enabled slices
> 4. calculate new dbuf weights for any crtc in the state
> 5. calculate new ddb entry for every pipe based on the sets of
>    slices and weights, and add any affected crtc to the state
> 6. calculate new plane ddb entries for all crtcs in the state,
>    and add any affected plane to the state so that we'll perform
>    the requisite hw reprogramming
> =

> And as a nice bonus we get to throw dev_priv->wm.distrust_bios_wm
> out the window.

So nice that we finally get those long awaited separate states for
dbuf, cdclk and etc.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  15 -
>  .../drm/i915/display/intel_display_debugfs.c  |   1 -
>  drivers/gpu/drm/i915/i915_drv.h               |   9 -
>  drivers/gpu/drm/i915/intel_pm.c               | 356 +++++++-----------
>  drivers/gpu/drm/i915/intel_pm.h               |   2 +
>  5 files changed, 138 insertions(+), 245 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 26e4462151a6..e3df43f3932d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14856,20 +14856,6 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
>  		any_ms =3D true;
>  =

> -	/*
> -	 * distrust_bios_wm will force a full dbuf recomputation
> -	 * but the hardware state will only get updated accordingly
> -	 * if state->modeset=3D=3Dtrue. Hence distrust_bios_wm=3D=3Dtrue &&
> -	 * state->modeset=3D=3Dfalse is an invalid combination which
> -	 * would cause the hardware and software dbuf state to get
> -	 * out of sync. We must prevent that.
> -	 *
> -	 * FIXME clean up this mess and introduce better
> -	 * state tracking for dbuf.
> -	 */
> -	if (dev_priv->wm.distrust_bios_wm)
> -		any_ms =3D true;
> -
>  	if (any_ms) {
>  		ret =3D intel_modeset_checks(state);
>  		if (ret)
> @@ -15769,7 +15755,6 @@ static int intel_atomic_commit(struct drm_device =
*dev,
>  		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
>  		return ret;
>  	}
> -	dev_priv->wm.distrust_bios_wm =3D false;
>  	intel_shared_dpll_swap_state(state);
>  	intel_atomic_track_fbs(state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 46954cc7b6c0..b505de6287e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -998,7 +998,6 @@ static ssize_t i915_ipc_status_write(struct file *fil=
e, const char __user *ubuf,
>  		if (!dev_priv->ipc_enabled && enable)
>  			drm_info(&dev_priv->drm,
>  				 "Enabling IPC: WM will be proper only after next commit\n");
> -		dev_priv->wm.distrust_bios_wm =3D true;
>  		dev_priv->ipc_enabled =3D enable;
>  		intel_enable_ipc(dev_priv);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index d03c84f373e6..317e6a468e2e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1183,15 +1183,6 @@ struct drm_i915_private {
>  		 * crtc_state->wm.need_postvbl_update.
>  		 */
>  		struct mutex wm_mutex;
> -
> -		/*
> -		 * Set during HW readout of watermarks/DDB.  Some platforms
> -		 * need to know when we're still using BIOS-provided values
> -		 * (which we don't fully trust).
> -		 *
> -		 * FIXME get rid of this.
> -		 */
> -		bool distrust_bios_wm;
>  	} wm;
>  =

>  	struct dram_info {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 085043528f80..c11508fb3fac 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3865,56 +3865,22 @@ static unsigned int intel_crtc_ddb_weight(const s=
truct intel_crtc_state *crtc_st
>  	return hdisplay;
>  }
>  =

> -static u8 skl_compute_dbuf_slices(struct intel_crtc *crtc,
> -				  u8 active_pipes);
> -
> -static int intel_crtc_dbuf_weights(struct intel_atomic_state *state,
> -				   struct intel_crtc *for_crtc,
> -				   unsigned int *weight_start,
> -				   unsigned int *weight_end,
> -				   unsigned int *weight_total)
> +static void intel_crtc_dbuf_weights(const struct intel_dbuf_state *dbuf_=
state,
> +				    enum pipe for_pipe,
> +				    unsigned int *weight_start,
> +				    unsigned int *weight_end,
> +				    unsigned int *weight_total)
>  {
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -	struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	u8 active_pipes =3D new_dbuf_state->active_pipes;
> -	enum pipe for_pipe =3D for_crtc->pipe;
> -	const struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -	u8 dbuf_slice_mask;
> -	u8 total_slice_mask;
> -	int i, ret;
> -
> -	/*
> -	 * Get allowed DBuf slices for correspondent pipe and platform.
> -	 */
> -	dbuf_slice_mask =3D skl_compute_dbuf_slices(for_crtc, active_pipes);
> -	total_slice_mask =3D dbuf_slice_mask;
> +	struct drm_i915_private *dev_priv =3D
> +		to_i915(dbuf_state->base.state->base.dev);
> +	enum pipe pipe;
>  =

>  	*weight_start =3D 0;
>  	*weight_end =3D 0;
>  	*weight_total =3D 0;
>  =

> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		enum pipe pipe =3D crtc->pipe;
> -		unsigned int weight;
> -		u8 pipe_dbuf_slice_mask;
> -
> -		if (!crtc_state->hw.active)
> -			continue;
> -
> -		pipe_dbuf_slice_mask =3D
> -			skl_compute_dbuf_slices(crtc, active_pipes);
> -
> -		/*
> -		 * According to BSpec pipe can share one dbuf slice with another
> -		 * pipes or pipe can use multiple dbufs, in both cases we
> -		 * account for other pipes only if they have exactly same mask.
> -		 * However we need to account how many slices we should enable
> -		 * in total.
> -		 */
> -		total_slice_mask |=3D pipe_dbuf_slice_mask;
> +	for_each_pipe(dev_priv, pipe) {
> +		int weight =3D dbuf_state->weight[pipe];
>  =

>  		/*
>  		 * Do not account pipes using other slice sets
> @@ -3923,12 +3889,10 @@ static int intel_crtc_dbuf_weights(struct intel_a=
tomic_state *state,
>  		 * i.e no partial intersection), so it is enough to check for
>  		 * equality for now.
>  		 */
> -		if (dbuf_slice_mask !=3D pipe_dbuf_slice_mask)
> +		if (dbuf_state->slices[pipe] !=3D dbuf_state->slices[for_pipe])
>  			continue;
>  =

> -		weight =3D intel_crtc_ddb_weight(crtc_state);
>  		*weight_total +=3D weight;
> -
>  		if (pipe < for_pipe) {
>  			*weight_start +=3D weight;
>  			*weight_end +=3D weight;
> @@ -3936,87 +3900,65 @@ static int intel_crtc_dbuf_weights(struct intel_a=
tomic_state *state,
>  			*weight_end +=3D weight;
>  		}
>  	}
> -
> -	/*
> -	 * FIXME: For now we always enable slice S1 as per
> -	 * the Bspec display initialization sequence.
> -	 */
> -	new_dbuf_state->enabled_slices =3D total_slice_mask | BIT(DBUF_S1);
> -
> -	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices)=
 {
> -		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
>  }
>  =

>  static int
> -skl_ddb_get_pipe_allocation_limits(struct drm_i915_private *dev_priv,
> -				   const struct intel_crtc_state *crtc_state,
> -				   const u64 total_data_rate,
> -				   struct skl_ddb_entry *alloc, /* out */
> -				   int *num_active /* out */)
> +skl_crtc_allocate_ddb(struct intel_atomic_state *state, struct intel_crt=
c *crtc)
>  {
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	unsigned int weight_start, weight_end, weight_total;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	unsigned int weight_total, weight_start, weight_end;
>  	const struct intel_dbuf_state *old_dbuf_state =3D
>  		intel_atomic_get_old_dbuf_state(state);
>  	struct intel_dbuf_state *new_dbuf_state =3D
>  		intel_atomic_get_new_dbuf_state(state);
> -	u8 active_pipes =3D new_dbuf_state->active_pipes;
> +	struct intel_crtc_state *crtc_state;
>  	struct skl_ddb_entry ddb_slices;
> +	enum pipe pipe =3D crtc->pipe;
>  	u32 ddb_range_size;
>  	u32 dbuf_slice_mask;
>  	u32 start, end;
>  	int ret;
>  =

> -	*num_active =3D hweight8(active_pipes);
> -
> -	if (!crtc_state->hw.active) {
> -		alloc->start =3D 0;
> -		alloc->end =3D 0;
> -		return 0;
> +	if (new_dbuf_state->weight[pipe] =3D=3D 0) {
> +		new_dbuf_state->ddb[pipe].start =3D 0;
> +		new_dbuf_state->ddb[pipe].end =3D 0;
> +		goto out;
>  	}
>  =

> -	/*
> -	 * If the state doesn't change the active CRTC's or there is no
> -	 * modeset request, then there's no need to recalculate;
> -	 * the existing pipe allocation limits should remain unchanged.
> -	 * Note that we're safe from racing commits since any racing commit
> -	 * that changes the active CRTC list or do modeset would need to
> -	 * grab _all_ crtc locks, including the one we currently hold.
> -	 */
> -	if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes &&
> -	    !dev_priv->wm.distrust_bios_wm)
> -		return 0;
> -
> -	/*
> -	 * Get allowed DBuf slices for correspondent pipe and platform.
> -	 */
> -	dbuf_slice_mask =3D skl_compute_dbuf_slices(crtc, active_pipes);
> +	dbuf_slice_mask =3D new_dbuf_state->slices[pipe];
>  =

>  	skl_ddb_entry_for_slices(dev_priv, dbuf_slice_mask, &ddb_slices);
>  	ddb_range_size =3D skl_ddb_entry_size(&ddb_slices);
>  =

> -	ret =3D intel_crtc_dbuf_weights(state, crtc,
> -				      &weight_start, &weight_end, &weight_total);
> -	if (ret)
> -		return ret;
> +	intel_crtc_dbuf_weights(new_dbuf_state, pipe,
> +				&weight_start, &weight_end, &weight_total);
>  =

>  	start =3D ddb_range_size * weight_start / weight_total;
>  	end =3D ddb_range_size * weight_end / weight_total;
>  =

> -	alloc->start =3D ddb_slices.start + start;
> -	alloc->end =3D ddb_slices.start + end;
> +	new_dbuf_state->ddb[pipe].start =3D ddb_slices.start + start;
> +	new_dbuf_state->ddb[pipe].end =3D ddb_slices.start + end;
> +
> +out:
> +	if (skl_ddb_entry_equal(&old_dbuf_state->ddb[pipe],
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
>  =

>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\n=
",
> +		    "[CRTC:%d:%s] dbuf slices 0x%x -> 0x%x, ddb (%d - %d) -> (%d - %d)=
, active pipes 0x%x -> 0x%x\n",
>  		    crtc->base.base.id, crtc->base.name,
> -		    dbuf_slice_mask, alloc->start, alloc->end, active_pipes);
> +		    old_dbuf_state->slices[pipe], new_dbuf_state->slices[pipe],
> +		    old_dbuf_state->ddb[pipe].start, old_dbuf_state->ddb[pipe].end,
> +		    new_dbuf_state->ddb[pipe].start, new_dbuf_state->ddb[pipe].end,
> +		    old_dbuf_state->active_pipes, new_dbuf_state->active_pipes);
>  =

>  	return 0;
>  }
> @@ -4549,35 +4491,32 @@ icl_get_total_relative_data_rate(struct intel_crt=
c_state *crtc_state,
>  }
>  =

>  static int
> -skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
> +skl_allocate_plane_ddb(struct intel_atomic_state *state,
> +		       struct intel_crtc *crtc)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_atomic_state *state =3D
> -		to_intel_atomic_state(crtc_state->uapi.state);
> -	struct intel_dbuf_state *dbuf_state =3D
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_dbuf_state *dbuf_state =3D
>  		intel_atomic_get_new_dbuf_state(state);
> -	struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
> +	const struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
> +	int num_active =3D hweight8(dbuf_state->active_pipes);
>  	u16 alloc_size, start =3D 0;
>  	u16 total[I915_MAX_PLANES] =3D {};
>  	u16 uv_total[I915_MAX_PLANES] =3D {};
>  	u64 total_data_rate;
>  	enum plane_id plane_id;
> -	int num_active;
>  	u64 plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u64 uv_plane_data_rate[I915_MAX_PLANES] =3D {};
>  	u32 blocks;
>  	int level;
> -	int ret;
>  =

>  	/* Clear the partitioning for disabled planes. */
>  	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.pla=
ne_ddb_y));
>  	memset(crtc_state->wm.skl.plane_ddb_uv, 0, sizeof(crtc_state->wm.skl.pl=
ane_ddb_uv));
>  =

> -	if (!crtc_state->hw.active) {
> -		alloc->start =3D alloc->end =3D 0;
> +	if (!crtc_state->hw.active)
>  		return 0;
> -	}
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
>  		total_data_rate =3D
> @@ -4589,13 +4528,6 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  							 plane_data_rate,
>  							 uv_plane_data_rate);
>  =

> -
> -	ret =3D skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> -						 total_data_rate,
> -						 alloc, &num_active);
> -	if (ret)
> -		return ret;
> -
>  	alloc_size =3D skl_ddb_entry_size(alloc);
>  	if (alloc_size =3D=3D 0)
>  		return 0;
> @@ -5475,39 +5407,114 @@ skl_ddb_add_affected_planes(const struct intel_c=
rtc_state *old_crtc_state,
>  	return 0;
>  }
>  =

> +static u8 intel_dbuf_enabled_slices(const struct intel_dbuf_state *dbuf_=
state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(dbuf_state->base.state->b=
ase.dev);
> +	u8 enabled_slices;
> +	enum pipe pipe;
> +
> +	/*
> +	 * FIXME: For now we always enable slice S1 as per
> +	 * the Bspec display initialization sequence.
> +	 */
> +	enabled_slices =3D BIT(DBUF_S1);
> +
> +	for_each_pipe(dev_priv, pipe)
> +		enabled_slices |=3D dbuf_state->slices[pipe];
> +
> +	return enabled_slices;
> +}
> +
>  static int
>  skl_compute_ddb(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	const struct intel_dbuf_state *old_dbuf_state;
> -	const struct intel_dbuf_state *new_dbuf_state;
> +	struct intel_dbuf_state *new_dbuf_state =3D NULL;
>  	const struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  =

> -	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> -					    new_crtc_state, i) {
> -		ret =3D skl_allocate_pipe_ddb(new_crtc_state);
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
>  		if (ret)
>  			return ret;
> +	}
>  =

> -		ret =3D skl_ddb_add_affected_planes(old_crtc_state,
> -						  new_crtc_state);
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		new_dbuf_state->slices[pipe] =3D
> +			skl_compute_dbuf_slices(crtc, new_dbuf_state->active_pipes);
> +
> +		if (old_dbuf_state->slices[pipe] =3D=3D new_dbuf_state->slices[pipe])
> +			continue;
> +
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
>  		if (ret)
>  			return ret;
>  	}
>  =

> -	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> +	new_dbuf_state->enabled_slices =3D intel_dbuf_enabled_slices(new_dbuf_s=
tate);
> +
> +	if (old_dbuf_state->enabled_slices !=3D new_dbuf_state->enabled_slices)=
 {
> +		ret =3D intel_atomic_serialize_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
>  =

> -	if (new_dbuf_state &&
> -	    new_dbuf_state->enabled_slices !=3D old_dbuf_state->enabled_slices)
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Enabled dbuf slices 0x%x -> 0x%x (out of %d dbuf slices)\n",
>  			    old_dbuf_state->enabled_slices,
>  			    new_dbuf_state->enabled_slices,
>  			    INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
> +	}
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		enum pipe pipe =3D crtc->pipe;
> +
> +		new_dbuf_state->weight[crtc->pipe] =3D intel_crtc_ddb_weight(new_crtc_=
state);
> +
> +		if (old_dbuf_state->weight[pipe] =3D=3D new_dbuf_state->weight[pipe])
> +			continue;
> +
> +		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		ret =3D skl_crtc_allocate_ddb(state, crtc);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		ret =3D skl_allocate_plane_ddb(state, crtc);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D skl_ddb_add_affected_planes(old_crtc_state,
> +						  new_crtc_state);
> +		if (ret)
> +			return ret;
> +	}
>  =

>  	return 0;
>  }
> @@ -5636,83 +5643,6 @@ skl_print_wm_changes(struct intel_atomic_state *st=
ate)
>  	}
>  }
>  =

> -static int intel_add_affected_pipes(struct intel_atomic_state *state,
> -				    u8 pipe_mask)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state;
> -
> -		if ((pipe_mask & BIT(crtc->pipe)) =3D=3D 0)
> -			continue;
> -
> -		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> -		if (IS_ERR(crtc_state))
> -			return PTR_ERR(crtc_state);
> -	}
> -
> -	return 0;
> -}
> -
> -static int
> -skl_ddb_add_affected_pipes(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -	int i, ret;
> -
> -	if (dev_priv->wm.distrust_bios_wm) {
> -		/*
> -		 * skl_ddb_get_pipe_allocation_limits() currently requires
> -		 * all active pipes to be included in the state so that
> -		 * it can redistribute the dbuf among them, and it really
> -		 * wants to recompute things when distrust_bios_wm is set
> -		 * so we add all the pipes to the state.
> -		 */
> -		ret =3D intel_add_affected_pipes(state, ~0);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		struct intel_dbuf_state *new_dbuf_state;
> -		const struct intel_dbuf_state *old_dbuf_state;
> -
> -		new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
> -		if (IS_ERR(new_dbuf_state))
> -			return ret;
> -
> -		old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -
> -		new_dbuf_state->active_pipes =3D
> -			intel_calc_active_pipes(state, old_dbuf_state->active_pipes);
> -
> -		if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes)
> -			break;
> -
> -		ret =3D intel_atomic_lock_global_state(&new_dbuf_state->base);
> -		if (ret)
> -			return ret;
> -
> -		/*
> -		 * skl_ddb_get_pipe_allocation_limits() currently requires
> -		 * all active pipes to be included in the state so that
> -		 * it can redistribute the dbuf among them.
> -		 */
> -		ret =3D intel_add_affected_pipes(state,
> -					       new_dbuf_state->active_pipes);
> -		if (ret)
> -			return ret;
> -
> -		break;
> -	}
> -
> -	return 0;
> -}
> -
>  /*
>   * To make sure the cursor watermark registers are always consistent
>   * with our computed state the following scenario needs special
> @@ -5781,15 +5711,6 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	struct intel_crtc_state *old_crtc_state;
>  	int ret, i;
>  =

> -	ret =3D skl_ddb_add_affected_pipes(state);
> -	if (ret)
> -		return ret;
> -
> -	/*
> -	 * Calculate WM's for all pipes that are part of this transaction.
> -	 * Note that skl_ddb_add_affected_pipes may have added more CRTC's that
> -	 * weren't otherwise being modified if pipe allocations had to change.
> -	 */
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		ret =3D skl_build_pipe_wm(new_crtc_state);
> @@ -5944,11 +5865,6 @@ void skl_wm_get_hw_state(struct drm_i915_private *=
dev_priv)
>  =

>  		skl_pipe_wm_get_hw_state(crtc, &crtc_state->wm.skl.optimal);
>  	}
> -
> -	if (dev_priv->active_pipes) {
> -		/* Fully recompute DDB on first atomic commit */
> -		dev_priv->wm.distrust_bios_wm =3D true;
> -	}
>  }
>  =

>  static void ilk_pipe_wm_get_hw_state(struct intel_crtc *crtc)
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index d9f84d93280d..3a82b8046f10 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -66,6 +66,8 @@ struct intel_dbuf_state {
>  	struct intel_global_state base;
>  =

>  	struct skl_ddb_entry ddb[I915_MAX_PIPES];
> +	unsigned int weight[I915_MAX_PIPES];
> +	u8 slices[I915_MAX_PIPES];
>  =

>  	u8 enabled_slices;
>  	u8 active_pipes;
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
