Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CF551B152
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 23:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEB310EBC2;
	Wed,  4 May 2022 21:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F252610EBC2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 21:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651700741; x=1683236741;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QhTNRWTywetnF62Rv1GnXSUJge+gGdnQ2ofD2zdk4ek=;
 b=BQdphej5rhjCKOEL5d1MBKFhm4eepKj1VvBL6s4IzXkP3hH00To1SUnT
 /Ng8mwDwkjUiOrAo/7uJzEcBz0YDOL5X1J/0MSR85XihM9MvnG/1FIura
 eooOR0Tu80YarPpzJBoCV5O85EyF9ee/grPbDhOGAFhrqZCLKZDgaGcrd
 3AMIzx5dFH0DN/h48nYemASbZn7oPWVbEFvoLhI5Eg7OXEwHBzGwRujyt
 3Tu+Cwdhirk6T0c471+dIa7JT3KrgUN+wqWfYGOwRKXSKH7Ml/YVuB6no
 7noWaNI5oE+DYTEM0xFq00UBoSaR8EzUoE4jcnIfVlPLLi0vsgjr7eUSz A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="248444158"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="248444158"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 14:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="562929231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga007.jf.intel.com with SMTP; 04 May 2022 14:45:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 May 2022 00:45:38 +0300
Date: Thu, 5 May 2022 00:45:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YnL0AgIM6B9vw/O4@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
 <f8230e1893400e9a9c5829041a8ab36349182a54.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f8230e1893400e9a9c5829041a8ab36349182a54.1651569697.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 03/20] drm/edid: rename HDMI Forum VSDB
 to SCDS
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

On Tue, May 03, 2022 at 12:23:48PM +0300, Jani Nikula wrote:
> The HDMI spec talks about SCDS, Sink Capability Data Structure, exposed
> via HF-VSDB or HF-SCDB. Rename VSDB to SCDS.
> 
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/drm_edid.c | 41 +++++++++++++++++++-------------------
>  1 file changed, 21 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index fe527a0c50bc..18d05cbb2124 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -5132,17 +5132,18 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
>  	hdmi->y420_dc_modes = dc_mask;
>  }
>  
> -static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
> -				 const u8 *hf_vsdb)
> +/* Sink Capability Data Structure */
> +static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
> +				      const u8 *hf_scds)
>  {
>  	struct drm_display_info *display = &connector->display_info;
>  	struct drm_hdmi_info *hdmi = &display->hdmi;
>  
>  	display->has_hdmi_infoframe = true;
>  
> -	if (hf_vsdb[6] & 0x80) {
> +	if (hf_scds[6] & 0x80) {
>  		hdmi->scdc.supported = true;
> -		if (hf_vsdb[6] & 0x40)
> +		if (hf_scds[6] & 0x40)
>  			hdmi->scdc.read_request = true;
>  	}
>  
> @@ -5155,9 +5156,9 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
>  	 * Lets check it out.
>  	 */
>  
> -	if (hf_vsdb[5]) {
> +	if (hf_scds[5]) {
>  		/* max clock is 5000 KHz times block value */
> -		u32 max_tmds_clock = hf_vsdb[5] * 5000;
> +		u32 max_tmds_clock = hf_scds[5] * 5000;
>  		struct drm_scdc *scdc = &hdmi->scdc;
>  
>  		if (max_tmds_clock > 340000) {
> @@ -5170,42 +5171,42 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
>  			scdc->scrambling.supported = true;
>  
>  			/* Few sinks support scrambling for clocks < 340M */
> -			if ((hf_vsdb[6] & 0x8))
> +			if ((hf_scds[6] & 0x8))
>  				scdc->scrambling.low_rates = true;
>  		}
>  	}
>  
> -	if (hf_vsdb[7]) {
> +	if (hf_scds[7]) {
>  		u8 max_frl_rate;
>  		u8 dsc_max_frl_rate;
>  		u8 dsc_max_slices;
>  		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
>  
>  		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
> -		max_frl_rate = (hf_vsdb[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
> +		max_frl_rate = (hf_scds[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
>  		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
>  				     &hdmi->max_frl_rate_per_lane);
> -		hdmi_dsc->v_1p2 = hf_vsdb[11] & DRM_EDID_DSC_1P2;
> +		hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
>  
>  		if (hdmi_dsc->v_1p2) {
> -			hdmi_dsc->native_420 = hf_vsdb[11] & DRM_EDID_DSC_NATIVE_420;
> -			hdmi_dsc->all_bpp = hf_vsdb[11] & DRM_EDID_DSC_ALL_BPP;
> +			hdmi_dsc->native_420 = hf_scds[11] & DRM_EDID_DSC_NATIVE_420;
> +			hdmi_dsc->all_bpp = hf_scds[11] & DRM_EDID_DSC_ALL_BPP;
>  
> -			if (hf_vsdb[11] & DRM_EDID_DSC_16BPC)
> +			if (hf_scds[11] & DRM_EDID_DSC_16BPC)
>  				hdmi_dsc->bpc_supported = 16;
> -			else if (hf_vsdb[11] & DRM_EDID_DSC_12BPC)
> +			else if (hf_scds[11] & DRM_EDID_DSC_12BPC)
>  				hdmi_dsc->bpc_supported = 12;
> -			else if (hf_vsdb[11] & DRM_EDID_DSC_10BPC)
> +			else if (hf_scds[11] & DRM_EDID_DSC_10BPC)
>  				hdmi_dsc->bpc_supported = 10;
>  			else
>  				hdmi_dsc->bpc_supported = 0;
>  
> -			dsc_max_frl_rate = (hf_vsdb[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
> +			dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
>  			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
>  					     &hdmi_dsc->max_frl_rate_per_lane);
> -			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
> +			hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
>  
> -			dsc_max_slices = hf_vsdb[12] & DRM_EDID_DSC_MAX_SLICES;
> +			dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
>  			switch (dsc_max_slices) {
>  			case 1:
>  				hdmi_dsc->max_slices = 1;
> @@ -5243,7 +5244,7 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
>  		}
>  	}
>  
> -	drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);
> +	drm_parse_ycbcr420_deep_color_info(connector, hf_scds);
>  }
>  
>  static void drm_parse_hdmi_deep_color_info(struct drm_connector *connector,
> @@ -5380,7 +5381,7 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
>  			drm_parse_hdmi_vsdb_video(connector, db);
>  		if (cea_db_is_hdmi_forum_vsdb(db) ||
>  		    cea_db_is_hdmi_forum_scdb(db))
> -			drm_parse_hdmi_forum_vsdb(connector, db);
> +			drm_parse_hdmi_forum_scds(connector, db);
>  		if (cea_db_is_microsoft_vsdb(db))
>  			drm_parse_microsoft_vsdb(connector, db);
>  		if (cea_db_is_y420cmdb(db))
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
