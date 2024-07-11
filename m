Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FB292E1AF
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED3E10E1AC;
	Thu, 11 Jul 2024 08:12:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9gHjRg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E86C710E987
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 08:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720685550; x=1752221550;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XCMbm7wLmT4rFR5GZFfVmcU9yTdeiTqq+OzHPcOpNlE=;
 b=T9gHjRg4CefQy3IdUknL+Y0gbGjq2GwdiSh+Ijzfb5HwWljnLbl7iluQ
 FW7BUkI4LYLmCsgx2cSvE/pIxlR2BQ4ZdWBc5LV+n4fyHnumdVjxytRcB
 LGrzNedlDjrBRZRWQxarNZlNULZ5k5Ybxvjsz4hZQ+8Dpu+i9bMkqnWee
 ftctCk+I6eD3v/l1llGLhU89SM9m/Cv6qWWzbwi7TSJxGmvNBE9RsNDlN
 zNsFzDgkx/XeBG1GN6cfstxG5ybIK1v1jS3VZn29seQmSzbRukic1WGie
 q3e7ElKyshtIvbFSu0NDNkZmEnqEcGF8gJ5dfuEGNTNgHFz8wFkX71+kn Q==;
X-CSE-ConnectionGUID: uy+KVYT8Q+GlXQQh6/tddg==
X-CSE-MsgGUID: KC9pHssDTNmh5mJRnjFc3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21813764"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21813764"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:12:23 -0700
X-CSE-ConnectionGUID: VNijx0uLQtydKzlFfW0cww==
X-CSE-MsgGUID: 1mFv66kARhGSeIBOL/t9XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="52784948"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 01:12:20 -0700
Date: Thu, 11 Jul 2024 11:12:12 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 3/4] drm/i915: Compute config and mode valid changes for
 ultrajoiner
Message-ID: <Zo+T3ANrJ3tnA+5u@intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
 <20240626081842.10614-4-stanislav.lisovskiy@intel.com>
 <f93e80b7-7cd2-4296-b001-61d86899f0b2@intel.com>
 <Zo5ISOsrRM2QEFy7@intel.com>
 <bf387143-d4ca-4803-87be-3b59575f84e9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bf387143-d4ca-4803-87be-3b59575f84e9@intel.com>
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

On Wed, Jul 10, 2024 at 06:58:14PM +0530, Nautiyal, Ankit K wrote:
> 
> On 7/10/2024 2:07 PM, Lisovskiy, Stanislav wrote:
> > On Wed, Jul 03, 2024 at 02:21:48PM +0530, Nautiyal, Ankit K wrote:
> > > On 6/26/2024 1:48 PM, Stanislav Lisovskiy wrote:
> > > > Implement required changes for mode validation and compute config,
> > > > to support Ultrajoiner.
> > > > This also includes required DSC changes and checks.
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >    drivers/gpu/drm/i915/display/intel_display.c |   5 +-
> > > >    drivers/gpu/drm/i915/display/intel_display.h |   3 +-
> > > >    drivers/gpu/drm/i915/display/intel_dp.c      | 117 ++++++++++++++-----
> > > >    drivers/gpu/drm/i915/display/intel_dp.h      |  18 ++-
> > > >    drivers/gpu/drm/i915/display/intel_dp_mst.c  |  35 +++---
> > > >    drivers/gpu/drm/i915/display/intel_dsi.c     |   2 +-
> > > >    drivers/gpu/drm/i915/display/intel_hdmi.c    |  14 ++-
> > > >    drivers/gpu/drm/i915/display/intel_vdsc.c    |  25 +++-
> > > >    8 files changed, 164 insertions(+), 55 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index f702ead9b5f3..4c934f07ead7 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -8246,7 +8246,8 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
> > > >    enum drm_mode_status
> > > >    intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> > > >    				const struct drm_display_mode *mode,
> > > > -				bool joiner)
> > > > +				bool bigjoiner,
> > > > +				bool ultrajoiner)
> > > >    {
> > > >    	int plane_width_max, plane_height_max;
> > > > @@ -8263,7 +8264,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> > > >    	 * too big for that.
> > > >    	 */
> > > >    	if (DISPLAY_VER(dev_priv) >= 11) {
> > > > -		plane_width_max = 5120 << joiner;
> > > > +		plane_width_max = (5120 << bigjoiner) << ultrajoiner;
> > > >    		plane_height_max = 4320;
> > > >    	} else {
> > > >    		plane_width_max = 5120;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> > > > index bac81b7ab764..0a51f24af405 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > > > @@ -415,7 +415,8 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
> > > >    enum drm_mode_status
> > > >    intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
> > > >    				const struct drm_display_mode *mode,
> > > > -				bool joiner);
> > > > +				bool bigjoiner,
> > > > +				bool ultrajoiner);
> > > Can we use joined_pipes here and in other places instead of 2 separate
> > > variables?
> > > 
> > > So we pass joined_pipes as either 0, 2, 4 for no-joiner, big-joiner, and
> > > ultra-joiner.
> > > 
> > > This will help simplifying the computations for example for slice count
> > > (mentioned inline).
> > > 
> > > We can perhaps have a patch only with this change, just replacing 'joiner'
> > > with joined_pipes and later just send joined_pipes with 4 for ultra joiner
> > > in another patch?
> > One more thing to consider regarding using joiner_pipes instead of those booleans here:
> > In many places, we might not have joiner_pipes yet calculated, because we calculate it
> > only when intel_dp_compute_link_config is called.
> > For instance at intel_dp_mode_valid call site of intel_mode_valid_max_plane_size, I think
> > we don't have it yet calculated, so the booleans are coming from correspondent
> > intel_dp_need_ultra/bigjoiner functions, however joiner_pipes would probably be 0 yet.
> > 
> > So could be we won't be able to use joiner_pipes everywhere still.
> > Need to think a bit more on this thing.
> 
> 
> Hmm I was thinking if we can use macros like JOINER_PIPES_NONE,
> JOINER_PIPES_BIG, JOINER_PIPES_ULTRA which can be passed in all places.

Probably enum would be better then.

Something like:

enum joiner_type
{
   no_joiner,
   bigjoiner,
   ultrajoiner
};

Stan

> 
> Regards,
> 
> Ankit
> 
> 
> > Stan
> > 
> > > 
> > > >    enum drm_mode_status
> > > >    intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
> > > >    				const struct drm_display_mode *mode);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > index 3903f6ead6e6..1ea1e89d8f45 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > @@ -760,33 +760,41 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
> > > >    static
> > > >    u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
> > > >    				       u32 mode_clock, u32 mode_hdisplay,
> > > > -				       bool bigjoiner)
> > > > +				       bool bigjoiner, bool ultrajoiner)
> > > >    {
> > > >    	u32 max_bpp_small_joiner_ram;
> > > > +	u32 max_bpp_joiner;
> > > >    	/* Small Joiner Check: output bpp <= joiner RAM (bits) / Horiz. width */
> > > > -	max_bpp_small_joiner_ram = small_joiner_ram_size_bits(i915) / mode_hdisplay;
> > > > +	max_bpp_joiner = max_bpp_small_joiner_ram =
> > > > +		small_joiner_ram_size_bits(i915) / mode_hdisplay;
> > > > -	if (bigjoiner) {
> > > > -		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> > > > -		/* With bigjoiner multiple dsc engines are used in parallel so PPC is 2 */
> > > > +	/* if ultra joiner is enabled, we have 2 bigjoiners enabled */
> > > > +	if (bigjoiner || ultrajoiner) {
> > > > +		int joiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
> > > > +		/* With joiner multiple dsc engines are used in parallel so PPC is 2 */
> > > >    		int ppc = 2;
> > > > -		u32 max_bpp_bigjoiner =
> > > > -			i915->display.cdclk.max_cdclk_freq * ppc * bigjoiner_interface_bits /
> > > > +		max_bpp_joiner =
> > > > +			i915->display.cdclk.max_cdclk_freq * ppc * joiner_interface_bits /
> > > >    			intel_dp_mode_to_fec_clock(mode_clock);
> > > >    		max_bpp_small_joiner_ram *= 2;
> > > > +	}
> > > > -		return min(max_bpp_small_joiner_ram, max_bpp_bigjoiner);
> > > > +	if (ultrajoiner) {
> > > > +		/* both get multiplied by 2, because ram bits/ppc now doubled */
> > > > +		max_bpp_small_joiner_ram *= 2;
> > > > +		max_bpp_joiner *= 2;
> > > >    	}
> > > > -	return max_bpp_small_joiner_ram;
> > > > +	return min(max_bpp_small_joiner_ram, max_bpp_joiner);
> > > >    }
> > > >    u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> > > >    					u32 link_clock, u32 lane_count,
> > > >    					u32 mode_clock, u32 mode_hdisplay,
> > > >    					bool bigjoiner,
> > > > +					bool ultrajoiner,
> > > >    					enum intel_output_format output_format,
> > > >    					u32 pipe_bpp,
> > > >    					u32 timeslots)
> > > > @@ -832,7 +840,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> > > >    				intel_dp_mode_to_fec_clock(mode_clock));
> > > >    	joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, mode_clock,
> > > > -							    mode_hdisplay, bigjoiner);
> > > > +							    mode_hdisplay, bigjoiner, ultrajoiner);
> > > >    	bits_per_pixel = min(bits_per_pixel, joiner_max_bpp);
> > > >    	bits_per_pixel = intel_dp_dsc_nearest_valid_bpp(i915, bits_per_pixel, pipe_bpp);
> > > > @@ -842,7 +850,8 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> > > >    u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > > >    				int mode_clock, int mode_hdisplay,
> > > > -				bool bigjoiner)
> > > > +				bool bigjoiner,
> > > > +				bool ultrajoiner)
> > > >    {
> > > >    	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> > > >    	u8 min_slice_count, i;
> > > > @@ -876,7 +885,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > > >    	/* Find the closest match to the valid slice count values */
> > > >    	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
> > > > -		u8 test_slice_count = valid_dsc_slicecount[i] << bigjoiner;
> > > > +		u8 test_slice_count = (valid_dsc_slicecount[i] << bigjoiner) << ultrajoiner;
> > > If we use joined_pipes as mentioned earlier, we can perhaps just use:
> > > 
> > > u8 test_slice_count = valid_dsc_slicecount[i] << (joined_pipes / 2);
> > > 
> > > 
> > > Regards,
> > > 
> > > Ankit
> > > 
> > > 
> > > 
> > > >    		if (test_slice_count >
> > > >    		    drm_dp_dsc_sink_max_slice_count(connector->dp.dsc_dpcd, false))
> > > > @@ -886,6 +895,10 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > > >    		if (bigjoiner && test_slice_count < 4)
> > > >    			continue;
> > > > +		/* ultrajoiner needs 2 bigjoiners to be enabled */
> > > > +		if (ultrajoiner && test_slice_count < 8)
> > > > +			continue;
> > > > +
> > > >    		if (min_slice_count <= test_slice_count)
> > > >    			return test_slice_count;
> > > >    	}
> > > > @@ -1162,9 +1175,9 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
> > > >    	return MODE_OK;
> > > >    }
> > > > -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> > > > -			  struct intel_connector *connector,
> > > > -			  int hdisplay, int clock)
> > > > +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> > > > +			     struct intel_connector *connector,
> > > > +			     int hdisplay, int clock)
> > > >    {
> > > >    	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > > > @@ -1195,6 +1208,35 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
> > > >    	return true;
> > > >    }
> > > > +static
> > > > +bool intel_can_ultrajoiner(const struct intel_encoder *encoder)
> > > > +{
> > > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > +
> > > > +	return IS_DGFX(i915) && DISPLAY_VER(i915) >= 14;
> > > > +}
> > > > +
> > > > +bool intel_dp_need_ultrajoiner(struct intel_dp *dp, int clock)
> > > > +{
> > > > +	const struct intel_encoder *encoder = &dp_to_dig_port(dp)->base;
> > > > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > +
> > > > +	if (!intel_can_ultrajoiner(encoder))
> > > > +		return false;
> > > > +
> > > > +	return clock > (i915->display.cdclk.max_dotclk_freq * 2);
> > > > +}
> > > > +
> > > > +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> > > > +{
> > > > +	return hweight8(pipe_config->joiner_pipes) == 2;
> > > > +}
> > > > +
> > > > +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config)
> > > > +{
> > > > +	return hweight8(pipe_config->joiner_pipes) == 4;
> > > > +}
> > > > +
> > > >    static enum drm_mode_status
> > > >    intel_dp_mode_valid(struct drm_connector *_connector,
> > > >    		    struct drm_display_mode *mode)
> > > > @@ -1209,7 +1251,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > > >    	u16 dsc_max_compressed_bpp = 0;
> > > >    	u8 dsc_slice_count = 0;
> > > >    	enum drm_mode_status status;
> > > > -	bool dsc = false, joiner = false;
> > > > +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
> > > >    	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
> > > >    	if (status != MODE_OK)
> > > > @@ -1230,11 +1272,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > > >    		target_clock = fixed_mode->clock;
> > > >    	}
> > > > -	if (intel_dp_need_joiner(intel_dp, connector,
> > > > -				 mode->hdisplay, target_clock)) {
> > > > -		joiner = true;
> > > > +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> > > > +		ultrajoiner = true;
> > > > +		max_dotclk *= 4;
> > > > +	}
> > > > +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> > > > +				    mode->hdisplay, target_clock)) {
> > > > +		bigjoiner = true;
> > > >    		max_dotclk *= 2;
> > > >    	}
> > > > +
> > > >    	if (target_clock > max_dotclk)
> > > >    		return MODE_CLOCK_HIGH;
> > > > @@ -1278,20 +1325,22 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > > >    								    max_lanes,
> > > >    								    target_clock,
> > > >    								    mode->hdisplay,
> > > > -								    joiner,
> > > > +								    bigjoiner,
> > > > +								    ultrajoiner,
> > > >    								    output_format,
> > > >    								    pipe_bpp, 64);
> > > >    			dsc_slice_count =
> > > >    				intel_dp_dsc_get_slice_count(connector,
> > > >    							     target_clock,
> > > >    							     mode->hdisplay,
> > > > -							     joiner);
> > > > +							     bigjoiner,
> > > > +							     ultrajoiner);
> > > >    		}
> > > >    		dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > >    	}
> > > > -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> > > > +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc)
> > > >    		return MODE_CLOCK_HIGH;
> > > >    	if (mode_rate > max_rate && !dsc)
> > > > @@ -1301,7 +1350,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
> > > >    	if (status != MODE_OK)
> > > >    		return status;
> > > > -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> > > > +	return intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
> > > >    }
> > > >    bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
> > > > @@ -2015,7 +2064,8 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
> > > >    	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(i915, adjusted_mode->clock,
> > > >    								adjusted_mode->hdisplay,
> > > > -								pipe_config->joiner_pipes);
> > > > +								intel_is_bigjoiner(pipe_config),
> > > > +								intel_is_ultrajoiner(pipe_config));
> > > >    	dsc_max_bpp = min(dsc_max_bpp, dsc_joiner_max_bpp);
> > > >    	dsc_max_bpp = min(dsc_max_bpp, to_bpp_int(limits->link.max_bpp_x16));
> > > > @@ -2249,7 +2299,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
> > > >    			intel_dp_dsc_get_slice_count(connector,
> > > >    						     adjusted_mode->crtc_clock,
> > > >    						     adjusted_mode->crtc_hdisplay,
> > > > -						     pipe_config->joiner_pipes);
> > > > +						     intel_is_bigjoiner(pipe_config),
> > > > +						     intel_is_ultrajoiner(pipe_config));
> > > >    		if (!dsc_dp_slice_count) {
> > > >    			drm_dbg_kms(&dev_priv->drm,
> > > >    				    "Compressed Slice Count not supported\n");
> > > > @@ -2399,14 +2450,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
> > > >    	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
> > > >    }
> > > > -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
> > > > +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool bigjoiner, bool ultrajoiner)
> > > >    {
> > > >    	/*
> > > >    	 * Pipe joiner needs compression up to display 12 due to bandwidth
> > > >    	 * limitation. DG2 onwards pipe joiner can be enabled without
> > > >    	 * compression.
> > > > +	 * Ultrajoiner always needs compression.
> > > >    	 */
> > > > -	return DISPLAY_VER(i915) < 13 && use_joiner;
> > > > +	return (DISPLAY_VER(i915) < 13 && bigjoiner) || ultrajoiner;
> > > >    }
> > > >    static int
> > > > @@ -2424,18 +2476,21 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
> > > >    	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > > >    	struct link_config_limits limits;
> > > >    	bool dsc_needed, joiner_needs_dsc;
> > > > +	bool bigjoiner = false, ultrajoiner = false;
> > > >    	int ret = 0;
> > > >    	if (pipe_config->fec_enable &&
> > > >    	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
> > > >    		return -EINVAL;
> > > > -	if (intel_dp_need_joiner(intel_dp, connector,
> > > > -				 adjusted_mode->crtc_hdisplay,
> > > > -				 adjusted_mode->crtc_clock))
> > > > +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> > > > +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> > > > +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> > > > +					 adjusted_mode->crtc_hdisplay,
> > > > +					 adjusted_mode->crtc_clock))
> > > >    		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> > > > -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> > > > +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, bigjoiner, ultrajoiner);
> > > >    	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> > > >    		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > index a0f990a95ecc..6a3615757c95 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > @@ -122,7 +122,7 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
> > > >    				 int bw_overhead);
> > > >    int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
> > > >    				int max_dprx_rate, int max_dprx_lanes);
> > > > -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
> > > > +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_bigjoiner, bool use_ultrajoiner);
> > > >    bool intel_dp_has_joiner(struct intel_dp *intel_dp);
> > > >    bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
> > > >    			    const struct drm_connector_state *conn_state);
> > > > @@ -142,6 +142,7 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct drm_i915_private *i915,
> > > >    					u32 link_clock, u32 lane_count,
> > > >    					u32 mode_clock, u32 mode_hdisplay,
> > > >    					bool bigjoiner,
> > > > +					bool ultrajoiner,
> > > >    					enum intel_output_format output_format,
> > > >    					u32 pipe_bpp,
> > > >    					u32 timeslots);
> > > > @@ -151,10 +152,17 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
> > > >    					 int bpc);
> > > >    u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
> > > >    				int mode_clock, int mode_hdisplay,
> > > > -				bool bigjoiner);
> > > > -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> > > > -			  struct intel_connector *connector,
> > > > -			  int hdisplay, int clock);
> > > > +				bool bigjoiner, bool ultrajoiner);
> > > > +bool intel_dp_need_bigjoiner(struct intel_dp *intel_dp,
> > > > +			     struct intel_connector *connector,
> > > > +			     int hdisplay, int clock);
> > > > +bool intel_dp_need_ultrajoiner(struct intel_dp *intel_dp, int clock);
> > > > +bool intel_is_bigjoiner(const struct intel_crtc_state *pipe_config);
> > > > +bool intel_is_ultrajoiner(const struct intel_crtc_state *pipe_config);
> > > > +bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state);
> > > > +bool intel_crtc_is_bigjoiner_master(const struct intel_crtc_state *crtc_state);
> > > > +bool intel_crtc_is_joiner_primary_master(const struct intel_crtc_state *crtc_state);
> > > > +enum pipe intel_crtc_master_pipe(const struct intel_crtc_state *crtc_state);
> > > >    static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
> > > >    {
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > index 27ce5c3f5951..13828c011d9c 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > > @@ -105,7 +105,8 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
> > > >    		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> > > >    							       adjusted_mode->clock,
> > > >    							       adjusted_mode->hdisplay,
> > > > -							       crtc_state->joiner_pipes);
> > > > +							       intel_is_bigjoiner(crtc_state),
> > > > +							       intel_is_ultrajoiner(crtc_state));
> > > >    	}
> > > >    	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
> > > > @@ -576,16 +577,19 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> > > >    	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> > > >    		return -EINVAL;
> > > > -	if (intel_dp_need_joiner(intel_dp, connector,
> > > > -				 adjusted_mode->crtc_hdisplay,
> > > > -				 adjusted_mode->crtc_clock))
> > > > +	if (intel_dp_need_ultrajoiner(intel_dp, adjusted_mode->crtc_clock))
> > > > +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 3, crtc->pipe);
> > > > +	else if (intel_dp_need_bigjoiner(intel_dp, connector,
> > > > +				    adjusted_mode->crtc_hdisplay,
> > > > +				    adjusted_mode->crtc_clock))
> > > >    		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> > > >    	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> > > >    	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> > > >    	pipe_config->has_pch_encoder = false;
> > > > -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
> > > > +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, intel_is_bigjoiner(pipe_config),
> > > > +						     intel_is_ultrajoiner(pipe_config));
> > > >    	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
> > > >    		     !intel_dp_mst_compute_config_limits(intel_dp,
> > > > @@ -1388,7 +1392,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > >    	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
> > > >    	int max_rate, mode_rate, max_lanes, max_link_clock;
> > > >    	int ret;
> > > > -	bool dsc = false, joiner = false;
> > > > +	bool dsc = false, bigjoiner = false, ultrajoiner = false;
> > > >    	u16 dsc_max_compressed_bpp = 0;
> > > >    	u8 dsc_slice_count = 0;
> > > >    	int target_clock = mode->clock;
> > > > @@ -1431,9 +1435,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > >    	 *   corresponding link capabilities of the sink) in case the
> > > >    	 *   stream is uncompressed for it by the last branch device.
> > > >    	 */
> > > > -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> > > > -				 mode->hdisplay, target_clock)) {
> > > > -		joiner = true;
> > > > +	if (intel_dp_need_ultrajoiner(intel_dp, target_clock)) {
> > > > +		ultrajoiner = true;
> > > > +		max_dotclk *= 4;
> > > > +	} else if (intel_dp_need_bigjoiner(intel_dp, intel_connector,
> > > > +					   mode->hdisplay, target_clock)) {
> > > > +		bigjoiner = true;
> > > >    		max_dotclk *= 2;
> > > >    	}
> > > > @@ -1461,20 +1468,22 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > >    								    max_lanes,
> > > >    								    target_clock,
> > > >    								    mode->hdisplay,
> > > > -								    joiner,
> > > > +								    bigjoiner,
> > > > +								    ultrajoiner,
> > > >    								    INTEL_OUTPUT_FORMAT_RGB,
> > > >    								    pipe_bpp, 64);
> > > >    			dsc_slice_count =
> > > >    				intel_dp_dsc_get_slice_count(intel_connector,
> > > >    							     target_clock,
> > > >    							     mode->hdisplay,
> > > > -							     joiner);
> > > > +							     bigjoiner,
> > > > +							     ultrajoiner);
> > > >    		}
> > > >    		dsc = dsc_max_compressed_bpp && dsc_slice_count;
> > > >    	}
> > > > -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
> > > > +	if (intel_dp_joiner_needs_dsc(dev_priv, bigjoiner, ultrajoiner) && !dsc) {
> > > >    		*status = MODE_CLOCK_HIGH;
> > > >    		return 0;
> > > >    	}
> > > > @@ -1484,7 +1493,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> > > >    		return 0;
> > > >    	}
> > > > -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> > > > +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner, ultrajoiner);
> > > >    	return 0;
> > > >    }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> > > > index bd5888ce4852..1a7e9a56fccd 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> > > > @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
> > > >    	if (fixed_mode->clock > max_dotclk)
> > > >    		return MODE_CLOCK_HIGH;
> > > > -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > > > +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
> > > >    }
> > > >    struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > index 19498ee455fa..35be89050512 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > > @@ -2048,7 +2048,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
> > > >    			return status;
> > > >    	}
> > > > -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > > > +	return intel_mode_valid_max_plane_size(dev_priv, mode, false, false);
> > > >    }
> > > >    bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> > > > @@ -2341,6 +2341,18 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
> > > >    		return ret;
> > > >    	}
> > > > +	if (adjusted_mode->crtc_clock > dev_priv->display.cdclk.max_dotclk_freq ||
> > > > +	    pipe_config->joiner_pipes) {
> > > > +		if (pipe_config->dsc.slice_count < 2) {
> > > > +			drm_dbg_kms(&dev_priv->drm,
> > > > +				    "Cannot split stream to use 2 VDSC instances\n");
> > > > +			return -EINVAL;
> > > > +		}
> > > > +
> > > > +		pipe_config->dsc.dsc_split = true;
> > > > +	}
> > > > +
> > > > +
> > > >    	if (intel_hdmi_is_ycbcr420(pipe_config)) {
> > > >    		ret = intel_panel_fitting(pipe_config, conn_state);
> > > >    		if (ret)
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > index 11058bb37d5a..206b3e77e0d5 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > @@ -13,6 +13,7 @@
> > > >    #include "intel_crtc.h"
> > > >    #include "intel_de.h"
> > > >    #include "intel_display_types.h"
> > > > +#include "intel_dp.h"
> > > >    #include "intel_dsi.h"
> > > >    #include "intel_qp_tables.h"
> > > >    #include "intel_vdsc.h"
> > > > @@ -379,7 +380,9 @@ int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
> > > >    {
> > > >    	int num_vdsc_instances = intel_dsc_get_vdsc_per_pipe(crtc_state);
> > > > -	if (crtc_state->joiner_pipes)
> > > > +	if (intel_is_ultrajoiner(crtc_state))
> > > > +		num_vdsc_instances *= 4;
> > > > +	else if (intel_is_bigjoiner(crtc_state))
> > > >    		num_vdsc_instances *= 2;
> > > >    	return num_vdsc_instances;
> > > > @@ -770,6 +773,13 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
> > > >    	}
> > > >    }
> > > > +static bool intel_crtc_ultrajoiner_enable_needed(const struct intel_crtc_state *crtc_state)
> > > > +{
> > > > +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > +
> > > > +	return intel_is_ultrajoiner(crtc_state) && crtc->pipe != PIPE_D;
> > > > +}
> > > > +
> > > >    void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> > > >    {
> > > >    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> > > > @@ -788,8 +798,21 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
> > > >    		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
> > > >    		dss_ctl1_val |= JOINER_ENABLE;
> > > >    	}
> > > > +
> > > >    	if (crtc_state->joiner_pipes) {
> > > > +		/*
> > > > +		 * This bit doesn't seem to follow master/slave logic or
> > > > +		 * any other logic, so lets just add helper function to
> > > > +		 * at least hide this hassle..
> > > > +		 */
> > > > +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> > > > +			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
> > > > +
> > > > +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> > > > +			dss_ctl1_val |= PRIMARY_ULTRA_JOINER_ENABLE;;
> > > > +
> > > >    		dss_ctl1_val |= BIG_JOINER_ENABLE;
> > > > +
> > > >    		if (intel_crtc_is_bigjoiner_primary(crtc_state))
> > > >    			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
> > > >    	}
