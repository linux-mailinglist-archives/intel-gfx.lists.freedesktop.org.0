Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB68606651
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 18:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FBD10E993;
	Thu, 20 Oct 2022 16:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4F610E8C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 16:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666284866; x=1697820866;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+/jaFyCDo3DbEqJMk+d+tHbl/ivXa2viUTuZEZy0UDc=;
 b=hw3Y3b3xO8Bkg7RLj7gY60IkJNn/hudtUS523X+a77ZFcPUhRnrZM6qi
 24u1dYpw8KUrgCeeGmx2tuvrnWYrVMnYSbGSb0iHTYpw26FRBcgpd5lGb
 F9EWB2OQHHOCkoivPDAuhXpODN8XEWc9vsWl9SK0bVFsyHfJ6TMn5cNA7
 0qRNDZgAHDyhF3rEuN9sPRJM4KdDUkiwbSnzUEdIZpdPdCkZU0CilvB26
 yR1PKjL/oQ7bQ4mV04XFFzgEM1ia3QGzZ5QxwpbjnJ9IZBANhbogv7Lae
 99/xNNzXo8Rh+5rEltxDsO+/GgpKKQQmLR9YfvSDzuN0utLY58Xy2IHoU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="306764467"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="306764467"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 09:54:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="875116206"
X-IronPort-AV: E=Sophos;i="5.95,199,1661842800"; d="scan'208";a="875116206"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga006.fm.intel.com with SMTP; 20 Oct 2022 09:54:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 20 Oct 2022 19:54:22 +0300
Date: Thu, 20 Oct 2022 19:54:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Y1F9PtGbXTqDR867@intel.com>
References: <20221011063447.904649-1-ankit.k.nautiyal@intel.com>
 <20221011063447.904649-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221011063447.904649-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 5/8] drm/i915/dp: Use sink_format in
 dp_is_ycbcr420
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

On Tue, Oct 11, 2022 at 12:04:44PM +0530, Ankit Nautiyal wrote:
> Use the new crtc_state member sink_format to check if DP DFP will use
> YCBCR420.
> The earlier intel_dp->dfp members are not required as decision to use
> color format conversion by the PCON is computed and stored in
> crtc_state. Also drop the intel_dp argument in the helper function.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 99d72b345907..d8ef4dccf0c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1177,19 +1177,16 @@ static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
>  		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>  }
>  
> -static bool intel_dp_is_ycbcr420(struct intel_dp *intel_dp,
> -				 const struct intel_crtc_state *crtc_state)
> +static bool intel_dp_is_ycbcr420(const struct intel_crtc_state *crtc_state)
>  {
> -	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ||
> -		(crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> -		 intel_dp->dfp.ycbcr_444_to_420);
> +	return crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420;
>  }
>  
>  static int intel_dp_hdmi_compute_bpc(struct intel_dp *intel_dp,
>  				     const struct intel_crtc_state *crtc_state,
>  				     int bpc, bool respect_downstream_limits)
>  {
> -	bool ycbcr420_output = intel_dp_is_ycbcr420(intel_dp, crtc_state);
> +	bool ycbcr420_output = intel_dp_is_ycbcr420(crtc_state);
>  	int clock = crtc_state->hw.adjusted_mode.crtc_clock;

I think I'd take this a notch further and start passing
the sink_format to most (maybe even all?) places that
currently take a 'bool ycbcr420_output'. That could also
serve as a slight step towards 4:2:2 support.

>  
>  	/*
> @@ -1986,7 +1983,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  
>  	crtc_state->output_format = intel_dp_output_format(connector, ycbcr_420_only);
>  
> -	if (ycbcr_420_only && !intel_dp_is_ycbcr420(intel_dp, crtc_state)) {
> +	if (ycbcr_420_only && !intel_dp_is_ycbcr420(crtc_state)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>  		crtc_state->output_format = INTEL_OUTPUT_FORMAT_RGB;
> @@ -2001,7 +1998,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  					   respect_downstream_limits);
>  	if (ret) {
> -		if (intel_dp_is_ycbcr420(intel_dp, crtc_state) ||
> +		if (intel_dp_is_ycbcr420(crtc_state) ||
>  		    !connector->base.ycbcr_420_allowed ||
>  		    !drm_mode_is_420_also(info, adjusted_mode))
>  			return ret;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
