Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA50831491
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 09:24:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF5210E178;
	Thu, 18 Jan 2024 08:24:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27B3310E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jan 2024 08:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705566291; x=1737102291;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xOFkoSu/HWu72siKEHXLvJ/lcRBOReLxjmcgM2FlQbs=;
 b=L4zsXcGhoxKRhJaw2YP184f3vWOvF/jRGkYhzyX2UjsZ7fp8v4NfaZiD
 W0Az9j0e9VEz9rCRzfH79SWOT933W5XP2ToI5uWEv0cXvAfBLizpOIFZp
 FKmejxS6KhKY9zASPu8N5VhKafY8/T9ZTB+ztxB0LUr12Mf7awTRViYbo
 S/ZkTtxOHDuzCXAliEQaRPdcJbGOMJ+REjiX3ekRApD/KKskn4PRjmidR
 1YP7NVaFdoaCeCDU3kit6MGnHBJ1X/pLJwPqS5bXzeI6I+vhQIigFPQ3l
 QevfFxAMfrVWIrHEmk754gkqYDxAxwsCwLYSKIIDj0/B2DhZPrei2bp1S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="7756045"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; 
   d="scan'208";a="7756045"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 00:24:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="777668137"
X-IronPort-AV: E=Sophos;i="6.05,201,1701158400"; d="scan'208";a="777668137"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 18 Jan 2024 00:24:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Jan 2024 10:24:40 +0200
Date: Thu, 18 Jan 2024 10:24:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Extract code required to calculate max
 qgv/psf gv point
Message-ID: <ZajgSNxaEX62Ipfe@intel.com>
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
 <20240117155718.3439-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240117155718.3439-3-stanislav.lisovskiy@intel.com>
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

On Wed, Jan 17, 2024 at 05:57:17PM +0200, Stanislav Lisovskiy wrote:
> We need that in order to force disable SAGV in next patch.
> Also it is beneficial to separate that code, as in majority cases,
> when SAGV is enabled, we don't even need those calculations.
> Also we probably need to determine max PSF GV point as well, however
> currently we don't do that when we disable SAGV, which might be
> actually causing some issues in that case.
> 
> v2: - Introduce helper adl_qgv_bw(counterpart to adl_psf_bw)
>       (Ville Syrjälä)
>     - Don't restrict psf gv points for SAGV disable case
>       (Ville Syrjälä)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 81 ++++++++++++++++---------
>  1 file changed, 53 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 77886cc21211..7baa1c13eccd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -652,15 +652,31 @@ static unsigned int tgl_max_bw_index(struct drm_i915_private *dev_priv,
>  	return 0;
>  }
>  
> -static unsigned int adl_psf_bw(struct drm_i915_private *dev_priv,
> +static unsigned int adl_psf_bw(struct drm_i915_private *i915,
>  			       int psf_gv_point)
>  {
>  	const struct intel_bw_info *bi =
> -			&dev_priv->display.bw.max[0];
> +			&i915->display.bw.max[0];

Unrelated change.

>  
>  	return bi->psf_bw[psf_gv_point];
>  }
>  
> +static unsigned int adl_qgv_bw(struct drm_i915_private *i915,

s/adl/icl/, or s/adl/intel/ perhaps.

> +			       int qgv_point, int num_active_planes)

Please keep the parameters in the same order as elsewhere.
It's hard enough trying to juggle multiple integer parameters
without intentionally confusing matters by swapping the order
randomly.

> +{
> +	unsigned int idx;
> +
> +	if (DISPLAY_VER(i915) > 11)

 >= 12

> +		idx = tgl_max_bw_index(i915, num_active_planes, qgv_point);
> +	else
> +		idx = icl_max_bw_index(i915, num_active_planes, qgv_point);
> +
> +	if (idx >= ARRAY_SIZE(i915->display.bw.max))
> +		return 0;
> +
> +	return i915->display.bw.max[idx].deratedbw[qgv_point];
> +}
> +
>  void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  {
>  	if (!HAS_DISPLAY(dev_priv))
> @@ -806,6 +822,36 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  	return to_intel_bw_state(bw_state);
>  }
>  
> +static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
> +					 int num_active_planes)
> +{
> +	unsigned int max_bw_point = 0;
> +	unsigned int max_bw = 0;
> +	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> +	int i;
> +
> +	for (i = 0; i < num_qgv_points; i++) {
> +		unsigned int max_data_rate;
> +
> +		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
> +
> +		/*
> +		 * We need to know which qgv point gives us
> +		 * maximum bandwidth in order to disable SAGV
> +		 * if we find that we exceed SAGV block time
> +		 * with watermarks. By that moment we already
> +		 * have those, as it is calculated earlier in
> +		 * intel_atomic_check,
> +		 */
> +		if (max_data_rate > max_bw) {
> +			max_bw_point = i;
> +			max_bw = max_data_rate;
> +		}
> +	}
> +
> +	return max_bw_point;
> +}
> +
>  static int mtl_find_qgv_points(struct drm_i915_private *i915,
>  			       unsigned int data_rate,
>  			       unsigned int num_active_planes,
> @@ -883,8 +929,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  			       const struct intel_bw_state *old_bw_state,
>  			       struct intel_bw_state *new_bw_state)
>  {
> -	unsigned int max_bw_point = 0;
> -	unsigned int max_bw = 0;
>  	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
>  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
>  	u16 psf_points = 0;
> @@ -897,31 +941,10 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  		return ret;
>  
>  	for (i = 0; i < num_qgv_points; i++) {
> -		unsigned int idx;
>  		unsigned int max_data_rate;
>  
> -		if (DISPLAY_VER(i915) >= 12)
> -			idx = tgl_max_bw_index(i915, num_active_planes, i);
> -		else
> -			idx = icl_max_bw_index(i915, num_active_planes, i);
> -
> -		if (idx >= ARRAY_SIZE(i915->display.bw.max))
> -			continue;
> -
> -		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
> +		max_data_rate = adl_qgv_bw(i915, i, num_active_planes);
>  
> -		/*
> -		 * We need to know which qgv point gives us
> -		 * maximum bandwidth in order to disable SAGV
> -		 * if we find that we exceed SAGV block time
> -		 * with watermarks. By that moment we already
> -		 * have those, as it is calculated earlier in
> -		 * intel_atomic_check,
> -		 */
> -		if (max_data_rate > max_bw) {
> -			max_bw_point = i;
> -			max_bw = max_data_rate;
> -		}
>  		if (max_data_rate >= data_rate)
>  			qgv_points |= BIT(i);
>  
> @@ -965,9 +988,11 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  	 * cause.
>  	 */
>  	if (!intel_can_enable_sagv(i915, new_bw_state)) {
> -		qgv_points = BIT(max_bw_point);
> +		unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, num_active_planes);
> +
> +		qgv_points = BIT(max_bw_qgv_point);
>  		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
> -			    max_bw_point);
> +			    max_bw_qgv_point);
>  	}
>  
>  	/*
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
