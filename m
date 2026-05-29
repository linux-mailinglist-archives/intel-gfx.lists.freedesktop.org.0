Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGqBEazTGWodzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:58:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A856C606EC1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D3A11236B;
	Fri, 29 May 2026 17:58:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yo58SYTk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7809F112368;
 Fri, 29 May 2026 17:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780077479; x=1811613479;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=o+bkZfRbNG3bL4FhYucJ4s8OWuklDwxppiX5rkO1U68=;
 b=Yo58SYTklGMl2Rl2Nj/vUJKeZWq/fvvi/LWZsES4pQghuyZ4dLWhswG5
 2bmWVktWMzfnxowWYGNX3HSEnX+wiP/7HQh3ZBxOQ/XeLcdo1JMxLM7cc
 gLdiHmGTvirdJ2epoI+9SEOxO1Q3l/cpfzGv1xschCVAsvu4vKRFrXalQ
 IhjsptOl+gopnWHqoymaCqRI9FcsCJ0FHJ7jPM7EHfmNu4kfDx0Kbp22p
 s34Opl3HcCanV+gVUNdlPaZ9TJSvSxmmVk5bX2ARSUlZOpqd8lYY5szex
 EopPcDBqypejHygNZS03hWU1HjpSMky9aeTepmzqvRJMcukVMxeYEPAZM w==;
X-CSE-ConnectionGUID: Ybw/ucrCRF+jOcuYXbh6Vg==
X-CSE-MsgGUID: qlqnNM+xR32s3wQVqsnFYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="83512232"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="83512232"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:57:58 -0700
X-CSE-ConnectionGUID: hQ99FqIoRR6ZO8HlacQp1Q==
X-CSE-MsgGUID: 1IGRX3y3TR+bqKbYbnsJgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="242118570"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:57:57 -0700
Date: Fri, 29 May 2026 20:57:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 15/24] drm/i915: add intel_display_driver_shutdown()
Message-ID: <ahnToSL0h8USuy1E@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <90d1c7e307340748b7f18a15c6900ae515be5b41.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <90d1c7e307340748b7f18a15c6900ae515be5b41.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.60 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.91)[subject];
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
X-Rspamd-Queue-Id: A856C606EC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:59PM +0300, Jani Nikula wrote:
> Add intel_display_driver_shutdown() to be called from the struct
> pci_driver .shutdown path. Initially, only migrate i915, as there are
> some subtle differences with xe that will be addressed later.
> 
> Pick up as much as we can at this point without making major functional
> changes.
> 
> There's a slight functional change in that
> intel_display_driver_shutdown() returns early for !HAS_DISPLAY(). Assume
> this is what we want, and there are no cases where display engine is
> present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 28 +++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  1 +
>  drivers/gpu/drm/i915/i915_driver.c            | 24 +---------------
>  3 files changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 7f2d191b9ef0..90b2a62798c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -681,6 +681,34 @@ void intel_display_driver_unregister(struct intel_display *display)
>  	intel_vga_unregister(display);
>  }
>  
> +void intel_display_driver_shutdown(struct intel_display *display)
> +{
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	intel_display_power_disable(display);
> +
> +	drm_client_dev_suspend(display->drm);
> +	drm_kms_helper_poll_disable(display->drm);
> +
> +	intel_display_driver_disable_user_access(display);
> +
> +	drm_atomic_helper_shutdown(display->drm);
> +
> +	flush_workqueue(display->wq.cleanup);
> +
> +	intel_dp_mst_suspend(display);
> +
> +	intel_encoder_block_all_hpds(display);
> +
> +	intel_hpd_cancel_work(display);
> +
> +	intel_display_driver_suspend_access(display);
> +
> +	intel_encoder_suspend_all(display);
> +	intel_encoder_shutdown_all(display);
> +}
> +
>  void intel_display_driver_shutdown_late(struct intel_display *display)
>  {
>  	if (!HAS_DISPLAY(display))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 61515577758b..7eca3d17dd82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -24,6 +24,7 @@ void intel_display_driver_remove(struct intel_display *display);
>  void intel_display_driver_remove_noirq(struct intel_display *display);
>  void intel_display_driver_remove_nogem(struct intel_display *display);
>  void intel_display_driver_unregister(struct intel_display *display);
> +void intel_display_driver_shutdown(struct intel_display *display);
>  void intel_display_driver_shutdown_late(struct intel_display *display);
>  
>  int intel_display_driver_pm_suspend(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 140c562a8627..80313ee07b07 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -54,7 +54,6 @@
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_crtc.h"
> -#include "display/intel_display_core.h"
>  #include "display/intel_display_device.h"
>  #include "display/intel_display_driver.h"
>  #include "display/intel_display_power.h"
> @@ -1042,29 +1041,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  
>  	disable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	intel_runtime_pm_disable(&i915->runtime_pm);
> -	intel_display_power_disable(display);
>  
> -	drm_client_dev_suspend(&i915->drm);
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(&i915->drm);
> -		intel_display_driver_disable_user_access(display);
> -
> -		drm_atomic_helper_shutdown(&i915->drm);
> -	}
> -
> -	flush_workqueue(display->wq.cleanup);
> -
> -	intel_dp_mst_suspend(display);
> -
> -	intel_encoder_block_all_hpds(display);
> -
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_display_driver_suspend_access(display);
> -
> -	intel_encoder_suspend_all(display);
> -	intel_encoder_shutdown_all(display);
> +	intel_display_driver_shutdown(display);
>  
>  	intel_irq_suspend(i915);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
