Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ5rOH6WGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:37:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A4E602F20
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BE0410FF4A;
	Fri, 29 May 2026 13:37:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/i4ddfU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 200BB10FF4A;
 Fri, 29 May 2026 13:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780061819; x=1811597819;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pbfnnuIwgiA+S5k1Vy2kvvJPJzTqFge+0P1gwc0IM1k=;
 b=A/i4ddfUyWWuVmFR+ymog8VsFf95BMGAuN/7VDpLosv+dTGzWoX00NQv
 +66FZN+39KRyJdUGjOIR88kppzysNyXE2Sk+ea2EhdDs0ifVTsJrquT/k
 vcFOzvWDhJaS/zVh4+gv8dlIr6ZDjR8g2oEFuy+VTfbjLLpJ6s1Z7gxoO
 KsfQDv2FgvC/DOFtyn4k1oOYqPg3USfF4f3HOS6tOdalt+uYWNgQNgnzd
 lpE/6UEGqjtjWfKSkvV7wPAsMRly8nKYvd0KUquBGHuXtawaNu6qnLgOY
 PZqwfyC6wKAuA9SXuNLeIQKKbLR/OnFuDxphDGg2lyXKrYw9yleuhP8ZU A==;
X-CSE-ConnectionGUID: L9WIpaDdQem7tvQQDYYLHg==
X-CSE-MsgGUID: +Uods+QOQcmezxcXr2b5UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="92295658"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92295658"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:36:59 -0700
X-CSE-ConnectionGUID: MEvISehvSOuFDIEx7n2sIA==
X-CSE-MsgGUID: 1PzJMTwYSHStEirfTobMqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="240307231"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:36:45 -0700
Date: Fri, 29 May 2026 16:36:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 10/24] drm/{i915,xe}: move more calls inside
 intel_display_driver_pm_suspend()
Message-ID: <ahmWaoZEn7EJpYZj@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <12d3749c215c7277d460bba4eeb9f78b8a5fea42.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <12d3749c215c7277d460bba4eeb9f78b8a5fea42.1780051905.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 45A4E602F20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:54PM +0300, Jani Nikula wrote:
> The intel_display_driver_pm_suspend() calls are surrounded by near
> identical display calls. Move the calls inside
> intel_display_driver_pm_suspend().
> 
> There's a slight functional change in that
> intel_display_driver_pm_suspend() returns early for
> !HAS_DISPLAY(). Assume this is what we want, and there are no cases
> where display engine is present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 11 ++++++++++
>  drivers/gpu/drm/i915/i915_driver.c            |  9 --------
>  drivers/gpu/drm/xe/display/xe_display.c       | 22 ++-----------------
>  3 files changed, 13 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 9be4c94740dc..41a2244985fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -686,6 +686,17 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return 0;
>  
> +	/*
> +	 * We do a lot of poking in a lot of registers, make sure they work
> +	 * properly.
> +	 */
> +	intel_display_power_disable(display);
> +
> +	drm_client_dev_suspend(display->drm);
> +
> +	drm_kms_helper_poll_disable(display->drm);
> +	intel_display_driver_disable_user_access(display);
> +
>  	state = drm_atomic_helper_suspend(display->drm);
>  	ret = PTR_ERR_OR_ZERO(state);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index bd73d64c1ccb..f161723f653e 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1130,15 +1130,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
>  
> -	/* We do a lot of poking in a lot of registers, make sure they work
> -	 * properly. */
> -	intel_display_power_disable(display);
> -	drm_client_dev_suspend(dev);
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(dev);
> -		intel_display_driver_disable_user_access(display);
> -	}
> -
>  	intel_display_driver_pm_suspend(display);
>  
>  	intel_encoder_block_all_hpds(display);
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 38ebcc2b712a..027db7b6ceb5 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -198,14 +198,7 @@ void xe_display_shutdown(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_disable(display);
> -	drm_client_dev_suspend(&xe->drm);
> -
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_pm_suspend(display);
> -	}
> +	intel_display_driver_pm_suspend(display);
>  
>  	intel_encoder_block_all_hpds(display);
>  	intel_hpd_cancel_work(display);
> @@ -297,18 +290,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	/*
> -	 * We do a lot of poking in a lot of registers, make sure they work
> -	 * properly.
> -	 */
> -	intel_display_power_disable(display);
> -	drm_client_dev_suspend(&xe->drm);
> -
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_pm_suspend(display);
> -	}
> +	intel_display_driver_pm_suspend(display);
>  
>  	intel_encoder_block_all_hpds(display);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
