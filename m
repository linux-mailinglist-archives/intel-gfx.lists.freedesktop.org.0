Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFAXJRiXGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:39:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C75602F55
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69B610FF3C;
	Fri, 29 May 2026 13:39:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UA3MUlCm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DD6610FF3C;
 Fri, 29 May 2026 13:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780061974; x=1811597974;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NWhIfCym76BFmLrxPzELOdrdnKS2EO1qq5n5sSsd/DI=;
 b=UA3MUlCmeacQSHHFT3ehsXa0dWuqQrMU56QoINa01V782y4gL9vrL+MC
 AUAqrEVcbpukW025PnmlPMpcixplYo2MfJ4vLjawiM4Dd48Oai4bZzZI/
 27yf0YDoxp/pP+TZlVfNbr/a3aiDQhPOznSybZlALB9BSC5nj6FfHI4Pi
 Eyy5gTTfAdBp5yGlckWuEYJ0UCN+44TBYHt26L/mYQq/HQZaRxcrJz6K/
 m0d/PMotLJ78FJ+DEMpzbWk2hDLnN8ssqzgFdsB7wbRDrIbJJduj+pT+p
 SsNXf8ix2mQhq4T5PARVb5BsFvpM54TpLP5hq3/cZ0A8J1pRJnuJ8ih9N g==;
X-CSE-ConnectionGUID: 8jRJft6IT1+3KBGNGrY0dA==
X-CSE-MsgGUID: T0V8rPdcQyqJBxZcZAkSSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80941296"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80941296"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:39:33 -0700
X-CSE-ConnectionGUID: ucFHyzv/QXiVMslW8E7L1g==
X-CSE-MsgGUID: W+Vimfx8Suepyx8IR/5o3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242952622"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:39:31 -0700
Date: Fri, 29 May 2026 16:39:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 12/24] drm/{i915,xe}: add
 intel_display_driver_pm_{suspend_late,resume_early}()
Message-ID: <ahmXEKyJdREVyKQY@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <f1cb90066b6f28c0bb9f21cb6eefdcb42411cce8.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f1cb90066b6f28c0bb9f21cb6eefdcb42411cce8.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.40 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.71)[subject];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 22C75602F55
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:56PM +0300, Jani Nikula wrote:
> Add new functions intel_display_driver_pm_suspend_late() and
> intel_display_driver_pm_resume_early(), to be called from the
> corresponding struct dev_pm_ops hooks.
> 
> There's a slight functional change for !HAS_DISPLAY() in that the new
> functions return early. Assume this is what we want, and there are no
> cases where display engine is present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_driver.c  | 16 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_display_driver.h  |  2 ++
>  drivers/gpu/drm/i915/i915_driver.c               |  6 +++---
>  drivers/gpu/drm/xe/display/xe_display.c          |  4 ++--
>  4 files changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index f362532c6834..77fa4497b442 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -714,6 +714,22 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
>  	return ret;
>  }
>  
> +void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle)
> +{
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	intel_display_power_suspend_late(display, s2idle);
> +}
> +
> +void intel_display_driver_pm_resume_early(struct intel_display *display)
> +{
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	intel_display_power_resume_early(display);
> +}
> +
>  int
>  __intel_display_driver_resume(struct intel_display *display,
>  			      struct drm_atomic_commit *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index d8a08ca68d4e..adfde02465ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -26,6 +26,8 @@ void intel_display_driver_remove_nogem(struct intel_display *display);
>  void intel_display_driver_unregister(struct intel_display *display);
>  
>  int intel_display_driver_pm_suspend(struct intel_display *display);
> +void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle);
> +void intel_display_driver_pm_resume_early(struct intel_display *display);
>  void intel_display_driver_pm_resume(struct intel_display *display);
>  
>  /* interface for intel_display_reset.c */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 063d4bdec2d9..6fd3e8b155b1 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1181,12 +1181,12 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
>  
> -	intel_display_power_suspend_late(display, s2idle);
> +	intel_display_driver_pm_suspend_late(display, s2idle);
>  
>  	ret = vlv_suspend_complete(dev_priv);
>  	if (ret) {
>  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
> -		intel_display_power_resume_early(display);
> +		intel_display_driver_pm_resume_early(display);
>  	}
>  
>  	enable_rpm_wakeref_asserts(rpm);
> @@ -1345,7 +1345,7 @@ static int i915_drm_resume_early(struct drm_device *dev)
>  	for_each_gt(gt, dev_priv, i)
>  		intel_gt_resume_early(gt);
>  
> -	intel_display_power_resume_early(display);
> +	intel_display_driver_pm_resume_early(display);
>  
>  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index f34a9d2ffc16..bbd4f527d5e3 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -314,7 +314,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_suspend_late(display, s2idle);
> +	intel_display_driver_pm_suspend_late(display, s2idle);
>  }
>  
>  void xe_display_pm_resume_early(struct xe_device *xe)
> @@ -324,7 +324,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_resume_early(display);
> +	intel_display_driver_pm_resume_early(display);
>  }
>  
>  void xe_display_pm_resume(struct xe_device *xe)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
