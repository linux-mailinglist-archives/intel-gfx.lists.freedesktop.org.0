Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2615C97193B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:22:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA68710E515;
	Mon,  9 Sep 2024 12:22:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HE7expHs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C0B10E512;
 Mon,  9 Sep 2024 12:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725884561; x=1757420561;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UKtTf4qhGIkjASyprb+6A2AY4AQBivqYR05SA/6uLdI=;
 b=HE7expHszz7hx8MwbRLjk7zP4JkMVN/zYmCkRombqq4Und4IwcqlS3HM
 cvGV2j4gxcmZN4u///ERWYDpzDoCtRx9Q7/i4+fBD9mCKu42tHG7WlgNZ
 VtsS85P4nClocWNoi9FVwtXOcgC3cQ0fqGBeuKEjuTXzemivPBzLG68SW
 wKjNYlqXNdFJrnKmlYYQFJI53odbI6gEpyM7j/QmdVu00kvHTAnKdndJl
 CsZdVbLCwpxYGW30wXHOP4z70Ff3gYJqUWroLy0p1zq1vSgRVl0IJMk1R
 adhq2CyAJ8I657JQswuO1vASe5D/zhk9wOwS4E/1PHDsEWsQm9WX8A3HA w==;
X-CSE-ConnectionGUID: 3LsI8wHWQ7G9a7rwBl4lsw==
X-CSE-MsgGUID: Uae0lPOLS+W6nMmg44OEzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24448704"
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="24448704"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:22:40 -0700
X-CSE-ConnectionGUID: FoP0uofJRbOApARwc0J1Dg==
X-CSE-MsgGUID: DODaI3xCQoGdWoEDUdRsfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,214,1719903600"; d="scan'208";a="66289543"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 05:22:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 3/8] drm/i915/pps: add vlv_pps_pipe_init()
In-Reply-To: <d400819a5017a42223fa226a58892ba974b22c79.1725883885.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725883885.git.jani.nikula@intel.com>
 <d400819a5017a42223fa226a58892ba974b22c79.1725883885.git.jani.nikula@intel.com>
Date: Mon, 09 Sep 2024 15:22:35 +0300
Message-ID: <87y141kodw.fsf@intel.com>
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

On Mon, 09 Sep 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> We need to track PPS also for non-eDP usage on VLV/CHV. Add new
> vlv_pps_pipe_init() for initializing the related parts, hiding the PPS
> pipe details inside PPS code.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 6 ++----
>  drivers/gpu/drm/i915/display/intel_pps.c | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_pps.h | 2 ++
>  3 files changed, 11 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7e36a7820fec..f0866ddc707e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6869,10 +6869,8 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	intel_dp_set_default_sink_rates(intel_dp);
>  	intel_dp_set_default_max_sink_lane_count(intel_dp);
>  
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> -		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
> -	}
> +	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +		vlv_pps_pipe_init(intel_dp);
>  
>  	intel_dp_aux_init(intel_dp);
>  	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 2fb32ac1b7cf..c316950218c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1211,6 +1211,13 @@ static void vlv_steal_power_sequencer(struct intel_display *display,
>  	}
>  }
>  
> +/* Call on all DP, not just eDP */
> +void vlv_pps_pipe_init(struct intel_dp *intel_dp)
> +{
> +	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
> +	intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
> +}
> +
>  void vlv_pps_init(struct intel_encoder *encoder,
>  		  const struct intel_crtc_state *crtc_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 0c5da83a559e..3061fab30097 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -42,9 +42,11 @@ void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
>  
>  bool intel_pps_init(struct intel_dp *intel_dp);
>  void intel_pps_init_late(struct intel_dp *intel_dp);
> +

Hrmh, where did that snug in. :/

>  void intel_pps_encoder_reset(struct intel_dp *intel_dp);
>  void intel_pps_reset_all(struct intel_display *display);
>  
> +void vlv_pps_pipe_init(struct intel_dp *intel_dp);
>  void vlv_pps_init(struct intel_encoder *encoder,
>  		  const struct intel_crtc_state *crtc_state);

-- 
Jani Nikula, Intel
