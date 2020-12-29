Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2A52E6ED7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 09:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A56A892BF;
	Tue, 29 Dec 2020 08:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717BA892BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 08:14:43 +0000 (UTC)
IronPort-SDR: AjUzBRgyQOtgT+c4NFl3VyMKD7YGJSzw8PnZGPSwSJi7+ZwiTeq7yj6Ys/BviPyvUSgu6QTEkV
 CSl41iHBitiA==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="238024234"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="238024234"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:14:42 -0800
IronPort-SDR: kV+xd4xt6N+PYTsKrRK02hPC+tj3mqJoZiO6+2gnuLDUVSiU7CeY/HHtm//ASPCkEFUvdYawrZ
 IPS3qBB59piA==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="384812409"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2020 00:14:41 -0800
Date: Tue, 29 Dec 2020 13:29:50 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229075949.GI11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <12b05c736546aa3368b0cd2564e574d677474cda.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <12b05c736546aa3368b0cd2564e574d677474cda.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/pps: add locked
 intel_pps_wait_power_cycle
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

On 2020-12-22 at 20:19:51 +0530, Jani Nikula wrote:
> Prefer keeping the unlocked variants hidden if possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |  7 +------
>  drivers/gpu/drm/i915/display/intel_pps.c | 13 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
>  3 files changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 65406d4ccdbe..bc3a447f5992 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5833,13 +5833,8 @@ void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
>  void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
> -	intel_wakeref_t wakeref;
> -
> -	if (!intel_dp_is_edp(intel_dp))
> -		return;
>  
> -	with_intel_pps_lock(intel_dp, wakeref)
> -		wait_panel_power_cycle(intel_dp);
> +	intel_pps_wait_power_cycle(intel_dp);
>  }
>  
>  static enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ceb6de9e7aff..ceb74967f2b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -503,7 +503,7 @@ static void wait_panel_off(struct intel_dp *intel_dp)
>  	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
>  }
>  
> -void wait_panel_power_cycle(struct intel_dp *intel_dp)
> +static void wait_panel_power_cycle(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	ktime_t panel_power_on_time;
> @@ -525,6 +525,17 @@ void wait_panel_power_cycle(struct intel_dp *intel_dp)
>  	wait_panel_status(intel_dp, IDLE_CYCLE_MASK, IDLE_CYCLE_VALUE);
>  }
>  
> +void intel_pps_wait_power_cycle(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	with_intel_pps_lock(intel_dp, wakeref)
> +		wait_panel_power_cycle(intel_dp);
> +}
> +
>  static void wait_backlight_on(struct intel_dp *intel_dp)
>  {
>  	wait_remaining_ms_from_jiffies(intel_dp->last_power_on,
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 451d5125b2b7..c8766b777501 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -37,8 +37,7 @@ void intel_pps_on(struct intel_dp *intel_dp);
>  void intel_pps_off(struct intel_dp *intel_dp);
>  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
>  bool intel_pps_have_power(struct intel_dp *intel_dp);
> -
> -void wait_panel_power_cycle(struct intel_dp *intel_dp);
> +void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
>  
>  void intel_pps_init(struct intel_dp *intel_dp);
>  void intel_pps_reinit(struct intel_dp *intel_dp);
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
