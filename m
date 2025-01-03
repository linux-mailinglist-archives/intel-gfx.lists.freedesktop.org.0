Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDACA00761
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 11:03:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF61710E853;
	Fri,  3 Jan 2025 10:03:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TTI1HjtA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6A710E43A;
 Fri,  3 Jan 2025 10:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735898612; x=1767434612;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8gCeCzh/sKb89YSsDMad6fgzdc7IZbz147n81IyI4Js=;
 b=TTI1HjtA23IKHrksis6NFLYz6uIGm+zJ6EmEVsg2/hxEdLeztPzlKp3M
 g7MgJnSnsa2xzBdfgvEnOVwb6RertZuljvES8GWCGUZyBJ2fAc/u275Vo
 MXMmyM9Bu/fzLJrJtOAx0O1dVXdkHd0nuxGvUV5sLXGjVprNsL2H5+W7q
 WumQg8cmpMuN+xc0wiEEUPo/ebT102oUWow6bzAqQF9rPKAsIikbnXsyy
 LCIA56j51fACTtx6DRekSpJmyw5ZnA6kjsXwPG3Kov/Ym+W5XBYGEW2q9
 RrJsSwKMVuwTkkRtXFa/dBHskIDBTi9MdUtShAbC4XuvOtVFkm7/RfNI/ g==;
X-CSE-ConnectionGUID: Gf85ZiI0RPy7lF4sUZV9vw==
X-CSE-MsgGUID: iMenHsJOQg+If5IhQ3nRVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="46820269"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46820269"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:03:32 -0800
X-CSE-ConnectionGUID: PuaUl3gLQ/2gjs5w7PnSIQ==
X-CSE-MsgGUID: lR27Uc+SSMC5q91YTRTetA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105808051"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 02:03:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, imre.deak@intel.com
Subject: Re: [PATCH] drm/i915/dp: Return early if dsc is required but not
 supported
In-Reply-To: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
Date: Fri, 03 Jan 2025 12:03:26 +0200
Message-ID: <87seq0mcy9.fsf@intel.com>
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

On Fri, 03 Jan 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Currently, when bandwidth is insufficient for a given mode, we attempt
> to use DSC. This is indicated by a debug print, followed by a check for
> DSC support.
>
> The debug message states that we are trying DSC, but DSC might not be
> supported, which can give an incorrect picture in the logs if we bail
> out later.
>
> Correct the order for both DP and DP MST to:
> - Check if DSC is required and supported, and return early if DSC is
> not supported.
> - Print a debug message to indicate that DSC will be tried next.
>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
>  2 files changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0d74adae2ec9..4fa0e0b675b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2642,15 +2642,17 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			dsc_needed = true;
>  	}
>  
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not available\n");
> +		return -EINVAL;
> +	}
> +
>  	if (dsc_needed) {
>  		drm_dbg_kms(display->drm,
>  			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
> -
>  		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>  						    respect_downstream_limits,
>  						    true,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fffd199999e0..0433f2ff77e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -633,14 +633,17 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  			dsc_needed = true;
>  	}
>  
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not available\n");
> +		return -EINVAL;
> +	}
> +
>  	/* enable compression if the mode doesn't fit available BW */
>  	if (dsc_needed) {
>  		drm_dbg_kms(display->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
>  
>  		if (!mst_stream_compute_config_limits(intel_dp, connector,
>  						      pipe_config, true,

-- 
Jani Nikula, Intel
