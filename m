Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5568B9ACE7A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:19:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E6210E120;
	Wed, 23 Oct 2024 15:19:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UDpvdsZT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5222610E818
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 15:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729696757; x=1761232757;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=KvGaYBl36IYA8z8Hct3wjZRKFY4TZUewXlbzkTa1dbQ=;
 b=UDpvdsZTFiKyJ7ExUVMzMYOi2xvrsb/HmY6Qb/BdQlu3SdM0rZHGg4He
 +eQBjiQ1A7A6AD3rq2KIG0eZxTxV6aTp13Y/qe4N+vCp7C/qa4z7NkESr
 e9aPP0UmHEvyQS+DBdOBb3VdxRXYeMS5GjWOMo8DVH/QMjJvRXKNlyjDi
 AWtXNmsuzA4jKfMDMYQ7yvDaXrBbaijE+yvS2VdXBqqNwDjL8gJ3U25DR
 qp94VfajEMhWrPStOQj2GKZU2HGCEobhh4DbP1lqG9j62y4Duv7OhOiHX
 dvgUSQK6Cuwf/s4+Ezn/NOI9kCx9DJOEiD2IAcjjEOcIm3XcJUcNiVgr/ g==;
X-CSE-ConnectionGUID: gnTa4hg0Riy7Cbbbu0aFhQ==
X-CSE-MsgGUID: Q4zwlbagTmqqyl9XupHjIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46757628"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46757628"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:19:16 -0700
X-CSE-ConnectionGUID: JuBDZSskR8Gx7VtQi1GLEg==
X-CSE-MsgGUID: T1m4+Kd1QCmZkx+k6lFqFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80315026"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.116])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:19:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 2/8] drm/i915/dp: Ensure panel power remains enabled
 during connector detection
In-Reply-To: <20241016132405.2231744-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-3-imre.deak@intel.com>
Date: Wed, 23 Oct 2024 18:19:11 +0300
Message-ID: <87o73au9sg.fsf@intel.com>
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

On Wed, 16 Oct 2024, Imre Deak <imre.deak@intel.com> wrote:
> The sink's capabilities, like the DSC caps, depend on the source OUI
> written to the sink's DPCD registers and so this OUI value should be
> valid for the whole duration of the detection. An eDP sink will reset
> this OUI value when the panel power is disabled, so prevent the
> disabling - happening by default after a 1 sec idle period - for the
> whole duration of detection.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c  | 18 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_pps.c | 11 +++++++++++
>  drivers/gpu/drm/i915/display/intel_pps.h |  1 +
>  3 files changed, 25 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 977ff2ce18eeb..3da06d25bc4ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5616,6 +5616,8 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  	intel_dp_flush_connector_commits(intel_connector);
>  
> +	intel_pps_vdd_on(intel_dp);
> +

The comment above this one says, "Must be paired with intel_pps_off()."

Needs an update.

BR,
Jani.


>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status = edp_detect(intel_dp);
> @@ -5646,12 +5648,15 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  		intel_dp_tunnel_disconnect(intel_dp);
>  
> -		goto out;
> +		goto out_unset_edid;
>  	}
>  
>  	ret = intel_dp_tunnel_detect(intel_dp, ctx);
> -	if (ret == -EDEADLK)
> -		return ret;
> +	if (ret == -EDEADLK) {
> +		status = ret;
> +
> +		goto out_vdd_off;
> +	}
>  
>  	if (ret == 1)
>  		intel_connector->base.epoch_counter++;
> @@ -5679,7 +5684,7 @@ intel_dp_detect(struct drm_connector *connector,
>  		 * with EDID on it
>  		 */
>  		status = connector_status_disconnected;
> -		goto out;
> +		goto out_unset_edid;
>  	}
>  
>  	/*
> @@ -5708,7 +5713,7 @@ intel_dp_detect(struct drm_connector *connector,
>  
>  	intel_dp_check_device_service_irq(intel_dp);
>  
> -out:
> +out_unset_edid:
>  	if (status != connector_status_connected && !intel_dp->is_mst)
>  		intel_dp_unset_edid(intel_dp);
>  
> @@ -5717,6 +5722,9 @@ intel_dp_detect(struct drm_connector *connector,
>  						 status,
>  						 intel_dp->dpcd,
>  						 intel_dp->downstream_ports);
> +out_vdd_off:
> +	intel_pps_vdd_off(intel_dp);
> +
>  	return status;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ffeee9daa5689..64f1f7ea94993 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -950,6 +950,17 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  		edp_panel_vdd_schedule_off(intel_dp);
>  }
>  
> +void intel_pps_vdd_off(struct intel_dp *intel_dp)
> +{
> +	intel_wakeref_t wakeref;
> +
> +	if (!intel_dp_is_edp(intel_dp))
> +		return;
> +
> +	with_intel_pps_lock(intel_dp, wakeref)
> +		intel_pps_vdd_off_unlocked(intel_dp, false);
> +}
> +
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
> index bc5046d536264..c83007152f07d 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.h
> +++ b/drivers/gpu/drm/i915/display/intel_pps.h
> @@ -34,6 +34,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp);
>  void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
>  
>  void intel_pps_vdd_on(struct intel_dp *intel_dp);
> +void intel_pps_vdd_off(struct intel_dp *intel_dp);
>  void intel_pps_on(struct intel_dp *intel_dp);
>  void intel_pps_off(struct intel_dp *intel_dp);
>  void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);

-- 
Jani Nikula, Intel
