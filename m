Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DC64939FC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 12:59:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AB010EAB6;
	Wed, 19 Jan 2022 11:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E91410EAB6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 11:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642593546; x=1674129546;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WbCWmmUm6OEvs6DWUCL94YgEnikixgvDGL2PDE+B/eI=;
 b=cYz8ytwwy9ASQoiouUXv/0xbnabeLSEYGxiHAnWb7o9QLOoSR/BDv4iD
 4rK33R0DPSlNdoO+wJF/mQY86UpzutEfT0LmvtcMg5J2B1me2HpYZi6uR
 1QI6x/rCvE17CKzCRdKEMDp5S3XAmX358SUrZ4RhdyfXByWxkdBj83vWr
 NnRHi4GHWlC/8ak8FB1qiSodbhot0P96ev8BJGo96ywMGSs57+lTaV9w2
 DXBC0CCu6Z/nFCTGxJRZwpxTQPp69HWtnVOgY6lufFXGofehPEag3lEdI
 ymu4ydDSS+RrD1UnMGeycgolERBYdADkrHS4TqOHG+euvX1E8sZgF3fR4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="305779495"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="305779495"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:59:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="532251340"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 19 Jan 2022 03:59:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 13:59:03 +0200
Date: Wed, 19 Jan 2022 13:59:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yef9BxbDj/JogIU2@intel.com>
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
 <20220118104839.6654-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118104839.6654-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Don't allocate extra ddb
 during async flip for DG2
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

On Tue, Jan 18, 2022 at 12:48:39PM +0200, Stanislav Lisovskiy wrote:
> In terms of async flip optimization we don't to allocate
> extra ddb space, so lets skip it.
> 
> v2: - Extracted min ddb async flip check to separate function
>       (Ville Syrjälä)
>     - Used this function to prevent false positive WARN
>       to be triggered(Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 34 ++++++++++++++++++++++++++-------
>  1 file changed, 27 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 5d350ddc447f..4922c9108f08 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
>  	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
>  }
>  
> +static bool dg2_need_min_ddb(struct drm_i915_private *i915,
> +			     struct intel_crtc_state *crtc_state)
> +{
> +	return IS_DG2(i915) && crtc_state->uapi.async_flip;

Why are we using IS_DG2 here vs. DISPLAY>=13 for the wm0 only decision?

> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -5226,9 +5232,15 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->plane_data_rate[plane_id];
> -		extra = min_t(u16, alloc_size,
> -			      DIV64_U64_ROUND_UP(alloc_size * rate,
> -						 total_data_rate));
> +
> +		if (dg2_need_min_ddb(dev_priv, crtc_state)) {
> +			extra = 0;
> +		} else {
> +			extra = min_t(u16, alloc_size,
> +				      DIV64_U64_ROUND_UP(alloc_size * rate,
> +							 total_data_rate));
> +		}

Hmm. I wonder if we should just set rate=0 instead. That would
let the other planes pick up the now unused extra ddb space. Would 
also avoid having to skip the WARN since we'd still allocate the 
full ddb.

> +
>  		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
> @@ -5237,14 +5249,22 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->uv_plane_data_rate[plane_id];
> -		extra = min_t(u16, alloc_size,
> -			      DIV64_U64_ROUND_UP(alloc_size * rate,
> -						 total_data_rate));
> +
> +		if (dg2_need_min_ddb(dev_priv, crtc_state)) {
> +			extra = 0;
> +		} else {
> +			extra = min_t(u16, alloc_size,
> +				      DIV64_U64_ROUND_UP(alloc_size * rate,
> +							 total_data_rate));
> +		}
> +
>  		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
>  	}
> -	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
> +
> +	if (!dg2_need_min_ddb(dev_priv, crtc_state))
> +		drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
>  
>  	/* Set the actual DDB start/end points for each plane */
>  	start = alloc->start;
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
