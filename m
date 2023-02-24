Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 993B96A18C4
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 10:32:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D8710E5B2;
	Fri, 24 Feb 2023 09:32:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F48710E740
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 09:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677231150; x=1708767150;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=enUAVR6wx/UpAAhZuUsbt+P0ji3sEXtsr+uxFq+bXFQ=;
 b=Ik+ZEVipdV7KY/mzQq2ir0j4ob6gzhLY4DvmL9LX2If84eDXgni/Qq/L
 dn1GjVk/AQ106N/DM+rGPoGmBSyg9NQ5P36xMPzEu1qcI4ogOfU9jqgTX
 J9YAk7s1Xg0oCS0UdrM6BGcEze15ybyi8ls08e2YCT81Z6wpWN7j+p2Lh
 NyddQ/+/xxptZNm/I5U4vaWnLJwcpN1nuTQ5hnsL1Ea8kGpAWQljCilZe
 ePjQaBpbWLXphDKetpAonunhO4eFvzo2BxF8vL8kri4jSo5JVQi70YKzv
 oIOQc6+eNMs3dn4e7UB19xSNVT/9TQq0tihOnty4l1Hup9gW4r6L+4uZX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="334856666"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="334856666"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 01:32:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="736743347"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="736743347"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 01:32:27 -0800
Date: Fri, 24 Feb 2023 11:32:20 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y/iEJOyOgWh8tEQa@intel.com>
References: <20230221085304.3382297-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230221085304.3382297-1-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Use calculated io and fast
 wake lines
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 10:53:04AM +0200, Jouni Högander wrote:
> Currently we are using hardcoded 7 for io and fast wake lines.
> 
> According to Bspec io and fast wake times are both 42us for
> DISPLAY_VER >= 12 and 50us and 32us for older platforms.
> 
> Calculate line counts for these and configure them into PSR2_CTL
> accordingly
> 
> Use 45 us for the fast wake calculation as 42 seems to be too
> tight based on testing.
> 
> Bspec: 49274, 4289

Checked, can't see any obvious flaws or issue, looks good to me.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7725
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 78 +++++++++++++++----
>  2 files changed, 63 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a46020..fc15f4e5d49f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1634,6 +1634,8 @@ struct intel_psr {
>  	bool psr2_sel_fetch_cff_enabled;
>  	bool req_psr2_sdp_prior_scanline;
>  	u8 sink_sync_latency;
> +	u8 io_wake_lines;
> +	u8 fast_wake_lines;
>  	ktime_t last_entry_attempt;
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2954759e9d12..059e220144ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -542,6 +542,14 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
>  	val |= intel_psr2_get_tp_time(intel_dp);
>  
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		if (intel_dp->psr.io_wake_lines < 9 &&
> +		    intel_dp->psr.fast_wake_lines < 9)
> +			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> +		else
> +			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
> +	}
> +
>  	/* Wa_22012278275:adl-p */
>  	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>  		static const u8 map[] = {
> @@ -558,31 +566,21 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  		 * Still using the default IO_BUFFER_WAKE and FAST_WAKE, see
>  		 * comments bellow for more information
>  		 */
> -		u32 tmp, lines = 7;
> -
> -		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> +		u32 tmp;
>  
> -		tmp = map[lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
> +		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
>  		tmp = tmp << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT;
>  		val |= tmp;
>  
> -		tmp = map[lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
> +		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
>  		tmp = tmp << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT;
>  		val |= tmp;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -		/*
> -		 * TODO: 7 lines of IO_BUFFER_WAKE and FAST_WAKE are default
> -		 * values from BSpec. In order to setting an optimal power
> -		 * consumption, lower than 4k resolution mode needs to decrease
> -		 * IO_BUFFER_WAKE and FAST_WAKE. And higher than 4K resolution
> -		 * mode needs to increase IO_BUFFER_WAKE and FAST_WAKE.
> -		 */
> -		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> -		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(7);
> -		val |= TGL_EDP_PSR2_FAST_WAKE(7);
> +		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
> +		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
>  	} else if (DISPLAY_VER(dev_priv) >= 9) {
> -		val |= EDP_PSR2_IO_BUFFER_WAKE(7);
> -		val |= EDP_PSR2_FAST_WAKE(7);
> +		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
> +		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
>  	}
>  
>  	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
> @@ -829,6 +827,46 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
>  	return true;
>  }
>  
> +static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
> +				     struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
> +	u8 max_wake_lines;
> +
> +	if (DISPLAY_VER(i915) >= 12) {
> +		io_wake_time = 42;
> +		/*
> +		 * According to Bspec it's 42us, but based on testing
> +		 * it is not enough -> use 45 us.
> +		 */
> +		fast_wake_time = 45;
> +		max_wake_lines = 12;
> +	} else {
> +		io_wake_time = 50;
> +		fast_wake_time = 32;
> +		max_wake_lines = 8;
> +	}
> +
> +	io_wake_lines = intel_usecs_to_scanlines(
> +		&crtc_state->uapi.adjusted_mode, io_wake_time);
> +	fast_wake_lines = intel_usecs_to_scanlines(
> +		&crtc_state->uapi.adjusted_mode, fast_wake_time);
> +
> +	if (io_wake_lines > max_wake_lines ||
> +	    fast_wake_lines > max_wake_lines)
> +		return false;
> +
> +	if (i915->params.psr_safest_params)
> +		io_wake_lines = fast_wake_lines = max_wake_lines;
> +
> +	/* According to Bspec lower limit should be set as 7 lines. */
> +	intel_dp->psr.io_wake_lines = max(io_wake_lines, 7);
> +	intel_dp->psr.fast_wake_lines = max(fast_wake_lines, 7);
> +
> +	return true;
> +}
> +
>  static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  				    struct intel_crtc_state *crtc_state)
>  {
> @@ -923,6 +961,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 not enabled, Unable to use long enough wake times\n");
> +		return false;
> +	}
> +
>  	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
>  		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
>  		    !HAS_PSR_HW_TRACKING(dev_priv)) {
> -- 
> 2.34.1
> 
