Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMygIL7eGWpmzggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:45:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBCF607737
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AAC1123E6;
	Fri, 29 May 2026 18:45:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X6pN4qOr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C2E1123E6;
 Fri, 29 May 2026 18:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780080315; x=1811616315;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5X32TvHtiS1kFjvUmxqcaJA1/n1eTN2Pel0Bcs4fKOg=;
 b=X6pN4qOrJPUF8ig5RIlt6vUr0K4IB1ET41WyNeVGPF7sUTM+WV3RBMfS
 OKP0X1KxKZ/2vi/tyjFHbaufqKewKJH4PZtk3xAYL7kFi1klEnFmdHI87
 mxmdd04mmjhgnjwHtecsd1R+kgIjwOTsyzHHt5jE4dQfjBgAhsRWXPldR
 /NaZYUpYRdE7pHmpmSAjh1VPXZKPFCkOTztCb7a5xEM0/ncI990oMVuwA
 hWuCUCdOIFxhInLH8Zb4cU5XrY63CyEZ5qZPHVQ62D9fwMaxS407tQmsP
 NckmG8K3Dr9cJHn1lA4Qvg/C6PvdOF9d8aYk0xo+989Y8ItkIHRGhwfDS w==;
X-CSE-ConnectionGUID: E9kIDSzUTPazp4+I4bON4A==
X-CSE-MsgGUID: EJDMkkUzQUqhIdatqODJuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80667175"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80667175"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:45:13 -0700
X-CSE-ConnectionGUID: aLWZlDikRfa/kx8lSK7DBg==
X-CSE-MsgGUID: 9lmxR0BoTH23RMFTPxVmqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="266795156"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:45:11 -0700
Date: Fri, 29 May 2026 21:45:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 21/24] drm/{i915,xe}: keep moving stuff to
 intel_display_driver_pm_resume()
Message-ID: <ahnetEsOH2RflSqK@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <91a5bee38be9c985a124b02189f9646a78d59b2a.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <91a5bee38be9c985a124b02189f9646a78d59b2a.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.36 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.67)[subject];
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
X-Rspamd-Queue-Id: AFBCF607737
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:05PM +0300, Jani Nikula wrote:
> The calls to intel_display_driver_pm_resume() are preceded with similar
> calls. Move the calls inside intel_display_driver_pm_resume().
> 
> In i915 the calls are interspersed among other things, so this is a
> functional change. Fingers crossed.
> 
> There's a slight functional change in that
> intel_display_driver_pm_resume() returns early for
> !HAS_DISPLAY(). Assume this is what we want, and there are no cases
> where display engine is present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 8 --------
>  drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
>  3 files changed, 6 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 1525ff7a1dc2..84807a9bff2b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -831,6 +831,12 @@ void intel_display_driver_pm_resume(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	intel_dmc_resume(display);
> +
> +	drm_mode_config_reset(display->drm);
> +
> +	intel_display_driver_init_hw(display);
> +
>  	intel_display_driver_resume_access(display);
>  
>  	intel_hpd_init(display);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 7d0f98cbf5d9..6b9e1b268a89 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -57,7 +57,6 @@
>  #include "display/intel_display_device.h"
>  #include "display/intel_display_driver.h"
>  #include "display/intel_display_power.h"
> -#include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
>  #include "display/intel_dram.h"
> @@ -1233,8 +1232,6 @@ static int i915_drm_resume(struct drm_device *dev)
>  	/* Must be called after GGTT is resumed. */
>  	intel_dpt_resume(display);
>  
> -	intel_dmc_resume(display);
> -
>  	i9xx_display_sr_restore(display);
>  
>  	intel_gmbus_reset(display);
> @@ -1255,13 +1252,8 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 */
>  	intel_irq_resume(dev_priv);
>  
> -	if (intel_display_device_present(display))
> -		drm_mode_config_reset(dev);
> -
>  	i915_gem_resume(dev_priv);
>  
> -	intel_display_driver_init_hw(display);
> -
>  	intel_clock_gating_init(&dev_priv->drm);

Apparently intel_display_driver_init_hw() is the
init_clock_gating() for icl+, and it looks like we still 
haven't finished the actual init_clock_gating() display
vs. gt split. Would have been nice to move all the display
clock gating stuff in one go to the same place. But so far
it looks like a clean split between icl+ vs. pre-icl (ie.
no platforms that do both) so seems safe enough to move
just one of them I guess.

Can't immediately think of any weird dependencies here so
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	intel_display_driver_pm_resume(display);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 73891b36341b..b153bf9c83d8 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -301,13 +301,6 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_dmc_resume(display);
> -
> -	if (intel_display_device_present(display))
> -		drm_mode_config_reset(&xe->drm);
> -
> -	intel_display_driver_init_hw(display);
> -
>  	intel_display_driver_pm_resume(display);
>  }
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
