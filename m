Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1731097F0E3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3BD10E46B;
	Mon, 23 Sep 2024 18:54:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h2/gSCfv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7A710E46B;
 Mon, 23 Sep 2024 18:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727117657; x=1758653657;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LIbvuvRpEoNGZwQjIrlmbWrYwiZk0G6HMRP5J5Ooh5o=;
 b=h2/gSCfvhnMvGOnCxuanuOWK1Ptrx48cPEHQveMhplIuhByOLC9WeRMZ
 BWTt9mvqLUpDBXF2cqjzmj+7BPkzwQUxrxSjmyGAJXkfdcpkJgfYFAard
 52yZQSnqzSuqTa0Nf+2HdqV3tIoevTbTh/os7NFPZ+hGjUEx4PkPVJHLb
 g6eIbIO/zCMtS2ghf1UaaSxS3MYqwBbpodWy0mVHXiP31lbjJ6qkW57kA
 2+WDa1cIahIG5U7N8kk9z3vo9Xqlzp6lUSnp2piEVDNfYqfHkP+NVgS/w
 brXT6D3U9+GrTwTszaaJbq+lIeS9Va1loKS8LOevB1xb6IRrZ530ON4wh Q==;
X-CSE-ConnectionGUID: mlpdsGIzSOKeVzxp4SqbMQ==
X-CSE-MsgGUID: vdYbqmufSeWVVz+myS+91A==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13713993"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13713993"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:54:17 -0700
X-CSE-ConnectionGUID: QT1dLQX2TVClEsF6PiS+bg==
X-CSE-MsgGUID: NT3CYd/YS/2ADUTXRvYo7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71301139"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:54:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:54:13 +0300
Date: Mon, 23 Sep 2024 21:54:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 11/16] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Message-ID: <ZvG5VXgbs2d7eOWH@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-12-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:31PM +0530, Ankit Nautiyal wrote:
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
> v5: Align the helper to get ultrajoiner enabled pipes with other helpers
> (Ville)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 42 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  3 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 11 ++++-
>  3 files changed, 54 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f35d1e1fdb8a..22ff3e225140 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -312,6 +312,48 @@ u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
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
> +/*
> + * The ultrajoiner enable bit doesn't seem to follow primary/secondary logic or
> + * any other logic, so lets just add helper function to
> + * at least hide this hassle..
> + */
> +static u8 ultrajoiner_enable_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!intel_crtc_is_ultrajoiner(crtc_state))
> +		return 0;
> +
> +	return crtc_state->joiner_pipes & (0b01110111 << joiner_primary_pipe(crtc_state));
> +}
> +
> +bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_crtc_is_ultrajoiner(crtc_state) &&
> +	       BIT(crtc->pipe) & ultrajoiner_enable_pipes(crtc_state);
> +}
> +
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	if (crtc_state->joiner_pipes)
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 1f0fed5ea7bc..61e1df878de9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -441,6 +441,9 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
>  u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..c3405234dc51 100644
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
> @@ -770,7 +770,14 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  		dss_ctl1_val |= JOINER_ENABLE;
>  	}
>  	if (crtc_state->joiner_pipes) {
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
