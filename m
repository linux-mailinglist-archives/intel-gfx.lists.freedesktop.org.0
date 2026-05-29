Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wL6dMwTVGWqFzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:03:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63050606FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA8F411237B;
	Fri, 29 May 2026 18:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbMqmYNv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15919112379;
 Fri, 29 May 2026 18:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780077827; x=1811613827;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xGUS5Rhw2Bjt13Zu92fRh2QNadRRo6IdpPnzVY1Ymx0=;
 b=bbMqmYNvzBrm3HJC91zfhK0/jkwQtkE4e2O8mI8ZabstV/zJASOAmkUb
 WlEENic+wTr2Yf+6aFCGs0Cyj/122wkhQpISeimYnabqqDu3kWerwgk3u
 rWF98qpmh5giJpFsD5lzoKUuDDOKhjsOot7vVU7YuV2mFul8HGOWk1cDl
 gEE3TvyAxQBgL1n4sVAk3sMTORPE9k+ImjDQ7jNSyFe35N4ulv4hX7o6G
 tzRu1IUguHX77zJEJMpFWuLeh4fnKZWX5jrHmdltWIveGozThm2v9LpbW
 vxTCTGypfCuzVzOJuHKhV7wn94t0YH4F7e6KHa3mj6sdEaPQJtmrQ8XfC Q==;
X-CSE-ConnectionGUID: vyiNZ/qWSwyvvzojeC2zdA==
X-CSE-MsgGUID: YDEzRQ0rRquAaK5V4G4CwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98353537"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98353537"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:03:46 -0700
X-CSE-ConnectionGUID: zvQNCyJbTLqQBYp+5s1KNg==
X-CSE-MsgGUID: vf82G9r0QE6qejYeYdQs9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="243011011"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:03:44 -0700
Date: Fri, 29 May 2026 21:03:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 18/24] drm/{i915,xe}: move more stuff to
 __intel_display_driver_pm_suspend()
Message-ID: <ahnU_Nqo9fnDeqCG@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <ed88ac2c6aea7e052e328d7fa7e3c5928a8faf80.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ed88ac2c6aea7e052e328d7fa7e3c5928a8faf80.1780051905.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 63050606FE1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:02PM +0300, Jani Nikula wrote:
> The calls leading up to __intel_display_driver_pm_suspend() are
> surrounded by near identical display calls. Move the calls inside
> __intel_display_driver_pm_suspend() to clean up and deduplicate.
> 
> There's a slight functional change in that
> intel_display_driver_pm_suspend() returns early for
> !HAS_DISPLAY(). Assume this is what we want, and there are no cases
> where display engine is present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_driver.c   | 15 ++++++++-------
>  drivers/gpu/drm/i915/i915_driver.c                | 10 ----------
>  drivers/gpu/drm/xe/display/xe_display.c           | 10 ----------
>  3 files changed, 8 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 0dd0b15641eb..bc632ac8c9b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -690,13 +690,6 @@ void intel_display_driver_shutdown(struct intel_display *display)
>  
>  	__intel_display_driver_pm_suspend(display, true);
>  
> -	intel_encoder_block_all_hpds(display);
> -
> -	intel_hpd_cancel_work(display);
> -
> -	intel_display_driver_suspend_access(display);
> -
> -	intel_encoder_suspend_all(display);
>  	intel_encoder_shutdown_all(display);
>  }
>  
> @@ -754,6 +747,14 @@ static int __intel_display_driver_pm_suspend(struct intel_display *display, bool
>  
>  	intel_dp_mst_suspend(display);
>  
> +	intel_encoder_block_all_hpds(display);
> +
> +	intel_hpd_cancel_work(display);
> +
> +	intel_display_driver_suspend_access(display);
> +
> +	intel_encoder_suspend_all(display);
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 80313ee07b07..209ac512455d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -61,7 +61,6 @@
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
>  #include "display/intel_dram.h"
> -#include "display/intel_encoder.h"
>  #include "display/intel_fbdev.h"
>  #include "display/intel_gmbus.h"
>  #include "display/intel_hotplug.h"
> @@ -1105,15 +1104,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	intel_display_driver_pm_suspend(display);
>  
> -	intel_encoder_block_all_hpds(display);
> -
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_display_driver_suspend_access(display);
> -
> -	intel_encoder_suspend_all(display);
> -
>  	intel_irq_suspend(dev_priv);
>  
>  	/* Must be called before GGTT is suspended. */
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 99bcaa49d11a..561ec1ed6845 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -30,7 +30,6 @@
>  #include "intel_dmc_wl.h"
>  #include "intel_dp.h"
>  #include "intel_dram.h"
> -#include "intel_encoder.h"
>  #include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> @@ -276,15 +275,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	intel_display_driver_pm_suspend(display);
>  
> -	intel_encoder_block_all_hpds(display);
> -
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display)) {
> -		intel_display_driver_suspend_access(display);
> -		intel_encoder_suspend_all(display);
> -	}
> -
>  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>  
>  	intel_dmc_suspend(display);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
