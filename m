Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E18AF0E11
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 10:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FFCD10E10E;
	Wed,  2 Jul 2025 08:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rzq6g1U1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838DB10E10E;
 Wed,  2 Jul 2025 08:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751445073; x=1782981073;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B3ymhDApMrkKe/v8M1kl8YRea7u9EFmyTKRSEGPWQt8=;
 b=Rzq6g1U1GC2UPr5GHZbByJRy93gEUXBnTeGUwVAAsf5sQFK1s+0Sm74c
 knAzQ8uZ9IB/bPFsIY+kKW1ijvY6/LNpop7GwyhusHWbx97qUsmFXkE2m
 dKN36sWxr6mj40/U6Hy67Hsm6RakRU4S3EvXPysYn/AAsIMfcc9ECacdp
 CW+gX/5IpidR1ZqxBeZaSJJsRPuoCAKNTVa44sDRNNmsig4T9/fP2Hxh9
 aizUpKUMCmqIHFdW81TyXBHfcPx3pHSGjKA58a5Atj4W7sr/pYJyCSBzT
 ETW1LMDfZxMqsK81v2BqK480XYr9iIxvxaEp+quEf7aiFAUjsembmaVRl w==;
X-CSE-ConnectionGUID: upxjKm5eSR+2lwaGl/0ESA==
X-CSE-MsgGUID: rphi/kkZQdSpeYFERqE2ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="76274477"
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="76274477"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:31:12 -0700
X-CSE-ConnectionGUID: nOIUiO2GR3iyp6fir6B0iw==
X-CSE-MsgGUID: ncR6MM3vQea6Ci6bR/dcuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,281,1744095600"; d="scan'208";a="154337318"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.29])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2025 01:31:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, chaitanya.kumar.borah@intel.com
Subject: Re: [PATCH] drm/i915/display: Add upper limit check for pixel clock
In-Reply-To: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250702042754.3335382-1-chaitanya.kumar.borah@intel.com>
Date: Wed, 02 Jul 2025 11:31:06 +0300
Message-ID: <d3b2de8c5eac5e1214cc35609a78cdff32c0afa1@intel.com>
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

On Wed, 02 Jul 2025, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Add upper limit check for pixel clock by platform. Limits don't apply
> when DSC is enabled.
>
> For the currently supported versions of HDMI, pixel clock is already
> limited to 600Mhz so nothing needs to be done there as of now.
>
> BSpec: 49199, 68912
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_display.h |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c      |  3 +++
>  3 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 456fc4b04cda..bf0faff50c2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7902,6 +7902,18 @@ void intel_setup_outputs(struct intel_display *display)
>  	drm_helper_move_panel_connectors_to_head(display->drm);
>  }
>  
> +int intel_dotclock_limit(struct intel_display *display)
> +{
> +	if (DISPLAY_VERx100(display) == 3002)
> +		return 937500;
> +	else if (DISPLAY_VER(display) >= 30)
> +		return 1350000;
> +	else if (DISPLAY_VER(display) >= 13)
> +		return 1200000;
> +	else
> +		return 1100000;
> +}

How does this relate to display->cdclk.max_dotclk_freq that's computed
in intel_compute_max_dotclk(display)?

BR,
Jani.


> +
>  static int max_dotclock(struct intel_display *display)
>  {
>  	int max_dotclock = display->cdclk.max_dotclk_freq;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 37e2ab301a80..9ad896a15ba7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -486,6 +486,7 @@ void intel_cpu_transcoder_get_m2_n2(struct intel_crtc *crtc,
>  				    struct intel_link_m_n *m_n);
>  int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
>  int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config);
> +int intel_dotclock_limit(struct intel_display *display);
>  enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
>  enum intel_display_power_domain
>  intel_aux_power_domain(struct intel_digital_port *dig_port);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f48912f308df..3ff2beeed801 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1507,6 +1507,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
> +	if (target_clock > (intel_dotclock_limit(display) * num_joined_pipes) && !dsc)
> +		return MODE_CLOCK_HIGH;
> +
>  	if (intel_dp_joiner_needs_dsc(display, num_joined_pipes) && !dsc)
>  		return MODE_CLOCK_HIGH;

-- 
Jani Nikula, Intel
