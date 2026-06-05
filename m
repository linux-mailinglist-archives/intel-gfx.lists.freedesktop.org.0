Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U6ZJIR46ImohUAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 04:53:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FC1644C10
	for <lists+intel-gfx@lfdr.de>; Fri, 05 Jun 2026 04:53:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PRPGPqUD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5459112A4E;
	Fri,  5 Jun 2026 02:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B82A112A4D;
 Fri,  5 Jun 2026 02:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780627993; x=1812163993;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mv+Wkg6P1d3LNNOFeM6yECs+scKRP33uwLdCybXgPno=;
 b=PRPGPqUDc31QPRgBozpyVcgg1KBMl6xvSzQQLrcYerKXdD3P8jW0zOgs
 93LSirmAMzjVM5DMCXbTIfyK2aImoY5DleMtOgpb1gah/40495GajLsuy
 DQVe7JorZP+oV7LXK4gDE2sX7rPXnMCTjgur13IBYMuUzxaBbA7y3tYRK
 J9KqAKivUhOQGBz5ExQPmk+LN5qk0GNZ4XJtSONLOmEIeEBz7wWwJdqlX
 JdC9kHwtbMlU0hemq/oGiLvK1kdX0XOyFXSh606TbYpPYFVZw0C/ozwDl
 DKmk6Eq+VK42tOCDcTx0d/HR6VV8LYs/I8DCEGIwp3KqFOA4TwSGuP0Wa Q==;
X-CSE-ConnectionGUID: Vk6xQfVjTgmnKMOSCwKxQw==
X-CSE-MsgGUID: b9DXnx0oTQeYrD/vMbUH0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="81494069"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="81494069"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 19:53:13 -0700
X-CSE-ConnectionGUID: 65DNAF0+RwCL89pNK806xw==
X-CSE-MsgGUID: ih5UIh4ARSqD1WK1pSQCCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="238366937"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 19:53:11 -0700
Date: Fri, 5 Jun 2026 04:53:08 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 saurabhg.gupta@intel.com, alex.zuo@intel.com
Subject: Re: [PATCH v2] drm/{i915, xe}: Refactor generic_handle_irq_safe()
 error messages
Message-ID: <aiI6FCvDEITTnHyc@black.igk.intel.com>
References: <20260604202548.3817343-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260604202548.3817343-1-jonathan.cavitt@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raag.jadav@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,black.igk.intel.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40FC1644C10

On Fri, Jun 05, 2026 at 04:25:48AM +0800, Jonathan Cavitt wrote:
> Currently, all but one uses of generic_handle_irq_safe() report error
> messages using .*_err_ratelimited() error reporting helper functions.
> These helper functions declare their error messages in the following
> form:
> 
> "error handling [COMPONENT NAME] irq: %d\n"
> 
> .*_err_ratelimited() already logs "error" as a part of the error
> message, so declaring the error is redundant.  Reword it.
> 
> The last usage of generic_handle_irq_safe() is in xe_i2c_irq_present(),
> and it currently lacks the same error reporting as in the other cases.
> This is not intentional, so put some logging here.

Since you're here, also update these to xe_err_ratelimited() and
xe_gt_err_ratelimited().

Raag

> v2:
> - Use drm_err_ratelimited() correctly (jcavitt)
> 
> Suggested-by: Raag Jadav <raag.jadav@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  drivers/gpu/drm/i915/gt/intel_gsc.c            | 2 +-
>  drivers/gpu/drm/xe/xe_heci_gsc.c               | 4 ++--
>  drivers/gpu/drm/xe/xe_i2c.c                    | 5 ++++-
>  4 files changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 022ad18044bf..e756ed1d1132 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -265,7 +265,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>  	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
> -				    "error handling LPE audio irq: %d\n", ret);
> +				    "failed to handle LPE audio irq: %d\n", ret);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 050d909fb4f8..c2d76b0bc5fe 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -286,7 +286,7 @@ static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
>  
>  	ret = generic_handle_irq_safe(gt->gsc.intf[intf_id].irq);
>  	if (ret)
> -		gt_err_ratelimited(gt, "error handling GSC irq: %d\n", ret);
> +		gt_err_ratelimited(gt, "failed to handle GSC irq: %d\n", ret);
>  }
>  
>  void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
> index 5af8903e10af..640db27137de 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -224,7 +224,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		drm_err_ratelimited(&xe->drm, "failed to handle GSC irq: %d\n", ret);
>  }
>  
>  void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
> @@ -244,5 +244,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		drm_err_ratelimited(&xe->drm, "failed to handle GSC irq: %d\n", ret);
>  }
> diff --git a/drivers/gpu/drm/xe/xe_i2c.c b/drivers/gpu/drm/xe/xe_i2c.c
> index 706783863d07..fa5fdf3a1024 100644
> --- a/drivers/gpu/drm/xe/xe_i2c.c
> +++ b/drivers/gpu/drm/xe/xe_i2c.c
> @@ -177,12 +177,15 @@ static bool xe_i2c_irq_present(struct xe_device *xe)
>  void xe_i2c_irq_handler(struct xe_device *xe, u32 master_ctl)
>  {
>  	struct xe_mmio *mmio = xe_root_tile_mmio(xe);
> +	int ret;
>  
>  	if (!(master_ctl & I2C_IRQ) || !xe_i2c_irq_present(xe))
>  		return;
>  
>  	/* Forward interrupt to I2C adapter */
> -	generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	ret = generic_handle_irq_safe(xe->i2c->adapter_irq);
> +	if (ret)
> +		drm_err_ratelimited(&xe->drm, "failed to handle i2c irq: %d\n", ret);
>  
>  	/* Deassert after I2C adapter clears the interrupt */
>  	xe_mmio_rmw32(mmio, I2C_CONFIG_CMD, 0, PCI_COMMAND_INTX_DISABLE);
> -- 
> 2.53.0
> 
