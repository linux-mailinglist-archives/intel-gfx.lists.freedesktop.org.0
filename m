Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF4C19F611
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11D2A6E3AA;
	Mon,  6 Apr 2020 12:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C57616E3AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:50:50 +0000 (UTC)
IronPort-SDR: 8j4Wv4kYd9xdBFlfTYv4N/duU8ZyO36Xd8u1BSeScBVhMzLXzm36CDNyVB7vSyE2IyXB4LUcXs
 xtSuh2FqLVWg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:50:50 -0700
IronPort-SDR: auduK6uHJo7ARCRv0BEYUrcj+SAbmw37ITzNUC1Plv8f/2JLYoPLtih7F00T878HoaTPTFMNaA
 napcWKgWdXHg==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="397490204"
Received: from maytarsh-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.121])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 05:50:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Bharadiya\,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com>
In-Reply-To: <20200406110412.GB16300@plaxmina-desktop.iind.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-4-jani.nikula@intel.com>
 <20200406110412.GB16300@plaxmina-desktop.iind.intel.com>
Date: Mon, 06 Apr 2020 15:50:45 +0300
Message-ID: <87h7xwlqvu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/17] drm/i915/dp: use struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 06 Apr 2020, "Bharadiya,Pankaj" <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> On Thu, Apr 02, 2020 at 02:48:06PM +0300, Jani Nikula wrote:
>> Convert all the DRM_* logging macros to the struct drm_device based
>> macros to provide device specific logging.
>> 
>> No functional changes.
>> 
>> Generated using the following semantic patch, originally written by
>> Wambui Karuga <wambui.karugax@gmail.com>, with manual fixups on top:
>> 
>> @@
>> identifier fn, T;
>> @@
>> 
>> fn(...,struct drm_i915_private *T,...) {
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>> }
>> 
>> @@
>> identifier fn, T;
>> @@
>> 
>> fn(...) {
>> ...
>> struct drm_i915_private *T = ...;
>> <+...
>> (
>> -DRM_INFO(
>> +drm_info(&T->drm,
>> ...)
>> |
>> -DRM_NOTE(
>> +drm_notice(&T->drm,
>> ...)
>> |
>> -DRM_ERROR(
>> +drm_err(&T->drm,
>> ...)
>> |
>> -DRM_WARN(
>> +drm_warn(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_DRIVER(
>> +drm_dbg(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_KMS(
>> +drm_dbg_kms(&T->drm,
>> ...)
>> |
>> -DRM_DEBUG_ATOMIC(
>> +drm_dbg_atomic(&T->drm,
>> ...)
>> )
>> ...+>
>
> As per this script, conversion should happen at places where
> struct drm_i915_private pointer is already available, but patch
> does conversions in several other conversions not related to
> this script by adding struct drm_i915_private pointer.
>
> Here is my example script which does the WARN* conversion.
> This avoids manuallal additions.

Thanks. It's just that not all places have intel_dp. Not all places have
intel_dig_port either. Etc. I opted for the slight bit of manual work to
get the job done instead of trying to come up with the perfect semantic
patch.

BR,
Jani.


>
> @@
> identifier func, T;
> @@
> func(struct intel_dp *T,...) {
> + struct drm_i915_private *i915 = dp_to_i915(T);
> <+...
> (
> -WARN_ON(
> +drm_WARN_ON(&i915->drm,
> ...)
> |
> -WARN_ON_ONCE(
> +drm_WARN_ON_ONCE(&i915->drm,
> ...)
> )
> ...+>
>
> }
>
> @@
> identifier func, T;
> @@
> func(...) {
> ...
> struct intel_dp *T = ...;
> + struct drm_i915_private *i915 = dp_to_i915(T);
> <+...
> (
> -WARN_ON(
> +drm_WARN_ON(&i915->drm,
> ...)
> |
> -WARN_ON_ONCE(
> +drm_WARN_ON_ONCE(&i915->drm,
> ...)
> )
> ...+>
>
> }
>
>
> Thanks,
> Pankaj
>
>> }
>> 
>> Cc: Wambui Karuga <wambui.karugax@gmail.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 333 +++++++++++++++---------
>>  1 file changed, 213 insertions(+), 120 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 2e715e6d7bb4..aab2029877b6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -463,6 +463,7 @@ static bool intel_dp_can_link_train_fallback_for_edp(struct intel_dp *intel_dp,
>>  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>>  					    int link_rate, u8 lane_count)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	int index;
>>  
>>  	index = intel_dp_rate_index(intel_dp->common_rates,
>> @@ -473,7 +474,8 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
>>  							      intel_dp->common_rates[index - 1],
>>  							      lane_count)) {
>> -			DRM_DEBUG_KMS("Retrying Link training for eDP with same parameters\n");
>> +			drm_dbg_kms(&i915->drm,
>> +				    "Retrying Link training for eDP with same parameters\n");
>>  			return 0;
>>  		}
>>  		intel_dp->max_link_rate = intel_dp->common_rates[index - 1];
>> @@ -483,13 +485,14 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
>>  							      intel_dp_max_common_rate(intel_dp),
>>  							      lane_count >> 1)) {
>> -			DRM_DEBUG_KMS("Retrying Link training for eDP with same parameters\n");
>> +			drm_dbg_kms(&i915->drm,
>> +				    "Retrying Link training for eDP with same parameters\n");
>>  			return 0;
>>  		}
>>  		intel_dp->max_link_rate = intel_dp_max_common_rate(intel_dp);
>>  		intel_dp->max_link_lane_count = lane_count >> 1;
>>  	} else {
>> -		DRM_ERROR("Link Training Unsuccessful\n");
>> +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
>>  		return -1;
>>  	}
>>  
>> @@ -564,6 +567,7 @@ static u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>>  static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>  				       int mode_clock, int mode_hdisplay)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 min_slice_count, i;
>>  	int max_slice_width;
>>  
>> @@ -576,8 +580,9 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>  
>>  	max_slice_width = drm_dp_dsc_sink_max_slice_width(intel_dp->dsc_dpcd);
>>  	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
>> -		DRM_DEBUG_KMS("Unsupported slice width %d by DP DSC Sink device\n",
>> -			      max_slice_width);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Unsupported slice width %d by DP DSC Sink device\n",
>> +			    max_slice_width);
>>  		return 0;
>>  	}
>>  	/* Also take into account max slice width */
>> @@ -595,7 +600,8 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>>  			return valid_dsc_slicecount[i];
>>  	}
>>  
>> -	DRM_DEBUG_KMS("Unsupported Slice Count %d\n", min_slice_count);
>> +	drm_dbg_kms(&i915->drm, "Unsupported Slice Count %d\n",
>> +		    min_slice_count);
>>  	return 0;
>>  }
>>  
>> @@ -1843,6 +1849,7 @@ static void snprintf_int_array(char *str, size_t len,
>>  
>>  static void intel_dp_print_rates(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	char str[128]; /* FIXME: too big for stack? */
>>  
>>  	if (!drm_debug_enabled(DRM_UT_KMS))
>> @@ -1850,15 +1857,15 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
>>  
>>  	snprintf_int_array(str, sizeof(str),
>>  			   intel_dp->source_rates, intel_dp->num_source_rates);
>> -	DRM_DEBUG_KMS("source rates: %s\n", str);
>> +	drm_dbg_kms(&i915->drm, "source rates: %s\n", str);
>>  
>>  	snprintf_int_array(str, sizeof(str),
>>  			   intel_dp->sink_rates, intel_dp->num_sink_rates);
>> -	DRM_DEBUG_KMS("sink rates: %s\n", str);
>> +	drm_dbg_kms(&i915->drm, "sink rates: %s\n", str);
>>  
>>  	snprintf_int_array(str, sizeof(str),
>>  			   intel_dp->common_rates, intel_dp->num_common_rates);
>> -	DRM_DEBUG_KMS("common rates: %s\n", str);
>> +	drm_dbg_kms(&i915->drm, "common rates: %s\n", str);
>>  }
>>  
>>  int
>> @@ -1965,6 +1972,8 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
>>  				  struct intel_crtc_state *pipe_config,
>>  				  struct link_config_limits *limits)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>>  	/* For DP Compliance we override the computed bpp for the pipe */
>>  	if (intel_dp->compliance.test_data.bpc != 0) {
>>  		int bpp = 3 * intel_dp->compliance.test_data.bpc;
>> @@ -1972,7 +1981,7 @@ intel_dp_adjust_compliance_config(struct intel_dp *intel_dp,
>>  		limits->min_bpp = limits->max_bpp = bpp;
>>  		pipe_config->dither_force_disable = bpp == 6 * 3;
>>  
>> -		DRM_DEBUG_KMS("Setting pipe_bpp to %d\n", bpp);
>> +		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n", bpp);
>>  	}
>>  
>>  	/* Use values requested by Compliance Test Request */
>> @@ -2066,6 +2075,7 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc)
>>  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>  				       struct intel_crtc_state *crtc_state)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>  	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
>>  	u8 line_buf_depth;
>> @@ -2100,7 +2110,8 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>>  
>>  	line_buf_depth = drm_dp_dsc_sink_line_buf_depth(intel_dp->dsc_dpcd);
>>  	if (!line_buf_depth) {
>> -		DRM_DEBUG_KMS("DSC Sink Line Buffer Depth invalid\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "DSC Sink Line Buffer Depth invalid\n");
>>  		return -EINVAL;
>>  	}
>>  
>> @@ -2241,6 +2252,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  			     struct intel_crtc_state *pipe_config,
>>  			     struct drm_connector_state *conn_state)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>>  	const struct drm_display_mode *adjusted_mode =
>>  		&pipe_config->hw.adjusted_mode;
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> @@ -2277,11 +2289,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  
>>  	intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);
>>  
>> -	DRM_DEBUG_KMS("DP link computation with max lane count %i "
>> -		      "max rate %d max bpp %d pixel clock %iKHz\n",
>> -		      limits.max_lane_count,
>> -		      intel_dp->common_rates[limits.max_clock],
>> -		      limits.max_bpp, adjusted_mode->crtc_clock);
>> +	drm_dbg_kms(&i915->drm, "DP link computation with max lane count %i "
>> +		    "max rate %d max bpp %d pixel clock %iKHz\n",
>> +		    limits.max_lane_count,
>> +		    intel_dp->common_rates[limits.max_clock],
>> +		    limits.max_bpp, adjusted_mode->crtc_clock);
>>  
>>  	/*
>>  	 * Optimize for slow and wide. This is the place to add alternative
>> @@ -2290,7 +2302,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  	ret = intel_dp_compute_link_config_wide(intel_dp, pipe_config, &limits);
>>  
>>  	/* enable compression if the mode doesn't fit available BW */
>> -	DRM_DEBUG_KMS("Force DSC en = %d\n", intel_dp->force_dsc_en);
>> +	drm_dbg_kms(&i915->drm, "Force DSC en = %d\n", intel_dp->force_dsc_en);
>>  	if (ret || intel_dp->force_dsc_en) {
>>  		ret = intel_dp_dsc_compute_config(intel_dp, pipe_config,
>>  						  conn_state, &limits);
>> @@ -2299,26 +2311,29 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>  	}
>>  
>>  	if (pipe_config->dsc.compression_enable) {
>> -		DRM_DEBUG_KMS("DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
>> -			      pipe_config->lane_count, pipe_config->port_clock,
>> -			      pipe_config->pipe_bpp,
>> -			      pipe_config->dsc.compressed_bpp);
>> -
>> -		DRM_DEBUG_KMS("DP link rate required %i available %i\n",
>> -			      intel_dp_link_required(adjusted_mode->crtc_clock,
>> -						     pipe_config->dsc.compressed_bpp),
>> -			      intel_dp_max_data_rate(pipe_config->port_clock,
>> -						     pipe_config->lane_count));
>> +		drm_dbg_kms(&i915->drm,
>> +			    "DP lane count %d clock %d Input bpp %d Compressed bpp %d\n",
>> +			    pipe_config->lane_count, pipe_config->port_clock,
>> +			    pipe_config->pipe_bpp,
>> +			    pipe_config->dsc.compressed_bpp);
>> +
>> +		drm_dbg_kms(&i915->drm,
>> +			    "DP link rate required %i available %i\n",
>> +			    intel_dp_link_required(adjusted_mode->crtc_clock,
>> +						   pipe_config->dsc.compressed_bpp),
>> +			    intel_dp_max_data_rate(pipe_config->port_clock,
>> +						   pipe_config->lane_count));
>>  	} else {
>> -		DRM_DEBUG_KMS("DP lane count %d clock %d bpp %d\n",
>> -			      pipe_config->lane_count, pipe_config->port_clock,
>> -			      pipe_config->pipe_bpp);
>> +		drm_dbg_kms(&i915->drm, "DP lane count %d clock %d bpp %d\n",
>> +			    pipe_config->lane_count, pipe_config->port_clock,
>> +			    pipe_config->pipe_bpp);
>>  
>> -		DRM_DEBUG_KMS("DP link rate required %i available %i\n",
>> -			      intel_dp_link_required(adjusted_mode->crtc_clock,
>> -						     pipe_config->pipe_bpp),
>> -			      intel_dp_max_data_rate(pipe_config->port_clock,
>> -						     pipe_config->lane_count));
>> +		drm_dbg_kms(&i915->drm,
>> +			    "DP link rate required %i available %i\n",
>> +			    intel_dp_link_required(adjusted_mode->crtc_clock,
>> +						   pipe_config->pipe_bpp),
>> +			    intel_dp_max_data_rate(pipe_config->port_clock,
>> +						   pipe_config->lane_count));
>>  	}
>>  	return 0;
>>  }
>> @@ -2328,6 +2343,7 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>>  			 struct drm_connector *connector,
>>  			 struct intel_crtc_state *crtc_state)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	const struct drm_display_info *info = &connector->display_info;
>>  	const struct drm_display_mode *adjusted_mode =
>>  		&crtc_state->hw.adjusted_mode;
>> @@ -2344,7 +2360,8 @@ intel_dp_ycbcr420_config(struct intel_dp *intel_dp,
>>  	/* YCBCR 420 output conversion needs a scaler */
>>  	ret = skl_update_scaler_crtc(crtc_state);
>>  	if (ret) {
>> -		DRM_DEBUG_KMS("Scaler allocation for output failed\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Scaler allocation for output failed\n");
>>  		return ret;
>>  	}
>>  
>> @@ -2770,22 +2787,27 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>>  
>>  static void wait_panel_on(struct intel_dp *intel_dp)
>>  {
>> -	DRM_DEBUG_KMS("Wait for panel power on\n");
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>> +	drm_dbg_kms(&i915->drm, "Wait for panel power on\n");
>>  	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
>>  }
>>  
>>  static void wait_panel_off(struct intel_dp *intel_dp)
>>  {
>> -	DRM_DEBUG_KMS("Wait for panel power off time\n");
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>> +	drm_dbg_kms(&i915->drm, "Wait for panel power off time\n");
>>  	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
>>  }
>>  
>>  static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	ktime_t panel_power_on_time;
>>  	s64 panel_power_off_duration;
>>  
>> -	DRM_DEBUG_KMS("Wait for panel power cycle\n");
>> +	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
>>  
>>  	/* take the difference of currrent time and panel power off time
>>  	 * and then make panel wait for t11_t12 if needed. */
>> @@ -3149,11 +3171,12 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
>>  			    const struct drm_connector_state *conn_state)
>>  {
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(conn_state->best_encoder));
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  
>>  	if (!intel_dp_is_edp(intel_dp))
>>  		return;
>>  
>> -	DRM_DEBUG_KMS("\n");
>> +	drm_dbg_kms(&i915->drm, "\n");
>>  
>>  	intel_panel_enable_backlight(crtc_state, conn_state);
>>  	_intel_edp_backlight_on(intel_dp);
>> @@ -3187,11 +3210,12 @@ static void _intel_edp_backlight_off(struct intel_dp *intel_dp)
>>  void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
>>  {
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(old_conn_state->best_encoder));
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  
>>  	if (!intel_dp_is_edp(intel_dp))
>>  		return;
>>  
>> -	DRM_DEBUG_KMS("\n");
>> +	drm_dbg_kms(&i915->drm, "\n");
>>  
>>  	_intel_edp_backlight_off(intel_dp);
>>  	intel_panel_disable_backlight(old_conn_state);
>> @@ -3204,6 +3228,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
>>  static void intel_edp_backlight_power(struct intel_connector *connector,
>>  				      bool enable)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>  	intel_wakeref_t wakeref;
>>  	bool is_enabled;
>> @@ -3214,8 +3239,8 @@ static void intel_edp_backlight_power(struct intel_connector *connector,
>>  	if (is_enabled == enable)
>>  		return;
>>  
>> -	DRM_DEBUG_KMS("panel power control backlight %s\n",
>> -		      enable ? "enable" : "disable");
>> +	drm_dbg_kms(&i915->drm, "panel power control backlight %s\n",
>> +		    enable ? "enable" : "disable");
>>  
>>  	if (enable)
>>  		_intel_edp_backlight_on(intel_dp);
>> @@ -3325,6 +3350,7 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>>  					   const struct intel_crtc_state *crtc_state,
>>  					   bool enable)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	int ret;
>>  
>>  	if (!crtc_state->dsc.compression_enable)
>> @@ -3333,13 +3359,15 @@ void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>>  	ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
>>  				 enable ? DP_DECOMPRESSION_EN : 0);
>>  	if (ret < 0)
>> -		DRM_DEBUG_KMS("Failed to %s sink decompression state\n",
>> -			      enable ? "enable" : "disable");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Failed to %s sink decompression state\n",
>> +			    enable ? "enable" : "disable");
>>  }
>>  
>>  /* If the sink supports it, try to set the power state appropriately */
>>  void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	int ret, i;
>>  
>>  	/* Should have a valid DPCD by this point */
>> @@ -3372,8 +3400,8 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
>>  	}
>>  
>>  	if (ret != 1)
>> -		DRM_DEBUG_KMS("failed to %s sink power state\n",
>> -			      mode == DRM_MODE_DPMS_ON ? "enable" : "disable");
>> +		drm_dbg_kms(&i915->drm, "failed to %s sink power state\n",
>> +			    mode == DRM_MODE_DPMS_ON ? "enable" : "disable");
>>  }
>>  
>>  static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
>> @@ -4456,6 +4484,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
>>  static void
>>  intel_dp_extended_receiver_capabilities(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 dpcd_ext[6];
>>  
>>  	/*
>> @@ -4471,20 +4500,22 @@ intel_dp_extended_receiver_capabilities(struct intel_dp *intel_dp)
>>  
>>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_DP13_DPCD_REV,
>>  			     &dpcd_ext, sizeof(dpcd_ext)) != sizeof(dpcd_ext)) {
>> -		DRM_ERROR("DPCD failed read at extended capabilities\n");
>> +		drm_err(&i915->drm,
>> +			"DPCD failed read at extended capabilities\n");
>>  		return;
>>  	}
>>  
>>  	if (intel_dp->dpcd[DP_DPCD_REV] > dpcd_ext[DP_DPCD_REV]) {
>> -		DRM_DEBUG_KMS("DPCD extended DPCD rev less than base DPCD rev\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "DPCD extended DPCD rev less than base DPCD rev\n");
>>  		return;
>>  	}
>>  
>>  	if (!memcmp(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext)))
>>  		return;
>>  
>> -	DRM_DEBUG_KMS("Base DPCD: %*ph\n",
>> -		      (int)sizeof(intel_dp->dpcd), intel_dp->dpcd);
>> +	drm_dbg_kms(&i915->drm, "Base DPCD: %*ph\n",
>> +		    (int)sizeof(intel_dp->dpcd), intel_dp->dpcd);
>>  
>>  	memcpy(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext));
>>  }
>> @@ -4492,13 +4523,16 @@ intel_dp_extended_receiver_capabilities(struct intel_dp *intel_dp)
>>  bool
>>  intel_dp_read_dpcd(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>>  	if (drm_dp_dpcd_read(&intel_dp->aux, 0x000, intel_dp->dpcd,
>>  			     sizeof(intel_dp->dpcd)) < 0)
>>  		return false; /* aux transfer failed */
>>  
>>  	intel_dp_extended_receiver_capabilities(intel_dp);
>>  
>> -	DRM_DEBUG_KMS("DPCD: %*ph\n", (int) sizeof(intel_dp->dpcd), intel_dp->dpcd);
>> +	drm_dbg_kms(&i915->drm, "DPCD: %*ph\n", (int)sizeof(intel_dp->dpcd),
>> +		    intel_dp->dpcd);
>>  
>>  	return intel_dp->dpcd[DP_DPCD_REV] != 0;
>>  }
>> @@ -4515,6 +4549,8 @@ bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
>>  
>>  static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>> +
>>  	/*
>>  	 * Clear the cached register set to avoid using stale values
>>  	 * for the sinks that do not support DSC.
>> @@ -4530,20 +4566,23 @@ static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
>>  		if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
>>  				     intel_dp->dsc_dpcd,
>>  				     sizeof(intel_dp->dsc_dpcd)) < 0)
>> -			DRM_ERROR("Failed to read DPCD register 0x%x\n",
>> -				  DP_DSC_SUPPORT);
>> +			drm_err(&i915->drm,
>> +				"Failed to read DPCD register 0x%x\n",
>> +				DP_DSC_SUPPORT);
>>  
>> -		DRM_DEBUG_KMS("DSC DPCD: %*ph\n",
>> -			      (int)sizeof(intel_dp->dsc_dpcd),
>> -			      intel_dp->dsc_dpcd);
>> +		drm_dbg_kms(&i915->drm, "DSC DPCD: %*ph\n",
>> +			    (int)sizeof(intel_dp->dsc_dpcd),
>> +			    intel_dp->dsc_dpcd);
>>  
>>  		/* FEC is supported only on DP 1.4 */
>>  		if (!intel_dp_is_edp(intel_dp) &&
>>  		    drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
>>  				      &intel_dp->fec_capable) < 0)
>> -			DRM_ERROR("Failed to read FEC DPCD register\n");
>> +			drm_err(&i915->drm,
>> +				"Failed to read FEC DPCD register\n");
>>  
>> -		DRM_DEBUG_KMS("FEC CAPABILITY: %x\n", intel_dp->fec_capable);
>> +		drm_dbg_kms(&i915->drm, "FEC CAPABILITY: %x\n",
>> +			    intel_dp->fec_capable);
>>  	}
>>  }
>>  
>> @@ -4717,14 +4756,16 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
>>  static void
>>  intel_dp_configure_mst(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	struct intel_encoder *encoder =
>>  		&dp_to_dig_port(intel_dp)->base;
>>  	bool sink_can_mst = intel_dp_sink_can_mst(intel_dp);
>>  
>> -	DRM_DEBUG_KMS("[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
>> -		      encoder->base.base.id, encoder->base.name,
>> -		      yesno(intel_dp->can_mst), yesno(sink_can_mst),
>> -		      yesno(i915_modparams.enable_dp_mst));
>> +	drm_dbg_kms(&i915->drm,
>> +		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s\n",
>> +		    encoder->base.base.id, encoder->base.name,
>> +		    yesno(intel_dp->can_mst), yesno(sink_can_mst),
>> +		    yesno(i915_modparams.enable_dp_mst));
>>  
>>  	if (!intel_dp->can_mst)
>>  		return;
>> @@ -5098,6 +5139,7 @@ intel_dp_setup_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>>  					  const struct intel_crtc_state *crtc_state,
>>  					  const struct drm_connector_state *conn_state)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
>>  	struct dp_sdp infoframe_sdp = {};
>>  	struct hdmi_drm_infoframe drm_infoframe = {};
>> @@ -5108,18 +5150,20 @@ intel_dp_setup_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>>  
>>  	ret = drm_hdmi_infoframe_set_hdr_metadata(&drm_infoframe, conn_state);
>>  	if (ret) {
>> -		DRM_DEBUG_KMS("couldn't set HDR metadata in infoframe\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "couldn't set HDR metadata in infoframe\n");
>>  		return;
>>  	}
>>  
>>  	len = hdmi_drm_infoframe_pack_only(&drm_infoframe, buf, sizeof(buf));
>>  	if (len < 0) {
>> -		DRM_DEBUG_KMS("buffer size is smaller than hdr metadata infoframe\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "buffer size is smaller than hdr metadata infoframe\n");
>>  		return;
>>  	}
>>  
>>  	if (len != infoframe_size) {
>> -		DRM_DEBUG_KMS("wrong static hdr metadata size\n");
>> +		drm_dbg_kms(&i915->drm, "wrong static hdr metadata size\n");
>>  		return;
>>  	}
>>  
>> @@ -5197,6 +5241,7 @@ void intel_dp_hdr_metadata_enable(struct intel_dp *intel_dp,
>>  
>>  static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	int status = 0;
>>  	int test_link_rate;
>>  	u8 test_lane_count, test_link_bw;
>> @@ -5208,7 +5253,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
>>  				   &test_lane_count);
>>  
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("Lane count read failed\n");
>> +		drm_dbg_kms(&i915->drm, "Lane count read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  	test_lane_count &= DP_MAX_LANE_COUNT_MASK;
>> @@ -5216,7 +5261,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
>>  	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LINK_RATE,
>>  				   &test_link_bw);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("Link Rate read failed\n");
>> +		drm_dbg_kms(&i915->drm, "Link Rate read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  	test_link_rate = drm_dp_bw_code_to_link_rate(test_link_bw);
>> @@ -5234,6 +5279,7 @@ static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
>>  
>>  static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 test_pattern;
>>  	u8 test_misc;
>>  	__be16 h_width, v_height;
>> @@ -5243,7 +5289,7 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
>>  	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_PATTERN,
>>  				   &test_pattern);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("Test pattern read failed\n");
>> +		drm_dbg_kms(&i915->drm, "Test pattern read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  	if (test_pattern != DP_COLOR_RAMP)
>> @@ -5252,21 +5298,21 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
>>  	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_H_WIDTH_HI,
>>  				  &h_width, 2);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("H Width read failed\n");
>> +		drm_dbg_kms(&i915->drm, "H Width read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  
>>  	status = drm_dp_dpcd_read(&intel_dp->aux, DP_TEST_V_HEIGHT_HI,
>>  				  &v_height, 2);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("V Height read failed\n");
>> +		drm_dbg_kms(&i915->drm, "V Height read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  
>>  	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_MISC0,
>>  				   &test_misc);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("TEST MISC read failed\n");
>> +		drm_dbg_kms(&i915->drm, "TEST MISC read failed\n");
>>  		return DP_TEST_NAK;
>>  	}
>>  	if ((test_misc & DP_TEST_COLOR_FORMAT_MASK) != DP_COLOR_FORMAT_RGB)
>> @@ -5295,6 +5341,7 @@ static u8 intel_dp_autotest_video_pattern(struct intel_dp *intel_dp)
>>  
>>  static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 test_result = DP_TEST_ACK;
>>  	struct intel_connector *intel_connector = intel_dp->attached_connector;
>>  	struct drm_connector *connector = &intel_connector->base;
>> @@ -5311,9 +5358,10 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
>>  		 */
>>  		if (intel_dp->aux.i2c_nack_count > 0 ||
>>  			intel_dp->aux.i2c_defer_count > 0)
>> -			DRM_DEBUG_KMS("EDID read had %d NACKs, %d DEFERs\n",
>> -				      intel_dp->aux.i2c_nack_count,
>> -				      intel_dp->aux.i2c_defer_count);
>> +			drm_dbg_kms(&i915->drm,
>> +				    "EDID read had %d NACKs, %d DEFERs\n",
>> +				    intel_dp->aux.i2c_nack_count,
>> +				    intel_dp->aux.i2c_defer_count);
>>  		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_FAILSAFE;
>>  	} else {
>>  		struct edid *block = intel_connector->detect_edid;
>> @@ -5325,7 +5373,8 @@ static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
>>  
>>  		if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
>>  				       block->checksum) <= 0)
>> -			DRM_DEBUG_KMS("Failed to write EDID checksum\n");
>> +			drm_dbg_kms(&i915->drm,
>> +				    "Failed to write EDID checksum\n");
>>  
>>  		test_result = DP_TEST_ACK | DP_TEST_EDID_CHECKSUM_WRITE;
>>  		intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_PREFERRED;
>> @@ -5345,35 +5394,38 @@ static u8 intel_dp_autotest_phy_pattern(struct intel_dp *intel_dp)
>>  
>>  static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 response = DP_TEST_NAK;
>>  	u8 request = 0;
>>  	int status;
>>  
>>  	status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_REQUEST, &request);
>>  	if (status <= 0) {
>> -		DRM_DEBUG_KMS("Could not read test request from sink\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Could not read test request from sink\n");
>>  		goto update_status;
>>  	}
>>  
>>  	switch (request) {
>>  	case DP_TEST_LINK_TRAINING:
>> -		DRM_DEBUG_KMS("LINK_TRAINING test requested\n");
>> +		drm_dbg_kms(&i915->drm, "LINK_TRAINING test requested\n");
>>  		response = intel_dp_autotest_link_training(intel_dp);
>>  		break;
>>  	case DP_TEST_LINK_VIDEO_PATTERN:
>> -		DRM_DEBUG_KMS("TEST_PATTERN test requested\n");
>> +		drm_dbg_kms(&i915->drm, "TEST_PATTERN test requested\n");
>>  		response = intel_dp_autotest_video_pattern(intel_dp);
>>  		break;
>>  	case DP_TEST_LINK_EDID_READ:
>> -		DRM_DEBUG_KMS("EDID test requested\n");
>> +		drm_dbg_kms(&i915->drm, "EDID test requested\n");
>>  		response = intel_dp_autotest_edid(intel_dp);
>>  		break;
>>  	case DP_TEST_LINK_PHY_TEST_PATTERN:
>> -		DRM_DEBUG_KMS("PHY_PATTERN test requested\n");
>> +		drm_dbg_kms(&i915->drm, "PHY_PATTERN test requested\n");
>>  		response = intel_dp_autotest_phy_pattern(intel_dp);
>>  		break;
>>  	default:
>> -		DRM_DEBUG_KMS("Invalid test request '%02x'\n", request);
>> +		drm_dbg_kms(&i915->drm, "Invalid test request '%02x'\n",
>> +			    request);
>>  		break;
>>  	}
>>  
>> @@ -5383,12 +5435,14 @@ static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
>>  update_status:
>>  	status = drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_RESPONSE, response);
>>  	if (status <= 0)
>> -		DRM_DEBUG_KMS("Could not write test response to sink\n");
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Could not write test response to sink\n");
>>  }
>>  
>>  static int
>>  intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	bool bret;
>>  
>>  	if (intel_dp->is_mst) {
>> @@ -5405,12 +5459,13 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  			/* check link status - esi[10] = 0x200c */
>>  			if (intel_dp->active_mst_links > 0 &&
>>  			    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
>> -				DRM_DEBUG_KMS("channel EQ not ok, retraining\n");
>> +				drm_dbg_kms(&i915->drm,
>> +					    "channel EQ not ok, retraining\n");
>>  				intel_dp_start_link_train(intel_dp);
>>  				intel_dp_stop_link_train(intel_dp);
>>  			}
>>  
>> -			DRM_DEBUG_KMS("got esi %3ph\n", esi);
>> +			drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
>>  			ret = drm_dp_mst_hpd_irq(&intel_dp->mst_mgr, esi, &handled);
>>  
>>  			if (handled) {
>> @@ -5426,7 +5481,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  
>>  				bret = intel_dp_get_sink_irq_esi(intel_dp, esi);
>>  				if (bret == true) {
>> -					DRM_DEBUG_KMS("got esi2 %3ph\n", esi);
>> +					drm_dbg_kms(&i915->drm,
>> +						    "got esi2 %3ph\n", esi);
>>  					goto go_again;
>>  				}
>>  			} else
>> @@ -5434,7 +5490,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>>  
>>  			return ret;
>>  		} else {
>> -			DRM_DEBUG_KMS("failed to get ESI - device may have failed\n");
>> +			drm_dbg_kms(&i915->drm,
>> +				    "failed to get ESI - device may have failed\n");
>>  			intel_dp->is_mst = false;
>>  			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>>  							intel_dp->is_mst);
>> @@ -5595,6 +5652,7 @@ intel_dp_hotplug(struct intel_encoder *encoder,
>>  
>>  static void intel_dp_check_service_irq(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	u8 val;
>>  
>>  	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
>> @@ -5613,7 +5671,7 @@ static void intel_dp_check_service_irq(struct intel_dp *intel_dp)
>>  		intel_hdcp_handle_cp_irq(intel_dp->attached_connector);
>>  
>>  	if (val & DP_SINK_SPECIFIC_IRQ)
>> -		DRM_DEBUG_DRIVER("Sink specific irq unhandled\n");
>> +		drm_dbg_kms(&i915->drm, "Sink specific irq unhandled\n");
>>  }
>>  
>>  /*
>> @@ -5680,6 +5738,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
>>  static enum drm_connector_status
>>  intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>>  {
>> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>>  	struct intel_lspcon *lspcon = dp_to_lspcon(intel_dp);
>>  	u8 *dpcd = intel_dp->dpcd;
>>  	u8 type;
>> @@ -5727,7 +5786,7 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
>>  	}
>>  
>>  	/* Anything else is out of spec, warn and ignore */
>> -	DRM_DEBUG_KMS("Broken DP branch device, ignoring\n");
>> +	drm_dbg_kms(&i915->drm, "Broken DP branch device, ignoring\n");
>>  	return connector_status_disconnected;
>>  }
>>  
>> @@ -6199,6 +6258,7 @@ static int intel_dp_get_modes(struct drm_connector *connector)
>>  static int
>>  intel_dp_connector_register(struct drm_connector *connector)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(connector->dev);
>>  	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
>>  	int ret;
>>  
>> @@ -6208,8 +6268,8 @@ intel_dp_connector_register(struct drm_connector *connector)
>>  
>>  	intel_connector_debugfs_add(connector);
>>  
>> -	DRM_DEBUG_KMS("registering %s bus for %s\n",
>> -		      intel_dp->aux.name, connector->kdev->kobj.name);
>> +	drm_dbg_kms(&i915->drm, "registering %s bus for %s\n",
>> +		    intel_dp->aux.name, connector->kdev->kobj.name);
>>  
>>  	intel_dp->aux.dev = connector->kdev;
>>  	ret = drm_dp_aux_register(&intel_dp->aux);
>> @@ -6295,6 +6355,7 @@ static
>>  int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>>  				u8 *an)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(&intel_dig_port->base.base));
>>  	static const struct drm_dp_aux_msg msg = {
>>  		.request = DP_AUX_NATIVE_WRITE,
>> @@ -6309,8 +6370,9 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>>  	dpcd_ret = drm_dp_dpcd_write(&intel_dig_port->dp.aux, DP_AUX_HDCP_AN,
>>  				     an, DRM_HDCP_AN_LEN);
>>  	if (dpcd_ret != DRM_HDCP_AN_LEN) {
>> -		DRM_DEBUG_KMS("Failed to write An over DP/AUX (%zd)\n",
>> -			      dpcd_ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Failed to write An over DP/AUX (%zd)\n",
>> +			    dpcd_ret);
>>  		return dpcd_ret >= 0 ? -EIO : dpcd_ret;
>>  	}
>>  
>> @@ -6326,17 +6388,19 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>>  				rxbuf, sizeof(rxbuf),
>>  				DP_AUX_CH_CTL_AUX_AKSV_SELECT);
>>  	if (ret < 0) {
>> -		DRM_DEBUG_KMS("Write Aksv over DP/AUX failed (%d)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Write Aksv over DP/AUX failed (%d)\n", ret);
>>  		return ret;
>>  	} else if (ret == 0) {
>> -		DRM_DEBUG_KMS("Aksv write over DP/AUX was empty\n");
>> +		drm_dbg_kms(&i915->drm, "Aksv write over DP/AUX was empty\n");
>>  		return -EIO;
>>  	}
>>  
>>  	reply = (rxbuf[0] >> 4) & DP_AUX_NATIVE_REPLY_MASK;
>>  	if (reply != DP_AUX_NATIVE_REPLY_ACK) {
>> -		DRM_DEBUG_KMS("Aksv write: no DP_AUX_NATIVE_REPLY_ACK %x\n",
>> -			      reply);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Aksv write: no DP_AUX_NATIVE_REPLY_ACK %x\n",
>> +			    reply);
>>  		return -EIO;
>>  	}
>>  	return 0;
>> @@ -6345,11 +6409,14 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *intel_dig_port,
>>  static int intel_dp_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
>>  				   u8 *bksv)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>> +
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,
>>  			       DRM_HDCP_KSV_LEN);
>>  	if (ret != DRM_HDCP_KSV_LEN) {
>> -		DRM_DEBUG_KMS("Read Bksv from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read Bksv from DP/AUX failed (%zd)\n", ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  	return 0;
>> @@ -6358,7 +6425,9 @@ static int intel_dp_hdcp_read_bksv(struct intel_digital_port *intel_dig_port,
>>  static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
>>  				      u8 *bstatus)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>> +
>>  	/*
>>  	 * For some reason the HDMI and DP HDCP specs call this register
>>  	 * definition by different names. In the HDMI spec, it's called BSTATUS,
>> @@ -6367,7 +6436,8 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BINFO,
>>  			       bstatus, DRM_HDCP_BSTATUS_LEN);
>>  	if (ret != DRM_HDCP_BSTATUS_LEN) {
>> -		DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  	return 0;
>> @@ -6377,12 +6447,14 @@ static
>>  int intel_dp_hdcp_read_bcaps(struct intel_digital_port *intel_dig_port,
>>  			     u8 *bcaps)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BCAPS,
>>  			       bcaps, 1);
>>  	if (ret != 1) {
>> -		DRM_DEBUG_KMS("Read bcaps from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read bcaps from DP/AUX failed (%zd)\n", ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  
>> @@ -6408,11 +6480,14 @@ static
>>  int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
>>  				u8 *ri_prime)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>> +
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
>>  			       ri_prime, DRM_HDCP_RI_LEN);
>>  	if (ret != DRM_HDCP_RI_LEN) {
>> -		DRM_DEBUG_KMS("Read Ri' from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm, "Read Ri' from DP/AUX failed (%zd)\n",
>> +			    ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  	return 0;
>> @@ -6422,12 +6497,15 @@ static
>>  int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
>>  				 bool *ksv_ready)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  	u8 bstatus;
>> +
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
>>  			       &bstatus, 1);
>>  	if (ret != 1) {
>> -		DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  	*ksv_ready = bstatus & DP_BSTATUS_READY;
>> @@ -6438,6 +6516,7 @@ static
>>  int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
>>  				int num_downstream, u8 *ksv_fifo)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  	int i;
>>  
>> @@ -6449,8 +6528,9 @@ int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
>>  				       ksv_fifo + i * DRM_HDCP_KSV_LEN,
>>  				       len);
>>  		if (ret != len) {
>> -			DRM_DEBUG_KMS("Read ksv[%d] from DP/AUX failed (%zd)\n",
>> -				      i, ret);
>> +			drm_dbg_kms(&i915->drm,
>> +				    "Read ksv[%d] from DP/AUX failed (%zd)\n",
>> +				    i, ret);
>>  			return ret >= 0 ? -EIO : ret;
>>  		}
>>  	}
>> @@ -6461,6 +6541,7 @@ static
>>  int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
>>  				    int i, u32 *part)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  
>>  	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
>> @@ -6470,7 +6551,8 @@ int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
>>  			       DP_AUX_HDCP_V_PRIME(i), part,
>>  			       DRM_HDCP_V_PRIME_PART_LEN);
>>  	if (ret != DRM_HDCP_V_PRIME_PART_LEN) {
>> -		DRM_DEBUG_KMS("Read v'[%d] from DP/AUX failed (%zd)\n", i, ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read v'[%d] from DP/AUX failed (%zd)\n", i, ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  	return 0;
>> @@ -6487,13 +6569,15 @@ int intel_dp_hdcp_toggle_signalling(struct intel_digital_port *intel_dig_port,
>>  static
>>  bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  	u8 bstatus;
>>  
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
>>  			       &bstatus, 1);
>>  	if (ret != 1) {
>> -		DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>>  		return false;
>>  	}
>>  
>> @@ -6568,13 +6652,15 @@ static inline
>>  int intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
>>  				  u8 *rx_status)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	ssize_t ret;
>>  
>>  	ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
>>  			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
>>  			       HDCP_2_2_DP_RXSTATUS_LEN);
>>  	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
>> -		DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>>  		return ret >= 0 ? -EIO : ret;
>>  	}
>>  
>> @@ -6618,6 +6704,7 @@ static ssize_t
>>  intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
>>  			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	struct intel_dp *dp = &intel_dig_port->dp;
>>  	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
>>  	u8 msg_id = hdcp2_msg_data->msg_id;
>> @@ -6649,8 +6736,9 @@ intel_dp_hdcp2_wait_for_msg(struct intel_digital_port *intel_dig_port,
>>  	}
>>  
>>  	if (ret)
>> -		DRM_DEBUG_KMS("msg_id %d, ret %d, timeout(mSec): %d\n",
>> -			      hdcp2_msg_data->msg_id, ret, timeout);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "msg_id %d, ret %d, timeout(mSec): %d\n",
>> +			    hdcp2_msg_data->msg_id, ret, timeout);
>>  
>>  	return ret;
>>  }
>> @@ -6736,6 +6824,7 @@ static
>>  int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
>>  			    u8 msg_id, void *buf, size_t size)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	unsigned int offset;
>>  	u8 *byte = buf;
>>  	ssize_t ret, bytes_to_recv, len;
>> @@ -6769,7 +6858,8 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
>>  		ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, offset,
>>  				       (void *)byte, len);
>>  		if (ret < 0) {
>> -			DRM_DEBUG_KMS("msg_id %d, ret %zd\n", msg_id, ret);
>> +			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
>> +				    msg_id, ret);
>>  			return ret;
>>  		}
>>  
>> @@ -7115,6 +7205,7 @@ static bool intel_edp_have_power(struct intel_dp *intel_dp)
>>  enum irqreturn
>>  intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
>>  {
>> +	struct drm_i915_private *i915 = to_i915(intel_dig_port->base.base.dev);
>>  	struct intel_dp *intel_dp = &intel_dig_port->dp;
>>  
>>  	if (intel_dig_port->base.type == INTEL_OUTPUT_EDP &&
>> @@ -7125,17 +7216,18 @@ intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
>>  		 * would end up in an endless cycle of
>>  		 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
>>  		 */
>> -		DRM_DEBUG_KMS("ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
>> -			      long_hpd ? "long" : "short",
>> -			      intel_dig_port->base.base.base.id,
>> -			      intel_dig_port->base.base.name);
>> +		drm_dbg_kms(&i915->drm,
>> +			    "ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
>> +			    long_hpd ? "long" : "short",
>> +			    intel_dig_port->base.base.base.id,
>> +			    intel_dig_port->base.base.name);
>>  		return IRQ_HANDLED;
>>  	}
>>  
>> -	DRM_DEBUG_KMS("got hpd irq on [ENCODER:%d:%s] - %s\n",
>> -		      intel_dig_port->base.base.base.id,
>> -		      intel_dig_port->base.base.name,
>> -		      long_hpd ? "long" : "short");
>> +	drm_dbg_kms(&i915->drm, "got hpd irq on [ENCODER:%d:%s] - %s\n",
>> +		    intel_dig_port->base.base.base.id,
>> +		    intel_dig_port->base.base.name,
>> +		    long_hpd ? "long" : "short");
>>  
>>  	if (long_hpd) {
>>  		intel_dp->reset_link_params = true;
>> @@ -7148,8 +7240,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *intel_dig_port, bool long_hpd)
>>  			 * If we were in MST mode, and device is not
>>  			 * there, get out of MST mode
>>  			 */
>> -			DRM_DEBUG_KMS("MST device may have disappeared %d vs %d\n",
>> -				      intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
>> +			drm_dbg_kms(&i915->drm,
>> +				    "MST device may have disappeared %d vs %d\n",
>> +				    intel_dp->is_mst, intel_dp->mst_mgr.mst_state);
>>  			intel_dp->is_mst = false;
>>  			drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>>  							intel_dp->is_mst);
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
