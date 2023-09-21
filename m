Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF37E7A9466
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 14:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9165210E00D;
	Thu, 21 Sep 2023 12:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B4610E00D
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 12:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695300595; x=1726836595;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=cSoDEAVYVnH2F6DXyK5oqkjbbpTkGxzA28SYIwO5m1I=;
 b=GoaOdSTzJATg8PBbtROrpZGG1rybdKkqmtJkHcUxFh5trJ+FsbhPhR44
 ATK0dPjrNoq4JNtijRnWoKNCITBINOW7GFkC75BI0P9UmyRSnfI/J2w5C
 0cjW2w3vDZ6uzNaYYuiq7bWCCYFpGitYX9niYwUq0EN/YyOj5SvAfybJr
 RhYnNdeLm7rul+JIdMxiBzpXa6DJJ9231ypn0uisykNwbpV0EDPG6FgKk
 YtxYEMv/j3W+pPzm48si0a63WrRNzYVJI8caTOCOnpijfnQg3YodP2k3Q
 FpC+Srq/IojO+eP8WTn/ck57KOiYx0sIaOMhEuTu9y0O7xuhM1Wcef/BQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="365564245"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="365564245"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="994061000"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="994061000"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 05:49:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Charlton Lin <charlton.lin@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230921003558.777023-1-charlton.lin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230921003558.777023-1-charlton.lin@intel.com>
Date: Thu, 21 Sep 2023 15:49:30 +0300
Message-ID: <87cyybpu79.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Change DSC vs lower
 bpp priority
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
Cc: Charlton Lin <charlton.lin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Sep 2023, Charlton Lin <charlton.lin@intel.com> wrote:
> Previously driver would lower bpp before trying DSC. Monitors
> capable of acheiving highest mode with either DSC or lower bpp
> would have bpp dropped instead of attempting DSC at higher bpp.
>
> Changed the order in which driver attempts DSC and lower bpp.
> Attempt DSC before trying lower bpp without DSC.

It's not clear that the highest bpp with DSC is always the best
option. It may be in some cases, for some displays, but not always.

This is policy that really belongs in the userspace, but we have no
mechanism to give userspace the option.

As to the implementation, I think this frankly looks like a hack. Try
this and that, with various options, and try again. Not nice.

What I think we'll need (regardless of the patch at hand) is a way to
generate an ordered list of link parameters to try, which is also used
for link training failure fallback. The parameters should include lane
count, link rate, bpp, dsc, 128b/132b vs 8b/10b. For example, you might
want to first try 128b/132b without dsc, then 8b/10b with dsc, etc. Stop
trying to iterate in nested for loops, because they can't handle all
cases.

With that, it *might* be easier to provide a mechanism for userspace to
prefer some options.


BR,
Jani.



>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> Signed-off-by: Charlton Lin <charlton.lin@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2206b45bc78c..0d65ca4085b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1527,12 +1527,14 @@ static int
>  intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>  				  struct intel_crtc_state *pipe_config,
>  				  const struct drm_connector_state *conn_state,
> -				  const struct link_config_limits *limits)
> +				  const struct link_config_limits *limits,
> +				  bool allow_bpp_change)
>  {
>  	int bpp, i, lane_count, clock = intel_dp_mode_clock(pipe_config, conn_state);
>  	int mode_rate, link_rate, link_avail;
> +	int min_bpp = allow_bpp_change ? limits->min_bpp : limits->max_bpp;
>  
> -	for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) {
> +	for (bpp = limits->max_bpp; bpp >= min_bpp; bpp -= 2 * 3) {
>  		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>  
>  		mode_rate = intel_dp_link_required(clock, link_bpp);
> @@ -2247,7 +2249,8 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	 * Optimize for slow and wide for everything, because there are some
>  	 * eDP 1.3 and 1.4 panels don't work well with fast and narrow.
>  	 */
> -	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, conn_state, &limits);
> +	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
> +						conn_state, &limits, false);
>  
>  	if (ret || joiner_needs_dsc || intel_dp->force_dsc_en) {
>  		drm_dbg_kms(&i915->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
> @@ -2255,10 +2258,16 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  			    str_yes_no(intel_dp->force_dsc_en));
>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>  						  conn_state, &limits, 64, true);
> -		if (ret < 0)
> -			return ret;
>  	}
>  
> +	if (ret < 0)
> +		ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config,
> +							conn_state, &limits,
> +							true);
> +
> +	if (ret < 0)
> +		return ret;
> +
>  	if (pipe_config->dsc.compression_enable) {
>  		drm_dbg_kms(&i915->drm,
>  			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",

-- 
Jani Nikula, Intel
