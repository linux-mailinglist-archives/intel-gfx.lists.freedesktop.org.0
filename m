Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370B1495ED8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 13:06:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7363710EA80;
	Fri, 21 Jan 2022 12:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBAC10EA80
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 12:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642766776; x=1674302776;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wKzCrYTiMrWWs+EcVNIAilTTaNowNO0pzGK4YTogcWk=;
 b=QkC2eCGI2oJp5DDfHJrWCCIng9MsB5Lc0yJepzvIsyAUc/btRna9wa5A
 shd3odFEjj683Z0qelPjZQNdCk6JNLPA0FYsIcFOoZd50Dg86oGirCDyF
 3COrCb7h/xFupl6sON4JaRkzu6HobAdwlMfOegZ6tX6Ky6oFPOnLfXH3c
 qR93LujlpIy6PHInNdQWnJXG0Fx/UAoNreAsFikJLGWx1YWYw50gIuWz2
 rdv6gK4lxo8gvkPEmsmy43Qya11dBX4LhbWTrjwt55Jxaah+6KKmNqNeG
 gQ3CwXcKcishKzMvFgqXK7Bje4pG1dvZIt9XrM1oWenB00L2oCvq2FZRB w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245424016"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245424016"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 04:06:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533250321"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga008.jf.intel.com with SMTP; 21 Jan 2022 04:06:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Jan 2022 14:06:12 +0200
Date: Fri, 21 Jan 2022 14:06:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <YeqhtJd1nmuFDsPI@intel.com>
References: <20220121080615.9936-1-stanislav.lisovskiy@intel.com>
 <20220121080615.9936-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220121080615.9936-5-stanislav.lisovskiy@intel.com>
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

On Fri, Jan 21, 2022 at 10:06:15AM +0200, Stanislav Lisovskiy wrote:
> In terms of async flip optimization we don't to allocate
> extra ddb space, so lets skip it.
> 
> v2: - Extracted min ddb async flip check to separate function
>       (Ville Syrjälä)
>     - Used this function to prevent false positive WARN
>       to be triggered(Ville Syrjälä)
> 
> v3: - Renamed dg2_need_min_ddb to need_min_ddb thus making
>       it more universal.
>     - Also used DISPLAY_VER instead of IS_DG2(Ville Syrjälä)
>     - Use rate = 0 instead of just setting extra = 0, thus
>       letting other planes to use extra ddb and avoiding WARN
>       (Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 5fb022a2a4d7..18fb35c480ef 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -5118,6 +5118,12 @@ static bool icl_need_wm1_wa(struct drm_i915_private *i915,
>  	       (IS_DISPLAY_VER(i915, 12, 13) && plane_id == PLANE_CURSOR);
>  }
>  
> +static bool needs_min_ddb(struct drm_i915_private *i915,
> +			  struct intel_crtc_state *crtc_state)

s/needs/use/ to match the wm0 counterpart?

Could use a comment as well perhaps, or maybe just put this right
next to the wm0 counterpart so the reader can see both together and
make the connection.

Hmm. Actually I think this would also need the plane->async_flip
check here too or else we'll drop all the planes to min ddb
instead of just the plane doing async flips.

Oh, and I think we need this same thing when calculating the
total_data_rate or else the numbers won't match.

> +{
> +	return DISPLAY_VER(i915) >= 13 && crtc_state->uapi.async_flip;
> +}
> +
>  static int
>  skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  		       struct intel_crtc *crtc)
> @@ -5225,9 +5231,14 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->plane_data_rate[plane_id];
> +
> +		if (needs_min_ddb(dev_priv, crtc_state))
> +			rate = 0;
> +
>  		extra = min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> +
>  		total[plane_id] = wm->wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
> @@ -5236,13 +5247,19 @@ skl_allocate_plane_ddb(struct intel_atomic_state *state,
>  			break;
>  
>  		rate = crtc_state->uv_plane_data_rate[plane_id];
> +
> +		if (needs_min_ddb(dev_priv, crtc_state))
> +			rate = 0;
> +
>  		extra = min_t(u16, alloc_size,
>  			      DIV64_U64_ROUND_UP(alloc_size * rate,
>  						 total_data_rate));
> +
>  		uv_total[plane_id] = wm->uv_wm[level].min_ddb_alloc + extra;
>  		alloc_size -= extra;
>  		total_data_rate -= rate;
>  	}
> +
>  	drm_WARN_ON(&dev_priv->drm, alloc_size != 0 || total_data_rate != 0);
>  
>  	/* Set the actual DDB start/end points for each plane */
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
