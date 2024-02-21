Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CCA85E6DF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:05:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E346110E7BA;
	Wed, 21 Feb 2024 19:05:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9qa52eX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCD3310E041
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708542347; x=1740078347;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UTFDkN2jrcC4AsxO/zn8gzVI+F+X9HEku7TIXqMsK3A=;
 b=g9qa52eX4/Z1CyvnHSDt/NT9S4E8ymmlij6bnr4c0oVcHIk84TXXHTQB
 qBTpaP5hQH1afr/Nd3k9zDqdZ8dznEwLSXJfRtymqGezip60Yxl8XnF07
 BEGQ+j/x0gKwayZy07FcsQ470rE4YVt1YbDGW8UxZTaQwcQdFxnn5ZCSw
 hX3Au8X99yQqzW2Yaed5DPm5Q4UOJAbfWSHogPewt8kR/c1wjaMkhQ7sD
 tPiW4oa1li4tcVIFzPJHx1xecRHJ2J/YhytTJX18yB9Ksaf9e0/LJjSAu
 vWeWDiIFcTpfNNSFuO+XFYVsq2EAyb59DW1iLmIM4IUJXqvOgi+RyTD8H w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2598037"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2598037"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827395443"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="827395443"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2024 11:05:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Feb 2024 21:05:43 +0200
Date: Wed, 21 Feb 2024 21:05:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/psr: Improve fast and IO wake lines
 calculation
Message-ID: <ZdZJh86BvrrAazou@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-3-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221075322.2764209-3-jouni.hogander@intel.com>
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

On Wed, Feb 21, 2024 at 09:53:21AM +0200, Jouni Högander wrote:
> Current fast and IO wake lines calculation is assuming fast wake sync
> length is 18 pulses. Let's improve this by checking the actual length.
> 
> Also 10 us IO buffer wake time is currently assumed. This is not the case
> with LunarLake and beyond. Fix this by adding getter for IO wake time and
> return values there according to Bspec.
> 
> Bspec: 65450
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 40 +++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 72cadad09db5..4a1e07411716 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1150,6 +1150,28 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +/*
> + * From Bspec:
> + *
> + * For Xe2 and beyond
> + * RBR 15us, HBR1 11us, higher rates 10us
> + *
> + * For pre-Xe2
> + * 10 us
> + */
> +static int get_io_wake_time(struct intel_dp *intel_dp,

No point in passing that. You can dig out the i915 from the crtc state.

> +			struct intel_crtc_state *crtc_state)

const

> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +
> +	if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
> +		return 10;
> +	else if (crtc_state->port_clock > 162000)
> +		return 11;
> +	else
> +		return 15;

The new rate dependent stuff should be a separate patch.

And looks like the 10 usec will give us 44 usec io wake time, so
that should probably be a separate patch as well, to avoid
any functional changes when we introduce the formula.

> +}
> +
>  static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state)
>  {
> @@ -1157,13 +1179,17 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
>  	u8 max_wake_lines;
>  
> -	if (DISPLAY_VER(i915) >= 12) {
> -		io_wake_time = 42;
> -		/*
> -		 * According to Bspec it's 42us, but based on testing
> -		 * it is not enough -> use 45 us.
> -		 */
> -		fast_wake_time = 45;
> +	if (intel_dp->get_aux_fw_sync_len) {
> +		int io_wake_time = get_io_wake_time(intel_dp, crtc_state);

Looks like this will shadow the variable you're trying to change.
Does the compiler not complain about this?

> +		int tfw_exit_latency = 20; /* eDP spec */
> +		int phy_wake = 4;	   /* eDP spec */
> +		int preamble = 8;	   /* eDP spec */
> +		int precharge = intel_dp->get_aux_fw_sync_len() - preamble;
> +
> +		io_wake_time = max(precharge, io_wake_time) + preamble +
> +			phy_wake + tfw_exit_latency;
> +		fast_wake_time = precharge + preamble + phy_wake +
> +			tfw_exit_latency;
>  
>  		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
>  		max_wake_lines = 12;

I would also convert the older platforms to use the formula.
We do need to reverse calculate the io buffer on latency since
AFAICS it's not directly specified in bspec. But I think
that's better than not converting it since with the formula we
can't totally screw things up when eg. changing the precharge
length.

-- 
Ville Syrjälä
Intel
