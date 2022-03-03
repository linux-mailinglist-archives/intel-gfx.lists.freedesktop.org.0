Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A371B4CBFBC
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Mar 2022 15:14:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C45610E3FF;
	Thu,  3 Mar 2022 14:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C533D10E3FF
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Mar 2022 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646316893; x=1677852893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=581e2ALUKcMg8m+19LVSmxKu46W8w15pGhSjugscMdY=;
 b=K1OIUVOeJfn6RxvcCPjVJwayuoHf3JcZQNKrk+cYFf2zeAaMrOnU9+9Z
 lsojIcOq+z3GvHiQwmPcVDZJiq3SPGPI0XJHDo1Wnwfj9ZLXo+S6uAr8E
 UaNYlB0Vomu6zSdIT0sPFOcOdMgmE7sHz/tUrQiiDFVMxD9NUzrIY5dRb
 BIHVdoWbnnewhbkSIEjlx5htPC9d9O2f1yGP15v/8et2Bp7ZLSS7wSnG2
 zpY8rDWk3OV6mXBHFyO5BLp9wzFeTQ1luuTDKqc6GlwL2PdEPyxKnRQm1
 CBSZzUVBhVuoEsVr3BdShAYOwkWOYZ/SYEMAkh+D6rsBHUQJ4yv7Ju9dg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="234296168"
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="234296168"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:14:51 -0800
X-IronPort-AV: E=Sophos;i="5.90,151,1643702400"; d="scan'208";a="709937294"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2022 06:14:49 -0800
Date: Thu, 3 Mar 2022 16:14:58 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220303141458.GA10068@intel.com>
References: <20220214105532.13049-1-ville.syrjala@linux.intel.com>
 <20220214105532.13049-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214105532.13049-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Don't skip ddb allocation if
 data_rate==0
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

On Mon, Feb 14, 2022 at 12:55:29PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> data_rate==0 no longer means a plane is disabled, it could
> also mean we want to use the minimum ddb allocation for it.
> Hence we can't bail out early during ddb allocation or
> else we'll simply forget to allocate any ddb for such planes.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 6a4d8cc6bbbf ("drm/i915: Don't allocate extra ddb during async flip for DG2")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 30 ++++++++++++------------------
>  1 file changed, 12 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 1179bf31f743..ec2de4f13b5e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5114,12 +5114,15 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter *iter,
>  		       const struct skl_wm_level *wm,
>  		       u64 data_rate)
>  {
> -	u16 extra;
> +	u16 extra = 0;
>  
> -	extra = min_t(u16, iter->size,
> -		      DIV64_U64_ROUND_UP(iter->size * data_rate, iter->data_rate));
> -	iter->size -= extra;
> -	iter->data_rate -= data_rate;
> +	if (data_rate) {
> +		extra = min_t(u16, iter->size,
> +			      DIV64_U64_ROUND_UP(iter->size * data_rate,
> +						 iter->data_rate));
> +		iter->size -= extra;
> +		iter->data_rate -= data_rate;
> +	}
>  
>  	return wm->min_ddb_alloc + extra;
>  }
> @@ -5162,9 +5165,6 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb_y[PLANE_CURSOR],
>  			   alloc->end - iter.total[PLANE_CURSOR], alloc->end);
>  
> -	if (iter.data_rate == 0)
> -		return 0;
> -
>  	/*
>  	 * Find the highest watermark level for which we can satisfy the block
>  	 * requirement of active planes.
> @@ -5203,6 +5203,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		return -EINVAL;
>  	}
>  
> +	/* avoid the WARN later when we don't allocate any extra DDB */
> +	if (iter.data_rate == 0)
> +		iter.size = 0;
> +
>  	/*
>  	 * Grant each plane the blocks it requires at the highest achievable
>  	 * watermark level, plus an extra share of the leftover blocks
> @@ -5215,20 +5219,10 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		if (plane_id == PLANE_CURSOR)
>  			continue;
>  
> -		/*
> -		 * We've accounted for all active planes; remaining planes are
> -		 * all disabled.
> -		 */
> -		if (iter.data_rate == 0)
> -			break;
> -
>  		iter.total[plane_id] =
>  			skl_allocate_plane_ddb(&iter, &wm->wm[level],
>  					       crtc_state->plane_data_rate[plane_id]);
>  
> -		if (iter.data_rate == 0)
> -			break;
> -
>  		iter.uv_total[plane_id] =
>  			skl_allocate_plane_ddb(&iter, &wm->uv_wm[level],
>  					       crtc_state->uv_plane_data_rate[plane_id]);
> -- 
> 2.34.1
> 
