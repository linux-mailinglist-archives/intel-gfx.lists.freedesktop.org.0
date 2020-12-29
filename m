Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7822E6EAA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 08:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4505892A9;
	Tue, 29 Dec 2020 07:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BACC892A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 07:02:45 +0000 (UTC)
IronPort-SDR: 7ju4R2QF1exuazFFsvyJUlEHyiGwmhgM4rr22qRjxPkdIjUK9PaHPDyNf2TUPTyu+ZJiZM+VEx
 s7Mhzq2G2yfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="172955564"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="172955564"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:02:45 -0800
IronPort-SDR: jF8FTSsOoRGPts6SKJddurI/71lnWiy5wgytB19nvLtHB0toNoaZYQ3N0U3M2f75VMiPdb4dm3
 0N47bN80aAFA==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="347282564"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:02:43 -0800
Date: Tue, 29 Dec 2020 12:17:52 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229064751.GD11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <511ebda7b1fe5402e0312b20f7cf642318da9132.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511ebda7b1fe5402e0312b20f7cf642318da9132.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/pps: abstract
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-22 at 20:19:46 +0530, Jani Nikula wrote:
> Add a locked version of intel_pps_vdd_off_sync_unlocked() that does
> everything the callers expect it to.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 31 +++---------------------
>  drivers/gpu/drm/i915/display/intel_pps.c | 17 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_pps.h |  2 +-
>  3 files changed, 20 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f2794cc4292a..1a34c9351c30 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5809,17 +5809,8 @@ void intel_dp_encoder_flush_work(struct drm_encoder *encoder)
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
> @@ -5835,18 +5826,8 @@ static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
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
> @@ -6700,13 +6681,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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
> index 01c9e69f4e3a..acd6d0092bc6 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -641,7 +641,7 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
>  			dp_to_dig_port(intel_dp)->base.base.name);
>  }
>  
> -void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
> +static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	struct intel_digital_port *dig_port =
> @@ -682,6 +682,21 @@ void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
>  				fetch_and_zero(&intel_dp->vdd_wakeref));
>  }
>  
> +void intel_pps_vdd_off_sync(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	cancel_delayed_work_sync(&intel_dp->panel_vdd_work);
> +	/*
> +	 * vdd might still be enabled do to the delayed vdd off.
	I belive there is a typo here "do -> due"
Thanks,
Anshuman.
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
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
