Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFcfMx6SGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:18:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 606D6602C58
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:18:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0B210FF07;
	Fri, 29 May 2026 13:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGnC4wI6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D76710FF05;
 Fri, 29 May 2026 13:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780060698; x=1811596698;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LJXOiMU2LL4+JHwscwwLC7lfN3QSz201pmuFCVcj/Qw=;
 b=bGnC4wI6iNxM8s6TDDD5DfGPyf3l8NHblXxX0ol9KYu5YYKy1rWbYgip
 Y3GX6O2S80bVnSRYzYbDOjRqagAbVosEsjNg8xnAKR456omlh7AEnnOwd
 T9AK/cxJhRQYALcTNWimy6s9SP2FtpebXcozlgNYLVEFtFipEi1bnHKNZ
 ZiyqIbEFa8VuM876I9mSNXS9n3umWTf96rkaKGwbkUNUg7qrcf/znEoXG
 5CGkT+E/9x6DhAZ9DQrkG185V7/aFe6GyBAFSLvxzsxOoEgDOmZSOMypm
 mzJbaqZXg6IIAq7gZc7yuQ4Y3yRU2f3TUx+MxMyqXGu0t0+8yTPoDumRC g==;
X-CSE-ConnectionGUID: hZmC97o3SrGEkXCxWgnxtA==
X-CSE-MsgGUID: GhfUDvjbRzSHlhHwdln4Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="84798704"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="84798704"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:18:18 -0700
X-CSE-ConnectionGUID: GNQLEPT7Rd2+BhZPwmnAOQ==
X-CSE-MsgGUID: WSW92OdRRcuQthrEUBoSmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="247939098"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:18:16 -0700
Date: Fri, 29 May 2026 16:18:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 04/24] drm/xe/display: remove
 intel_display_flush_cleanup_work() calls on suspend/shutdown
Message-ID: <ahmSFUi9W7OhrBCG@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <c7a1d389ef848ce823ccca21f5f35f9561adf88e.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c7a1d389ef848ce823ccca21f5f35f9561adf88e.1780051905.git.jani.nikula@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 606D6602C58
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:48PM +0300, Jani Nikula wrote:
> intel_display_driver_suspend() already has drm_atomic_helper_suspend()
> and cleanup workqueue flush. The intel_display_flush_cleanup_work()
> calls on suspend/shutdown should be redundant. Remove.
> 
> Link: https://lore.kernel.org/r/agRp6Was9FCQbKee@intel.com
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index c0d3e7d12823..6e82dc70ca89 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -312,8 +312,6 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  		intel_display_driver_suspend(display);
>  	}
>  
> -	intel_display_flush_cleanup_work(display);
> -
>  	intel_encoder_block_all_hpds(display);
>  
>  	intel_hpd_cancel_work(display);
> @@ -344,7 +342,6 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  		intel_display_driver_suspend(display);
>  	}
>  
> -	intel_display_flush_cleanup_work(display);

Hmm, apparently the super funky d3cold path still has one call
remaining so can't remove it completely quite yet. Oh well, at
least we're moving to a better direction.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	intel_dp_mst_suspend(display);
>  	intel_encoder_block_all_hpds(display);
>  	intel_hpd_cancel_work(display);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
