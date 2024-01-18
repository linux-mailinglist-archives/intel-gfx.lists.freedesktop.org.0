Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 316E68314CA
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 09:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E4A10E715;
	Thu, 18 Jan 2024 08:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CBF10E715
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 08:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705566960; x=1737102960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AILuI+AQ9C8mvf35HK58sYtzAlLPjGRW319vdwccsTY=;
 b=VkjBP2W1Ufo2VdKAETEDeJzXLHSU5+t7MGEWtHVpEyOehnNd1wnS2Llx
 6iWWv9QKakG6Y+PY1XHlmHVnGu4BlrE+pRnnRymKVozuFFHFmwAB6ZJO8
 dQSXqPwnP/qenvKn03rzCViJHgz4r2jL5vi0m3are4bwxzVb3MMtqXFjr
 dEY80kre8uO2+in14NwtGUu75OIXD2oEn8vTlKKqGM1EQ3B3YcNJDCTLv
 BtdbjFPAjmUx6nVKd6aq7zHUBHMr01IZbD9beAditHq+jFPEG35UahpG+
 qdUTnM1+bBWL4Xt4JAFl9l84FqQ4b8O4XlpeYmI958HA25KgVeFlq+ODm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7758566"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="7758566"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 00:35:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777669031"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="777669031"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2024 00:35:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jan 2024 10:35:56 +0200
Date: Thu, 18 Jan 2024 10:35:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 3/3] drm/i915: Disable SAGV on bw init, to force QGV
 point recalculation
Message-ID: <Zaji7CC77kmy1jW4@intel.com>
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
 <20240117155718.3439-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240117155718.3439-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jan 17, 2024 at 05:57:18PM +0200, Stanislav Lisovskiy wrote:
> Problem is that on some platforms, we do get QGV point mask in wrong
> state on boot. However driver assumes it is set to 0
> (i.e all points allowed), however in reality we might get them all restricted,
> causing issues.
> Lets disable SAGV initially to force proper QGV point state.
> If more QGV points are available, driver will recalculate and update
> those then after next commit.
> 
> v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
>       disabled.
> v3: - Move force disable function to intel_bw_init in order to initialize
>       bw state as well, so that hw/sw are immediately in sync after init.
> v4: - Don't try sending PCode request, seems like it is not possible at
>       intel_bw_init, however assigning bw->state to be restricted as if
>       SAGV is off, still forces driveer to send PCode request anyway on
>       next modeset, so the solution still works.
>       However we still need to address the case, when no display is connected,
>       which anyway requires much more changes.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bw.h |  2 ++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 7baa1c13eccd..36a6304207ba 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -852,6 +852,27 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
>  	return max_bw_point;
>  }
>  
> +void icl_force_disable_sagv(struct drm_i915_private *i915, struct intel_bw_state *bw_state)
> +{
> +	unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, 0);
> +	unsigned int qgv_points;
> +	unsigned int psf_points;
> +
> +	qgv_points = BIT(max_bw_qgv_point);
> +
> +	/*
> +	 * We don't restrict PSF GV points, when disabling SAGV
> +	 */
> +	psf_points = 0;

Using 0 looks very wrong here. Since we have no idea how much
bandwidth the display is consuming at this time we should
restrict this to the max psf gv point as well.

> +
> +	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
> +				      ADLS_PCODE_REQ_PSF_PT(psf_points)) &
> +				      icl_qgv_points_mask(i915);
> +
> +	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d\n",
> +				max_bw_qgv_point);

You didn't actually poke the hardware to disable anything.

> +}
> +
>  static int mtl_find_qgv_points(struct drm_i915_private *i915,
>  			       unsigned int data_rate,
>  			       unsigned int num_active_planes,
> @@ -1351,5 +1372,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
>  	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
>  				     &state->base, &intel_bw_funcs);
>  
> +	if (DISPLAY_VER(dev_priv) < 14)

Should be some kind of range check to avoid putting garbage in there on
old platforms that don't support QGV.

> +		icl_force_disable_sagv(dev_priv, state);
> +
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index 59cb4fc5db76..243192fd4cae 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -74,5 +74,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  			    bool *need_cdclk_calc);
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>  		       const struct intel_bw_state *bw_state);
> +void icl_force_disable_sagv(struct drm_i915_private *dev_priv,
> +			    struct intel_bw_state *bw_state);

Why?

>  
>  #endif /* __INTEL_BW_H__ */
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
