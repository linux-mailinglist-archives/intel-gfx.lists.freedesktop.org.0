Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 855F7AFF06D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 20:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200A410E34B;
	Wed,  9 Jul 2025 18:05:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OteK+hqQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE5B10E10F;
 Wed,  9 Jul 2025 18:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752084325; x=1783620325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+tfR3qOKHDCsOoUEXh7VnFnKj53ViAl1Rwcx5SDA/Y0=;
 b=OteK+hqQGgL0RioxqqPfrrDysTCOddP7pM1uYrfgqYtj2mO+YH5E0dhY
 z0SmGu/aUJaWqMuo9LfIJEE6tdBuJH8L3/wgKDUM0k8m+GXIkhBl4+8fv
 zqNJAWtJ9c5jLSvE66wA81AFJf9cCps7bH3VI62CDfKKP/4tmOrX71kXH
 ITQTKeVjYQRKTNqGR5fby8VAf/InYE2Qy+gkDEQOhMTMopedwFB8ZFZNZ
 pn5+IhjfVPC0V7r04szZTNUuiY+mqW54K3YbsZEUVLj9S5p4I38c2jasf
 OtRKm6Rqm0GAhfyywFSrw+Jh03Pc0rwZUPVpv0iy/Y/MZK2Qx5OTSWEag g==;
X-CSE-ConnectionGUID: lmy4oahpRAKozrLMM5shyw==
X-CSE-MsgGUID: 2mUQXUr+SFebF42NvYkN3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="64935054"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="64935054"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:05:25 -0700
X-CSE-ConnectionGUID: HIMLWIJmSp6AYgwMcr/5TA==
X-CSE-MsgGUID: 2fRTSPw2Q8Oy33efb4ZArA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="161506145"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 09 Jul 2025 11:05:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jul 2025 21:05:21 +0300
Date: Wed, 9 Jul 2025 21:05:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com
Subject: Re: [PATCH 2/2] drm/i915/dp: Add device specific quirk to limit eDP
 rate to HBR2
Message-ID: <aG6vYUcYjjua-P9w@intel.com>
References: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
 <20250709055144.879393-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250709055144.879393-3-ankit.k.nautiyal@intel.com>
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

On Wed, Jul 09, 2025 at 11:21:43AM +0530, Ankit Nautiyal wrote:
> Some ICL/TGL platforms with combo PHY ports suffer from signal integrity
> issues at HBR3. While certain systems include a Parade PS8461 mux to
> mitigate this, its presence cannot be reliably detected. Furthermore,
> broken or missing VBT entries make it unsafe to rely on VBT for enforcing
> link rate limits.
> 
> To address this introduce a device specific quirk to cap the eDP link rate
> to HBR2 (540000 kHz). This will override any higher advertised rates from
> the sink or DPCD for specific devices.
> 
> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is reported
> in gitlab issue #5969 [1].
> 
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> 
> v2: Align the quirk with the intended quirk name and refactor the
> condition to use min(). (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 41 +++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++
>  drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>  3 files changed, 44 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 92abf819e60e..7d2eaa0cff73 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -173,10 +173,24 @@ int intel_dp_link_symbol_clock(int rate)
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
> +
> +	/*
> +	 * Some platforms + eDP panels may not reliably support HBR3
> +	 * due to signal integrity limitations, despite advertising it.
> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
> +	 * known machines.
> +	 */
> +	if (intel_dp_is_edp(intel_dp) && intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
> +		max_rate = min(max_rate, 540000);
>  
> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> +	return max_rate;
>  }
>  
>  static int max_dprx_lane_count(struct intel_dp *intel_dp)
> @@ -4255,6 +4269,8 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>  static void
>  intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
>  	intel_dp->num_sink_rates = 0;
>  
>  	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
> @@ -4265,10 +4281,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
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
> @@ -4276,7 +4289,21 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>  			 * back to symbols is
>  			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>  			 */
> -			intel_dp->sink_rates[i] = (val * 200) / 10;
> +			rate = (le16_to_cpu(sink_rates[i]) * 200) / 10;

Might as well drop the unnecessary parens while at it.

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

If the quirk sasy "HBR2" then we should probably check for >540000 instead.

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

Hmm. I wonder if different modesl of that same machine might
come with different panels, some of which might work with/need
HBR3...

But I suppose we don't have any nice way to combine different types
of quirks (ie. PCI ID + DPCD, DMI + EDID, etc.). We should probably
think about coming up with some kind of generic quirk framework that
can do such things nicely.

Anyways I guess this is fine for now. But we might have to revise this
later if it turns out there are other variants of that machine around.

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
