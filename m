Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 848972E6E7E
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 07:27:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1AB892A7;
	Tue, 29 Dec 2020 06:27:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37895892A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 06:27:26 +0000 (UTC)
IronPort-SDR: K8psyLKFMxq0doPlfOo2SAFAZQvatQ4PEs2CEOAMcU0qTqWsKTLagF8Z12ASQ0yDT/bi/fpcYf
 fsNScKYknxCg==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="172953194"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="172953194"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:27:25 -0800
IronPort-SDR: 1bjTv8M9Yhmsx9BPzbJ5EvRkZzW8zd7BfdMQs4VsHBkakn4EZSReR2Iiy703+WfBtk1bPLuKer
 4qdMY2rT+qng==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="358813360"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 22:27:24 -0800
Date: Tue, 29 Dec 2020 11:42:24 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229055206.GA11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <dc2762904d9d78c46c75f72047720ab1820870f1.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc2762904d9d78c46c75f72047720ab1820870f1.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/pps: rename
 intel_edp_backlight_* to intel_pps_backlight_*
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

On 2020-12-22 at 20:19:43 +0530, Jani Nikula wrote:
> Follow the usual naming pattern for functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
>  drivers/gpu/drm/i915/display/intel_pps.c | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_pps.h |  6 +++---
>  3 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0870872fb594..9813fb7e109c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2536,7 +2536,7 @@ void intel_edp_backlight_on(const struct intel_crtc_state *crtc_state,
>  	drm_dbg_kms(&i915->drm, "\n");
>  
>  	intel_panel_enable_backlight(crtc_state, conn_state);
> -	_intel_edp_backlight_on(intel_dp);
> +	intel_pps_backlight_on(intel_dp);
>  }
>  
>  /* Disable backlight PP control and backlight PWM. */
> @@ -2550,7 +2550,7 @@ void intel_edp_backlight_off(const struct drm_connector_state *old_conn_state)
>  
>  	drm_dbg_kms(&i915->drm, "\n");
>  
> -	_intel_edp_backlight_off(intel_dp);
> +	intel_pps_backlight_off(intel_dp);
>  	intel_panel_disable_backlight(old_conn_state);
>  }
>  
> @@ -6688,7 +6688,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	}
>  
>  	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
> -	intel_connector->panel.backlight.power = intel_edp_backlight_power;
> +	intel_connector->panel.backlight.power = intel_pps_backlight_power;
>  	intel_panel_setup_backlight(connector, pipe);
>  
>  	if (fixed_mode) {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 9b0c432552b7..0edda87dee94 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -847,7 +847,7 @@ void intel_edp_panel_off(struct intel_dp *intel_dp)
>  }
>  
>  /* Enable backlight in the panel power control. */
> -void _intel_edp_backlight_on(struct intel_dp *intel_dp)
> +void intel_pps_backlight_on(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	intel_wakeref_t wakeref;
> @@ -873,7 +873,7 @@ void _intel_edp_backlight_on(struct intel_dp *intel_dp)
>  }
>  
>  /* Disable backlight in the panel power control. */
> -void _intel_edp_backlight_off(struct intel_dp *intel_dp)
> +void intel_pps_backlight_off(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	intel_wakeref_t wakeref;
> @@ -900,7 +900,7 @@ void _intel_edp_backlight_off(struct intel_dp *intel_dp)
>   * Hook for controlling the panel power control backlight through the bl_power
>   * sysfs attribute. Take care to handle multiple calls.
>   */
> -void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
> +void intel_pps_backlight_power(struct intel_connector *connector, bool enable)
>  {
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> @@ -917,9 +917,9 @@ void intel_edp_backlight_power(struct intel_connector *connector, bool enable)
>  		    enable ? "enable" : "disable");
>  
>  	if (enable)
> -		_intel_edp_backlight_on(intel_dp);
> +		intel_pps_backlight_on(intel_dp);
>  	else
> -		_intel_edp_backlight_off(intel_dp);
> +		intel_pps_backlight_off(intel_dp);
>  }
>  
>  static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index f44e6ce9e8c1..81e4e9fc3cf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -23,9 +23,9 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
>  	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
>  
>  void intel_dp_check_edp(struct intel_dp *intel_dp);
> -void _intel_edp_backlight_on(struct intel_dp *intel_dp);
> -void _intel_edp_backlight_off(struct intel_dp *intel_dp);
> -void intel_edp_backlight_power(struct intel_connector *connector, bool enable);
> +void intel_pps_backlight_on(struct intel_dp *intel_dp);
> +void intel_pps_backlight_off(struct intel_dp *intel_dp);
> +void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
>  
>  bool edp_panel_vdd_on(struct intel_dp *intel_dp);
>  void edp_panel_vdd_off(struct intel_dp *intel_dp, bool sync);
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
