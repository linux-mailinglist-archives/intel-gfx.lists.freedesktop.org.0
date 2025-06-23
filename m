Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF27AE3B5F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jun 2025 11:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02BB610E0B9;
	Mon, 23 Jun 2025 09:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjRe3EsW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5248E10E05B;
 Mon, 23 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750672793; x=1782208793;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ww7jy19rPQBHFUmKeM75fnjHXJtkQLne7zBi+MMo7SE=;
 b=QjRe3EsWOujv5pc1X0u1p7NX2k/ueIIrtGWtb2pu8s+vDxd8nOGG/TXu
 AjISK5MDVVqAqvRUvpI+AWrCwcwCu+gjN6KdLCdk6gGMV/VQSGyYfID+5
 wrMKsJmSyv/MgtycyiDOawOHMn2vfbDxgKs2jatqwzojjNfmns1Hesn6r
 K9FfLbipExYGCPm5K0tIL20J6BKZoTX+aCK43dYe3aHBuWzCb8zghnHmh
 uUKkVw1H7Ti1LKTs7zAj69qRSencNOn39HSYcZ713SRu5I+DMoD/H3J1x
 SZspjLtoTvywDXpZUPkWPIJLKMWhpvxHjRveVce5lHb+Qzxcgb5EvUCmH w==;
X-CSE-ConnectionGUID: 5WBIxgHpTaCczivaVUlCGg==
X-CSE-MsgGUID: Cu7D0yB6RwGxjv+4PaRwdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11472"; a="63562445"
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="63562445"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 02:59:53 -0700
X-CSE-ConnectionGUID: IpMrLcy+SNOwlKPIMZVHgQ==
X-CSE-MsgGUID: ONT/dDYJT76RcMI+h2IK/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,258,1744095600"; d="scan'208";a="151129822"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.248])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2025 02:59:50 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/dp: Add device specific quirk to limit eDP
 rate to HBR2
In-Reply-To: <20250620124417.2041233-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-3-ankit.k.nautiyal@intel.com>
Date: Mon, 23 Jun 2025 12:59:47 +0300
Message-ID: <c120ac2486fd31d6990c553109a0d5b843f0fc16@intel.com>
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

On Fri, 20 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
> but in practice, signal integrity issues may prevent stable operation.
> While some systems include a Parade PS8461 mux chip to mitigate jitter and
> enable HBR3, there is no reliable way to detect its presence.
> Additionally, many systems have broken or missing VBT entries, making it
> unsafe to rely on VBT for link rate limits.
>
> To address this, introduce a device specific quirk to limit the eDP link
> rate to be capped at HBR2 (540000 kHz), overriding any higher advertised
> rates from the sink or DPCD.
>
> Currently the quirk is added for Dell XPS 13 7390 2-in-1 which is
> reported in gitlab issue#5969.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 42 +++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++
>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>  3 files changed, 45 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 74f331ae97ff..4441fef4f853 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -173,10 +173,25 @@ int intel_dp_link_symbol_clock(int rate)
>  
>  static int max_dprx_rate(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	int max_rate;
> +
>  	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
> +	else
> +		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);

The way these lines go back and forth with the revert and the quirk, I'm
actually wondering if it isn't cleanest to just join the two changes
into one i.e. fix the commit, that's it. What do you think?

> +
> +	/*
> +	 * Some platforms with combo PHY ports may not reliably support HBR3
> +	 * due to signal integrity limitations, despite advertising it.
> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
> +	 * known machines.
> +	 */
> +	if (max_rate >= 810000 &&
> +	    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +		max_rate = 540000;

It's misleading to call the quirk QUIRK_EDP_LIMIT_RATE_HBR2 when you in
fact apply it to all DP not just eDP. Maybe it should be just
QUIRK_DP_LIMIT_RATE_HBR2?

And you don't really need to check for max_rate >= something here. It's
really just:

	if (intel_has_quirk(display, QUIRK_DP_LIMIT_RATE_HBR2))
		max_rate = min(max_rate, 540000);

Anyway, I think the overall result is okay.


BR,
Jani.

>  
> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> +	return max_rate;
>  }
>  
>  static int max_dprx_lane_count(struct intel_dp *intel_dp)
> @@ -4252,6 +4267,8 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
>  	intel_dp->num_sink_rates = 0;
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> @@ -4262,10 +4279,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  				 sink_rates, sizeof(sink_rates));
>  
>  		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
> -			int val = le16_to_cpu(sink_rates[i]);
> -
> -			if (val == 0)
> -				break;
> +			int rate;
>  
>  			/* Value read multiplied by 200kHz gives the per-lane
>  			 * link rate in kHz. The source rates are, however,
> @@ -4273,7 +4287,21 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  			 * back to symbols is
>  			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>  			 */
> -			intel_dp->sink_rates[i] = (val * 200) / 10;
> +			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
> +
> +			if (rate == 0)
> +				break;
> +
> +			/*
> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
> +			 * the known machines for stable output.
> +			 */
> +			if (rate >= 810000 &&
> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +				break;
> +
> +			intel_dp->sink_rates[i] = rate;
>  		}
>  		intel_dp->num_sink_rates = i;
>  	}
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

-- 
Jani Nikula, Intel
