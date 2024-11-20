Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B139D39F0
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 12:52:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ECA910E723;
	Wed, 20 Nov 2024 11:52:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIvnFjfR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451A710E723;
 Wed, 20 Nov 2024 11:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732103549; x=1763639549;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WVbXCUMFXXCq4OTcNuzOZciUoV9JdsFyGoTGTuiXdCM=;
 b=aIvnFjfRVYYyqV4t1Wt9tzieSeNudKQhrjDiLZ/sC+u9O947EcoCyYx7
 8fFq3bEqpzzf0l7uchhKKyDiFpyYJ3Ck9FqUSHz8zReVjkjZqGPWvZ2Je
 APveITXCZZ1mb3RDXNvnN2iVE4m4EX4fife9ubMHpvG3++YUcfs0HlMEf
 krpcF+HaK/s3GejAxehduBtQrRJtIsAlUZ5wyb5oiBczzNMl87wRq0tTw
 9IjbMnmC9bTccGaoO99eB2nh5nr6dHgGH8xetPB9gb9n5BIhM04zHYXJU
 ywS6o9o0mHKWa9GIziEiaQAb0EXGhguV5sDrLk/R1UPEXHlrj30uHJAka Q==;
X-CSE-ConnectionGUID: elco88yzRa612HJDVCEBkw==
X-CSE-MsgGUID: 7aRvfzdBQnKFJQZZSLUulQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="42666447"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="42666447"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:52:29 -0800
X-CSE-ConnectionGUID: C8X7EADOSIShNLEk5nFMkQ==
X-CSE-MsgGUID: et1gM8DUTk6tNs0EMA3PAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90284278"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 03:52:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 03/12] drm/i915/dp: Separate out helper for compute
 fec_enable
In-Reply-To: <20241120103802.134295-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-4-ankit.k.nautiyal@intel.com>
Date: Wed, 20 Nov 2024 13:52:24 +0200
Message-ID: <871pz62kcn.fsf@intel.com>
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

On Wed, 20 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Make a separate function for setting fec_enable in crtc_state.
> Drop the check for FEC support as its already checked while checking for
> DSC support.

That's two changes that generally shouldn't be bundled together.

Aim for separating non-functional refactoring and functional
changes. (Well, arguably dropping the FEC check should also be
non-functional, but you know what I mean.)

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 30 +++++++++++++++++--------
>  1 file changed, 21 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dee15a05e7fd..d82e25d0dc5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2352,6 +2352,26 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static void intel_dp_compute_fec_config(struct intel_dp *intel_dp,
> +					struct intel_crtc_state *pipe_config)

I think all encoder->callback_name hooks should be named
something_something_callback_name(), and the same goes for helpers
specifically aimed at this.

This would make the function intel_dp_fec_compute_config().

Yes, in many ways "compute fec config" reads better, but there's value
in being able to search for "_compute_config", and to know this is only
for he ->compute_config path.

BR,
Jani.


> +{
> +	if (pipe_config->fec_enable)
> +		return;
> +
> +	/*
> +	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> +	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> +	 * eDP. Until, there is a good reason to do so.
> +	 */
> +	if (intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	if (intel_dp_is_uhbr(pipe_config))
> +		return;
> +
> +	pipe_config->fec_enable = true;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> @@ -2368,15 +2388,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>  	int ret;
>  
> -	/*
> -	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
> -	 * Since, FEC is a bandwidth overhead, continue to not enable it for
> -	 * eDP. Until, there is a good reason to do so.
> -	 */
> -	pipe_config->fec_enable = pipe_config->fec_enable ||
> -		(!intel_dp_is_edp(intel_dp) &&
> -		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
> -		 !intel_dp_is_uhbr(pipe_config));
> +	intel_dp_compute_fec_config(intel_dp, pipe_config);
>  
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
>  		return -EINVAL;

-- 
Jani Nikula, Intel
