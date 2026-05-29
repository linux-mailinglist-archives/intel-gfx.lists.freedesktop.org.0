Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH0OHgrUGWodzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:59:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7CF606F20
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 19:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E71F11236C;
	Fri, 29 May 2026 17:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IvLqf2Ls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CEED112368;
 Fri, 29 May 2026 17:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780077575; x=1811613575;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6o07HJwZG5PxihpAPsYEJazxnFkDSnCSb2NHK8sEFes=;
 b=IvLqf2Ls5f2gVBW8lV7SljMmSXUT+ItxGGt+ajUclj7LHB+uC9SsVRbL
 n/XsRjt610+Fs5TzaBELGV+5ADgWhjSwvJZg3rQ4mAc6d0r/8xq/Flltu
 FTyS2CHsmwS38tteru5zEnC6NpIU2hCJ3PihNgJlhMkHAHp9xCwARUErS
 2atfr9syAbWCBYZt/FE9ovK4pyailUh/hMx9lQWOEzZUBu54xCahTw+tv
 blvXHJQrxg5TcNdqGSPioLqwqK3B82/V2Wk4/qcO6DBew4ea69wFmPNsr
 PjRsPgqA+1kiDRK/UbfFjkRnFglGhPJRixoYDfJCjWgq/Z67iYEFedygo w==;
X-CSE-ConnectionGUID: Z0LJ8H3TREuf0m6D3PHIzQ==
X-CSE-MsgGUID: kyt8EVr3T1eu/M1Okurb1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98353152"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98353152"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:59:35 -0700
X-CSE-ConnectionGUID: 3wYDN+SpScWUl7ZA902JWg==
X-CSE-MsgGUID: klfrQriTQSuK23yKY9ofaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="243055950"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:59:33 -0700
Date: Fri, 29 May 2026 20:59:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 16/24] drm/i915/display: deduplicate suspend and shutdown
 a bit
Message-ID: <ahnUAUnLgiW5GYeO@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <7d345f3f6d1df1b3b65919e3cfd7465fbe51e5f5.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7d345f3f6d1df1b3b65919e3cfd7465fbe51e5f5.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.31 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.63)[subject];
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
X-Rspamd-Queue-Id: AE7CF606F20
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:00PM +0300, Jani Nikula wrote:
> intel_display_driver_shutdown() and intel_display_driver_pm_suspend()
> are quite similar. Abstract a shared function to call from both.
> 
> This is intentionally just the first non-functional step. More gradual
> changes will follow.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   | 45 ++++++++++---------
>  1 file changed, 23 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 90b2a62798c1..0dd0b15641eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -66,6 +66,8 @@
>  #include "intel_wm.h"
>  #include "skl_watermark.h"
>  
> +static int __intel_display_driver_pm_suspend(struct intel_display *display, bool shutdown);
> +
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev)
>  {
>  	struct drm_privacy_screen *privacy_screen;
> @@ -686,18 +688,7 @@ void intel_display_driver_shutdown(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> -	intel_display_power_disable(display);
> -
> -	drm_client_dev_suspend(display->drm);
> -	drm_kms_helper_poll_disable(display->drm);
> -
> -	intel_display_driver_disable_user_access(display);
> -
> -	drm_atomic_helper_shutdown(display->drm);
> -
> -	flush_workqueue(display->wq.cleanup);
> -
> -	intel_dp_mst_suspend(display);
> +	__intel_display_driver_pm_suspend(display, true);
>  
>  	intel_encoder_block_all_hpds(display);
>  
> @@ -726,10 +717,9 @@ void intel_display_driver_shutdown_late(struct intel_display *display)
>   * turn all crtc's off, but do not adjust state
>   * This has to be paired with a call to intel_modeset_setup_hw_state.
>   */
> -int intel_display_driver_pm_suspend(struct intel_display *display)
> +static int __intel_display_driver_pm_suspend(struct intel_display *display, bool shutdown)
>  {
> -	struct drm_atomic_commit *state;
> -	int ret;
> +	int ret = 0;
>  
>  	if (!HAS_DISPLAY(display))
>  		return 0;
> @@ -745,13 +735,19 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
>  	drm_kms_helper_poll_disable(display->drm);
>  	intel_display_driver_disable_user_access(display);
>  
> -	state = drm_atomic_helper_suspend(display->drm);
> -	ret = PTR_ERR_OR_ZERO(state);
> -	if (ret)
> -		drm_err(display->drm, "Suspending crtc's failed with %i\n",
> -			ret);
> -	else
> -		display->restore.modeset_state = state;
> +	if (shutdown) {
> +		drm_atomic_helper_shutdown(display->drm);
> +	} else {
> +		struct drm_atomic_commit *state;
> +
> +		state = drm_atomic_helper_suspend(display->drm);
> +		ret = PTR_ERR_OR_ZERO(state);
> +		if (ret)
> +			drm_err(display->drm, "Suspending crtc's failed with %i\n",
> +				ret);
> +		else
> +			display->restore.modeset_state = state;
> +	}
>  
>  	/* ensure all DPT VMAs have been unpinned for intel_dpt_suspend() */
>  	flush_workqueue(display->wq.cleanup);
> @@ -761,6 +757,11 @@ int intel_display_driver_pm_suspend(struct intel_display *display)
>  	return ret;
>  }
>  
> +int intel_display_driver_pm_suspend(struct intel_display *display)
> +{
> +	return __intel_display_driver_pm_suspend(display, false);
> +}
> +
>  void intel_display_driver_pm_suspend_late(struct intel_display *display, bool s2idle)
>  {
>  	if (!HAS_DISPLAY(display))
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
