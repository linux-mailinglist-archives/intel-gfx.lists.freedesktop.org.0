Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F052E6ED8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 09:16:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88D47892BF;
	Tue, 29 Dec 2020 08:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32507892BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 08:16:26 +0000 (UTC)
IronPort-SDR: TBZUehMvyZ/LvzU1hjGjuQMfImvAHVoQ2Mj9/ulZMucqheZNCW7tQg2XTZ6IwvjhQIcS5dxtVw
 Eo9PHLsVrkAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="240554443"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="240554443"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:16:25 -0800
IronPort-SDR: 5lyGH3pOa8+B0qH5mnbz2PVmviWZksOrStezcpa60jfi4Q864qD8mfvNeoWna4zExNKX4m0vDM
 BVhp52C6Wy6w==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="375971028"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:16:23 -0800
Date: Tue, 29 Dec 2020 13:31:32 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229080131.GJ11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <a0002756dfeab15cb6f948092fe82aba10f44491.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a0002756dfeab15cb6f948092fe82aba10f44491.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 12/13] drm/i915/pps: rename
 vlv_init_panel_power_sequencer to vlv_pps_init
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-22 at 20:19:52 +0530, Jani Nikula wrote:
> This function is a bit of an outlier, but try to change to a name that
> is more in line with the rest of the intel_pps functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_pps.h | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bc3a447f5992..c49ada31363b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3155,7 +3155,7 @@ static void intel_enable_dp(struct intel_atomic_state *state,
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {
>  		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -			vlv_init_panel_power_sequencer(encoder, pipe_config);
> +			vlv_pps_init(encoder, pipe_config);
>  
>  		intel_dp_enable_port(intel_dp, pipe_config);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ceb74967f2b4..492abf372167 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1008,8 +1008,8 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
>  	}
>  }
>  
> -void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state)
> +void vlv_pps_init(struct intel_encoder *encoder,
> +		  const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index c8766b777501..d9cd57b5b828 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -43,7 +43,7 @@ void intel_pps_init(struct intel_dp *intel_dp);
>  void intel_pps_reinit(struct intel_dp *intel_dp);
>  void intel_pps_reset_all(struct drm_i915_private *i915);
>  
> -void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
> -				    const struct intel_crtc_state *crtc_state);
> +void vlv_pps_init(struct intel_encoder *encoder,
> +		  const struct intel_crtc_state *crtc_state);
>  
>  #endif /* __INTEL_PPS_H__ */
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
