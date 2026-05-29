Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8ODTFKCPGWpTxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:07:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 682B1602A79
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:07:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B06910FEE0;
	Fri, 29 May 2026 13:07:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CJ4oMI/f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09EB910FEE0;
 Fri, 29 May 2026 13:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780060060; x=1811596060;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H+rNrkQXNiyKviVQYiaDLi1oZh+RVy67DScacrSgvFM=;
 b=CJ4oMI/feTrpu+nvLDzYQix3/tvdg+6s6EczSuNnONi/CkUwHXVeBtu4
 K0mUGwY+v9isxVa4zjK5YTujJddhNWhOlpapN49/mYTFFp9fW3/HXmpk8
 GqlLX4nLwpZxt1nvTY3/XPwOOo7qA/NqT04emxGjfQwmBbcSjjuTm6onG
 oHYU+Y3Q41FU5yOCiWqZhEz8ud3CKWEjBbflgHr4fKqeB2JAN8Z34UkWH
 glvpo9mD4ol3gfV6Bc4rtQ+qPY4JiiKvvtH/LZW3F894DjPxlSYcxAG4v
 AkLpJhIOHcEEni2Pq8k93g154t+nHfrlfX9m+CyxlSrS4OyikYVeGWQg7 w==;
X-CSE-ConnectionGUID: DuMjlswISOuu0rP9k7hgyA==
X-CSE-MsgGUID: IUsPg65cQGqKqyMP048+jQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80637635"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80637635"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:07:39 -0700
X-CSE-ConnectionGUID: nMORqc28Q7+oqbeB8dDETQ==
X-CSE-MsgGUID: c8iqDmI1Tu+ykFx87ASbNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="236494832"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 06:07:38 -0700
Date: Fri, 29 May 2026 16:07:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 03/24] drm/i915: add flush_workqueue(display->wq.cleanup)
 on shutdown
Message-ID: <ahmPlh5w3D-zSGet@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <187ed77534a4d6ae37a4b64084d8efda744e0c6c.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <187ed77534a4d6ae37a4b64084d8efda744e0c6c.1780051905.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: 682B1602A79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:47PM +0300, Jani Nikula wrote:
> We're missing the cleanup workqueue flush on the shutdown path. Add it.
> 
> Unfortunately have to briefly include intel_display_core.c here. To be
> removed later.
> 
> Link: https://lore.kernel.org/r/agRp6Was9FCQbKee@intel.com
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 93940cfe91a0..60d5e06675ab 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -54,6 +54,7 @@
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_crtc.h"
> +#include "display/intel_display_core.h"
>  #include "display/intel_display_device.h"
>  #include "display/intel_display_driver.h"
>  #include "display/intel_display_power.h"
> @@ -1053,6 +1054,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  		drm_atomic_helper_shutdown(&i915->drm);
>  	}
>  
> +	flush_workqueue(display->wq.cleanup);

The suspend case explicitly needed this for the DPT eviction.
Not sure why xe needs it for shutdown, but doing it the same
way for suspend vs. shutdown doesn't seem like a particularly
bad idea regardless.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
>  	intel_dp_mst_suspend(display);
>  
>  	intel_encoder_block_all_hpds(display);
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
