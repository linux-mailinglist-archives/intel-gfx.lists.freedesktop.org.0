Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 645BE2E6EAE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 08:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64621892A7;
	Tue, 29 Dec 2020 07:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8BE892A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 07:07:56 +0000 (UTC)
IronPort-SDR: vr74UnPoz9rVz72HmLE1LAjNQUKBSqL1P48z9yyq32xIgNfkVyQ1/HDNFP03Q1NyHG421xqCB9
 tmmoZ35jiiQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="176563040"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="176563040"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:07:55 -0800
IronPort-SDR: Ei1z201kDLELAHOGoZw9vXn5o8VMS3empobOX0gp0vgA1ofQpI13RwjZW4iGMt5uTlpCDGyh/l
 NO6h0lJgP0mg==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="395330034"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:07:53 -0800
Date: Tue, 29 Dec 2020 12:23:02 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229065302.GE11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <83bb1fee149aacc4f208719861327a3e04bb63a7.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83bb1fee149aacc4f208719861327a3e04bb63a7.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915/pps: add higher level
 intel_pps_init() call
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

On 2020-12-22 at 20:19:47 +0530, Jani Nikula wrote:
> Add a new init call to be called only once, unlike some of the other
> various init calls. This lets us hide more functions within intel_pps.c.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |  9 +--------
>  drivers/gpu/drm/i915/display/intel_pps.c | 17 +++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_pps.h |  3 +--
>  3 files changed, 17 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1a34c9351c30..de2642d5be3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6586,14 +6586,11 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	struct drm_display_mode *downclock_mode = NULL;
>  	bool has_dpcd;
>  	enum pipe pipe = INVALID_PIPE;
> -	intel_wakeref_t wakeref;
>  	struct edid *edid;
>  
>  	if (!intel_dp_is_edp(intel_dp))
>  		return true;
>  
> -	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
> -
>  	/*
>  	 * On IBX/CPT we may get here with LVDS already registered. Since the
>  	 * driver uses the only internal power sequencer available for both
> @@ -6609,11 +6606,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	with_intel_pps_lock(intel_dp, wakeref) {
> -		intel_dp_init_panel_power_timestamps(intel_dp);
> -		intel_dp_pps_init(intel_dp);
> -		intel_pps_vdd_sanitize(intel_dp);
> -	}
> +	intel_pps_init(intel_dp);
>  
>  	/* Cache DPCD and EDID for edp. */
>  	has_dpcd = intel_edp_init_dpcd(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index acd6d0092bc6..651c79ce4bdd 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -697,7 +697,7 @@ void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
>  		intel_pps_vdd_off_sync_unlocked(intel_dp);
>  }
>  
> -void edp_panel_vdd_work(struct work_struct *__work)
> +static void edp_panel_vdd_work(struct work_struct *__work)
>  {
>  	struct intel_dp *intel_dp =
>  		container_of(to_delayed_work(__work),
> @@ -1081,7 +1081,7 @@ bool intel_pps_have_power(struct intel_dp *intel_dp)
>  	return have_power;
>  }
>  
> -void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
> +static void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp)
>  {
>  	intel_dp->panel_power_off_time = ktime_get_boottime();
>  	intel_dp->last_power_on = jiffies;
> @@ -1351,3 +1351,16 @@ void intel_dp_pps_init(struct intel_dp *intel_dp)
>  		intel_dp_init_panel_power_sequencer_registers(intel_dp, false);
>  	}
>  }
> +
> +void intel_pps_init(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +
> +	INIT_DELAYED_WORK(&intel_dp->panel_vdd_work, edp_panel_vdd_work);
> +
> +	with_intel_pps_lock(intel_dp, wakeref) {
> +		intel_dp_init_panel_power_timestamps(intel_dp);
> +		intel_dp_pps_init(intel_dp);
> +		intel_pps_vdd_sanitize(intel_dp);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 3cab183658c6..53c0fafd1440 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -31,7 +31,6 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> -void edp_panel_vdd_work(struct work_struct *__work);
>  
>  void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
> @@ -42,9 +41,9 @@ bool intel_pps_have_power(struct intel_dp *intel_dp);
>  
>  void wait_panel_power_cycle(struct intel_dp *intel_dp);
>  
> +void intel_pps_init(struct intel_dp *intel_dp);
>  void intel_dp_pps_init(struct intel_dp *intel_dp);
>  void intel_power_sequencer_reset(struct drm_i915_private *i915);
> -void intel_dp_init_panel_power_timestamps(struct intel_dp *intel_dp);
>  
>  void vlv_init_panel_power_sequencer(struct intel_encoder *encoder,
>  				    const struct intel_crtc_state *crtc_state);
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
