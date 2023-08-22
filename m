Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AA978415C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 14:57:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E2210E355;
	Tue, 22 Aug 2023 12:57:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C3310E355
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 12:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692709065; x=1724245065;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=4KlRQnI87uL5NFQZeH4pi6t1dk3yB969osADx0Hiwj4=;
 b=a6HwiP6+MYBa+QnkD9xeNwteY/Lhwk9LgALaeGQ2v688qTeKaLGvmvC7
 fo0V4+ny3FB7XMWxxG0WkzIqQktxeunO5qSxNOIPEbo9ZnISSWaPBEwAV
 Pu81QCgpIdBj09zqS0SxU/KHVLTufIfxgRHrShjj4DQdDu/aAwLtemIbP
 32dbhHA6ablRIRBt4NWb6JL5+zIOCMoI3pq2eC2+PyCdZRfAJUpqqiUS4
 hBGlJkQvjW2eJg8akyXAJ29Dyc6hWoKXGsT3URBjzBFAAfj8II1uouic8
 cjdeUAVYcP1xQiS6gSFV2Bl4eAERKcYBEnP3VukoHcrW5lw9BQG/R8k57 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="404872022"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="404872022"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:57:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="826322617"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="826322617"
Received: from kainaats-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.230])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 05:57:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230818111950.128992-4-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
 <20230818111950.128992-4-vinod.govindapillai@intel.com>
Date: Tue, 22 Aug 2023 15:57:41 +0300
Message-ID: <871qfv6xq2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 3/4] drm/i915/display: update
 intel_dp_has_audio to support MST
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

On Fri, 18 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Modify intel_dp_has_audio to handle DP-MST as well.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 67c06bbc1760..0ee9b9e05c26 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2171,15 +2171,17 @@ intel_dp_drrs_compute_config(struct intel_connector *connector,
>  }
>  
>  static bool intel_dp_has_audio(struct intel_encoder *encoder,
> +			       struct intel_crtc_state *crtc_state,
>  			       const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -	struct intel_connector *connector = intel_dp->attached_connector;
>  	const struct intel_digital_connector_state *intel_conn_state =
>  		to_intel_digital_connector_state(conn_state);
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  
> -	if (!intel_dp_port_has_audio(i915, encoder->port))
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&

That's inaccurate due to INTEL_OUTPUT_EDP.

!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)

> +	    !intel_dp_port_has_audio(i915, encoder->port))
>  		return false;
>  
>  	if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
> @@ -2241,7 +2243,7 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  	struct drm_connector *connector = conn_state->connector;
>  
>  	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state) &&
> +		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	pipe_config->sdp_split_enable = pipe_config->has_audio &&

-- 
Jani Nikula, Intel Open Source Graphics Center
