Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E582F4910
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 11:57:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C356E48E;
	Wed, 13 Jan 2021 10:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 600856E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 10:56:58 +0000 (UTC)
IronPort-SDR: 4hXm8ScsrgszbdjUgY583W61avJ7Y3McWnr2AQ1MRYlF03QFxrtSGlvrSSIqDtjmj839enkEvd
 JbLkEH64dgNw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="175604673"
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="175604673"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:56:55 -0800
IronPort-SDR: OZDB+BNPW7oCihUVyLP+iDfbXcjxRU+GwQtfWQN78DD4LuBphEc8cNxMYSfLNN9d8MBANuFByo
 T8fOUgOQphpQ==
X-IronPort-AV: E=Sophos;i="5.79,344,1602572400"; d="scan'208";a="464866491"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2021 02:56:47 -0800
Date: Wed, 13 Jan 2021 16:12:16 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210113104215.GN11717@intel.com>
References: <cover.1610127741.git.jani.nikula@intel.com>
 <1e722290208d827c5cae107fe41dbfe41a494793.1610127741.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e722290208d827c5cae107fe41dbfe41a494793.1610127741.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 06/17] drm/i915/pps: abstract
 intel_pps_vdd_off_sync
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

On 2021-01-08 at 19:44:14 +0200, Jani Nikula wrote:
> Add a locked version of intel_pps_vdd_off_sync_unlocked() that does
> everything the callers expect it to. No functional changes.
> 
> v2: Fix typo (Anshuman)
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
LGTM.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 31 +++---------------------
>  drivers/gpu/drm/i915/display/intel_pps.c | 18 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_pps.h |  2 +-
>  3 files changed, 21 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1384f1d3a9cf..bff5e735a92e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6249,17 +6249,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  
>  	intel_dp_mst_encoder_cleanup(dig_port);
> -	if (intel_dp_is_edp(intel_dp)) {
> -		intel_wakeref_t wakeref;
>  
> -		cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> -		/*
> -		 * vdd might still be enabled do to the delayed vdd off.
> -		 * Make sure vdd is actually turned off here.
> -		 */
> -		with_intel_pps_lock(intel_dp, wakeref)
> -			intel_pps_vdd_off_sync_unlocked(intel_dp);
> -	}
> +	intel_pps_vdd_off_sync(intel_dp);
>  
>  	intel_dp_aux_fini(intel_dp);
>  }
> @@ -6275,18 +6266,8 @@ static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
>  void intel_dp_encoder_suspend(struct intel_encoder *intel_encoder)
>  {
>  	struct intel_dp *intel_dp = enc_to_intel_dp(intel_encoder);
> -	intel_wakeref_t wakeref;
> -
> -	if (!intel_dp_is_edp(intel_dp))
> -		return;
>  
> -	/*
> -	 * vdd might still be enabled do to the delayed vdd off.
> -	 * Make sure vdd is actually turned off here.
> -	 */
> -	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> -	with_intel_pps_lock(intel_dp, wakeref)
> -		intel_pps_vdd_off_sync_unlocked(intel_dp);
> +	intel_pps_vdd_off_sync(intel_dp);
>  }
>  
>  void intel_dp_encoder_shutdown(struct intel_encoder *intel_encoder)
> @@ -7140,13 +7121,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  	return true;
>  
>  out_vdd_off:
> -	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> -	/*
> -	 * vdd might still be enabled do to the delayed vdd off.
> -	 * Make sure vdd is actually turned off here.
> -	 */
> -	with_intel_pps_lock(intel_dp, wakeref)
> -		intel_pps_vdd_off_sync_unlocked(intel_dp);
> +	intel_pps_vdd_off_sync(intel_dp);
>  
>  	return false;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index fd3677948800..b6c07694ae9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -637,7 +637,7 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  			dp_to_dig_port(intel_dp)->base.base.name);
>  }
>  
> -void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
> +static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port =
> @@ -678,6 +678,22 @@ void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  				fetch_and_zero(&intel_dp->vdd_wakeref));
>  }
>  
> +void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> +	/*
> +	 * vdd might still be enabled due to the delayed vdd off.
> +	 * Make sure vdd is actually turned off here.
> +	 */
> +	with_intel_pps_lock(intel_dp, wakeref)
> +		intel_pps_vdd_off_sync_unlocked(intel_dp);
> +}
> +
>  void edp_panel_vdd_work(struct work_struct *__work)
>  {
>  	struct intel_dp *intel_dp =
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index e7f0473be9a7..3cab183658c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -29,7 +29,6 @@ void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
>  
>  bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
> -void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>  void edp_panel_vdd_work(struct work_struct *__work);
> @@ -38,6 +37,7 @@ void intel_pps_vdd_sanitize(struct intel_dp *intel_dp);
>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
>  void intel_pps_on(struct intel_dp *intel_dp);
>  void intel_pps_off(struct intel_dp *intel_dp);
> +void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
>  bool intel_pps_have_power(struct intel_dp *intel_dp);
>  
>  void wait_panel_power_cycle(struct intel_dp *intel_dp);
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
