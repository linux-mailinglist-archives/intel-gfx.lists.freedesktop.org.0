Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA98AFCD1F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 16:14:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8D1A10E192;
	Tue,  8 Jul 2025 14:14:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/4qu78g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C8310E192;
 Tue,  8 Jul 2025 14:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751984072; x=1783520072;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HrMQcfKIL2lSx5Kf9dCLQ2vfBYK9zfM3nw3kSAIxhGk=;
 b=G/4qu78g5KoCBXWnhD/jM6wip2DTzOm8oSO4sB5oDVkwLTiyS2Vw4bgD
 u6z+RQaaqfBfwBvUvdOq32121KWSpOoTSW83LEBKUhTft7B+qHPGTMzIE
 No7j1Y/w3s9zNwP6jjDY4Eju9oOu7DRMaWsUCRd34IQ5PwBCb8SMp8Ta3
 HNEUiJezuitD0Y+E2ZVwcINCo/yISGxw/4xZl/w02mfnuKpxs/WpuJPg1
 rS5YN8EPLNDopeJlFrwafZhkS/4OmdTVlTDWsmYdaKIzbnrPPtv68gyTB
 nyMv5iNPgzGG3/EESh61SPtYpGgPCx5OFiqiukrS/+m45+RIFQUe0IjDk w==;
X-CSE-ConnectionGUID: 6gNamzjZSc2qibj0EHcQUA==
X-CSE-MsgGUID: GT7VtzqpTAaIYEdZhptFcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54084569"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="54084569"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 07:14:31 -0700
X-CSE-ConnectionGUID: FLJFZaQhSi6nUl0ved+Nrg==
X-CSE-MsgGUID: gZMswYONR4WGlxbLtZ9Ycw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161147829"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 07:14:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 17:14:27 +0300
Date: Tue, 8 Jul 2025 17:14:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, stable@vger.kernel.org
Subject: Re: [RESEND 1/1] drm/i915/dp: Refine TPS4-based HBR3 rejection and
 add quirk to limit eDP to HBR2
Message-ID: <aG0nwwRNpH7X7BNg@intel.com>
References: <20250627084059.2575794-2-ankit.k.nautiyal@intel.com>
 <20250706053149.3997091-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250706053149.3997091-1-ankit.k.nautiyal@intel.com>
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

On Sun, Jul 06, 2025 at 11:01:49AM +0530, Ankit Nautiyal wrote:
> Refine the logic introduced in commit 584cf613c24a ("drm/i915/dp: Reject
> HBR3 when sink doesn't support TPS4") to allow HBR3 on eDP panels that
> report DPCD revision 1.4, even if TPS4 is not supported. This aligns with
> the DisplayPort specification, which does not mandate TPS4 support for eDP
> with DPCD rev 1.4.
> 
> This change avoids regressions on panels that require HBR3 to operate at
> their native resolution but do not advertise TPS4 support.
> 
> Additionally, some ICL/TGL platforms with combo PHY ports suffer from
> signal integrity issues at HBR3. While certain systems include a
> Parade PS8461 mux to mitigate this, its presence cannot be reliably
> detected. Furthermore, broken or missing VBT entries make it unsafe to
> rely on VBT for enforcing link rate limits.
> 
> To address the HBR3-related issues on such platforms and eDP panels,
> introduce a device specific quirk to cap the eDP link rate to HBR2
> (540000 kHz). This will override any higher advertised rates from
> the sink or DPCD for specific devices.
> 
> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is
> reported in gitlab issue #5969 [1].
> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> 
> Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v6.15+
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>  3 files changed, 39 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..362e376fca27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -171,6 +171,15 @@ int intel_dp_link_symbol_clock(int rate)
>  	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
>  }
>  
> +static bool intel_dp_reject_hbr3_due_to_tps4(struct intel_dp *intel_dp)
> +{
> +	/* TPS4 is not mandatory for eDP with DPCD rev 1.4 */
> +	if (intel_dp_is_edp(intel_dp) && intel_dp->dpcd[DP_DPCD_REV] == 0x14)
> +		return false;
> +
> +	return !drm_dp_tps4_supported(intel_dp->dpcd);
> +}

This feels like it's getty too messy for comfort. I think we should just
revert the whole thing and quirk that one icl machine.

> +
>  static int max_dprx_rate(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> @@ -187,13 +196,22 @@ static int max_dprx_rate(struct intel_dp *intel_dp)
>  	 * HBR3 without TPS4, and are unable to produce a stable
>  	 * output. Reject HBR3 when TPS4 is not available.
>  	 */
> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +	if (max_rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>  		drm_dbg_kms(display->drm,
>  			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>  			    encoder->base.base.id, encoder->base.name);
>  		max_rate = 540000;
>  	}
>  
> +	/*
> +	 * Some platforms + eDP panels may not reliably support HBR3
> +	 * due to signal integrity limitations, despite advertising it.
> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
> +	 * known machines.
> +	 */
> +	if (intel_dp_is_edp(intel_dp) && intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +		max_rate = min(max_rate, 540000);
> +
>  	return max_rate;
>  }
>  
> @@ -4304,13 +4322,22 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  			 * HBR3 without TPS4, and are unable to produce a stable
>  			 * output. Reject HBR3 when TPS4 is not available.
>  			 */
> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
> +			if (rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>  				drm_dbg_kms(display->drm,
>  					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>  					    encoder->base.base.id, encoder->base.name);
>  				break;
>  			}
>  
> +			/*
> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
> +			 * the known machines for stable output.
> +			 */
> +			if (rate >= 810000 &&
> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +				break;
> +
>  			intel_dp->sink_rates[i] = rate;
>  		}
>  		intel_dp->num_sink_rates = i;
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index a32fae510ed2..d2e16b79d6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -80,6 +80,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
>  	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
>  }
>  
> +static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
> +{
> +	intel_set_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2);
> +	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
> +}
> +
>  struct intel_quirk {
>  	int device;
>  	int subsystem_vendor;
> @@ -231,6 +237,9 @@ static struct intel_quirk intel_quirks[] = {
>  	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>  	/* HP Notebook - 14-r206nv */
>  	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
> +
> +	/* Dell XPS 13 7390 2-in-1 */
> +	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
>  };
>  
>  static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
> index cafdebda7535..06da0e286c67 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
> @@ -20,6 +20,7 @@ enum intel_quirk_id {
>  	QUIRK_LVDS_SSC_DISABLE,
>  	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>  	QUIRK_FW_SYNC_LEN,
> +	QUIRK_EDP_LIMIT_RATE_HBR2,
>  };
>  
>  void intel_init_quirks(struct intel_display *display);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
