Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 997344BD955
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 12:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7417A10E499;
	Mon, 21 Feb 2022 11:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8829410E499
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 11:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645441823; x=1676977823;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QYm/0D3Tt5oPIEFxdNyxrOFRQsjyItGYNq0ruytfywE=;
 b=WNt8tgxRBHoULhg/HJRoskQSp9bokC70LbIfituF0mq4d2FvVj/2evmH
 dqPn8HXVlTtAlD5EydL29dtQidBux3cZaq65KJujvsJf7pB06FGUgD2uo
 PqBaGzQLve2IJ+m1PIIFmYXj8oGC70ERGAMcOOdl/rff6XcZi/L1Xh269
 uXxVSJCcdsuRet6YiSpBIvJvk1+paNicMVbkmBsMBrMG2qjFcsl5SxxPB
 RemSrw4gRpkGk+pw37UDQGfM9I4Lv6I/fmktMYZobJVrIktVhfnAzE2Lj
 g/N1N2diDZvNAU+TnIzzb1mq+t8ZUKAICYzUR5M9o2+FOFr9FPdZnTqT9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="232109337"
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="232109337"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:10:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,385,1635231600"; d="scan'208";a="706224045"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2022 03:10:21 -0800
Date: Mon, 21 Feb 2022 13:10:39 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220221111039.GA17795@intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
 <20220218064039.12834-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220218064039.12834-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915: Extract
 icl_qgv_points_mask()
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

On Fri, Feb 18, 2022 at 08:40:38AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Declutter intel_bw_atomic_check() a bit by pulling
> the max QGV mask calculation out.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 35 ++++++++++++++++---------
>  1 file changed, 22 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 1fd1d2182d8f..6637da75f878 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -816,6 +816,26 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> +static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> +{
> +	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
> +	unsigned int num_qgv_points = i915->max_bw[0].num_qgv_points;
> +	u16 mask = 0;
> +
> +	/*
> +	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
> +	 * it with failure if we try masking any unadvertised points.
> +	 * So need to operate only with those returned from PCode.
> +	 */
> +	if (num_qgv_points > 0)
> +		mask |= REG_GENMASK(num_qgv_points - 1, 0);
> +
> +	if (num_psf_gv_points > 0)
> +		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
> +
> +	return mask;
> +}
> +
>  int intel_bw_atomic_check(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> @@ -831,23 +851,11 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
>  	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
>  	bool changed = false;
> -	u32 mask = 0;
>  
>  	/* FIXME earlier gens need some checks too */
>  	if (DISPLAY_VER(dev_priv) < 11)
>  		return 0;
>  
> -	/*
> -	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
> -	 * it with failure if we try masking any unadvertised points.
> -	 * So need to operate only with those returned from PCode.
> -	 */
> -	if (num_qgv_points > 0)
> -		mask |= REG_GENMASK(num_qgv_points - 1, 0);
> -
> -	if (num_psf_gv_points > 0)
> -		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
> -
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		unsigned int old_data_rate =
> @@ -979,7 +987,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	 * We store the ones which need to be masked as that is what PCode
>  	 * actually accepts as a parameter.
>  	 */
> -	new_bw_state->qgv_points_mask = ~allowed_points & mask;
> +	new_bw_state->qgv_points_mask = ~allowed_points &
> +		icl_qgv_points_mask(dev_priv);
>  
>  	/*
>  	 * If the actual mask had changed we need to make sure that
> -- 
> 2.34.1
> 
