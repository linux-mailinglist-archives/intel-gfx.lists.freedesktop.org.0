Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084C5AFF069
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 20:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB9F10E092;
	Wed,  9 Jul 2025 18:05:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1Qg0oyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771F810E092;
 Wed,  9 Jul 2025 18:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752084301; x=1783620301;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HczsfyZHVz0aaeWPOD8CfmioZ19knFShiDs4p1Qv9ZY=;
 b=l1Qg0oyW9EjIIXzoBi5NKwb8/DXUbk75Y/X7+86OyjpM6NG/oXu2QK07
 JduZGkNYYin+A4/hs4pdFQGknDBpR6vhLOf4jx2U7oYSPgnxEJ87LxfHg
 aLtJssoZhIlwj7F7px3a6JH6SElIjqZfIPNzUGy5jo6bIcahvQ8KWGtcI
 VOd+r7L/WtMjHAw2DA7HgjXrPmwofl4Dfpsqm5dLVgX6elEIUkuWtkg92
 pmFM9sS4dFyN3WEfoY5uf8dV0NtzTmZEc55vShutVgG6gWTmn1powozFH
 4cAmjj866STsnf8pDERdsIPDq5AhtdwB6WyngU9uY2F5wyIFfS1UBvW0D A==;
X-CSE-ConnectionGUID: gnm7mtW9TMiJtOWluuN9Fg==
X-CSE-MsgGUID: yU7ccaJ/QGOJjcti9ADX9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="64935016"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64935016"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:05:00 -0700
X-CSE-ConnectionGUID: il42xyq+Q8iKs0hTWPjgUg==
X-CSE-MsgGUID: BZ1bQGxLTDSMLojZP8BjRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="161506111"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 09 Jul 2025 11:04:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jul 2025 21:04:56 +0300
Date: Wed, 9 Jul 2025 21:04:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
Message-ID: <aG6vSMRiKRBk7AQN@intel.com>
References: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
 <20250709055144.879393-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709055144.879393-2-ankit.k.nautiyal@intel.com>
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

On Wed, Jul 09, 2025 at 11:21:42AM +0530, Ankit Nautiyal wrote:
> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
> not support TPS4. While this was intended to address instability observed
> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
> and not for eDPRX.

That last claim is still not really supported by the spec AFAICS.

I think the best justification is that the Windows driver allows 
this.

> 
> This change inadvertently causes blank screens on some eDP panels that do
> not advertise TPS4 support, and require HBR3 to operate at their fixed
> native resolution [2].
> 
> Revert the commit to restore functionality for such panels.
> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
>  1 file changed, 7 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..92abf819e60e 100644
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
> @@ -4273,9 +4255,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> -	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -
>  	intel_dp->num_sink_rates = 0;
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> @@ -4286,7 +4265,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> @@ -4294,24 +4276,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
