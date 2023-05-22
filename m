Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD30270C23D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 May 2023 17:22:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C96410E35A;
	Mon, 22 May 2023 15:22:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F5AE10E35A
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 May 2023 15:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684768941; x=1716304941;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=za8ikDzKBv6H3xdodfu4L8wMf70oZqvRgKyI3C3DqKw=;
 b=KgMAr8UoMuLxg4sCYpotEL5gsJ+BiXDmVuKBhIxttR5TniTWjtkxf2S2
 Q8DIUFSosSJZqPWUUiZLbJR9vl84g79SBPcnw+lD3VtQ/0Z2GDnSdfJuR
 jSL877xvipVKt79PXRMsR85UCiCSULcPalW2TU+USIOBBIJ8pJ10UhFlI
 B0KsLMDKcHneGwyF+ksJ7dm7WHL92qzAaD/bElumrw42HnL/bZNStwdhn
 FSwIcw7Zh1hYMXjvnL2utbaHrLjgREOPS2OrNQpBUvqS47limIvpzl9Nv
 Z2YUYGefJSwDep8RIjkX7443rYFCO50z6tdc9NUY6fHJTTY0p98a1xlWX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="352972167"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="352972167"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:22:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="706584656"
X-IronPort-AV: E=Sophos;i="6.00,184,1681196400"; d="scan'208";a="706584656"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2023 08:22:18 -0700
Date: Mon, 22 May 2023 18:22:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZGuIp1C2sOjtBfE5@intel.com>
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
 <20230511231750.313467-7-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230511231750.313467-7-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 6/8] drm/i915/mtl: find the best QGV
 point for the SAGV configuration
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 12, 2023 at 02:17:48AM +0300, Vinod Govindapillai wrote:
> From MTL onwards, we need to find the best QGV point based on
> the required data rate and pass the peak BW of that point to
> the punit to lock the corresponding QGV point.
> 
> Bspec: 64636
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 87 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bw.h |  6 ++
>  2 files changed, 91 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index f466b4e087bb..36b2f18dc0c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -803,6 +803,85 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  	return to_intel_bw_state(bw_state);
>  }
>  
> +static int mtl_find_qgv_points(struct drm_i915_private *i915,
> +			       unsigned int data_rate,
> +			       unsigned int num_active_planes,
> +			       const struct intel_bw_state *old_bw_state,
> +			       struct intel_bw_state *new_bw_state)
> +{
> +	unsigned int best_rate = UINT_MAX;
> +	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> +	unsigned int qgv_peak_bw  = 0;
> +	int i;
> +	int ret;
> +
> +	ret = intel_atomic_lock_global_state(&new_bw_state->base);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * If SAGV cannot be enabled, disable the pcode SAGV by passing all 1's
> +	 * for qgv peak bw in PM Demand request. So assign UINT_MAX if SAGV is
> +	 * not enabled. PM Demand code will clamp the value for the register
> +	 */
> +	if (!intel_can_enable_sagv(i915, new_bw_state)) {
> +		new_bw_state->qgv_point_peakbw = UINT_MAX;
> +		drm_dbg_kms(&i915->drm, "No SAGV, use UINT_MAX as peak bw.");
> +		goto out;
> +	}
> +
> +	/*
> +	 * Find the best QGV point by comparing the data_rate with max data rate
> +	 * offered per plane group
> +	 */
> +	for (i = 0; i < num_qgv_points; i++) {
> +		unsigned int bw_index =
> +			tgl_max_bw_index(i915, num_active_planes, i);
> +		unsigned int max_data_rate;
> +
> +		if (bw_index > ARRAY_SIZE(i915->display.bw.max))
> +			continue;
> +
> +		max_data_rate = i915->display.bw.max[bw_index].deratedbw[i];
> +
> +		if (max_data_rate < data_rate)
> +			continue;
> +
> +		if (max_data_rate - data_rate < best_rate) {
> +			best_rate = max_data_rate - data_rate;
> +			qgv_peak_bw = i915->display.bw.max[bw_index].peakbw[i];
> +		}
> +
> +		drm_dbg_kms(&i915->drm, "QGV point %d: max bw %d required %d qgv_peak_bw: %d\n",
> +			    i, max_data_rate, data_rate, qgv_peak_bw);
> +	}
> +
> +	drm_dbg_kms(&i915->drm, "Matching peaks QGV bw: %d for required data rate: %d\n",
> +		    qgv_peak_bw, data_rate);
> +
> +	/*
> +	 * The display configuration cannot be supported if no QGV point
> +	 * satisfying the required data rate is found
> +	 */
> +	if (qgv_peak_bw == 0) {
> +		drm_dbg_kms(&i915->drm, "No QGV points for bw %d for display configuration(%d active planes).\n",
> +			    data_rate, num_active_planes);
> +		return -EINVAL;
> +	}
> +
> +	/* MTL PM DEMAND expects QGV BW parameter in multiples of 100 mbps */
> +	new_bw_state->qgv_point_peakbw = qgv_peak_bw / 100;
> +
> +out:
> +	if (new_bw_state->qgv_point_peakbw != old_bw_state->qgv_point_peakbw)  {
> +		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int icl_find_qgv_points(struct drm_i915_private *i915,
>  			       unsigned int data_rate,
>  			       unsigned int num_active_planes,
> @@ -928,8 +1007,12 @@ static int intel_bw_check_qgv_points(struct drm_i915_private *i915,
>  
>  	data_rate = DIV_ROUND_UP(data_rate, 1000);
>  
> -	return icl_find_qgv_points(i915, data_rate, num_active_planes,
> -				   old_bw_state, new_bw_state);
> +	if (DISPLAY_VER(i915) >= 14)
> +		return mtl_find_qgv_points(i915, data_rate, num_active_planes,
> +					   old_bw_state, new_bw_state);
> +	else
> +		return icl_find_qgv_points(i915, data_rate, num_active_planes,
> +					   old_bw_state, new_bw_state);
>  }
>  
>  static bool intel_bw_state_changed(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index f20292143745..67ae66a3fcdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -34,6 +34,12 @@ struct intel_bw_state {
>  	/* bitmask of active pipes */
>  	u8 active_pipes;
>  
> +	/*
> +	 * From MTL onwards, to lock a QGV point, punit expects the peak BW of
> +	 * the selected QGV point as the parameter in multiples of 100MB/s
> +	 */
> +	unsigned int qgv_point_peakbw;
> +
>  	/*
>  	 * Current QGV points mask, which restricts
>  	 * some particular SAGV states, not to confuse
> -- 
> 2.34.1
> 
