Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C299AC9D0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 14:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83CA910E048;
	Wed, 23 Oct 2024 12:15:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i8CmREx9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF96E10E048
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 12:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729685714; x=1761221714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CC8LdZpeCX0SUkogHdi37jOnfCVYUHg22egvcKO+0mg=;
 b=i8CmREx9GqHYr0iJBCSqGl3H+hDA+jcrSgy21EW3ogKn/uJGOCvOPePo
 /qftm4R15gY27TZ4XsTLpM8Ri3pqQZZzQcoOkOhiXg/+PhOBCmq5FCNtp
 Fa7Aj7loCXM4ozgMrNASzvX1bgxN3sudFFchxV+TOQKQT3FTfLCC/Jh0n
 xutCBmwGCXK40ZuXUUV0IjeJvIDpc7nXHQajNQNJOvcCmq/ITm6HfY44J
 jszJoR3IXZ1n/EK5/t1r4s3ZC4gje6/feZHb/7X4CeKash9DgQfFZPDFW
 mmV4nrolm2cLw5zaFehkeQCwDmHiOyYG1OXJNctwzwrG2q+BkK+DmII4H A==;
X-CSE-ConnectionGUID: Byq9wYo6SzOGgb/wKBv62g==
X-CSE-MsgGUID: nH6DrawXSNCEBHkZ7OrMGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="39844014"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="39844014"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 05:15:14 -0700
X-CSE-ConnectionGUID: IetonadlSka6W/aVjvW1XA==
X-CSE-MsgGUID: QB8LjyYZQTqCvVqHowirxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80253323"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Oct 2024 05:15:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Oct 2024 15:15:11 +0300
Date: Wed, 23 Oct 2024 15:15:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3 1/8] drm/i915/dp: Flush modeset commits during
 connector detection
Message-ID: <Zxjoz9VmUomyQE-_@intel.com>
References: <20241016132405.2231744-1-imre.deak@intel.com>
 <20241016132405.2231744-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241016132405.2231744-2-imre.deak@intel.com>
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

On Wed, Oct 16, 2024 at 04:23:58PM +0300, Imre Deak wrote:
> Make sure that a DP connector detection doesn't happen in parallel
> with an ongoing modeset on the connector. The reasons for this are:
> 
> - Besides reading the capabilities, EDID etc. the detection may change
>   the state of the sink (via the AUX bus), for instance by setting the
>   LTTPR mode or the source OUI (the latter introduced by an upcoming
>   patch). It's better to avoid such changes affecting an onging modeset
>   in any way.
> 
> - During a modeset's link training any access to DPCD registers, besides
>   the registers used for link training should be avoided, at least in
>   the LTTPR non-transparent and transparent link training modes.
> 
>   Such asynchronous accesses - besides connector detection - can also
>   happen via the AUX device node for instance, for those a parallel
>   modeset will have to be avoided in a similar way to the change in this
>   patch. (A topic for a follow-up change.)
> 
> - The source OUI written to an eDP sink is valid only while the panel
>   power is enabled. A modeset on eDP will enable/disable the panel power
>   synchronously; this should be prevented in the middle of the connector
>   detection, to ensure a consistent sink state (which depends on the
>   source OUI) for the whole duration of detection. The panel power could
>   still get disabled during detection after an idle period (1 sec), this
>   will be prevented by the next patch.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 28 ++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
>  3 files changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6b27fabd61c37..977ff2ce18eeb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5035,6 +5035,16 @@ bool intel_dp_has_connector(struct intel_dp *intel_dp,
>  	return false;
>  }
>  
> +static void wait_for_crtc_hw_done(

This doesn't really do anything with the crtc, so the name feels
a bit off.

> struct drm_i915_private *i915, struct drm_crtc_commit *commit)

'struct intel_display' everywhere? Or are you looking to backport this
so far back that we don't have that?

Otherwise
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +{
> +	if (!commit)
> +		return;
> +
> +	drm_WARN_ON(&i915->drm,
> +		    !wait_for_completion_timeout(&commit->hw_done,
> +						 msecs_to_jiffies(5000)));
> +}
> +
>  int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
>  			      struct drm_modeset_acquire_ctx *ctx,
>  			      u8 *pipe_mask)
> @@ -5071,10 +5081,7 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
>  		if (!crtc_state->hw.active)
>  			continue;
>  
> -		if (conn_state->commit)
> -			drm_WARN_ON(&i915->drm,
> -				    !wait_for_completion_timeout(&conn_state->commit->hw_done,
> -								 msecs_to_jiffies(5000)));
> +		wait_for_crtc_hw_done(i915, conn_state->commit);
>  
>  		*pipe_mask |= BIT(crtc->pipe);
>  	}
> @@ -5083,6 +5090,17 @@ int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
>  	return ret;
>  }
>  
> +void intel_dp_flush_connector_commits(struct intel_connector *connector)
> +{
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	const struct drm_connector_state *conn_state =
> +		connector->base.state;
> +
> +	drm_modeset_lock_assert_held(&i915->drm.mode_config.connection_mutex);
> +
> +	return wait_for_crtc_hw_done(i915, conn_state->commit);
> +}
> +
>  static bool intel_dp_is_connected(struct intel_dp *intel_dp)
>  {
>  	struct intel_connector *connector = intel_dp->attached_connector;
> @@ -5596,6 +5614,8 @@ intel_dp_detect(struct drm_connector *connector,
>  	if (!intel_display_driver_check_access(dev_priv))
>  		return connector->status;
>  
> +	intel_dp_flush_connector_commits(intel_connector);
> +
>  	/* Can't disconnect eDP */
>  	if (intel_dp_is_edp(intel_dp))
>  		status = edp_detect(intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 60baf4072dc9d..4efb9605a50e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -54,6 +54,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  int intel_dp_get_active_pipes(struct intel_dp *intel_dp,
>  			      struct drm_modeset_acquire_ctx *ctx,
>  			      u8 *pipe_mask);
> +void intel_dp_flush_connector_commits(struct intel_connector *connector);
>  void intel_dp_link_check(struct intel_encoder *encoder);
>  void intel_dp_check_link_state(struct intel_dp *intel_dp);
>  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 1a2ff3e1cb68f..5bba078c00d89 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1573,6 +1573,8 @@ intel_dp_mst_detect(struct drm_connector *connector,
>  	if (!intel_display_driver_check_access(i915))
>  		return connector->status;
>  
> +	intel_dp_flush_connector_commits(intel_connector);
> +
>  	return drm_dp_mst_detect_port(connector, ctx, &intel_dp->mst_mgr,
>  				      intel_connector->port);
>  }
> -- 
> 2.44.2

-- 
Ville Syrjälä
Intel
