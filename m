Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED93959F8C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 16:19:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC62910E611;
	Wed, 21 Aug 2024 14:19:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JbNfIaFU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E163C10E611
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2024 14:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724249958; x=1755785958;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=WPArj96AwJ0xiNxUYlp2gGOOuIF4kXeUCUvIEd6D7sg=;
 b=JbNfIaFUJTDMlgcKquvG8WN7xXSxQenwi1T0WGud/EcOR6OES9ahj6nL
 4APFhwVcQ8gEZhEjb9uSr/ocZUE4+uGHKPRWyzj4uVHT/M/jSn19lOSKb
 MiVa2KpzlCad9ySho1fUXP86Qa/ePF6UQ2NyoeI45VzJGRgCoEXvBZMvE
 foBxtvPc0MA6Q4IQs6blaj8XXccyAQEXW46A396iIt95R2BQx8XmGhR5q
 75Kt0zmbiyajtmc2lFp7gxpochytXR3MGCBGZFXmrJ1mPoQT6djA6YJZ7
 1b92cxKDgALErKt4A9AaZ3wOSKddt8q+OxU02yPKcjnnD2MmmgxpmT0h7 g==;
X-CSE-ConnectionGUID: 2di5d0TqQ9qZ7FAWQty4/Q==
X-CSE-MsgGUID: 05nzJo0WSjW9Ry7JjZuQaw==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26407216"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26407216"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 07:19:18 -0700
X-CSE-ConnectionGUID: SxaMLWK4RzmkEYe2fYOSog==
X-CSE-MsgGUID: KYi5c0PFT4q1C5oyPvD8HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65310887"
Received: from sbutnari-mobl1.ti.intel.com (HELO localhost) ([10.245.246.20])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Aug 2024 07:19:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix MST state after a sink reset
In-Reply-To: <20240724161223.2291853-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240724161223.2291853-1-imre.deak@intel.com>
Date: Wed, 21 Aug 2024 17:19:11 +0300
Message-ID: <87ttfe3qn4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Jul 2024, Imre Deak <imre.deak@intel.com> wrote:
> In some cases the sink can reset itself after it was configured into MST
> mode, without the driver noticing the disconnected state. For instance
> the reset may happen in the middle of a modeset, or the (long) HPD pulse
> generated may be not long enough for the encoder detect handler to
> observe the HPD's deasserted state. In this case the sink's DPCD
> register programmed to enable MST will be reset, while the driver still
> assumes MST is still enabled. Detect this condition, which will tear
> down and recreate/re-enable the MST topology.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11195
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  3 +++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 30 +++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.h |  1 +
>  3 files changed, 34 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1e43e32e05199..c621f6daf8235 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5878,6 +5878,9 @@ intel_dp_detect(struct drm_connector *connector,
>  	else
>  		status = connector_status_disconnected;
>  
> +	if (!intel_dp_mst_verify_dpcd_state(intel_dp))
> +		status = connector_status_disconnected;
> +

So I still don't understand. We've got a detect which we've determined
is connected. But then we disconnect because the sink state has changed.

How do we get another connect?

BR,
Jani.


>  	if (status == connector_status_disconnected) {
>  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
>  		memset(intel_connector->dp.dsc_dpcd, 0, sizeof(intel_connector->dp.dsc_dpcd));
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 27ce5c3f5951e..89b147e37b400 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1998,3 +1998,33 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
>  
>  	return false;
>  }
> +
> +/**
> + * intel_dp_mst_verify_dpcd_state - verify the MST SW enabled state wrt. the DPCD
> + * @intel_dp: DP port object
> + *
> + * Verify if @intel_dp's MST enabled SW state matches the corresponding DPCD
> + * state. A long HPD pulse -not long enough to be detected as a disconnected
> + * state - could've reset the DPCD state, which requires tearing
> + * down/recreating the MST topology.
> + *
> + * Returns %true if the SW MST enabled and DPCD states match, %false
> + * otherwise.
> + */
> +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp)
> +{
> +	int ret;
> +	u8 val;
> +
> +	if (!intel_dp->is_mst)
> +		return true;
> +
> +	ret = drm_dp_dpcd_readb(intel_dp->mst_mgr.aux, DP_MSTM_CTRL, &val);
> +	if (ret < 0)
> +		return false;
> +
> +	if (val != (DP_MST_EN | DP_UP_REQ_EN | DP_UPSTREAM_IS_SRC))
> +		return false;
> +
> +	return true;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index 8ca1d599091c6..9e4c7679f1c3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -27,5 +27,6 @@ int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
>  				   struct intel_link_bw_limits *limits);
>  bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
> +bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
>  
>  #endif /* __INTEL_DP_MST_H__ */

-- 
Jani Nikula, Intel
