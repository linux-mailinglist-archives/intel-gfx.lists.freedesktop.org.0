Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 421537BBB05
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 16:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91F610E50F;
	Fri,  6 Oct 2023 14:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D02C810E50F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 14:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696604359; x=1728140359;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3TF3SFcoAiGucVCtPHb6IYCIhKjwpoRWTbCQUUcYAOc=;
 b=EZ8ZMq0p3F13JW6vDFzNTViKQo8G8b01CdV0kwyzRNK0UYExvrEE1OqP
 2DiY9gX/uFrc1FBuP74+cN39z+tfoitVqrwq8eIboSCwT6NRmeq2442+2
 1zHY0dSsruYXJpl8A/Xs7Cuh5odgvWK8rzdO6GSxPqiYTse8tqBf28BE6
 fCB1fjOuBm/HCZvdYRFrvIPFWmnWT3FChdFb8KpXeA9MeGEAC1lMQSrEd
 Goxxx+j+HeRw7ok9WU/E2xMk1gqnBbkTgGSfHmrGzsK1TzAn8LUDaJvDJ
 q4IjGOHl+w0/Dfje43beROxRC5D1oVyvGcAbcMMZNJJ+FPVfeavT+arti g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="386591288"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386591288"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 07:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="787407616"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="787407616"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 07:59:18 -0700
Date: Fri, 6 Oct 2023 17:59:06 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZSAgk6w0R1IZ4aHL@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
 <20231006133727.1822579-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231006133727.1822579-2-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/dp: Sanitize DPCD revision
 check in intel_dp_get_dsc_sink_cap()
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

On Fri, Oct 06, 2023 at 04:37:09PM +0300, Imre Deak wrote:
> Check only the eDP or the DP specific DPCD revision depending on the
> sink type. Pass the corresponding revision to the function, which allows
> getting the DSC caps of a branch device (in an MST topology, which has
> its own DPCD and so DPCD revision).
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0ef7cb8134b66..1bd11f9e308c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3467,7 +3467,7 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>  	return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
>  }
>  
> -static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
> +static void intel_dp_get_dsc_sink_cap(u8 dpcd_rev, struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> @@ -3481,8 +3481,8 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
>  	intel_dp->fec_capable = 0;
>  
>  	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
> -	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
> -	    intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> +	if ((intel_dp_is_edp(intel_dp) && dpcd_rev >= DP_EDP_14) ||
> +	    (!intel_dp_is_edp(intel_dp) && dpcd_rev >= 0x14)) {

A bit curious whether could we use some macro for 0x14, just as for DP_EDP_14?
Because otherwise we are combining some values with macros, which seems like a bit
non-uniform approach.

However that is a minor thing anyway..

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


>  		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
>  				     intel_dp->dsc_dpcd,
>  				     sizeof(intel_dp->dsc_dpcd)) < 0)
> @@ -3674,7 +3674,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp)
>  
>  	/* Read the eDP DSC DPCD registers */
>  	if (HAS_DSC(dev_priv))
> -		intel_dp_get_dsc_sink_cap(intel_dp);
> +		intel_dp_get_dsc_sink_cap(intel_dp->edp_dpcd[0],
> +					  intel_dp);
>  
>  	/*
>  	 * If needed, program our source OUI so we can make various Intel-specific AUX services
> @@ -5384,7 +5385,8 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
>  	if (HAS_DSC(dev_priv))
> -		intel_dp_get_dsc_sink_cap(intel_dp);
> +		intel_dp_get_dsc_sink_cap(intel_dp->dpcd[DP_DPCD_REV],
> +					  intel_dp);
>  
>  	intel_dp_configure_mst(intel_dp);
>  
> -- 
> 2.39.2
> 
