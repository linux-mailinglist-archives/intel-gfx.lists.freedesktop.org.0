Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E66C97CD71
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD11610E73F;
	Thu, 19 Sep 2024 18:06:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RkElG5wn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852C810E73F;
 Thu, 19 Sep 2024 18:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726769167; x=1758305167;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gr3DYg/aeEf5SFOvjIinCGDwfAMOSmJ2Z0vRc8X9PwA=;
 b=RkElG5wnEp7FVcS3oT4Jf8DXO3iJvmwJkpUBrew9ggAlbyMW1e7Ujqdo
 7QBCoRjeKJTmPi7kcNQIxRBrV87F5l1dYAd9E53D/nImpOFJvZusQh2fS
 dGIQXgc/uIdXPk2bTg7z0n+jtKFIVmgnvJKp0TSB0MoTtCptTKUuCmDKX
 lkfKN6heqZmTmZggFp9F/1sKPDL2LErYTmJmDPyongUO0gGKgzJwgCgvI
 29w0fnNo+wlEXJmt2RuJGvQpUD3suHvZuxz6oG49f8cOAWP/16LvYJHUv
 wnr66sBeg1/j6oDAV8zVNs4XDHkuKfTYdYX3eDEVqBIUi0J5Lg4XkJa0V w==;
X-CSE-ConnectionGUID: BBbXMv7RSaiGeCX7EvpctQ==
X-CSE-MsgGUID: CRCu62dJT0KjSG2lrA5a+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25232825"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25232825"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:06:06 -0700
X-CSE-ConnectionGUID: 1WdO9B2XRxSp98UsSDCQ+Q==
X-CSE-MsgGUID: 6X3QDeWqS8SrmaCabnFZxw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70149986"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:06:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:06:03 +0300
Date: Thu, 19 Sep 2024 21:06:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 12/15] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Message-ID: <ZuxoC4mbL_zIqavI@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-13-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:40PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add changes to DSC which are required for Ultrajoiner.
> 
> v2:
> -Use correct helper for setting bits for bigjoiner secondary. (Ankit)
> -Use primary/secondary instead of master/slave. (Suraj)
> v3: Add the ultrajoiner helpers and use it for setting ultrajoiner
> bits (Ankit)
> v4: Use num_vdsc_instances *= num_joined_pipes (Ville)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 24 ++++++++++++++++++--
>  3 files changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 65119c26ec88..044f91359c42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -314,6 +314,27 @@ u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  	return bigjoiner_secondary_pipes(crtc_state);
>  }
>  
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_crtc_num_joined_pipes(crtc_state) >= 4;
> +}
> +
> +static u8 ultrajoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!intel_crtc_is_ultrajoiner(crtc_state))
> +		return 0;
> +
> +	return crtc_state->joiner_pipes & (0b00010001 << joiner_primary_pipe(crtc_state));
> +}
> +
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
> +	       BIT(crtc->pipe) & ultrajoiner_primary_pipes(crtc_state);
> +}
> +
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	if (crtc_state->joiner_pipes)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 783562dc013b..6f470ffc61ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -442,6 +442,8 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
>  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..990abac12779 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,9 +379,9 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
>  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>  {
>  	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
>  
> -	if (crtc_state->joiner_pipes)
> -		num_vdsc_instances *= 2;
> +	num_vdsc_instances *= num_joined_pipes;
>  
>  	return num_vdsc_instances;
>  }
> @@ -751,6 +751,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
> +	       crtc->pipe != PIPE_D;
> +}

For this I think we want a function similar to your
ultrajoiner_primary_pipes(), just with a 0b01110111 mask.

> +
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -770,7 +778,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  		dss_ctl1_val |= JOINER_ENABLE;
>  	}
>  	if (crtc_state->joiner_pipes) {
> +		/*
> +		 * This bit doesn't seem to follow primary/secondary logic or
> +		 * any other logic, so lets just add helper function to
> +		 * at least hide this hassle..
> +		 */
> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> +
> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;
> +
>  		dss_ctl1_val |= BIG_JOINER_ENABLE;
> +
>  		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>  			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
