Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI/vAdXUGWpmzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:03:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C598606FBD
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 20:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FDF2112378;
	Fri, 29 May 2026 18:02:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+MpNnsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6C12112377;
 Fri, 29 May 2026 18:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780077777; x=1811613777;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7ZfwRuDaCqye7DdrguXM2fYhmVorqXD2IW4fg53ay+M=;
 b=Y+MpNnsEOJMgkB1qBxnTtto6RRJcAijzmRA4L20MByaq4k6cKnSvXelb
 DEDJuqQu1bF38yd73ila3UEDknexZ2YRlxBOSbTQjyRySGdgIGm/9ZXqF
 ejK5xINlB6wrBysxH19shhIUSeHtTPdI48XAFQ0uPGCKa5Mi2dJh/ZAOk
 GXaekxxWi/i3helZ5J8hUCfSKoz8QTNV1PIL2PzFJMbEVxeH1S1sxkr53
 J5gi/O6IAgJp+MHvrEsRuIhkOBW2sPMzIdzaYMWylWBrazA7ZVM2vUIbm
 9JB6UCRI1rAb8Uq5tPvhaT/VXVPq14UioVBTfpcM4UYaF/yPNwVWvIfiM A==;
X-CSE-ConnectionGUID: zP2U6bE5RgOAgQNensOU2A==
X-CSE-MsgGUID: x/Eze1ouTrO53s7OkHoZNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="98353472"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="98353472"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:02:49 -0700
X-CSE-ConnectionGUID: cSJd6SjcQzuza2Ig/w2V8g==
X-CSE-MsgGUID: yF1XLEPRRS2R7edcocnCNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="243010878"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 11:02:47 -0700
Date: Fri, 29 May 2026 21:02:43 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 17/24] drm/xe/display: use
 intel_display_driver_pm_shutdown()
Message-ID: <ahnUw2b5PXfMVNHj@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <358f27591a93cd19db9f677939c9b49a1f1d9a03.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <358f27591a93cd19db9f677939c9b49a1f1d9a03.1780051905.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.52 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
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
X-Rspamd-Queue-Id: 8C598606FBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:04:01PM +0300, Jani Nikula wrote:
> Replace direct intel_display_driver_pm_suspend() and additional calls
> with intel_display_driver_pm_shutdown(). This switches to use
                           ^^^

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> drm_atomic_helper_shutdown() instead of drm_atomic_helper_suspend(),
> which is the more appropriate thing to do anyway.
> 
> Not calling intel_display_driver_pm_suspend() from the xe shutdown path
> unblocks further follow-up changes.
> 
> There's a slight functional change in that
> intel_display_driver_shutdown() returns early for !HAS_DISPLAY(). Assume
> this is what we want, and there are no cases where display engine is
> present but all pipes have been fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index fdc999c62bc9..99bcaa49d11a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -196,16 +196,7 @@ void xe_display_shutdown(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_driver_pm_suspend(display);
> -
> -	intel_encoder_block_all_hpds(display);
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_display_driver_suspend_access(display);
> -
> -	intel_encoder_suspend_all(display);
> -	intel_encoder_shutdown_all(display);
> +	intel_display_driver_shutdown(display);
>  
>  	intel_opregion_suspend(display, PCI_D3cold);
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
