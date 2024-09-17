Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F25D97B365
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E6510E4CD;
	Tue, 17 Sep 2024 17:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HKFHvk3g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE3110E4CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 17:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726592890; x=1758128890;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vghP8TdTIm1o/X4lWtFPetWYCsA/KLopkOX7q8Rir3A=;
 b=HKFHvk3gUb03dUiJKZNsuc9ey4jIyqEpaP+p3oeJgcaZEaerGPJi47qY
 lcrRPd6ZIwdGHP2oTnLWL7co3f7pw2oLaLDfGT6N3je25+/5G1dUmCfX/
 RUO3MxOIQDMdClP8FKdT8ZwdL76txjeLZPw8UQ/c3IUs/bjQ0SHINY5xi
 veZxp7pmuQL6pTxgEUUZZc9lm6iT8zUQE3iGMO3ytNPhnCg/YfZECKTGL
 FUWi0matREqRglyi+43JNEmpT9Y3REiMr6j3G/XUlvYHzq1J7CJWrFlLJ
 L7pbMI7P1Tcx8nSc1PLv5yp7Lt3yS4pMag15aQdVMDNV7KpR44GOV1pzm Q==;
X-CSE-ConnectionGUID: 9+QR9IFwTd6vIJjy1B+wrA==
X-CSE-MsgGUID: k2gKjIOwSamvO8r7+X/2Cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="29360602"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="29360602"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:08:10 -0700
X-CSE-ConnectionGUID: ABGdkUAGTOyXNnGov+ZC9g==
X-CSE-MsgGUID: D+p/Y5a4S82dw8EYEYyi7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73614687"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:08:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915/irq: Uninstall should be called just once
In-Reply-To: <20240916161937.537334-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240916161937.537334-1-rodrigo.vivi@intel.com>
Date: Tue, 17 Sep 2024 20:08:04 +0300
Message-ID: <874j6eciob.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 16 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> There shouldn't be any path where the irq uninstall is called
> twice nowadays. So, remove the FIXME commend and change
> the check to a WARN.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Please double check the CI results, I didn't spot anything related to
this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/i915_irq.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index d42997fdee65..f2ea7a550a26 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1431,13 +1431,7 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
>  {
>  	int irq = to_pci_dev(dev_priv->drm.dev)->irq;
>  
> -	/*
> -	 * FIXME we can get called twice during driver probe
> -	 * error handling as well as during driver remove due to
> -	 * intel_display_driver_remove() calling us out of sequence.
> -	 * Would be nice if it didn't do that...
> -	 */
> -	if (!dev_priv->irqs_enabled)
> +	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->irqs_enabled))
>  		return;
>  
>  	intel_irq_reset(dev_priv);

-- 
Jani Nikula, Intel
