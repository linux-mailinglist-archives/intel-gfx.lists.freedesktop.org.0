Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CD39ACA5C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:43:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF0110E7A6;
	Wed, 23 Oct 2024 12:43:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CQQmQaPZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F12B10E7A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729687392; x=1761223392;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C5ky2yYDlHxqH2Vrn4WVCVNWlDQdM1hP8fRI7aP3ADU=;
 b=CQQmQaPZKjHP/zc7zXXXFB3RlwpxbKLLKDqyccShNxUSZYYU9JTtYsqT
 R0tqbxjdqbzY5BAbgW+VFQ+YGL3DLyDVp3vQZGiGvemMNv5Ys1Pw2siCe
 jHRyK7sWoNgYPIfINXBX4gKMyH48T+yj6WQMe022OZN61jiMaLGjaChsJ
 +X/kMNAz6QWcWfrUCsPz6Pjazhxf+hkPlUyqjXk8DfCUk/HDwFWbwQ5qC
 DHlJzSQS6BMAn/uxJYT1tdZBhDFtipMMoGk3CsHVxaM0cIbMF8cx4ZDc1
 hErHJyAA3NFVoXi7TEl99NJKOT5M83CtCBsMYHoY4Wr887MPl+6lp10aL Q==;
X-CSE-ConnectionGUID: 5nFSkbgoQcWPAzUoMYtVYw==
X-CSE-MsgGUID: IbNl7celQbuwlalUQOjeAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29163763"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29163763"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:43:12 -0700
X-CSE-ConnectionGUID: 7OGPFKMhQDud3q8d238o+Q==
X-CSE-MsgGUID: MqIf2Sa0RmOuOjj70Yag6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80257516"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:43:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:43:09 +0300
Date: Wed, 23 Oct 2024 15:43:09 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 2/8] drm/i915/dp: Ensure panel power remains enabled
 during connector detection
Message-ID: <ZxjvXYrN6dZs8b2N@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Oct 16, 2024 at 04:23:59PM +0300, Imre Deak wrote:
> The sink's capabilities, like the DSC caps, depend on the source OUI
> written to the sink's DPCD registers and so this OUI value should be
> valid for the whole duration of the detection. An eDP sink will reset
> this OUI value when the panel power is disabled, so prevent the
> disabling - happening by default after a 1 sec idle period - for the
> whole duration of detection.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

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
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
