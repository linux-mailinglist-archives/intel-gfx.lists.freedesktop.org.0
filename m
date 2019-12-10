Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBD3119F14
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 00:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084816E03B;
	Tue, 10 Dec 2019 23:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 10 Dec 2019 23:09:57 UTC
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A37C689E26
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 23:09:57 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 15:02:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,301,1571727600"; d="scan'208";a="203356557"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga007.jf.intel.com with ESMTP; 10 Dec 2019 15:02:50 -0800
Date: Tue, 10 Dec 2019 15:04:08 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191210230408.GA12192@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
 <6c9f646090913290fb00efd46a4332421bf95930.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6c9f646090913290fb00efd46a4332421bf95930.1575974743.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [v4.1 07/16] drm/i915/dsc: make DSC source support
 helper generic
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 10, 2019 at 12:50:51PM +0200, Jani Nikula wrote:
> Move intel_dp_source_supports_dsc() from intel_dp.c as
> intel_dsc_source_support() in intel_vdsc.c. The DSC source support is
> more about DSC than about DP, and will be needed for DP independent
> code.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 27 +++++------------------
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 19 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vdsc.h |  2 ++
>  3 files changed, 26 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f7e618ec6fa3..2f31d226c6eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1889,32 +1889,15 @@ static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
>  		drm_dp_sink_supports_fec(intel_dp->fec_capable);
>  }
>  
> -static bool intel_dp_source_supports_dsc(struct intel_dp *intel_dp,
> -					 const struct intel_crtc_state *pipe_config)
> -{
> -	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -
> -	if (!INTEL_INFO(dev_priv)->display.has_dsc)
> -		return false;
> -
> -	/* On TGL, DSC is supported on all Pipes */
> -	if (INTEL_GEN(dev_priv) >= 12)
> -		return true;
> -
> -	if (INTEL_GEN(dev_priv) >= 10 &&
> -	    pipe_config->cpu_transcoder != TRANSCODER_A)
> -		return true;
> -
> -	return false;
> -}
> -
>  static bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *pipe_config)
> +				  const struct intel_crtc_state *crtc_state)
>  {
> -	if (!intel_dp_is_edp(intel_dp) && !pipe_config->fec_enable)
> +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> +
> +	if (!intel_dp_is_edp(intel_dp) && !crtc_state->fec_enable)
>  		return false;
>  
> -	return intel_dp_source_supports_dsc(intel_dp, pipe_config) &&
> +	return intel_dsc_source_support(encoder, crtc_state) &&
>  		drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7bd727129a8f..a1b0f7cf1a96 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -334,6 +334,25 @@ static const struct rc_parameters *get_rc_params(u16 compressed_bpp,
>  	return &rc_parameters[row_index][column_index];
>  }
>  
> +bool intel_dsc_source_support(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	if (!INTEL_INFO(i915)->display.has_dsc)
> +		return false;
> +
> +	/* On TGL, DSC is supported on all Pipes */
> +	if (INTEL_GEN(i915) >= 12)
> +		return true;
> +
> +	if (INTEL_GEN(i915) >= 10 &&
> +	    crtc_state->cpu_transcoder != TRANSCODER_A)
> +		return true;
> +
> +	return false;
> +}
> +
>  int intel_dsc_compute_params(struct intel_encoder *encoder,
>  			     struct intel_crtc_state *pipe_config)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 4ed2256750c3..e6e9f5b5c6ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -9,6 +9,8 @@
>  struct intel_encoder;
>  struct intel_crtc_state;
>  
> +bool intel_dsc_source_support(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(struct intel_encoder *encoder,
>  		      const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
