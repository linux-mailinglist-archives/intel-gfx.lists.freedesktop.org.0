Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3133AE4720
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 16:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C299110E3C6;
	Mon, 23 Jun 2025 14:42:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BfKi7DJ0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04BD410E1EF;
 Mon, 23 Jun 2025 14:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750689747; x=1782225747;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FbxTimdGW8qvwgZA4Sd8MhqoiZzZYVak04GqI6mP6Ao=;
 b=BfKi7DJ0N8hoXTDQv4Y8DSHZNP7xxyUMJgiLspRDzppeBA4MhRulU0Z/
 GzbjOAbLRtv9xUcAXSxU+626Y1LXiFolQlVlM/hqUXil57ntVDt04nDzZ
 Ydle0cQAAs6kd63GFETBDAHu1czS2VKpnajcNwLRRi3nTbUimLs/Yvppt
 cRZj+srTfhwT7rAf7IsXth1DdMLzpCWPXHolnysLhoQ8obGWLI5HYBEN0
 o957WJb/iapMOLDU/P4txqp6K/46zRL2Wt17NvOJ6KRIcrTPV/9xUaZk9
 k6x6LQh/ANINs9MQrSLEe9mXoFsHNxest2Xpm4536ZTUjeDu2KlQfglPm A==;
X-CSE-ConnectionGUID: mDo1uNcZSt+aWB1T2RrMtQ==
X-CSE-MsgGUID: 6hzA7QM6Q7KE3S1drHfwWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="63166692"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="63166692"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 07:42:27 -0700
X-CSE-ConnectionGUID: 39oZUuPjRGaWGKbKNHnBIw==
X-CSE-MsgGUID: viv7qTFPSDedkmDrVrLmCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="157407115"
Received: from abityuts-desk.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.124])
 by orviesa005.jf.intel.com with SMTP; 23 Jun 2025 07:42:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Jun 2025 17:42:23 +0300
Date: Mon, 23 Jun 2025 17:42:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Message-ID: <aFlnzzW7HhtcqWs7@intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250620124417.2041233-2-ankit.k.nautiyal@intel.com>
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

On Fri, Jun 20, 2025 at 06:14:16PM +0530, Ankit Nautiyal wrote:
> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
> not support TPS4. While this was intended to address instability observed
> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
> and not for eDPRX.

I see no exception given for eDP regarding this rule. The only exception
allowed is that eDP can say DPCD_REV=1.4 + TPS4_SUPPORTED=0. So I still
claim that these eDP sinks are violating the spec.

> 
> This change inadvertently causes blank screens on some eDP panels that do
> not advertise TPS4 support, and require HBR3 to operate at their fixed
> native resolution.
> 
> Revert the commit to restore functionality for such panels.
> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
>  1 file changed, 7 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948..74f331ae97ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -173,28 +173,10 @@ int intel_dp_link_symbol_clock(int rate)
>  
>  static int max_dprx_rate(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	int max_rate;
> -
>  	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> -		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> -	else
> -		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> +		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>  
> -	/*
> -	 * Some broken eDP sinks illegally declare support for
> -	 * HBR3 without TPS4, and are unable to produce a stable
> -	 * output. Reject HBR3 when TPS4 is not available.
> -	 */
> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> -		drm_dbg_kms(display->drm,
> -			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
> -			    encoder->base.base.id, encoder->base.name);
> -		max_rate = 540000;
> -	}
> -
> -	return max_rate;
> +	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>  }
>  
>  static int max_dprx_lane_count(struct intel_dp *intel_dp)
> @@ -4270,9 +4252,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -
>  	intel_dp->num_sink_rates = 0;
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> @@ -4283,7 +4262,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  				 sink_rates, sizeof(sink_rates));
>  
>  		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
> -			int rate;
> +			int val = le16_to_cpu(sink_rates[i]);
> +
> +			if (val == 0)
> +				break;
>  
>  			/* Value read multiplied by 200kHz gives the per-lane
>  			 * link rate in kHz. The source rates are, however,
> @@ -4291,24 +4273,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  			 * back to symbols is
>  			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>  			 */
> -			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
> -
> -			if (rate == 0)
> -				break;
> -
> -			/*
> -			 * Some broken eDP sinks illegally declare support for
> -			 * HBR3 without TPS4, and are unable to produce a stable
> -			 * output. Reject HBR3 when TPS4 is not available.
> -			 */
> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> -				drm_dbg_kms(display->drm,
> -					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
> -					    encoder->base.base.id, encoder->base.name);
> -				break;
> -			}
> -
> -			intel_dp->sink_rates[i] = rate;
> +			intel_dp->sink_rates[i] = (val * 200) / 10;
>  		}
>  		intel_dp->num_sink_rates = i;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
