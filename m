Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 246B2977E0A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 12:54:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133A010E247;
	Fri, 13 Sep 2024 10:54:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nwhPbl9a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9059C10E247
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 10:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726224847; x=1757760847;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/9vE+EFHo/s9i5NHhs7y7XSJadZYsUNSdqqHCbvyEQw=;
 b=nwhPbl9aYshXxjxBFBuX8/v8Z4IvdLmoebjjObwzwX3NTmvEugImjp0H
 Tc12MsjY4iprQWFAcgWtSJxKYe5ya2n4HURyvIXfkqWQ8uuccOrH5jQwm
 unb+Hdy+lcU7qVskrkRhAHcgyUC2EztnxIi5Al8USZT/Xckr8bmEemKlH
 nuxYdFGXQ56tJg+CK9b+U1qQCyHmYrVoondSOQvsoIn2hr8y3lc6GCUsq
 Kf1plDcCmvxJ9txIHhF67ZPqaxqSb9w096F//1DIaWKwzn/3mVEQXZ+RX
 yJ7QcAkopPy/Qh/FC3hbzrbTx68npQ/1xGn3AmCiUKd1oo0d8BULWTgDT w==;
X-CSE-ConnectionGUID: +7cMvw3ASXuEMQor9yGzDA==
X-CSE-MsgGUID: 9XSrAK0TSZG61cQSK/HKfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="42628695"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="42628695"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 03:54:07 -0700
X-CSE-ConnectionGUID: hfJS/V/iS1SHmq7L0ku0kw==
X-CSE-MsgGUID: OsfZ2YA6QeumSgKuUAKtyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="105469954"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 03:54:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/irq: Remove duplicated irq_enabled variable
In-Reply-To: <20240912172539.418957-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
Date: Fri, 13 Sep 2024 13:54:00 +0300
Message-ID: <87h6ajesdz.fsf@intel.com>
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

On Thu, 12 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> Let's kill this legacy iand almost unused rq_enabled version
> in favor of the real one that is checked at
> intel_irqs_enabled().
>
> The commit 'ac1723c16b66 ("drm/i915: Track IRQ state
> in local device state")' shows that this was a legacy
> DRM level irq_enabled information that got removed.
>
> But the driver one already existed under a different
> name.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 2 --
>  drivers/gpu/drm/i915/i915_irq.c | 8 ++------
>  2 files changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 39f6614a0a99..aa3000349116 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -343,8 +343,6 @@ struct drm_i915_private {
>  
>  	struct intel_pxp *pxp;
>  
> -	bool irq_enabled;
> -
>  	struct i915_pmu pmu;
>  
>  	/* The TTM device structure. */
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 2321de48d169..9f1a6f692dd1 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1406,14 +1406,12 @@ int intel_irq_install(struct drm_i915_private *dev_priv)
>  	 */
>  	dev_priv->runtime_pm.irqs_enabled = true;
>  
> -	dev_priv->irq_enabled = true;
> -
>  	intel_irq_reset(dev_priv);
>  
>  	ret = request_irq(irq, intel_irq_handler(dev_priv),
>  			  IRQF_SHARED, DRIVER_NAME, dev_priv);
>  	if (ret < 0) {
> -		dev_priv->irq_enabled = false;
> +		dev_priv->runtime_pm.irqs_enabled = false;
>  		return ret;
>  	}
>  
> @@ -1439,11 +1437,9 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
>  	 * intel_display_driver_remove() calling us out of sequence.
>  	 * Would be nice if it didn't do that...
>  	 */
> -	if (!dev_priv->irq_enabled)
> +	if (!dev_priv->runtime_pm.irqs_enabled)

I think we should just stick a

	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->runtime_pm.irqs_enabled))

here and remove the FIXME. I don't see a path like that anywhere,
anymore.

BR,
Jani.


>  		return;
>  
> -	dev_priv->irq_enabled = false;
> -
>  	intel_irq_reset(dev_priv);
>  
>  	free_irq(irq, dev_priv);

-- 
Jani Nikula, Intel
