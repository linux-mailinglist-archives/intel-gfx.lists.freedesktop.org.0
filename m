Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18EE89F4963
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 11:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1CA10E911;
	Tue, 17 Dec 2024 10:57:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Av1pGPUJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA42B10E911;
 Tue, 17 Dec 2024 10:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734433066; x=1765969066;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=25okdyWpIHQKVQKxHS3RFpuy3irtYJKUPK8AnJ4l1hI=;
 b=Av1pGPUJpi/ASnTq387KLeb/6OOi15Flkom4yuVOPMmdc+DLkHKcfu8/
 wd+wTqtCxBJjX0o7noC/UccvlIUw5RScoP4ccgpuAJNVPJqoinbgTQ0uP
 4Gr6HePosqu0XA8a6351a+3N6yoiUsfb7ZKhrRoQckQfqe7rMVDzQKSlS
 dj0juby7dbFqP+DG1HxWAGyxbTKx9nyYK+aGOgqby9rF7YZ3u+MMvLVkb
 sLPLffK/VNJCR/rQ6jzG1fu9sXbB8zXe0xwyc54rhkMD25Tox6dIdbZCP
 7kTwHcPYGkGu17Y8DPxHNryYZiyOenzfxcJFsU5s1cYIHJ1VFDRIxEZ0T g==;
X-CSE-ConnectionGUID: iFzifRrARRy1dCkvF6ZleA==
X-CSE-MsgGUID: THRYkFrpRcCjjeitnlvJbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34143463"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34143463"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 02:57:45 -0800
X-CSE-ConnectionGUID: 4PgiXM3VSKKuNSuT1Htztg==
X-CSE-MsgGUID: 2myE+kF3QOeiTTYox4RdyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="128310786"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 02:57:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 03/14] drm/i915/dp: Separate out helper for compute
 fec_enable
In-Reply-To: <20241217093244.3938132-4-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-4-ankit.k.nautiyal@intel.com>
Date: Tue, 17 Dec 2024 12:57:40 +0200
Message-ID: <87y10er2zf.fsf@intel.com>
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

On Tue, 17 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Make a separate function for setting fec_enable in crtc_state.
>
> v2: Rename helper to align with encoder->compute_config() callback
> and other minor fixes. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 34 ++++++++++++++++++-------
>  1 file changed, 25 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index dd2da9facaad..674297ac6315 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2350,6 +2350,30 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
> +					const struct intel_connector *connector,
> +					struct intel_crtc_state *crtc_state)
> +{
> +	if (crtc_state->fec_enable)
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
> +	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
> +		return;
> +
> +	if (intel_dp_is_uhbr(crtc_state))
> +		return;
> +
> +	crtc_state->fec_enable = true;
> +}
> +
>  int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  				struct intel_crtc_state *pipe_config,
>  				struct drm_connector_state *conn_state,
> @@ -2365,15 +2389,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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
> +	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
>  
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
>  		return -EINVAL;

-- 
Jani Nikula, Intel
