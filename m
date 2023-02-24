Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F36FD6A1AFB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 12:01:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65EDA10E873;
	Fri, 24 Feb 2023 11:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from srv6.fidu.org (srv6.fidu.org [IPv6:2a01:4f8:231:de0::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF16810E873
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 11:01:24 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by srv6.fidu.org (Postfix) with ESMTP id 099A8C8008D;
 Fri, 24 Feb 2023 12:01:23 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at srv6.fidu.org
Received: from srv6.fidu.org ([127.0.0.1])
 by localhost (srv6.fidu.org [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 6K2fCoxS4Km8; Fri, 24 Feb 2023 12:01:22 +0100 (CET)
Received: from [192.168.176.165] (host-88-217-226-44.customer.m-online.net
 [88.217.226.44])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 (Authenticated sender: wse@tuxedocomputers.com)
 by srv6.fidu.org (Postfix) with ESMTPSA id 90E43C8008A;
 Fri, 24 Feb 2023 12:01:22 +0100 (CET)
Message-ID: <d2e3e408-8fae-f81a-18b3-cb6a5fdff859@tuxedocomputers.com>
Date: Fri, 24 Feb 2023 12:01:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230221085304.3382297-1-jouni.hogander@intel.com>
From: Werner Sembach <wse@tuxedocomputers.com>
In-Reply-To: <20230221085304.3382297-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Am 21.02.23 um 09:53 schrieb Jouni Högander:
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

Thanks for fixing this.

Tested-by: Werner Sembach <wse@tuxedocomputers.com>

>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7725
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |  2 +
>   drivers/gpu/drm/i915/display/intel_psr.c      | 78 +++++++++++++++----
>   2 files changed, 63 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 9ccae7a46020..fc15f4e5d49f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1634,6 +1634,8 @@ struct intel_psr {
>   	bool psr2_sel_fetch_cff_enabled;
>   	bool req_psr2_sdp_prior_scanline;
>   	u8 sink_sync_latency;
> +	u8 io_wake_lines;
> +	u8 fast_wake_lines;
>   	ktime_t last_entry_attempt;
>   	ktime_t last_exit;
>   	bool sink_not_reliable;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 2954759e9d12..059e220144ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -542,6 +542,14 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>   	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
>   	val |= intel_psr2_get_tp_time(intel_dp);
>   
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		if (intel_dp->psr.io_wake_lines < 9 &&
> +		    intel_dp->psr.fast_wake_lines < 9)
> +			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> +		else
> +			val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_3;
> +	}
> +
>   	/* Wa_22012278275:adl-p */
>   	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_E0)) {
>   		static const u8 map[] = {
> @@ -558,31 +566,21 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>   		 * Still using the default IO_BUFFER_WAKE and FAST_WAKE, see
>   		 * comments bellow for more information
>   		 */
> -		u32 tmp, lines = 7;
> -
> -		val |= TGL_EDP_PSR2_BLOCK_COUNT_NUM_2;
> +		u32 tmp;
>   
> -		tmp = map[lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
> +		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
>   		tmp = tmp << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT;
>   		val |= tmp;
>   
> -		tmp = map[lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
> +		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
>   		tmp = tmp << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT;
>   		val |= tmp;
>   	} else if (DISPLAY_VER(dev_priv) >= 12) {
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
>   	} else if (DISPLAY_VER(dev_priv) >= 9) {
> -		val |= EDP_PSR2_IO_BUFFER_WAKE(7);
> -		val |= EDP_PSR2_FAST_WAKE(7);
> +		val |= EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
> +		val |= EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
>   	}
>   
>   	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
> @@ -829,6 +827,46 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
>   	return true;
>   }
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
>   static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   				    struct intel_crtc_state *crtc_state)
>   {
> @@ -923,6 +961,12 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> +	if (!_compute_psr2_wake_times(intel_dp, crtc_state)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "PSR2 not enabled, Unable to use long enough wake times\n");
> +		return false;
> +	}
> +
>   	if (HAS_PSR2_SEL_FETCH(dev_priv)) {
>   		if (!intel_psr2_sel_fetch_config_valid(intel_dp, crtc_state) &&
>   		    !HAS_PSR_HW_TRACKING(dev_priv)) {
