Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 618A24DB7A8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Mar 2022 18:56:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8DA610E863;
	Wed, 16 Mar 2022 17:56:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4951710E863
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Mar 2022 17:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647453378; x=1678989378;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3tvJ6m7Wg7sbM3v3BzxxRKIotQ4uNOg71p4ebmGiHAw=;
 b=n00VRJqLsz9DEwZOMCxuywggLOyGyATsnBa8XqnYoCvv4UtguyO5FTOW
 cC1LiIpW+0UhUOgaLwkNWcTTvhJVUohXLYHKjeEjEvhx3QOP8XLjI1txU
 13xAfYn2iWEAeKuGtgRwBQWvN3DaxPT4aLG1eAOehbt7Spzvz/ltRc80v
 qJ8qC4U/IGWQFPBsn4d0qXvpo7gEkosoOVsXVg6wVi0uvRlJULcb/pIUY
 tSi4Fhk2eUweYbkpu34n6sQkiQVlOSWI4rSAh85dgDfhxD2eFD8/K4Iy4
 j8qbC54CAVMGAp59yK8wbs/vyCc/VgXKNDsR+d13CeqTCb1BGHal55Mcf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="317396326"
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="317396326"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,187,1643702400"; d="scan'208";a="690676206"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2022 10:56:14 -0700
Date: Wed, 16 Mar 2022 19:56:48 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220316175648.GC21723@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 7/8] drm/i915: Unconfuses QGV vs. PSF
 point masks
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

On Wed, Mar 09, 2022 at 06:49:47PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use separate bitmasks for QGV vs. PSF GV points during
> the computation. Makes the whole thing a lot less confusing.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 35 ++++++++++++-------------
>  drivers/gpu/drm/i915/i915_reg.h         |  3 ++-
>  2 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index adf58c58513b..b794545ff81d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -820,7 +820,7 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>  {
>  	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
>  	unsigned int num_qgv_points = i915->max_bw[0].num_qgv_points;
> -	u16 mask = 0;
> +	u16 qgv_points = 0, psf_points = 0;
>  
>  	/*
>  	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
> @@ -828,12 +828,12 @@ static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>  	 * So need to operate only with those returned from PCode.
>  	 */
>  	if (num_qgv_points > 0)
> -		mask |= REG_GENMASK(num_qgv_points - 1, 0);
> +		qgv_points = GENMASK(num_qgv_points - 1, 0);
>  
>  	if (num_psf_gv_points > 0)
> -		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
> +		psf_points = GENMASK(num_psf_gv_points - 1, 0);
>  
> -	return mask;
> +	return ADLS_QGV_PT(qgv_points) | ADLS_PSF_PT(psf_points);
>  }
>  
>  static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
> @@ -890,7 +890,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	unsigned int data_rate;
>  	unsigned int num_active_planes;
>  	int i, ret;
> -	u32 allowed_points = 0;
> +	u16 qgv_points = 0, psf_points = 0;
>  	unsigned int max_bw_point = 0, max_bw = 0;
>  	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
>  	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
> @@ -948,7 +948,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  			max_bw = max_data_rate;
>  		}
>  		if (max_data_rate >= data_rate)
> -			allowed_points |= REG_FIELD_PREP(ADLS_QGV_PT_MASK, BIT(i));
> +			qgv_points |= BIT(i);
>  
>  		drm_dbg_kms(&dev_priv->drm, "QGV point %d: max bw %d required %d\n",
>  			    i, max_data_rate, data_rate);
> @@ -958,7 +958,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  		unsigned int max_data_rate = adl_psf_bw(dev_priv, i);
>  
>  		if (max_data_rate >= data_rate)
> -			allowed_points |= REG_FIELD_PREP(ADLS_PSF_PT_MASK, BIT(i));
> +			psf_points |= BIT(i);
>  
>  		drm_dbg_kms(&dev_priv->drm, "PSF GV point %d: max bw %d"
>  			    " required %d\n",
> @@ -970,20 +970,18 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	 * left, so if we couldn't - simply reject the configuration for obvious
>  	 * reasons.
>  	 */
> -	if ((allowed_points & ADLS_QGV_PT_MASK) == 0) {
> +	if (qgv_points == 0) {
>  		drm_dbg_kms(&dev_priv->drm, "No QGV points provide sufficient memory"
>  			    " bandwidth %d for display configuration(%d active planes).\n",
>  			    data_rate, num_active_planes);
>  		return -EINVAL;
>  	}
>  
> -	if (num_psf_gv_points > 0) {
> -		if ((allowed_points & ADLS_PSF_PT_MASK) == 0) {
> -			drm_dbg_kms(&dev_priv->drm, "No PSF GV points provide sufficient memory"
> -				    " bandwidth %d for display configuration(%d active planes).\n",
> -				    data_rate, num_active_planes);
> -			return -EINVAL;
> -		}
> +	if (num_psf_gv_points > 0 && psf_points == 0) {
> +		drm_dbg_kms(&dev_priv->drm, "No PSF GV points provide sufficient memory"
> +			    " bandwidth %d for display configuration(%d active planes).\n",
> +			    data_rate, num_active_planes);
> +		return -EINVAL;
>  	}
>  
>  	/*
> @@ -992,16 +990,17 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	 * cause.
>  	 */
>  	if (!intel_can_enable_sagv(dev_priv, new_bw_state)) {
> -		allowed_points &= ADLS_PSF_PT_MASK;
> -		allowed_points |= BIT(max_bw_point);
> +		qgv_points = BIT(max_bw_point);
>  		drm_dbg_kms(&dev_priv->drm, "No SAGV, using single QGV point %d\n",
>  			    max_bw_point);
>  	}
> +
>  	/*
>  	 * We store the ones which need to be masked as that is what PCode
>  	 * actually accepts as a parameter.
>  	 */
> -	new_bw_state->qgv_points_mask = ~allowed_points &
> +	new_bw_state->qgv_points_mask =
> +		~(ADLS_QGV_PT(qgv_points) | ADLS_PSF_PT(psf_points)) &
>  		icl_qgv_points_mask(dev_priv);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 70484f6f2b8b..48a12f6c19b4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6722,9 +6722,10 @@
>  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
>  #define     ICL_PCODE_POINTS_RESTRICTED		0x0
>  #define     ICL_PCODE_POINTS_RESTRICTED_MASK	0xf
> -#define   ADLS_PSF_PT_SHIFT			8
>  #define   ADLS_QGV_PT_MASK			REG_GENMASK(7, 0)
> +#define   ADLS_QGV_PT(x)			REG_FIELD_PREP(ADLS_QGV_PT_MASK, (x))
>  #define   ADLS_PSF_PT_MASK			REG_GENMASK(10, 8)
> +#define   ADLS_PSF_PT(x)			REG_FIELD_PREP(ADLS_PSF_PT_MASK, (x))
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
>  #define   ICL_PCODE_EXIT_TCCOLD			0x12
> -- 
> 2.34.1
> 
