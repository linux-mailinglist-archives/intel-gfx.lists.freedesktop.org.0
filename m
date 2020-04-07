Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F161A0DBE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0966E85B;
	Tue,  7 Apr 2020 12:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BFE6E85B
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:35:00 +0000 (UTC)
IronPort-SDR: kZMbOgm2gPy/nIhaZUupaOmegJEIW8MfXny1oKMjD/rzrWRlurYk5/grapwdXhlCIa3jCM3zRS
 YHnwmZ3bgWFA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:34:59 -0700
IronPort-SDR: Mwaz/AdlHRKs2O5RHNEMnpGxh20u6yWZ5bFD3ghrrQKMR7XWptjWjDbG7OTITpAEZ4pwTcAJPo
 yLt63gBuK9OA==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="424733325"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:34:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vipin Anand <vipin.anand@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327052357.22269-3-vipin.anand@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200327052357.22269-1-vipin.anand@intel.com>
 <20200327052357.22269-3-vipin.anand@intel.com>
Date: Tue, 07 Apr 2020 15:34:55 +0300
Message-ID: <87k12rjwy8.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: Enable HDR on gen9
 devices with MCA Lspcon
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Mar 2020, Vipin Anand <vipin.anand@intel.com> wrote:
> From: Uma Shankar <uma.shankar@intel.com>
>
> Gen9 hardware supports HDMI2.0 through LSPCON chips.
> Extending HDR support for MCA LSPCON based GEN9 devices.
>
> SOC will drive LSPCON as DP and send HDR metadata as standard
> DP SDP packets. LSPCON will be set to operate in PCON mode,
> will receive the metadata and create Dynamic Range and
> Mastering Infoframe (DRM packets) and send it to HDR capable
> HDMI sink devices.
>
> v2: Re-used hsw infoframe write implementation for HDR metadata
> for LSPCON as per Ville's suggestion.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c   | 10 ++++++
>  drivers/gpu/drm/i915/display/intel_lspcon.c | 35 +++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_lspcon.h |  5 ++-
>  3 files changed, 39 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 93ac0f296852..9ae2f88cc925 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -577,6 +577,16 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
>  	return val & mask;
>  }
>  
> +void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
> +	const struct intel_crtc_state *crtc_state,
> +	unsigned int type,
> +	const void *frame, ssize_t len)
> +{
> +	DRM_DEBUG_KMS("Update HDR metadata for lspcon\n");
> +	/* It uses the legacy hsw implementation for the same */
> +	hsw_write_infoframe(encoder, crtc_state, type, frame, len);
> +}

This seems like an unnecessary wrapper.

> +
>  static const u8 infoframe_type_to_idx[] = {
>  	HDMI_PACKET_TYPE_GENERAL_CONTROL,
>  	HDMI_PACKET_TYPE_GAMUT_METADATA,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 2e41ae483a23..c5ddabf903d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -460,27 +460,42 @@ void lspcon_write_infoframe(struct intel_encoder *encoder,
>  			    unsigned int type,
>  			    const void *frame, ssize_t len)
>  {
> -	bool ret;
> +	bool ret = true;
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
>  
>  	/* LSPCON only needs AVI IF */
> -	if (type != HDMI_INFOFRAME_TYPE_AVI)
> +	if (!(type == HDMI_INFOFRAME_TYPE_AVI ||
> +	      type == HDMI_PACKET_TYPE_GAMUT_METADATA))
>  		return;
>  
> -	if (lspcon->vendor == LSPCON_VENDOR_MCA)
> -		ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
> -						      frame, len);
> -	else
> -		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux,
> -							 frame, len);
> +	/*
> +	 * Supporting HDR on MCA LSPCON
> +	 * Todo: Add support for Parade later
> +	 */
> +	if (type == HDMI_PACKET_TYPE_GAMUT_METADATA &&
> +	    lspcon->vendor != LSPCON_VENDOR_MCA)
> +		return;
> +
> +	if (lspcon->vendor == LSPCON_VENDOR_MCA) {
> +		if (type == HDMI_INFOFRAME_TYPE_AVI)
> +			ret = _lspcon_write_avi_infoframe_mca(&intel_dp->aux,
> +							      frame, len);
> +		else if (type == HDMI_PACKET_TYPE_GAMUT_METADATA)
> +			lspcon_drm_write_infoframe(encoder, crtc_state,
> +						   HDMI_PACKET_TYPE_GAMUT_METADATA,
> +						   frame, VIDEO_DIP_DATA_SIZE);
> +	} else {
> +		ret = _lspcon_write_avi_infoframe_parade(&intel_dp->aux, frame,
> +							 len);
> +	}

Seems to me it would be best to replace from the beginning of this
function with something like:

        switch (type) {
        case HDMI_INFOFRAME_TYPE_AVI:
                if (lspcon->vendor == LSPCON_VENDOR_MCA)
                        ...
                else
                        ...
                break;
        case HDMI_PACKET_TYPE_GAMUT_METADATA:
                if (lspcon->vendor == LSPCON_VENDOR_MCA)
                        ...
                else
                        break;
                break;
        default:
                return;
        }

Then it'll be straightforward to replace the actual vendor specific if
ladders with function pointers in struct intel_lspcon in the future.

>  
>  	if (!ret) {
> -		DRM_ERROR("Failed to write AVI infoframes\n");
> +		DRM_ERROR("Failed to write infoframes\n");
>  		return;
>  	}
>  
> -	DRM_DEBUG_DRIVER("AVI infoframes updated successfully\n");
> +	DRM_DEBUG_DRIVER("Infoframes updated successfully\n");
>  }
>  
>  void lspcon_read_infoframe(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index 37cfddf8a9c5..b2051f236223 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -34,5 +34,8 @@ u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *pipe_config);
>  void lspcon_ycbcr420_config(struct drm_connector *connector,
>  			    struct intel_crtc_state *crtc_state);
> -
> +void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
> +				const struct intel_crtc_state *crtc_state,
> +				unsigned int type,
> +				const void *frame, ssize_t len);
>  #endif /* __INTEL_LSPCON_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
