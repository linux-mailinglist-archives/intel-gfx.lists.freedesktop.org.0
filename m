Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CEA549DC7D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528EC10E319;
	Thu, 27 Jan 2022 08:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802B310E319
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643271886; x=1674807886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jg35JGFLTKwVamkAunDyK1mNuVsEQDNJe5kpN9bfc1o=;
 b=FbMqEcIg5x2bWEErkD+KolxObn2zpS0YmIVWUiNENGWJwVVWPjGXjRMH
 t5lOt1mHmsie+wbrpP8pFDGh/XUu3ylxcli7DLWMDZlTAL0QeXDFQmHea
 asz9UF3fWOpbA1Bu4ZuIXkol574PKlAv2c75ZgvBJYuxJo6AvxWXnHjYR
 MhLod7fVMEmDqNGCbcn30l5l4QR3aKpSDpnJG+LmVvVluCcWbDihstBq5
 WUxU56ZxwExJiApj928bcExQIyyKklPAbzxJq8mSzlKAMDj7e3ZZyP+4E
 Rwp24OvykGmGq93xIaoZOBNmNSxbgtQORAd00OEhroGr8BNE7Lm7BeXA4 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="246563744"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="246563744"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:24:46 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="477780499"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:24:44 -0800
Date: Thu, 27 Jan 2022 10:24:52 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220127082452.GF31846@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/15] drm/i915: Extract
 skl_crtc_calc_dbuf_bw()
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

On Tue, Jan 18, 2022 at 11:23:45AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract the dbuf slice data_rate calculation into a small
> helper. Should make it a bit easier to handle the different
> color planes of planar formats correctly.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 82 +++++++++++++------------
>  1 file changed, 44 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index c35bad21b657..f0d6fad048c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -672,6 +672,49 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  	return to_intel_bw_state(bw_state);
>  }
>  
> +static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
> +				  const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_dbuf_bw *crtc_bw = &bw_state->dbuf_bw[crtc->pipe];
> +	enum plane_id plane_id;
> +
> +	memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> +
> +	if (!crtc_state->hw.active)
> +		return;
> +
> +	for_each_plane_id_on_crtc(crtc, plane_id) {
> +		const struct skl_ddb_entry *ddb_y =
> +			&crtc_state->wm.skl.plane_ddb_y[plane_id];
> +		const struct skl_ddb_entry *ddb_uv =
> +			&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> +		unsigned int data_rate = crtc_state->data_rate[plane_id];
> +		unsigned int dbuf_mask = 0;
> +		enum dbuf_slice slice;
> +
> +		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_y);
> +		dbuf_mask |= skl_ddb_dbuf_slice_mask(i915, ddb_uv);
> +
> +		/*
> +		 * FIXME: To calculate that more properly we probably
> +		 * need to split per plane data_rate into data_rate_y
> +		 * and data_rate_uv for multiplanar formats in order not
> +		 * to get accounted those twice if they happen to reside
> +		 * on different slices.
> +		 * However for pre-icl this would work anyway because
> +		 * we have only single slice and for icl+ uv plane has
> +		 * non-zero data rate.
> +		 * So in worst case those calculation are a bit
> +		 * pessimistic, which shouldn't pose any significant
> +		 * problem anyway.
> +		 */
> +		for_each_dbuf_slice_in_mask(i915, slice, dbuf_mask)
> +			crtc_bw->used_bw[slice] += data_rate;
> +	}
> +}
> +
>  int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> @@ -684,50 +727,13 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  	int i;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		enum plane_id plane_id;
> -		struct intel_dbuf_bw *crtc_bw;
> -
>  		new_bw_state = intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
>  			return PTR_ERR(new_bw_state);
>  
>  		old_bw_state = intel_atomic_get_old_bw_state(state);
>  
> -		crtc_bw = &new_bw_state->dbuf_bw[crtc->pipe];
> -
> -		memset(&crtc_bw->used_bw, 0, sizeof(crtc_bw->used_bw));
> -
> -		if (!crtc_state->hw.active)
> -			continue;
> -
> -		for_each_plane_id_on_crtc(crtc, plane_id) {
> -			const struct skl_ddb_entry *plane_alloc =
> -				&crtc_state->wm.skl.plane_ddb_y[plane_id];
> -			const struct skl_ddb_entry *uv_plane_alloc =
> -				&crtc_state->wm.skl.plane_ddb_uv[plane_id];
> -			unsigned int data_rate = crtc_state->data_rate[plane_id];
> -			unsigned int dbuf_mask = 0;
> -			enum dbuf_slice slice;
> -
> -			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, plane_alloc);
> -			dbuf_mask |= skl_ddb_dbuf_slice_mask(dev_priv, uv_plane_alloc);
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
> -			for_each_dbuf_slice_in_mask(dev_priv, slice, dbuf_mask)
> -				crtc_bw->used_bw[slice] += data_rate;
> -		}
> +		skl_crtc_calc_dbuf_bw(new_bw_state, crtc_state);
>  	}
>  
>  	if (!old_bw_state)
> -- 
> 2.32.0
> 
