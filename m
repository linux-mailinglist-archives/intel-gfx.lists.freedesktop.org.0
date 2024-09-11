Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 616C1975C0A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:48:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AEE10EA94;
	Wed, 11 Sep 2024 20:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bLEnyVW5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7E210EA94
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726087696; x=1757623696;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RQVs/otn7Pt5iua6Oyp1AbsbEmfTV4z3hmcn+ojRftQ=;
 b=bLEnyVW58ib+POXZ20wDrb/TXg8bxmMwKhLnv0gy5/mV/qrL0t3smXTb
 VTAmvbjYfHC3f/HPt8iJtGR61rGVthWn7EASnSAcZJoNjCqTXyV9kSun7
 MbGFI17b0Rh0m2XE3w4UL1yAD8zboRegMZX+/AXjZ/GHJEvBFYSXeVz+u
 kInts6950tJbvbKhr2Yvtz3pu/HkNtLcURl/YmnnRXj1lG8+K1U7x4iwO
 Uv0EVEUUR07Cj5jFhnb3quiYFB/cTKk9Suk0I7znZzCVAcReg1VvT/ktm
 chREIPwNdRtQM6mLjn+MjS3kEP8WysTtSMHZQFYMblS4flQzc1fqqWqEO g==;
X-CSE-ConnectionGUID: keTc8X8gSQyb1RoNhyE8oQ==
X-CSE-MsgGUID: Y/9mBowWQgafNlaavI0w0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36265663"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36265663"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:48:16 -0700
X-CSE-ConnectionGUID: UR3wZrGxRwiBccWpWXm2IQ==
X-CSE-MsgGUID: z85BnqzyRiCIOxrIw5hF/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67546143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:48:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:48:13 +0300
Date: Wed, 11 Sep 2024 23:48:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 15/19] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Message-ID: <ZuICDWADhSlwNqm8@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-16-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:45PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add changes to DSC which are required for Ultrajoiner.
> 
> v2:
> -Use correct helper for setting bits for bigjoiner secondary. (Ankit)
> -Use enum for joiner pipe count instead magic numbers. (Suraj)
> -Use primary/secondary instead of master/slave. (Suraj)
> 
> v3:
> -Add the ultrajoiner helpers and use it for setting ultrajoiner bits
> (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 26 ++++++++++++++++++--
>  3 files changed, 47 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 24698d8ed5d6..db27850b2c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -295,6 +295,27 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
>  	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
>  }
>  
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_joiner_num_pipes(crtc_state) >= 4;
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
> index 17d8b9df3916..dbbe23ea14fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -427,6 +427,8 @@ bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 8158e3702ed5..b95dd7a7111e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -379,9 +379,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state
>  int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>  {
>  	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int num_joined_pipes = intel_joiner_num_pipes(crtc_state);
>  
> -	if (crtc_state->joiner_pipes)
> -		num_vdsc_instances *= 2;
> +	if (num_joined_pipes == 2 ||
> +	    num_joined_pipes == 4)
> +		num_vdsc_instances *= num_joined_pipes;

Since num_joined_pipes >= 1 this sort of stuff can become unconditional.

>  
>  	return num_vdsc_instances;
>  }
> @@ -751,6 +753,14 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
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
> +
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -770,7 +780,19 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
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
