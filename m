Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006C8AD35CA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 14:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8395810E526;
	Tue, 10 Jun 2025 12:15:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ium4FjNJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA8610E51B;
 Tue, 10 Jun 2025 12:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749557744; x=1781093744;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=zuziHAvuy2JvB+f09AvA8FAb5tUO9RGzvENnPICgq1g=;
 b=Ium4FjNJmd8eAHA44yJpe3s+Z98Wc3yvX8VmX2B2wxq6uJ+IdKg8aRfO
 pmpaKuwdq8MzhBPxZVlb3u75R1qg9NGmPPbYiFfiJXGdzQIa7uKF3+/uj
 tFf25k5BOVN40wfM2uxla73QT3IqscEO82BTR3EkKlGz5syXLhZ/fY3ub
 aHQSHooJfI4jX3D3wb+5xKIrhLkGHbDaYEHh/YGuI8EDltQTgfBauSZrv
 tMC6rWtw7jExgw9maCEOQIGADjLvDhcWQylU0O76c+FmJ8wSFNKBogRrm
 eGSypu5m2A+3X/NZxL397RYfOsBXl/3zWMlgActKV4rV/bd2VKigait3l w==;
X-CSE-ConnectionGUID: mrYHucoKQgCD3NjdeBdTgQ==
X-CSE-MsgGUID: tsXooxRFQ2W1UxTk5vPbeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="63065113"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="63065113"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 05:15:44 -0700
X-CSE-ConnectionGUID: 96pBNPl5Sui/T+7ADtBENw==
X-CSE-MsgGUID: ad2dPlbUSp6Q3BI6EqPD2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="151964957"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.174])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 05:15:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
In-Reply-To: <20250610100449.185927-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250610100449.185927-1-ankit.k.nautiyal@intel.com>
 <20250610100449.185927-2-ankit.k.nautiyal@intel.com>
Date: Tue, 10 Jun 2025 15:15:38 +0300
Message-ID: <bb0ef3558c2bd367db180ceabbdaec6ccd31e6a3@intel.com>
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

On Tue, 10 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
> not support TPS4. While this was intended to address instability observed
> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
> and not for eDPRX.
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

On the revert,

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
>  1 file changed, 7 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 208a953b04a2..2a0b76ae33cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -174,28 +174,10 @@ int intel_dp_link_symbol_clock(int rate)
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
> @@ -4271,9 +4253,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -
>  	intel_dp->num_sink_rates = 0;
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> @@ -4284,7 +4263,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> @@ -4292,24 +4274,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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

-- 
Jani Nikula, Intel
