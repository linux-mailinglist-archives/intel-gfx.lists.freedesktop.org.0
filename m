Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3CD49DC79
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 09:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962B410E319;
	Thu, 27 Jan 2022 08:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6005910E319
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643271836; x=1674807836;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=D80CnEifKiISVbHw1yxcah9Jyo27dPDFoy1i3gO/tik=;
 b=N8m+v/4SNSCRif7SKbXrSRKd9ZwmHA2esoBlzVIVrjgSnebRdI1/Khuf
 B+0PHv3H44vn8K5lG18JUOO1ZMz8XfR3fNgdAPueIxe3leXH+ICde3+tC
 g0oXPBqnjyhXI4VdCk2256NsVz0+wMrXQ+GMhD8JJ97/vMT/c3uw+EdGI
 yKK3LnqQpf16PTpcWnGROQgOgimu9JydyO0YGU4KkzaPBgBKSAwk1M6r+
 S0F1Dr9pR7iXPUmKKwyDw/oP7Bz+cz/svTB+5wR9TB/SMqafniavpO9xH
 QyH9mQgQNRUhkePJGt905Hb9PNepZ5+gXnIpm2N8JSawT4EqGDVY+k+C1 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="230360402"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="230360402"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:23:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="477780238"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 00:23:54 -0800
Date: Thu, 27 Jan 2022 10:24:00 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220127082400.GE31846@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/i915: Extract
 skl_allocate_plane_ddb()
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

On Tue, Jan 18, 2022 at 11:23:44AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Replace some copy-pasta with a function.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 41 +++++++++++++++++++--------------
>  1 file changed, 24 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index cd1b5f09f241..93ff07f6ef26 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5073,9 +5073,24 @@ struct skl_plane_ddb_iter {
>  	u16 start, size;
>  };
>  
> +static u16
> +skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
> +		       const struct skl_wm_level *wm,
> +		       u64 data_rate)
> +{
> +	u16 extra;
> +
> +	extra = min_t(u16, iter->size,
> +		      DIV64_U64_ROUND_UP(iter->size * data_rate, iter->data_rate));
> +	iter->size -= extra;
> +	iter->data_rate -= data_rate;
> +
> +	return wm->min_ddb_alloc + extra;
> +}
> +
>  static int
> -skl_allocate_plane_ddb(struct intel_atomic_state *state,
> -		       struct intel_crtc *crtc)
> +skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
> +			    struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =
> @@ -5160,8 +5175,6 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
>  		const struct skl_plane_wm *wm =
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
> -		u64 data_rate;
> -		u16 extra;
>  
>  		if (plane_id == PLANE_CURSOR)
>  			continue;
> @@ -5173,22 +5186,16 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		if (iter.data_rate == 0)
>  			break;
>  
> -		data_rate = crtc_state->plane_data_rate[plane_id];
> -		extra = min_t(u16, iter.size,
> -			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
> -		iter.total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
> -		iter.size -= extra;
> -		iter.data_rate -= data_rate;
> +		iter.total[plane_id] =
> +			skl_allocate_plane_ddb(&iter, &wm->wm[level],
> +					       crtc_state->plane_data_rate[plane_id]);
>  
>  		if (iter.data_rate == 0)
>  			break;
>  
> -		data_rate = crtc_state->uv_plane_data_rate[plane_id];
> -		extra = min_t(u16, iter.size,
> -			      DIV64_U64_ROUND_UP(iter.size * data_rate, iter.data_rate));
> -		iter.uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
> -		iter.size -= extra;
> -		iter.data_rate -= data_rate;
> +		iter.uv_total[plane_id] =
> +			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
> +					       crtc_state->uv_plane_data_rate[plane_id]);
>  	}
>  	drm_WARN_ON(&dev_priv->drm, iter.size != 0 || iter.data_rate != 0);
>  
> @@ -6136,7 +6143,7 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
> -		ret = skl_allocate_plane_ddb(state, crtc);
> +		ret = skl_crtc_allocate_plane_ddb(state, crtc);
>  		if (ret)
>  			return ret;
>  
> -- 
> 2.32.0
> 
