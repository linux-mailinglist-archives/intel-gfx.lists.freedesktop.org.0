Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E307D6ADC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 14:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1800B10E5A7;
	Wed, 25 Oct 2023 12:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C857210E5A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 12:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698235778; x=1729771778;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=k0Gum9pphWqgU70av66+Mk/OkqUDsc3cJljSDiEY8ig=;
 b=TJ0QsX9fLO+m5EvI6GECLQT3/6dI2zkWrHTa28s0RJnIoiLdwhbykF5Y
 izBPN9/nSW6DBncAKGYgwJQilFLVXvWHgEfht8UWd7Rjy94vyiCaZKY1D
 bDCFlyCpsrqWThdygL291Q/KLPDNQQS0LE5ZgWHMZkViNARPzPYE/cMe/
 sQmwVJyULbIchRVNbwJ2jy1QEYw8z+CYex7WvD/CCiFnoFmBLUUeHvEov
 3a9Ej2/0joIh1FA0UrgoYudL0F2+zAMWyNIPzXqKGb02jm0sp87gQ4gen
 ua3VoQ7RrLGI+RgVTC+VXP1ISnq1EyDgTDl72dk5XKxDZ3GEwFUoDTpAP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="8851866"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; 
   d="scan'208";a="8851866"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 05:08:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="735375898"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="735375898"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 25 Oct 2023 05:08:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Oct 2023 15:08:53 +0300
Date: Wed, 25 Oct 2023 15:08:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZTkFVTwul_Wi3khW@intel.com>
References: <20231025094600.371566-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025094600.371566-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Support PSR entry VSC
 packet to be transmitted one frame earlier
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

On Wed, Oct 25, 2023 at 12:46:00PM +0300, Mika Kahola wrote:
> Display driver shall read DPCD 00071h[3:1] during configuration
> to get PSR setup time. This register provides the setup time
> requirement on the VSC SDP entry packet. If setup time cannot be
> met with the current timings
> (e.g., PSR setup time + other blanking requirements > blanking time),
> driver should enable sending VSC SDP one frame earlier before sending
> the capture frame.
> 
> BSpec: 69895 (PSR Entry Setup Frames 17:16)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 35 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h |  2 ++
>  3 files changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 65ea37fe8cff..a0bcab6f2bec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1710,6 +1710,7 @@ struct intel_psr {
>  	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
> +	u8 entry_setup_frames;
>  };
>  
>  struct intel_dp {
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4f1f31fc9529..0acb4edae128 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -592,6 +592,9 @@ static void intel_psr_enable_sink(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
>  		dpcd_val |= DP_PSR_SU_REGION_SCANLINE_CAPTURE;
>  
> +	if (intel_dp->psr.entry_setup_frames > 0)
> +		dpcd_val |= DP_PSR_FRAME_CAPTURE;
> +
>  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, dpcd_val);
>  
>  	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
> @@ -690,6 +693,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
>  	if (DISPLAY_VER(dev_priv) >= 8)
>  		val |= EDP_PSR_CRC_ENABLE;
>  
> +	if (intel_dp->psr.entry_setup_frames > 0)
> +		val |= EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);
> +
>  	intel_de_rmw(dev_priv, psr_ctl_reg(dev_priv, cpu_transcoder),
>  		     ~EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK, val);
>  }
> @@ -731,6 +737,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> +	u8 frames_before_su_entry;
>  	u32 val = EDP_PSR2_ENABLE;
>  
>  	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> @@ -741,7 +748,10 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	if (DISPLAY_VER(dev_priv) >= 10 && DISPLAY_VER(dev_priv) <= 12)
>  		val |= EDP_Y_COORDINATE_ENABLE;
>  
> -	val |= EDP_PSR2_FRAME_BEFORE_SU(max_t(u8, intel_dp->psr.sink_sync_latency + 1, 2));
> +	frames_before_su_entry = max_t(u8,
> +				       intel_dp->psr.sink_sync_latency + 1,
> +				       2);

I would put that (and the setup_frames +1) into its own function.

> +	val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry);
>  	val |= intel_psr2_get_tp_time(intel_dp);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12) {
> @@ -785,6 +795,14 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.req_psr2_sdp_prior_scanline)
>  		val |= EDP_PSR2_SU_SDP_SCANLINE;
>  
> +	/* Entry setup frames must be at least 1 less than frames before SU entry */
> +	if (intel_dp->psr.entry_setup_frames > 0) {
> +		val |= EDP_PSR_ENTRY_SETUP_FRAMES(intel_dp->psr.entry_setup_frames);

You're writitng that into the wrong registers.

> +
> +		if (intel_dp->psr.entry_setup_frames >= frames_before_su_entry)
> +			val |= EDP_PSR2_FRAME_BEFORE_SU(frames_before_su_entry + 1);
> +	}
> +
>  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
>  		u32 tmp;
>  
> @@ -1252,10 +1270,17 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  
>  	if (intel_usecs_to_scanlines(adjusted_mode, psr_setup_time) >
>  	    adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vdisplay - 1) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR condition failed: PSR setup time (%d us) too long\n",
> -			    psr_setup_time);
> -		return;
> +		if (DISPLAY_VER(dev_priv) >= 20) {
> +			intel_dp->psr.entry_setup_frames = 1;

I don't see where you're clearing this to 0.

I would extract the whole setup_time -> setup_frames conversion into
its own function and just do a setup_frames vs. platform check here.


> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR setup entry frames: %d\n",
> +				    intel_dp->psr.entry_setup_frames);
> +		} else {
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "PSR condition failed: PSR setup time (%d us) too long\n",
> +				    psr_setup_time);
> +			return;
> +		}
>  	}
>  
>  	crtc_state->has_psr = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index d39951383c92..9414c4de5f6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -35,6 +35,8 @@
>  #define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 3)
>  #define   EDP_PSR_MAX_SLEEP_TIME_MASK		REG_GENMASK(24, 20)
>  #define   EDP_PSR_MAX_SLEEP_TIME(x)		REG_FIELD_PREP(EDP_PSR_MAX_SLEEP_TIME_MASK, (x))
> +#define   EDP_PSR_ENTRY_SETUP_FRAMES_MASK	REG_GENMASK(17, 16)
> +#define   EDP_PSR_ENTRY_SETUP_FRAMES(x)		REG_FIELD_PREP(EDP_PSR_ENTRY_SETUP_FRAMES_MASK, (x))
>  #define   EDP_PSR_SKIP_AUX_EXIT			REG_BIT(12)
>  #define   EDP_PSR_TP_MASK			REG_BIT(11)
>  #define   EDP_PSR_TP_TP1_TP2			REG_FIELD_PREP(EDP_PSR_TP_MASK, 0)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
