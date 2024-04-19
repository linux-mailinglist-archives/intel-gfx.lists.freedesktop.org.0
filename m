Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D228AB444
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 19:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845E110FF29;
	Fri, 19 Apr 2024 17:20:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsFSAx3I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2190E10FEBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713547204; x=1745083204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pEleYr5Z8QgiJonkxQwKASGnyLvmkLjknatamyf/frM=;
 b=CsFSAx3I26PVW9XOczSzfvksu8y6E1bUGlrMuKjx9Gx8/tIa2GeeQE0q
 9qunEQmdOCz1SapZnLD29z7xb9mGWkbO63PbkgmsU1R97qN7LYjJoWJ/b
 gI+IZMVFQv0TI5CDC/AWdS5sdRHLSt/IbUQlGB3s8tmxEI+sYNScn2bRY
 J/FFQ6DXEF6oqI1sJgugGRxXdp7gOGFDJrGqmZekgQnS499kmjXMs8+NP
 V/f0D6vmigWPejeMLg2YErNTNEtQPKviIbUfiKw2xpY7y8xuhb9x/UgFN
 3rI9A12D0z3F3XfZQAfq90K8C+shCW+fByquLyQJIt8C9IoFp96ClTp9b A==;
X-CSE-ConnectionGUID: stvuVUnbQq2TBqC2AcWZ+g==
X-CSE-MsgGUID: U9R3270KQRuVjc8NxJAj1A==
X-IronPort-AV: E=McAfee;i="6600,9927,11049"; a="12941988"
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="12941988"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 10:20:00 -0700
X-CSE-ConnectionGUID: 0gbyc17pTBqtsX5tmD5Tpg==
X-CSE-MsgGUID: D6M+vvY+RY6DNOx4FJp0OQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,214,1708416000"; d="scan'208";a="23462888"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Apr 2024 10:19:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Apr 2024 20:19:56 +0300
Date: Fri, 19 Apr 2024 20:19:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org, stanislav.lisovskiy@intel.com,
 ville.syrjala@intel.com, jani.saarinen@intel.com
Subject: Re: [PATCH v10 6/6] drm/i915/display: force qgv check after the hw
 state readout
Message-ID: <ZiKnvOp3_Cq85NMt@intel.com>
References: <20240405113533.338553-1-vinod.govindapillai@intel.com>
 <20240405113533.338553-7-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240405113533.338553-7-vinod.govindapillai@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 05, 2024 at 02:35:33PM +0300, Vinod Govindapillai wrote:
> The current intel_bw_atomic_check do not check the possbility
> of a sagv configuration change after the hw state readout.
> Hence cannot update the sagv configuration until some other
> relevant changes like data rates, number of planes etc. happen.
> Introduce a flag to force qgv check in such cases.

The correct fix would be to make sure the readout actually
works, and thus the software state reflects the state of
the hardare accurately.

> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_bw.h | 6 ++++++
>  2 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 6fb228a1a28f..1b190be745a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -755,6 +755,7 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  		intel_bw_crtc_data_rate(crtc_state);
>  	bw_state->num_active_planes[crtc->pipe] =
>  		intel_bw_crtc_num_active_planes(crtc_state);
> +	bw_state->force_check_qgv = true;
>  
>  	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
>  		    pipe_name(crtc->pipe),
> @@ -1339,8 +1340,9 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	new_bw_state = intel_atomic_get_new_bw_state(state);
>  
>  	if (new_bw_state &&
> -	    intel_can_enable_sagv(i915, old_bw_state) !=
> -	    intel_can_enable_sagv(i915, new_bw_state))
> +	    (intel_can_enable_sagv(i915, old_bw_state) !=
> +	     intel_can_enable_sagv(i915, new_bw_state) ||
> +	     new_bw_state->force_check_qgv))
>  		changed = true;
>  
>  	/*
> @@ -1354,6 +1356,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  
> +	new_bw_state->force_check_qgv = false;
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index fa1e924ec961..161813cca473 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -47,6 +47,12 @@ struct intel_bw_state {
>  	 */
>  	u16 qgv_points_mask;
>  
> +	/*
> +	 * Flag to force the QGV comparison in atomic check right after the
> +	 * hw state readout
> +	 */
> +	bool force_check_qgv;
> +
>  	int min_cdclk[I915_MAX_PIPES];
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
