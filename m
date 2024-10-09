Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EE5996557
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:29:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDAAD10E22B;
	Wed,  9 Oct 2024 09:29:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aCI2WbZY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D88E10E22B;
 Wed,  9 Oct 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728466162; x=1760002162;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bXtEzb/tDF0yJNDTsQJcREZwZrNSDYsi7v0AwT3DD2c=;
 b=aCI2WbZYPbLyPHNMHdbO1tBsNjU7A045bM6gv2wgGLHEBehtaoHnqJMp
 dmTLUZ/ojrxEwncOqZhHyOt5CZaIfXpZV5Ptn3/qzXoE7ihzVQEtqKbWB
 1homnYGzxW9WUwqUdphfkMNokHmD2mvSFE6D10Em3EwVvPx9G8v65V2/H
 js21C+QCS/s/aiilGJwOHku+NijopDY/JS5GsQx7PvdNPFjRxT7eg0TVg
 ggyoBVNHYHK4Wce2f37Z8d2H453ju5ZHbGD1gT8X0rDSsg8rMnXu2Lbwo
 GnffbQ2sCYF89U7l6TR1PEtMjglx83WaNayy4uXAaJBotLd/rF3uRuPar g==;
X-CSE-ConnectionGUID: k9HKfS/vTA+oG4U8cNawkw==
X-CSE-MsgGUID: lNlEeJ7XQxObM+ZLDNdTJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27842618"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27842618"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:29:22 -0700
X-CSE-ConnectionGUID: O4jWSEs+QM+8NQVHIj60sQ==
X-CSE-MsgGUID: e33tJu2OTiOIto5lpMnV4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="77005758"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:29:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, uma.shankar@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [v2] drm/i915: Allow fastset for change in HDR infoframe
In-Reply-To: <20241009072530.2952143-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009072530.2952143-1-chaitanya.kumar.borah@intel.com>
Date: Wed, 09 Oct 2024 12:29:16 +0300
Message-ID: <875xq1bp5f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 09 Oct 2024, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> Changes in Dynamic Range and Mastering infoframe
> should not trigger a full modeset. Therefore, allow
> fastset. DP SDP programming is already hooked up in the
> fastset flow but HDMI AVI infoframe update is not, add it.
> Any other infoframe that can be fastset should be added to
> the helper intel_hdmi_fastset_infoframes().
>
> v2:
>  - Update HDMI AVI infoframe during fastset.
>
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  3 +++
>  drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 19 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |  3 +++
>  4 files changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index fe1ded6707f9..3195c1125ac3 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3489,6 +3489,9 @@ void intel_ddi_update_pipe(struct intel_atomic_state *state,
>  		intel_ddi_update_pipe_dp(state, encoder, crtc_state,
>  					 conn_state);
>  
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		intel_hdmi_fastset_infoframes(encoder, crtc_state, conn_state);

I don't know if the patch at hand is the right thing to do, but if it
is, please let's stick to uniform naming here. If you add stuff
specifically for the encoder->update_pipe path, please name it
*_update_pipe() i.e. intel_hdmi_infoframes_update_pipe().

OTOH the DP path uses a common function, which makes me wonder if there
could be less duplication for HDMI too.

BR,
Jani.


> +
>  	intel_hdcp_update_pipe(state, encoder, crtc_state, conn_state);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e1f6255e918b..e8f8f55f75d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5683,7 +5683,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	PIPE_CONF_CHECK_INFOFRAME(avi);
>  	PIPE_CONF_CHECK_INFOFRAME(spd);
>  	PIPE_CONF_CHECK_INFOFRAME(hdmi);
> -	PIPE_CONF_CHECK_INFOFRAME(drm);
> +	if (!fastset)
> +		PIPE_CONF_CHECK_INFOFRAME(drm);
>  	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
>  	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 72ac910bf6ec..eba79f14d4e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1211,6 +1211,25 @@ static void vlv_set_infoframes(struct intel_encoder *encoder,
>  			      &crtc_state->infoframes.hdmi);
>  }
>  
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state *conn_state)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(display,
> +					    crtc_state->cpu_transcoder);
> +	u32 val = intel_de_read(display, reg);
> +
> +	val &= ~(VIDEO_DIP_ENABLE_DRM_GLK);
> +
> +	intel_de_write(display, reg, val);
> +	intel_de_posting_read(display, reg);
> +
> +	intel_write_infoframe(encoder, crtc_state,
> +			      HDMI_INFOFRAME_TYPE_DRM,
> +			      &crtc_state->infoframes.drm);
> +}
> +
>  static void hsw_set_infoframes(struct intel_encoder *encoder,
>  			       bool enable,
>  			       const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 9b97623665c5..466f48df8a74 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -42,6 +42,9 @@ u32 intel_hdmi_infoframes_enabled(struct intel_encoder *encoder,
>  u32 intel_hdmi_infoframe_enable(unsigned int type);
>  void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
>  				   struct intel_crtc_state *crtc_state);
> +void intel_hdmi_fastset_infoframes(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state,
> +				   const struct drm_connector_state *conn_state);
>  void intel_read_infoframe(struct intel_encoder *encoder,
>  			  const struct intel_crtc_state *crtc_state,
>  			  enum hdmi_infoframe_type type,

-- 
Jani Nikula, Intel
