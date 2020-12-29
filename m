Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 036C32E6EB6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Dec 2020 08:19:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448F088EAA;
	Tue, 29 Dec 2020 07:19:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE3088EAA
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Dec 2020 07:19:52 +0000 (UTC)
IronPort-SDR: +pHIQoJrEQn8fVW5yN7uSN2a3Vdi5pC0N0sTte8RU47XrDgliU+2uQ+T5uBihla+vCZubvsyFd
 Yy2xeCwCBf1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="164178619"
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="164178619"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:19:52 -0800
IronPort-SDR: avxSW1g+UY6ocjuTAl/fh21M40uZkq833JKeQv/PTivxO81EVzrbGW8PpLmeVGSrweUnz2dfRb
 f2fcmLFKJtww==
X-IronPort-AV: E=Sophos;i="5.78,457,1599548400"; d="scan'208";a="494553727"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 23:19:50 -0800
Date: Tue, 29 Dec 2020 12:34:59 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20201229070456.GG11717@intel.com>
References: <cover.1608648128.git.jani.nikula@intel.com>
 <a5a60c020b4f9277de1276b2d6010119a5f072ab.1608648128.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5a60c020b4f9277de1276b2d6010119a5f072ab.1608648128.git.jani.nikula@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 09/13] drm/i915/pps: rename
 intel_dp_check_edp to intel_pps_check_power_unlocked
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

On 2020-12-22 at 20:19:49 +0530, Jani Nikula wrote:
> Follow the usual naming pattern for functions.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_pps.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_pps.h | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 334ba1775cd3..65406d4ccdbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1046,7 +1046,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	 */
>  	cpu_latency_qos_update_request(&i915->pm_qos, 0);
>  
> -	intel_dp_check_edp(intel_dp);
> +	intel_pps_check_power_unlocked(intel_dp);
>  
>  	/* Try to wait for any previous AUX channel activity */
>  	for (try = 0; try < 3; try++) {
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3e62d1450682..dfd6722bc40e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -431,7 +431,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
>  	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
>  }
>  
> -void intel_dp_check_edp(struct intel_dp *intel_dp)
> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
IMHO comment to take pps_lock would be useful here.
Thanks,
Anshuman.
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index 4780b59a59df..8dda282abd42 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -22,7 +22,6 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp, intel_wakeref_t wake
>  #define with_intel_pps_lock(dp, wf)						\
>  	for ((wf) = intel_pps_lock(dp); (wf); (wf) = intel_pps_unlock((dp), (wf)))
>  
> -void intel_dp_check_edp(struct intel_dp *intel_dp);
>  void intel_pps_backlight_on(struct intel_dp *intel_dp);
>  void intel_pps_backlight_off(struct intel_dp *intel_dp);
>  void intel_pps_backlight_power(struct intel_connector *connector, bool enable);
> @@ -31,6 +30,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync);
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_off_unlocked(struct intel_dp *intel_dp);
> +void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
>  
>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
>  void intel_pps_on(struct intel_dp *intel_dp);
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
