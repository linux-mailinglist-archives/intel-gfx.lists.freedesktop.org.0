Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BB8686D7C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 18:57:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E7B710E438;
	Wed,  1 Feb 2023 17:57:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C6D210E438
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 17:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675274262; x=1706810262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oXjlvxoxlSqlPElUlJaurk1Yw0fAUMekckxpgBNg61E=;
 b=au7gu+jrZvL8+xeD6MjLfpeLtZ/EeLqfaeL+PYgUCzLrE4bpNQTBXOSt
 pPCOxbgwot1u9BCHo3jTwX+Jl68d5wYf9EqvM/wlh8R5kIgqWZX8evXOr
 9L43i04FOpmr5wydvLir2xLWfXUttDzxnWL4Ji3M40SKbgWU2JGm6dkuW
 iIj49+RKYmRxSDCGNQtWjpCni9mAnAVu5pVrjdaRNoTQORYgfpoND0j4i
 VJYBLKQNcv9QG+J0+KLvR+wosrTisIpbk9TAwih9GPcrZZ79NWZROcvnw
 r6RoLGb/JQ2zs6/UBUo06eLWq9z1CX4N1l9opmCXTEL+/Fa7J6Q92dkuk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308564304"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="308564304"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:57:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="697350263"
X-IronPort-AV: E=Sophos;i="5.97,265,1669104000"; d="scan'208";a="697350263"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 09:57:40 -0800
Date: Wed, 1 Feb 2023 19:57:37 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y9qoEWtPpIp0+oAq@intel.com>
References: <20230131002127.29305-1-ville.syrjala@linux.intel.com>
 <20230131002127.29305-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230131002127.29305-3-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Keep sagv status updated on
 icl+
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

On Tue, Jan 31, 2023 at 02:21:26AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On icl+ SAGV is controlled by masking of the QGV points.
> Reduce the QGV point mask to the same kind of enabled vs.
> disable information that we had on previous platforms.
> Will be useful in answering the question whether SAGV is
> actually enabled or not.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++----------
>  1 file changed, 29 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 1c236f02b380..202321ffbe2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -119,6 +119,32 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
>  	return 0;
>  }
>  
> +static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> +{
> +	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> +	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> +	u16 qgv_points = 0, psf_points = 0;
> +
> +	/*
> +	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
> +	 * it with failure if we try masking any unadvertised points.
> +	 * So need to operate only with those returned from PCode.
> +	 */
> +	if (num_qgv_points > 0)
> +		qgv_points = GENMASK(num_qgv_points - 1, 0);
> +
> +	if (num_psf_gv_points > 0)
> +		psf_points = GENMASK(num_psf_gv_points - 1, 0);
> +
> +	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
> +}
> +
> +static bool is_sagv_enabled(struct drm_i915_private *i915, u16 points_mask)
> +{
> +	return !is_power_of_2(~points_mask & icl_qgv_points_mask(i915) &
> +			      ICL_PCODE_REQ_QGV_PT_MASK);
> +}
> +
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  				  u32 points_mask)
>  {
> @@ -136,6 +162,9 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  		return ret;
>  	}
>  
> +	dev_priv->display.sagv.status = is_sagv_enabled(dev_priv, points_mask) ?
> +		I915_SAGV_ENABLED : I915_SAGV_DISABLED;
> +
>  	return 0;
>  }
>  
> @@ -965,26 +994,6 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  	return 0;
>  }
>  
> -static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> -{
> -	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> -	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> -	u16 qgv_points = 0, psf_points = 0;
> -
> -	/*
> -	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
> -	 * it with failure if we try masking any unadvertised points.
> -	 * So need to operate only with those returned from PCode.
> -	 */
> -	if (num_qgv_points > 0)
> -		qgv_points = GENMASK(num_qgv_points - 1, 0);
> -
> -	if (num_psf_gv_points > 0)
> -		psf_points = GENMASK(num_psf_gv_points - 1, 0);
> -
> -	return ICL_PCODE_REQ_QGV_PT(qgv_points) | ADLS_PCODE_REQ_PSF_PT(psf_points);
> -}
> -
>  static int intel_bw_check_data_rate(struct intel_atomic_state *state, bool *changed)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> -- 
> 2.39.1
> 
