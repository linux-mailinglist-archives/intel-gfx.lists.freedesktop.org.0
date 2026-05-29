Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEc9Ku6UGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:30:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EF8602E1B
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DFC010FF2F;
	Fri, 29 May 2026 13:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zenco6Rg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9CC110FF2F;
 Fri, 29 May 2026 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780061419; x=1811597419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=v22v2O4bTtDPDtCjO5yo5Y9l3MIWG559gfo4495QTKk=;
 b=Zenco6Rg4ru8UaEZ54SGvTp/Pf4ujQ6FyjEwxqVaXQ/cdqb8Rks1+mEs
 3usshQDSC6ifvWaJL/Q6DWUmqSmZzET0z8qskLBkd02xuv7S+O8fxUnxj
 WD8/AV6zFA0Gb6fpBI5rdcfJOqsFx6jcBhUPK6qtGI6OqB24Kc4wZYOiU
 DOU/cT/al5Zay9Cu0pAo+kknZlV6Xms3C7SrXV5bohbcS7//03u5o5y32
 1L+oNJnPSdBdNtzClN/d/bFUCvqG4Ug+Iq7CoeftxRO1TmfIBX/dKNj0M
 ixiv8Vb+RJibDlpx7y+OKKyuwG5qrbcMbCrWkd3wNQOLkBHcmaDRi2yQj A==;
X-CSE-ConnectionGUID: aKvz9FzRR2iVqmz6yh6+zA==
X-CSE-MsgGUID: EyVnJlsbSPKPV/drjHLUqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="84771953"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84771953"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:30:18 -0700
X-CSE-ConnectionGUID: lULzJE4AQsGIdL9A+CrjlA==
X-CSE-MsgGUID: ui/6fmkhTvqflMs7nr7OYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="244677254"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:30:16 -0700
Date: Fri, 29 May 2026 16:30:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 06/24] drm/i915/display: add "pm" to
 intel_display_driver_{suspend,resume}() names
Message-ID: <ahmU5HQN_G_vkZkj@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <1659ad8bfa0bf6c4e420221d80275ba5ffccc1f3.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1659ad8bfa0bf6c4e420221d80275ba5ffccc1f3.1780051905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 24EF8602E1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:50PM +0300, Jani Nikula wrote:
> Start naming the functions that are supposed to be called from the
> struct dem_pm_ops hooks with intel_display_driver_pm_*() to distinguish
> them better from the rest.

I guess this slightly conflicts with the i915 approach where the
_pm_ naming was restricted to the functions that directly
implement the pm ops, and the stuff they call didn't have the
_pm_ and instead used _drm_ naming, perhaps because they also
get called from the switcheroo paths. But the switcheroo stuff
should really just use be part of the normal device pm framework
so the _pm_ naming there wouldn't be wrong in my book either.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c |  4 ++--
>  drivers/gpu/drm/i915/display/intel_display_driver.h |  5 +++--
>  drivers/gpu/drm/i915/i915_driver.c                  | 12 ++++++------
>  drivers/gpu/drm/xe/display/xe_display.c             |  6 +++---
>  4 files changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index d0729936f681..9be4c94740dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -678,7 +678,7 @@ void intel_display_driver_unregister(struct intel_display *display)
>   * turn all crtc's off, but do not adjust state
>   * This has to be paired with a call to intel_modeset_setup_hw_state.
>   */
> -int intel_display_driver_suspend(struct intel_display *display)
> +int intel_display_driver_pm_suspend(struct intel_display *display)
>  {
>  	struct drm_atomic_commit *state;
>  	int ret;
> @@ -741,7 +741,7 @@ __intel_display_driver_resume(struct intel_display *display,
>  	return ret;
>  }
>  
> -void intel_display_driver_resume(struct intel_display *display)
> +void intel_display_driver_pm_resume(struct intel_display *display)
>  {
>  	struct drm_atomic_commit *state = display->restore.modeset_state;
>  	struct drm_modeset_acquire_ctx ctx;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 5270c26a32e0..d8a08ca68d4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -24,8 +24,9 @@ void intel_display_driver_remove(struct intel_display *display);
>  void intel_display_driver_remove_noirq(struct intel_display *display);
>  void intel_display_driver_remove_nogem(struct intel_display *display);
>  void intel_display_driver_unregister(struct intel_display *display);
> -int intel_display_driver_suspend(struct intel_display *display);
> -void intel_display_driver_resume(struct intel_display *display);
> +
> +int intel_display_driver_pm_suspend(struct intel_display *display);
> +void intel_display_driver_pm_resume(struct intel_display *display);
>  
>  /* interface for intel_display_reset.c */
>  int __intel_display_driver_resume(struct intel_display *display,
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 60d5e06675ab..bd73d64c1ccb 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1114,10 +1114,10 @@ static int i915_drm_prepare(struct drm_device *dev)
>  	intel_pxp_suspend_prepare(i915->pxp);
>  
>  	/*
> -	 * NB intel_display_driver_suspend() may issue new requests after we've
> -	 * ostensibly marked the GPU as ready-to-sleep here. We need to
> -	 * split out that work and pull it forward so that after point,
> -	 * the GPU is not woken again.
> +	 * NB intel_display_driver_pm_suspend() may issue new requests after
> +	 * we've ostensibly marked the GPU as ready-to-sleep here. We need to
> +	 * split out that work and pull it forward so that after point, the GPU
> +	 * is not woken again.
>  	 */
>  	return i915_gem_backup_suspend(i915);
>  }
> @@ -1139,7 +1139,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  		intel_display_driver_disable_user_access(display);
>  	}
>  
> -	intel_display_driver_suspend(display);
> +	intel_display_driver_pm_suspend(display);
>  
>  	intel_encoder_block_all_hpds(display);
>  
> @@ -1325,7 +1325,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_encoder_unblock_all_hpds(display);
>  
> -	intel_display_driver_resume(display);
> +	intel_display_driver_pm_resume(display);
>  
>  	if (intel_display_device_present(display)) {
>  		intel_display_driver_enable_user_access(display);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 8d55e7a37d6d..d1c450a18713 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -309,7 +309,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  	if (intel_display_device_present(display)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_suspend(display);
> +		intel_display_driver_pm_suspend(display);
>  	}
>  
>  	intel_encoder_block_all_hpds(display);
> @@ -339,7 +339,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	if (intel_display_device_present(display)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_suspend(display);
> +		intel_display_driver_pm_suspend(display);
>  	}
>  
>  	intel_encoder_block_all_hpds(display);
> @@ -447,7 +447,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	intel_encoder_unblock_all_hpds(display);
>  
>  	if (intel_display_device_present(display)) {
> -		intel_display_driver_resume(display);
> +		intel_display_driver_pm_resume(display);
>  		intel_display_driver_enable_user_access(display);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  	}
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
