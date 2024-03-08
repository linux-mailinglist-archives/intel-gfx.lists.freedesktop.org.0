Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CFA876670
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A141138D4;
	Fri,  8 Mar 2024 14:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DCzECUUO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A299A1138D2
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709908661; x=1741444661;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6JsbqOc433cCvflOaRGtNkq18rzfM0UT/ONE13p5+Dk=;
 b=DCzECUUORnh73bp5XNuDQo8Z3TaNIL2l90jxizlwUfOJDs7Ox4nczVYp
 UE3Jgtst06XYXaBtnl3oY9k+s66WRjeSH4Wwh21A+7ZW8Cj6E/xHYr2lL
 2H79kV2xBPf/fi58JgvRz29kfbkcYLDCzeU4X3rz1jT7+y6NDb0f9Fpvs
 OROhhrMRplDhTAWd0pSKxdgdjAPLPtCg2QpfbFTdIW2CERAKa4M02dwXp
 70o9Vf6urbQlIGFTj0Iu1e1pEG+8sv6MA5w5mg9RzRJmkJA9IsUqEuUZe
 DsL0nt1lOGSfdMW7NPREmuzoJGXA3bYnFKtmf2I4k0msyi53Nhtv2Xevx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4554335"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4554335"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:37:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775229"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775229"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 06:37:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 16:37:37 +0200
Date: Fri, 8 Mar 2024 16:37:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 2/5] drm/i915/psr: Improve fast and IO wake lines
 calculation
Message-ID: <ZesiscGvnx_a9zMK@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308110039.3900838-3-jouni.hogander@intel.com>
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

On Fri, Mar 08, 2024 at 01:00:36PM +0200, Jouni Högander wrote:
> Current fast and IO wake lines calculation is assuming fast wake sync
> length is 18 pulses. Let's improve this by checking actual length.
> 
> Add getter for IO buffer wake time and return 10 us there which was assumed
> with static 42 us IO wake time. Upcoming patches will extent this for
> different display versions.
> 
> Bspec: 65450
> 
> v3:
>   - s/get_io_buffer_wake_time/io_buffer_wake_time/ and use it directly in
>     calculation.
> v2:
>   - rename io_wake_time in if block to io_buffer_wake_time
>   - rename get_io_wake_time to get_io_buffer_wake_time
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 6927785fd6ff..7736bdcad82d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1150,6 +1150,11 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +static int io_buffer_wake_time(void)
> +{
> +	return 10;
> +}
> +
>  static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state)
>  {
> @@ -1158,12 +1163,15 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  	u8 max_wake_lines;
>  
>  	if (DISPLAY_VER(i915) >= 12) {
> -		io_wake_time = 42;
> -		/*
> -		 * According to Bspec it's 42us, but based on testing
> -		 * it is not enough -> use 45 us.
> -		 */
> -		fast_wake_time = 45;
> +		int tfw_exit_latency = 20; /* eDP spec */
> +		int phy_wake = 4;	   /* eDP spec */
> +		int preamble = 8;	   /* eDP spec */
> +		int precharge = intel_dp_aux_fw_sync_len() - preamble;
> +
> +		io_wake_time = max(precharge, io_buffer_wake_time()) + preamble +
> +			phy_wake + tfw_exit_latency;
> +		fast_wake_time = precharge + preamble + phy_wake +
> +			tfw_exit_latency;
>  
>  		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
>  		max_wake_lines = 12;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
