Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B204B97DA
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 05:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCAB10E886;
	Thu, 17 Feb 2022 04:46:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E36A710E881
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 04:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645073195; x=1676609195;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Mxdl8iMezrU76DRKECf0NNCMjXKAn9+dqiFI2lVLEcs=;
 b=NuuhZ6uYejPm0mZfOqKWaI5zjjyGiH+epTNhIfKxv5o4x+hhts2WxLli
 spYSdUPSoyuJKPIbrW93Y8FIqdjinSbDsHXchMPiJ1AgQi1jYtgr2RZcy
 WSpbTt+33hqtM6GblY3Bk0uFNrjiu64biUbnxEicOeV97zuOQYRpL1rCu
 eJIBSfwPd9mu0PhAf4bNA0xQ5WbcqzXwC4DVolJZT5Y41UJXMKC1yH7Wi
 b2pgO8Urxn2ctoF3JffyvQPHkrZlrVGGsT6/m1NaEVC+iLlXlDhjkF6As
 Ilpq4NIRkMCmBe6+DMuNydgDfm8csT7fVpz1TpecnGhjKOrKrlQ5uBoTJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250737069"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="250737069"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 20:46:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="589038881"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 20:46:35 -0800
Date: Wed, 16 Feb 2022 20:46:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yg3TKZPsRtWgYE8E@mdroper-desk1.amr.corp.intel.com>
References: <20220216154711.3329667-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220216154711.3329667-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dsi: disassociate VBT video
 transfer mode from register values
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

On Wed, Feb 16, 2022 at 05:47:08PM +0200, Jani Nikula wrote:
> The VBT DSI video transfer mode field values have been defined in terms
> of the VLV MIPI_VIDEO_MODE_FORMAT register. The ICL DSI code maps that
> to ICL DSI_TRANS_FUNC_CONF() register. The values are the same, though
> the shift is different.
> 
> Make a clean break and disassociate the values from each other. Assume
> the values can be different, and translate the VBT value to VLV and ICL
> register values as needed. Use the existing macros from intel_bios.h.
> 
> This will be useful in splitting the DSI register macros to files by DSI
> implementation.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       | 11 +++----
>  drivers/gpu/drm/i915/display/intel_dsi.h     |  4 +--
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 10 +++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 33 ++++++++++++++++----
>  4 files changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 2d5bb9195b20..479d5e1165d9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -788,14 +788,14 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
>  		/* program DSI operation mode */
>  		if (is_vid_mode(intel_dsi)) {
>  			tmp &= ~OP_MODE_MASK;
> -			switch (intel_dsi->video_mode_format) {
> +			switch (intel_dsi->video_mode) {
>  			default:
> -				MISSING_CASE(intel_dsi->video_mode_format);
> +				MISSING_CASE(intel_dsi->video_mode);
>  				fallthrough;
> -			case VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS:
> +			case NON_BURST_SYNC_EVENTS:
>  				tmp |= VIDEO_MODE_SYNC_EVENT;
>  				break;
> -			case VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE:
> +			case NON_BURST_SYNC_PULSE:
>  				tmp |= VIDEO_MODE_SYNC_PULSE;
>  				break;
>  			}
> @@ -960,8 +960,7 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  
>  	/* TRANS_HSYNC register to be programmed only for video mode */
>  	if (is_vid_mode(intel_dsi)) {
> -		if (intel_dsi->video_mode_format ==
> -		    VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE) {
> +		if (intel_dsi->video_mode == NON_BURST_SYNC_PULSE) {
>  			/* BSPEC: hsync size should be atleast 16 pixels */
>  			if (hsync_size < 16)
>  				drm_err(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
> index a3a906cb097e..eafef0a87fea 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.h
> @@ -79,8 +79,8 @@ struct intel_dsi {
>  	 */
>  	enum mipi_dsi_pixel_format pixel_format;
>  
> -	/* video mode format for MIPI_VIDEO_MODE_FORMAT register */
> -	u32 video_mode_format;
> +	/* NON_BURST_SYNC_PULSE, NON_BURST_SYNC_EVENTS, or BURST_MODE */
> +	int video_mode;
>  
>  	/* eot for MIPI_EOT_DISABLE register */
>  	u8 eotp_pkt;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> index a85574c413e8..a1cd86e53e21 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
> @@ -675,11 +675,11 @@ void intel_dsi_log_params(struct intel_dsi *intel_dsi)
>  	drm_dbg_kms(&i915->drm, "Lane count %d\n", intel_dsi->lane_count);
>  	drm_dbg_kms(&i915->drm, "DPHY param reg 0x%x\n", intel_dsi->dphy_reg);
>  	drm_dbg_kms(&i915->drm, "Video mode format %s\n",
> -		    intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE ?
> +		    intel_dsi->video_mode == NON_BURST_SYNC_PULSE ?
>  		    "non-burst with sync pulse" :
> -		    intel_dsi->video_mode_format == VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS ?
> +		    intel_dsi->video_mode == NON_BURST_SYNC_EVENTS ?
>  		    "non-burst with sync events" :
> -		    intel_dsi->video_mode_format == VIDEO_MODE_BURST ?
> +		    intel_dsi->video_mode == BURST_MODE ?
>  		    "burst" : "<unknown>");
>  	drm_dbg_kms(&i915->drm, "Burst mode ratio %d\n",
>  		    intel_dsi->burst_mode_ratio);
> @@ -739,7 +739,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
>  	intel_dsi->dual_link = mipi_config->dual_link;
>  	intel_dsi->pixel_overlap = mipi_config->pixel_overlap;
>  	intel_dsi->operation_mode = mipi_config->is_cmd_mode;
> -	intel_dsi->video_mode_format = mipi_config->video_transfer_mode;
> +	intel_dsi->video_mode = mipi_config->video_transfer_mode;
>  	intel_dsi->escape_clk_div = mipi_config->byte_clk_sel;
>  	intel_dsi->lp_rx_timeout = mipi_config->lp_rx_timeout;
>  	intel_dsi->hs_tx_timeout = mipi_config->hs_tx_timeout;
> @@ -770,7 +770,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
>  	 * Target ddr frequency from VBT / non burst ddr freq
>  	 * multiply by 100 to preserve remainder
>  	 */
> -	if (intel_dsi->video_mode_format == VIDEO_MODE_BURST) {
> +	if (intel_dsi->video_mode == BURST_MODE) {
>  		if (mipi_config->target_burst_mode_freq) {
>  			u32 bitrate = intel_dsi_bitrate(intel_dsi);
>  
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 20141f33ed64..f0c38173491e 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1492,7 +1492,7 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
>  		 */
>  
>  		if (is_vid_mode(intel_dsi) &&
> -			intel_dsi->video_mode_format == VIDEO_MODE_BURST) {
> +			intel_dsi->video_mode == BURST_MODE) {
>  			intel_de_write(dev_priv, MIPI_HS_TX_TIMEOUT(port),
>  				       txbyteclkhs(adjusted_mode->crtc_htotal, bpp, intel_dsi->lane_count, intel_dsi->burst_mode_ratio) + 1);
>  		} else {
> @@ -1568,12 +1568,33 @@ static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
>  		intel_de_write(dev_priv, MIPI_CLK_LANE_SWITCH_TIME_CNT(port),
>  			       intel_dsi->clk_lp_to_hs_count << LP_HS_SSW_CNT_SHIFT | intel_dsi->clk_hs_to_lp_count << HS_LP_PWR_SW_CNT_SHIFT);
>  
> -		if (is_vid_mode(intel_dsi))
> -			/* Some panels might have resolution which is not a
> +		if (is_vid_mode(intel_dsi)) {
> +			u32 fmt = intel_dsi->video_frmt_cfg_bits | IP_TG_CONFIG;
> +
> +			/*
> +			 * Some panels might have resolution which is not a
>  			 * multiple of 64 like 1366 x 768. Enable RANDOM
> -			 * resolution support for such panels by default */
> -			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port),
> -				       intel_dsi->video_frmt_cfg_bits | intel_dsi->video_mode_format | IP_TG_CONFIG | RANDOM_DPI_DISPLAY_RESOLUTION);
> +			 * resolution support for such panels by default.
> +			 */
> +			fmt |= RANDOM_DPI_DISPLAY_RESOLUTION;
> +
> +			switch (intel_dsi->video_mode) {
> +			default:
> +				MISSING_CASE(intel_dsi->video_mode);
> +				fallthrough;
> +			case NON_BURST_SYNC_EVENTS:
> +				fmt |= VIDEO_MODE_NON_BURST_WITH_SYNC_EVENTS;
> +				break;
> +			case NON_BURST_SYNC_PULSE:
> +				fmt |= VIDEO_MODE_NON_BURST_WITH_SYNC_PULSE;
> +				break;
> +			case BURST_MODE:
> +				fmt |= VIDEO_MODE_BURST;
> +				break;
> +			}
> +
> +			intel_de_write(dev_priv, MIPI_VIDEO_MODE_FORMAT(port), fmt);
> +		}
>  	}
>  }
>  
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
