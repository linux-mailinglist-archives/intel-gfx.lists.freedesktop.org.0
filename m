Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD91875500
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 18:16:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7533C1137F1;
	Thu,  7 Mar 2024 17:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4IhbIus";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716A91137F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 17:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709831796; x=1741367796;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Srd0W7n1oj3mrhztiK8y/h1NEUb2YNZOxAQ6pr3raI4=;
 b=b4IhbIus8Fl5kdvnf4t3Vic6oXEEq8Gl6NtsTXTk/yw+BA08dQXEfj9d
 CoKHfNJnM7/P/QjSirrZS0m/H+5W0M6G4MRLZf5WIHL9+PSVcYctDcSVs
 uyvDcOsRTUDxTSVuTl6Sm47URe6obvnllEKouGdwMZSp1k5gn4Fdkex0y
 uaKtjG7X9boUFhTL3KBj85iLClKEsD3gU46TZMPEBVHCUI8WRclqy1HuC
 FQRrZX7pno8/bhoY0Iqy0Fiv1h5VFvW5dQhEfAiWei/XdbOWFIpjPOmwT
 P3Xv09WJdypoTWWoMAMzepGJXXJuN8nGi/C5w4ELWAbkr012L587Hb1nL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4369551"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; 
   d="scan'208";a="4369551"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 09:16:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827774854"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="827774854"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 07 Mar 2024 09:16:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Mar 2024 19:16:31 +0200
Date: Thu, 7 Mar 2024 19:16:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 3/5] drm/i915/psr: Calculate IO wake and fast wake
 lines for DISPLAY_VER < 12
Message-ID: <Zen2b41UnCTfpzvs@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240306083427.2040475-4-jouni.hogander@intel.com>
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

On Wed, Mar 06, 2024 at 10:34:25AM +0200, Jouni Högander wrote:
> Bspec mentions 50 us for IO wake time and 32 us for fast wake time. 32 us
> is most probably wrong as it doesn't meet the specification as fast wake
> time is calculated in Bspec like this:
> 
> 10..16 us (precharge) + 8 us (preamble) + 4 us (phy_wake) + 20 us
> (tfw_exit_latency)
> 
> Instead of using these constants calculate IO wake and fast wake for
> DISPLAY_VER < 12 as well.
> 
> v2:
>   - initialize io/fast_wake_time for display version < 9
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 34 ++++++++++++++++++------
>  1 file changed, 26 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 905208e1c771..e1df0ece9fa3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1150,9 +1150,25 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static int get_io_buffer_wake_time(void)
> +/*
> + * From Bspec:
> + *
> + * For DISPLAY_VER >= 12
> + * 10 us
> + *
> + * For DISPLAY_VER < 12
> + * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
> + * us fast wake time. Clearly preharge pulses are not (improperly) included in
> + * 32 us fast wake time. 50 us - 32 us = 18 us.
> + */
> +static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
>  {
> -	return 10;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (DISPLAY_VER(i915) < 12)
> +		return 18;
> +	else
> +		return 10;
>  }
>  
>  static bool _compute_alpm_params(struct intel_dp *intel_dp,
> @@ -1162,8 +1178,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
>  	u8 max_wake_lines;
>  
> -	if (DISPLAY_VER(i915) >= 12) {
> -		int io_buffer_wake_time = get_io_buffer_wake_time();
> +	if (DISPLAY_VER(i915) >= 9) {
> +		int io_buffer_wake_time = get_io_buffer_wake_time(crtc_state);
>  		int tfw_exit_latency = 20; /* eDP spec */
>  		int phy_wake = 4;	   /* eDP spec */
>  		int preamble = 8;	   /* eDP spec */
> @@ -1173,15 +1189,17 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  			phy_wake + tfw_exit_latency;
>  		fast_wake_time = precharge + preamble + phy_wake +
>  			tfw_exit_latency;
> -
> -		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
> -		max_wake_lines = 12;
>  	} else {
>  		io_wake_time = 50;
>  		fast_wake_time = 32;
> -		max_wake_lines = 8;

Isn't the whole else branch dead code now?

>  	}
>  
> +	if (DISPLAY_VER(i915) >= 12)
> +		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
> +		max_wake_lines = 12;
> +	else
> +		max_wake_lines = 8;
> +
>  	io_wake_lines = intel_usecs_to_scanlines(
>  		&crtc_state->hw.adjusted_mode, io_wake_time);
>  	fast_wake_lines = intel_usecs_to_scanlines(
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
