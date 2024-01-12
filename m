Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D5582C4CF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 18:35:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E910010EB44;
	Fri, 12 Jan 2024 17:35:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC73410EB44
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080934; x=1736616934;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kqnrfjm+5I3ju4DzXc2SozBRM7GMXUQoiEzmNVmNZoQ=;
 b=biRJTgXivxvfBV1Q9kgjg0ahvljm3CpjJJqhTErLkY5/ZIU+pdq38h8E
 59/J5R+ZVrFzHjldGPp1zRwzNy9mhtV94nfmjoUsS4J2V772rjKzjjZl3
 PeAoqGdxMpFTfcP+Gp8CPU9bfL9nxv0dsFv7iVFT66dUb6ZcL7faQm31r
 Zp8ipftQqzRiXyTw8TYxtOJXLG9aQPNAloOUjmRdiMfogDW7soP3dqSNQ
 eCGGYzU0cPM72QspHwKhfjdngxz4YnzmHE4cnqrkxd2V8YiwDPbCuWHIb
 6KipVr3wVaTUDcqgR1EXYhnYvpfYO3LGJBBPxcgfzDZcWEZLVttaHWZip g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="5994541"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
   d="scan'208";a="5994541"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:35:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="776063870"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="776063870"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2024 09:35:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jan 2024 19:35:24 +0200
Date: Fri, 12 Jan 2024 19:35:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/3] drm/i915: Extract code required to calculate max
 qgv/psf gv point
Message-ID: <ZaF4XLoYDDmcJcbE@intel.com>
References: <20231128083754.20096-1-stanislav.lisovskiy@intel.com>
 <20231128083754.20096-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231128083754.20096-3-stanislav.lisovskiy@intel.com>
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

On Tue, Nov 28, 2023 at 10:37:53AM +0200, Stanislav Lisovskiy wrote:
> We need that in order to force disable SAGV in next patch.
> Also it is beneficial to separate that code, as in majority cases,
> when SAGV is enabled, we don't even need those calculations.
> Also we probably need to determine max PSF GV point as well, however
> currently we don't do that when we disable SAGV, which might be
> actually causing some issues in that case.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 82 ++++++++++++++++++++-----
>  1 file changed, 65 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 583cd2ebdf89..efd408e96e8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -805,6 +805,64 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
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
> +		unsigned int idx;
> +		unsigned int max_data_rate;
> +
> +		if (DISPLAY_VER(i915) > 11)
> +			idx = tgl_max_bw_index(i915, num_active_planes, i);
> +		else
> +			idx = icl_max_bw_index(i915, num_active_planes, i);
> +
> +		if (idx >= ARRAY_SIZE(i915->display.bw.max))
> +			continue;
> +
> +		max_data_rate = i915->display.bw.max[idx].deratedbw[i];

Looks like that that part could be extracted to a helper
to be used by both codepaths (would be a natural counterpart
to adl_psf_bw()).

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
> +unsigned int icl_max_bw_psf_gv_point(struct drm_i915_private *i915)
> +{
> +	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
> +	unsigned int max_bw = 0;
> +	unsigned int max_bw_point = 0;
> +	int i;
> +
> +	for (i = 0; i < num_psf_gv_points; i++) {
> +		unsigned int max_data_rate = adl_psf_bw(i915, i);
> +
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
> @@ -882,8 +940,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  			       const struct intel_bw_state *old_bw_state,
>  			       struct intel_bw_state *new_bw_state)
>  {
> -	unsigned int max_bw_point = 0;
> -	unsigned int max_bw = 0;
>  	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
>  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
>  	u16 psf_points = 0;
> @@ -909,18 +965,6 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  
>  		max_data_rate = i915->display.bw.max[idx].deratedbw[i];
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
> @@ -964,9 +1008,13 @@ static int icl_find_qgv_points(struct drm_i915_private *i915,
>  	 * cause.
>  	 */
>  	if (!intel_can_enable_sagv(i915, new_bw_state)) {
> -		qgv_points = BIT(max_bw_point);
> -		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d\n",
> -			    max_bw_point);
> +		unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, num_active_planes);
> +		unsigned int max_bw_psf_gv_point = icl_max_bw_psf_gv_point(i915);
> +
> +		qgv_points = BIT(max_bw_qgv_point);
> +		psf_points = BIT(max_bw_psf_gv_point);

We didn't restrict the PSF here previously.

> +		drm_dbg_kms(&i915->drm, "No SAGV, using single QGV point %d PSF GV point %d\n",
> +			    max_bw_qgv_point, max_bw_psf_gv_point);
>  	}
>  
>  	/*
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
