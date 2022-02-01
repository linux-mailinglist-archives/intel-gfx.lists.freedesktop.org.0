Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B49A4A583E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 09:06:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3464C10EDB3;
	Tue,  1 Feb 2022 08:06:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D65610EDB3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 08:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643702780; x=1675238780;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KeRzONmJIj4Ud7XBhe8oKgaizy81jl2oaWiUskgBNKI=;
 b=mtzYwY4+rBuOG7SjWDNfGYdEPzzIROVu4PYD84onhrse/0WSnYiSGVNj
 TOJ+C1ovuXmfokexN4/5OC/3nM7jyFsoo1kvJrkrEn8d1BSLyfpXzGbzr
 39Qn7jGPUAZ7/8Ny6eD6VYlcOZ5TdFTWtpAiR9y5w+owajsy6vmbHSQ2n
 nQk8OKeFFLI7K/akHs925KZIT+6BczKzbfZOa2shzbwkJRgJDzxax/84O
 cwEt1tswEJ+HZhfQ8kCGSFRVoFG8v35VHjprfiHVRfcON1R+za6SvIkbE
 2pvad3nRyaM5eHOOvJLmFWCHe7G1X+CoS7ru0slTvGjMKuEwn8Kr9ziq3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="272117162"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="272117162"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 00:06:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="479553887"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 00:06:18 -0800
Date: Tue, 1 Feb 2022 10:06:22 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220201080606.GA9466@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 07/15] drm/i915: Tweak plane ddb allocation
 tracking
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 11:23:46AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Let's store the plane allocation in a manner which more closely
> matches how the hw operates. That is, we store the packed/CbCr
> ddb in one struct, and the Y ddb in another. Currently we're
> storing packed/Y in one struct, CbCr in the other.
> 
> This also works pretty well for icl+ where the UV plane is
> the main plane and the Y plane is subservient to it. Although
> in this case we do not even use ddb_y as we do the ddb allocation
> in terms of hw planes.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  32 +++---
>  drivers/gpu/drm/i915/display/intel_bw.c       |   6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   4 +-
>  .../drm/i915/display/intel_display_types.h    |   7 +-
>  drivers/gpu/drm/i915/intel_pm.c               | 108 ++++++++----------
>  6 files changed, 74 insertions(+), 91 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index c2c512cd8ec0..52239351931c 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -430,8 +430,8 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  static struct intel_plane *
>  skl_next_plane_to_commit(struct intel_atomic_state *state,
>  			 struct intel_crtc *crtc,
> -			 struct skl_ddb_entry entries_y[I915_MAX_PLANES],
> -			 struct skl_ddb_entry entries_uv[I915_MAX_PLANES],
> +			 struct skl_ddb_entry ddb[I915_MAX_PLANES],
> +			 struct skl_ddb_entry ddb_y[I915_MAX_PLANES],
>  			 unsigned int *update_mask)
>  {
>  	struct intel_crtc_state *crtc_state =
> @@ -450,17 +450,15 @@ skl_next_plane_to_commit(struct intel_atomic_state *state,
>  		    !(*update_mask & BIT(plane_id)))
>  			continue;
>  
> -		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb_y[plane_id],
> -						entries_y,
> -						I915_MAX_PLANES, plane_id) ||
> -		    skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb_uv[plane_id],
> -						entries_uv,
> -						I915_MAX_PLANES, plane_id))
> +		if (skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb[plane_id],
> +						ddb, I915_MAX_PLANES, plane_id) ||
> +		    skl_ddb_allocation_overlaps(&crtc_state->wm.skl.plane_ddb_y[plane_id],
> +						ddb_y, I915_MAX_PLANES, plane_id))
>  			continue;
>  
>  		*update_mask &= ~BIT(plane_id);
> -		entries_y[plane_id] = crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		entries_uv[plane_id] = crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +		ddb[plane_id] = crtc_state->wm.skl.plane_ddb[plane_id];
> +		ddb_y[plane_id] = crtc_state->wm.skl.plane_ddb_y[plane_id];
>  
>  		return plane;
>  	}
> @@ -542,19 +540,17 @@ void skl_arm_planes_on_crtc(struct intel_atomic_state *state,
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct skl_ddb_entry entries_y[I915_MAX_PLANES];
> -	struct skl_ddb_entry entries_uv[I915_MAX_PLANES];
> +	struct skl_ddb_entry ddb[I915_MAX_PLANES];
> +	struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
>  	u32 update_mask = new_crtc_state->update_planes;
>  	struct intel_plane *plane;
>  
> -	memcpy(entries_y, old_crtc_state->wm.skl.plane_ddb_y,
> +	memcpy(ddb, old_crtc_state->wm.skl.plane_ddb,
> +	       sizeof(old_crtc_state->wm.skl.plane_ddb));
> +	memcpy(ddb_y, old_crtc_state->wm.skl.plane_ddb_y,
>  	       sizeof(old_crtc_state->wm.skl.plane_ddb_y));
> -	memcpy(entries_uv, old_crtc_state->wm.skl.plane_ddb_uv,
> -	       sizeof(old_crtc_state->wm.skl.plane_ddb_uv));
>  
> -	while ((plane = skl_next_plane_to_commit(state, crtc,
> -						 entries_y, entries_uv,
> -						 &update_mask))) {
> +	while ((plane = skl_next_plane_to_commit(state, crtc, ddb, ddb_y, &update_mask))) {
>  		struct intel_plane_state *new_plane_state =
>  			intel_atomic_get_new_plane_state(state, plane);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index f0d6fad048c7..82f0435bcb6d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -686,16 +686,16 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>  		return;
>  
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_ddb_entry *ddb =
> +			&crtc_state->wm.skl.plane_ddb[plane_id];
>  		const struct skl_ddb_entry *ddb_y =
>  			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		const struct skl_ddb_entry *ddb_uv =
> -			&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  		unsigned int data_rate = crtc_state->data_rate[plane_id];
>  		unsigned int dbuf_mask = 0;
>  		enum dbuf_slice slice;
>  
> +		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb);
>  		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_y);
> -		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_uv);
>  
>  		/*
>  		 * FIXME: To calculate that more properly we probably
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0964b2403e2d..af23153f6502 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6750,8 +6750,8 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct skl_hw_state {
> +		struct skl_ddb_entry ddb[I915_MAX_PLANES];
>  		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> -		struct skl_ddb_entry ddb_uv[I915_MAX_PLANES];
>  		struct skl_pipe_wm wm;
>  	} *hw;
>  	const struct skl_pipe_wm *sw_wm = &new_crtc_state->wm.skl.optimal;
> @@ -6768,7 +6768,7 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  
>  	skl_pipe_wm_get_hw_state(crtc, &hw->wm);
>  
> -	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
> +	skl_pipe_ddb_get_hw_state(crtc, hw->ddb, hw->ddb_y);
>  
>  	hw_enabled_slices = intel_enabled_dbuf_slices_mask(dev_priv);
>  
> @@ -6850,8 +6850,8 @@ static void verify_wm_state(struct intel_crtc *crtc,
>  		}
>  
>  		/* DDB */
> -		hw_ddb_entry = &hw->ddb_y[plane->id];
> -		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb_y[plane->id];
> +		hw_ddb_entry = &hw->ddb[PLANE_CURSOR];
> +		sw_ddb_entry = &new_crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
>  
>  		if (!skl_ddb_entry_equal(hw_ddb_entry, sw_ddb_entry)) {
>  			drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f4de004d470f..5ef4a86ccf66 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1116,13 +1116,13 @@ static int i915_ddb_info(struct seq_file *m, void *unused)
>  		seq_printf(m, "Pipe %c\n", pipe_name(pipe));
>  
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			entry = &crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			entry = &crtc_state->wm.skl.plane_ddb[plane_id];
>  			seq_printf(m, "  Plane%-8d%8u%8u%8u\n", plane_id + 1,
>  				   entry->start, entry->end,
>  				   skl_ddb_entry_size(entry));
>  		}
>  
> -		entry = &crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR];
> +		entry = &crtc_state->wm.skl.plane_ddb[PLANE_CURSOR];
>  		seq_printf(m, "  %-13s%8u%8u%8u\n", "Cursor", entry->start,
>  			   entry->end, skl_ddb_entry_size(entry));
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 41e3dd25a78f..578c6069376b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -868,8 +868,13 @@ struct intel_crtc_wm_state {
>  			/* gen9+ only needs 1-step wm programming */
>  			struct skl_pipe_wm optimal;
>  			struct skl_ddb_entry ddb;
> +			/*
> +			 * pre-icl: for packed/planar CbCr
> +			 * icl+: for everything
> +			 */
> +			struct skl_ddb_entry plane_ddb[I915_MAX_PLANES];
> +			/* pre-icl: for planar Y */
>  			struct skl_ddb_entry plane_ddb_y[I915_MAX_PLANES];
> -			struct skl_ddb_entry plane_ddb_uv[I915_MAX_PLANES];
>  		} skl;
>  
>  		struct {
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 93ff07f6ef26..8a115b4c9e71 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4312,46 +4312,31 @@ static void
>  skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
>  			   const enum pipe pipe,
>  			   const enum plane_id plane_id,
> -			   struct skl_ddb_entry *ddb_y,
> -			   struct skl_ddb_entry *ddb_uv)
> +			   struct skl_ddb_entry *ddb,
> +			   struct skl_ddb_entry *ddb_y)
>  {
> -	u32 val, val2;
> -	u32 fourcc = 0;
> +	u32 val;
>  
>  	/* Cursor doesn't support NV12/planar, so no extra calculation needed */
>  	if (plane_id == PLANE_CURSOR) {
>  		val = intel_uncore_read(&dev_priv->uncore, CUR_BUF_CFG(pipe));
> -		skl_ddb_entry_init_from_hw(ddb_y, val);
> +		skl_ddb_entry_init_from_hw(ddb, val);
>  		return;
>  	}
>  
> -	val = intel_uncore_read(&dev_priv->uncore, PLANE_CTL(pipe, plane_id));
> +	val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
> +	skl_ddb_entry_init_from_hw(ddb, val);
>  
> -	/* No DDB allocated for disabled planes */
> -	if (val & PLANE_CTL_ENABLE)
> -		fourcc = skl_format_to_fourcc(val & PLANE_CTL_FORMAT_MASK_SKL,
> -					      val & PLANE_CTL_ORDER_RGBX,
> -					      val & PLANE_CTL_ALPHA_MASK);
> -
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
> -		skl_ddb_entry_init_from_hw(ddb_y, val);
> -	} else {
> -		val = intel_uncore_read(&dev_priv->uncore, PLANE_BUF_CFG(pipe, plane_id));
> -		val2 = intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
> -
> -		if (fourcc &&
> -		    drm_format_info_is_yuv_semiplanar(drm_format_info(fourcc)))
> -			swap(val, val2);
> +	if (DISPLAY_VER(dev_priv) >= 11)
> +		return;
>  
> -		skl_ddb_entry_init_from_hw(ddb_y, val);
> -		skl_ddb_entry_init_from_hw(ddb_uv, val2);
> -	}
> +	val = intel_uncore_read(&dev_priv->uncore, PLANE_NV12_BUF_CFG(pipe, plane_id));
> +	skl_ddb_entry_init_from_hw(ddb_y, val);
>  }
>  
>  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
> -			       struct skl_ddb_entry *ddb_y,
> -			       struct skl_ddb_entry *ddb_uv)
> +			       struct skl_ddb_entry *ddb,
> +			       struct skl_ddb_entry *ddb_y)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum intel_display_power_domain power_domain;
> @@ -4367,8 +4352,8 @@ void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
>  	for_each_plane_id_on_crtc(crtc, plane_id)
>  		skl_ddb_get_hw_plane_state(dev_priv, pipe,
>  					   plane_id,
> -					   &ddb_y[plane_id],
> -					   &ddb_uv[plane_id]);
> +					   &ddb[plane_id],
> +					   &ddb_y[plane_id]);
>  
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
>  }
> @@ -5105,8 +5090,8 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  	int level;
>  
>  	/* Clear the partitioning for disabled planes. */
> +	memset(crtc_state->wm.skl.plane_ddb, 0, sizeof(crtc_state->wm.skl.plane_ddb));
>  	memset(crtc_state->wm.skl.plane_ddb_y, 0, sizeof(crtc_state->wm.skl.plane_ddb_y));
> -	memset(crtc_state->wm.skl.plane_ddb_uv, 0, sizeof(crtc_state->wm.skl.plane_ddb_uv));
>  
>  	if (!crtc_state->hw.active)
>  		return 0;
> @@ -5123,7 +5108,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  	/* Allocate fixed number of blocks for cursor. */
>  	iter.total[PLANE_CURSOR] = skl_cursor_allocation(crtc_state, num_active);
>  	iter.size -= iter.total[PLANE_CURSOR];
> -	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR],
> +	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
>  			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
>  
>  	if (iter.data_rate == 0)
> @@ -5202,10 +5187,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  	/* Set the actual DDB start/end points for each plane */
>  	iter.start = alloc->start;
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		struct skl_ddb_entry *plane_alloc =
> +		struct skl_ddb_entry *ddb =
> +			&crtc_state->wm.skl.plane_ddb[plane_id];
> +		struct skl_ddb_entry *ddb_y =
>  			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -		struct skl_ddb_entry *uv_plane_alloc =
> -			&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  
>  		if (plane_id == PLANE_CURSOR)
>  			continue;
> @@ -5216,12 +5201,15 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  
>  		/* Leave disabled planes at (0,0) */
>  		if (iter.total[plane_id])
> -			iter.start = skl_ddb_entry_init(plane_alloc, iter.start,
> +			iter.start = skl_ddb_entry_init(ddb, iter.start,
>  							iter.start + iter.total[plane_id]);
>  
> -		if (iter.uv_total[plane_id])
> -			iter.start = skl_ddb_entry_init(uv_plane_alloc, iter.start,
> +		if (iter.uv_total[plane_id]) {
> +			/* hardware wants these swapped */
> +			*ddb_y = *ddb;
> +			iter.start = skl_ddb_entry_init(ddb, iter.start,
>  							iter.start + iter.uv_total[plane_id]);
> +		}
>  	}
>  
>  	/*
> @@ -5874,11 +5862,10 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  	enum plane_id plane_id = plane->id;
>  	enum pipe pipe = plane->pipe;
>  	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
> -	const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
> +	const struct skl_ddb_entry *ddb =
> +		&crtc_state->wm.skl.plane_ddb[plane_id];
>  	const struct skl_ddb_entry *ddb_y =
>  		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -	const struct skl_ddb_entry *ddb_uv =
> -		&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  
>  	for (level = 0; level <= max_level; level++)
>  		skl_write_wm_level(dev_priv, PLANE_WM(pipe, plane_id, level),
> @@ -5888,25 +5875,20 @@ void skl_write_plane_wm(struct intel_plane *plane,
>  			   skl_plane_trans_wm(pipe_wm, plane_id));
>  
>  	if (HAS_HW_SAGV_WM(dev_priv)) {
> +		const struct skl_plane_wm *wm = &pipe_wm->planes[plane_id];
> +
>  		skl_write_wm_level(dev_priv, PLANE_WM_SAGV(pipe, plane_id),
>  				   &wm->sagv.wm0);
>  		skl_write_wm_level(dev_priv, PLANE_WM_SAGV_TRANS(pipe, plane_id),
>  				   &wm->sagv.trans_wm);
>  	}
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	skl_ddb_entry_write(dev_priv,
> +			    PLANE_BUF_CFG(pipe, plane_id), ddb);
> +
> +	if (DISPLAY_VER(dev_priv) < 11)
>  		skl_ddb_entry_write(dev_priv,
> -				    PLANE_BUF_CFG(pipe, plane_id), ddb_y);
> -		return;
> -	}
> -
> -	if (wm->is_planar)
> -		swap(ddb_y, ddb_uv);
> -
> -	skl_ddb_entry_write(dev_priv,
> -			    PLANE_BUF_CFG(pipe, plane_id), ddb_y);
> -	skl_ddb_entry_write(dev_priv,
> -			    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_uv);
> +				    PLANE_NV12_BUF_CFG(pipe, plane_id), ddb_y);
>  }
>  
>  void skl_write_cursor_wm(struct intel_plane *plane,
> @@ -5918,7 +5900,7 @@ void skl_write_cursor_wm(struct intel_plane *plane,
>  	enum pipe pipe = plane->pipe;
>  	const struct skl_pipe_wm *pipe_wm = &crtc_state->wm.skl.optimal;
>  	const struct skl_ddb_entry *ddb =
> -		&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		&crtc_state->wm.skl.plane_ddb[plane_id];
>  
>  	for (level = 0; level <= max_level; level++)
>  		skl_write_wm_level(dev_priv, CUR_WM(pipe, level),
> @@ -6015,10 +5997,10 @@ skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
>  		struct intel_plane_state *plane_state;
>  		enum plane_id plane_id = plane->id;
>  
> -		if (skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb_y[plane_id],
> -					&new_crtc_state->wm.skl.plane_ddb_y[plane_id]) &&
> -		    skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb_uv[plane_id],
> -					&new_crtc_state->wm.skl.plane_ddb_uv[plane_id]))
> +		if (skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb[plane_id],
> +					&new_crtc_state->wm.skl.plane_ddb[plane_id]) &&
> +		    skl_ddb_entry_equal(&old_crtc_state->wm.skl.plane_ddb_y[plane_id],
> +					&new_crtc_state->wm.skl.plane_ddb_y[plane_id]))
>  			continue;
>  
>  		plane_state = intel_atomic_get_plane_state(state, plane);
> @@ -6185,8 +6167,8 @@ skl_print_wm_changes(struct intel_atomic_state *state)
>  			enum plane_id plane_id = plane->id;
>  			const struct skl_ddb_entry *old, *new;
>  
> -			old = &old_crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			new = &new_crtc_state->wm.skl.plane_ddb_y[plane_id];
> +			old = &old_crtc_state->wm.skl.plane_ddb[plane_id];
> +			new = &new_crtc_state->wm.skl.plane_ddb[plane_id];
>  
>  			if (skl_ddb_entry_equal(old, new))
>  				continue;
> @@ -6587,16 +6569,16 @@ void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		memset(&dbuf_state->ddb[pipe], 0, sizeof(dbuf_state->ddb[pipe]));
>  
>  		for_each_plane_id_on_crtc(crtc, plane_id) {
> +			struct skl_ddb_entry *ddb =
> +				&crtc_state->wm.skl.plane_ddb[plane_id];
>  			struct skl_ddb_entry *ddb_y =
>  				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			struct skl_ddb_entry *ddb_uv =
> -				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
>  
>  			skl_ddb_get_hw_plane_state(dev_priv, crtc->pipe,
> -						   plane_id, ddb_y, ddb_uv);
> +						   plane_id, ddb, ddb_y);
>  
> +			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb);
>  			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_y);
> -			skl_ddb_entry_union(&dbuf_state->ddb[pipe], ddb_uv);
>  		}
>  
>  		dbuf_state->slices[pipe] =
> -- 
> 2.32.0
> 
