Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A577D50E2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 15:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1358810E3AD;
	Tue, 24 Oct 2023 13:04:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B7210E3AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 13:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698152666; x=1729688666;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=hp0DPqzzHFzr6wXlrhu0Zr5b64PsrprgUaGbQ2g965g=;
 b=VwE83ioMy70grXr7GiH0TmK6US+LE4uphBMoNx+5VmECa54UxHzGMNaD
 /W2uMKzgzEklIZxkpnv7ERQ+vgimx2eMz0w1DdGn9RYYpJiu4xy7KyFtw
 vxkU6Cu8uT31vG3G/IeaCzayE7X86KRYZOCim+SNZ1FpfKVdnFuuLLvGh
 1KhQ1JvOkqnUulM/SxGM0RYTpOmmOYRrAYsIf/GNyT5LX8QzGH0HUA/gL
 e2pMaQy5WLHbMLEQtsHjAKiPvrPGeoDQTx7KnpclpEhKVI5xFbTQT238O
 o+3w9hBGFctMaEGOkFRS7G5U2ikGsrbLxmbastHOh/9+ikZjBUPehMw0J g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="473272924"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="473272924"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:04:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="708272954"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="708272954"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:04:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231024125256.11954-1-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231024125256.11954-1-stanislav.lisovskiy@intel.com>
Date: Tue, 24 Oct 2023 16:04:19 +0300
Message-ID: <87edhk9nos.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adl: Initialize all GV points as
 restricted in bw_state
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

On Tue, 24 Oct 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> In some customer cases, machine can start up with all
> GV points restricted. However we don't ever read those
> from hw and initial driver qgv_points_mask is initialized
> as 0, which would make driver think that all points are unrestricted,
> so we never update them with proper value, unless
> some demanding scenario is requested or we have to toggle SAGV
> and we have to restrict some of those.
> Lets fix that by initializing all points as restricted,
> then on first modeset, that will make sure driver will naturally
> calculate, which of those need to be relaxed and do correspondent update.
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c            |  7 ++++---
>  drivers/gpu/drm/i915/display/intel_bw.h            |  1 +
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c | 13 +++++++++++++
>  3 files changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index bef96db62c80..fbfa01f38db8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -119,7 +119,7 @@ static int adls_pcode_read_psf_gv_point_info(struct drm_i915_private *dev_priv,
>  	return 0;
>  }
>  
> -static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
> +u16 icl_qgv_points_mask(struct drm_i915_private *i915)
>  {
>  	unsigned int num_psf_gv_points = i915->display.bw.max[0].num_psf_gv_points;
>  	unsigned int num_qgv_points = i915->display.bw.max[0].num_qgv_points;
> @@ -1277,9 +1277,10 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  
>  	/*
>  	 * If none of our inputs (data rates, number of active
> -	 * planes, SAGV yes/no) changed then nothing to do here.
> +	 * planes, SAGV yes/no) changed then nothing to do here,
> +	 * except if mask turns out to be in wrong state initially.
>  	 */
> -	if (!changed)
> +	if (!changed && (new_bw_state->qgv_points_mask != icl_qgv_points_mask(i915)))
>  		return 0;
>  
>  	ret = intel_bw_check_qgv_points(i915, old_bw_state, new_bw_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index 59cb4fc5db76..0a706ec79ce3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -70,6 +70,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  				  u32 points_mask);
> +u16 icl_qgv_points_mask(struct drm_i915_private *i915);
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  			    bool *need_cdclk_calc);
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> index b8f43efb0ab5..230090c6e994 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -871,6 +871,19 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>  		intel_pmdemand_update_port_clock(i915, pmdemand_state, pipe,
>  						 crtc_state->port_clock);
>  
> +		/*
> +		 * In some customer cases, machine can start up with all
> +		 * GV points restricted. However we don't ever read those
> +		 * from hw and qgv_points_mask initialized as 0, would
> +		 * make driver think that all points are unrestricted,
> +		 * so we never update them with proper value, unless
> +		 * some demanding scenario is requested and we have to
> +		 * restrict some of those. Lets fix that by initializing
> +		 * all points as restricted, then on first modeset, driver
> +		 * will naturally calculate, which of those need to be
> +		 * relaxed and do correspondent update.
> +		 */
> +		bw_state->qgv_points_mask = icl_qgv_points_mask(i915);

Sad trombone for having to expose highly specific functions and stuff
from intel_bw.c. Can't the below call handle it?

BR,
Jani.



>  		intel_bw_crtc_update(bw_state, crtc_state);
>  	}

-- 
Jani Nikula, Intel
