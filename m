Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 821378FD197
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 17:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2573910E280;
	Wed,  5 Jun 2024 15:26:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GstguLZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE84A10E350
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 15:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717601201; x=1749137201;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DR/7BWZCmt/Md1qfeZUJiOIrwjoCaXNDG1OXi784OFk=;
 b=GstguLZQjXMVCg/lbKa9W+XFGvI/h2nm5O9eftUKrtcuWldjbHZw+JZs
 LY842Yw22h0XQHsS4py+oRmOS4rwPh3rMg7/OUVfmn5N+tjkwBZjSBGjZ
 lTsGGqan2mOJlRb+xCc0NLoKg+RJfQFJCYEqqxh313wvKFVbpNrp5E3c7
 n7Ij5q26XpUildUv3d+inyMHCIE8GLTC9kqRZ8NRSFCT0CHuyXM5tg/Mb
 j3RKgUlRWB+F0HdeZ4rSPh4XzDh1e25SrtDFoiF1MMcTAHzTIuCVNKFVK
 jxqbvc4QRDGN7RG2pZZz5lmu9sSm2WfowwFPrOO0Nw8KRUxvCi5kujAIN Q==;
X-CSE-ConnectionGUID: r2IAjiSCTYWuAAR5AG9pog==
X-CSE-MsgGUID: PMhnlG8QRQOY4erKcFVBvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="14175964"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="14175964"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 08:26:40 -0700
X-CSE-ConnectionGUID: +xvwhUCPSbSGeP4oXZ5xVA==
X-CSE-MsgGUID: 2AWyFQmvQ2ug1uzL/RNg+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37638985"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 08:26:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 18:26:37 +0300
Date: Wed, 5 Jun 2024 18:26:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/3] drm/i915: Rename all bigjoiner to joiner
Message-ID: <ZmCDrR35fJG-M7mY@intel.com>
References: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
 <20240603112551.6481-2-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240603112551.6481-2-stanislav.lisovskiy@intel.com>
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

On Mon, Jun 03, 2024 at 02:25:49PM +0300, Stanislav Lisovskiy wrote:
> Lets unify both bigjoiner and ultrajoiner under simple "joiner" name,
> because in future we might have multiple configurations, involving
> multiple bigjoiners, ultrajoiner, however it is possible to use
> same api for handling both.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |   4 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |   8 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 204 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_display.h  |   8 +-
>  .../drm/i915/display/intel_display_debugfs.c  |  10 +-
>  .../drm/i915/display/intel_display_types.h    |   4 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  60 +++---
>  drivers/gpu/drm/i915/display/intel_dp.h       |   8 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  22 +-
>  drivers/gpu/drm/i915/display/intel_drrs.c     |   6 +-
>  .../drm/i915/display/intel_modeset_setup.c    |  38 ++--
>  drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  12 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c      |   2 +-
>  .../drm/i915/display/skl_universal_plane.c    |   4 +-
>  19 files changed, 207 insertions(+), 207 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index a4ce39a7f265..36798899222b 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
<snip>
> @@ -2744,13 +2744,13 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>  		 *
>  		 * => CDCLK >= compressed_bpp * Pixel clock / (PPC * Bigjoiner Interface bits)
>  		 *
> -		 * Since PPC = 2 with bigjoiner
> +		 * Since PPC = 2 with joiner
>  		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>  		 */
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
>  		int min_cdclk_bj =
>  			(to_bpp_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
> +			 pixel_clock) / (2 * joiner_interface_bits);

This stuff is specifically about bigjoiner/dsc.

>  
>  		min_cdclk = max(min_cdclk, min_cdclk_bj);
>  	}
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 86d9900c40af..f681234d5b0b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -575,10 +575,10 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>  
>  	intel_scaler_info(m, crtc);
>  
> -	if (crtc_state->bigjoiner_pipes)
> +	if (crtc_state->joiner_pipes)
>  		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
> -			   crtc_state->bigjoiner_pipes,
> -			   intel_crtc_is_bigjoiner_slave(crtc_state) ? "slave" : "master");
> +			   crtc_state->joiner_pipes,
> +			   intel_crtc_is_joiner_slave(crtc_state) ? "slave" : "master");
>  
>  	for_each_intel_encoder_mask(&dev_priv->drm, encoder,
>  				    crtc_state->uapi.encoder_mask)
> @@ -1544,8 +1544,8 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	if (DISPLAY_VER(i915) >= 11 &&
>  	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>  	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
> -		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
> -				    &connector->force_bigjoiner_enable);
> +		debugfs_create_bool("i915_joiner_force_enable", 0644, root,
> +				    &connector->force_joiner_enable);

That'll need changes in igt.

>  	}
>  
>  	if (connector_type == DRM_MODE_CONNECTOR_DSI ||
<snip>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fd054e16850d..a60e84e8773f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -437,7 +437,7 @@ int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>  	return max_rate;
>  }
>  
> -bool intel_dp_has_bigjoiner(struct intel_dp *intel_dp)
> +bool intel_dp_has_joiner(struct intel_dp *intel_dp)
>  {
>  	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
>  	struct intel_encoder *encoder = &intel_dig_port->base;
> @@ -806,24 +806,24 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  static
>  u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  				       u32 mode_clock, u32 mode_hdisplay,
> -				       bool bigjoiner)
> +				       bool joiner)
>  {
>  	u32 max_bpp_small_joiner_ram;
>  
>  	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
>  	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
>  
> -	if (bigjoiner) {
> -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> +	if (joiner) {
> +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> +		/* With joiner multiple dsc engines are used in parallel so PPC is 2 */
>  		int ppc = 2;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> +		u32 max_bpp_joiner =
> +			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
>  			intel_dp_mode_to_fec_clock(mode_clock);
>  
>  		max_bpp_small_joiner_ram *= 2;
>  
> -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> +		return min(max_bpp_small_joiner_ram, max_bpp_joiner);

More stuff that looks to be bigjoiner/dsc specfic.

>  	}
>  
>  	return max_bpp_small_joiner_ram;
> @@ -832,7 +832,7 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>  u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  					u32 link_clock, u32 lane_count,
>  					u32 mode_clock, u32 mode_hdisplay,
> -					bool bigjoiner,
> +					bool joiner,
>  					enum intel_output_format output_format,
>  					u32 pipe_bpp,
>  					u32 timeslots)
> @@ -878,7 +878,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  				intel_dp_mode_to_fec_clock(mode_clock));
>  
>  	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
> -							    mode_hdisplay, bigjoiner);
> +							    mode_hdisplay, joiner);
>  	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
>  
>  	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
> @@ -888,7 +888,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
>  
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
> -				bool bigjoiner)
> +				bool joiner)
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	u8 min_slice_count, i;
> @@ -922,14 +922,14 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  
>  	/* Find the closest match to the valid slice count values */
>  	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> -		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
> +		u8 test_slice_count = valid_dsc_slicecount[i] << joiner;
>  
>  		if (test_slice_count >
>  		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
>  			break;
>  
>  		/* big joiner needs small joiner to be enabled */
> -		if (bigjoiner && test_slice_count < 4)
> +		if (joiner && test_slice_count < 4)
>  			continue;
>  
>  		if (min_slice_count <= test_slice_count)

and more.

The rest lgtm.

-- 
Ville Syrjälä
Intel
