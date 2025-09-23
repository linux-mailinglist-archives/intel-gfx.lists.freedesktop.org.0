Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3862B965A6
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 16:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1E710E640;
	Tue, 23 Sep 2025 14:43:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kvwTFqxo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F265310E63E;
 Tue, 23 Sep 2025 14:43:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758638613; x=1790174613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0X7mGkOw1KbjZAEs3ODcSqobBcpgtlfPEkJ6OmYfUk0=;
 b=kvwTFqxoH7ObW7VTwKpbk9IT23o6KeilP5o8h2ULKQ6pGkytT90mCVAy
 NqSx24URHKE2VGuRjI0GHqeEM8uxH5AuL02QyPXhldGpwk3CgDisxebAu
 QRXINObGPw7xzCz48teR8c22/6/gPbiUqB2TL0BUdatZXYL3OdeS1SU8L
 Wdof0E70Vp2mLk0dvuHTPP34Vj//HI16XLNMJIePJIlnXHH+cqJfOTr9M
 v+ZaAngGtzT3rMVQNwMFe4eG6Au0aDBTHOMxOgyUORSwl5lb7JJSg5Dde
 Znw84953lizalq17ifRC9vOZqDY8iGNnqn9sRcETAyw7CB3rpnmYDMvqZ Q==;
X-CSE-ConnectionGUID: gZRKhKjzTfG/PdbJ2JpVpg==
X-CSE-MsgGUID: 9cGBnxULQ+Sx4geBpAcTUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="86360075"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="86360075"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:43:33 -0700
X-CSE-ConnectionGUID: q7OvYCvbRn6vbplSyBFIKQ==
X-CSE-MsgGUID: IEzmcNwoRYaOtswETm7N/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181165088"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 07:43:31 -0700
Date: Tue, 23 Sep 2025 17:43:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 4/5] drm/i915/irq: move check for HAS_HOTPLUG() inside
 i9xx_hpd_irq_ack()
Message-ID: <aNKyESKQfg1sZ6e_@intel.com>
References: <cover.1758637773.git.jani.nikula@intel.com>
 <2f97c077e67667bf420196c7381553d5286da958.1758637773.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2f97c077e67667bf420196c7381553d5286da958.1758637773.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Tue, Sep 23, 2025 at 05:31:07PM +0300, Jani Nikula wrote:
> We want to avoid using the display dependent HAS_HOTPLUG() in generic
> irq code. Since the enabling of I915_DISPLAY_PORT_INTERRUPT depends on
> HAS_HOTPLUG() to begin with, we don't really expect to get the irqs for
> !HAS_HOTPLUG(). At least in theory, checking for HAS_HOTPLUG() inside
> i9xx_hpd_irq_ack() should not have any impact.

Yeah, IMR should keep the bit from making an appearance in IIR.
But no real harm in checking I suppose.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 +++
>  drivers/gpu/drm/i915/i915_irq.c                  | 3 +--
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 4f72f3fb9af5..9a4da818ad61 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -420,6 +420,9 @@ u32 i9xx_hpd_irq_ack(struct intel_display *display)
>  	u32 hotplug_status = 0, hotplug_status_mask;
>  	int i;
>  
> +	if (!HAS_HOTPLUG(display))
> +		return 0;
> +
>  	if (display->platform.g4x ||
>  	    display->platform.valleyview || display->platform.cherryview)
>  		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index f9fbb88b9e26..90174ce9195c 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -931,8 +931,7 @@ static irqreturn_t i915_irq_handler(int irq, void *arg)
>  
>  		ret = IRQ_HANDLED;
>  
> -		if (HAS_HOTPLUG(display) &&
> -		    iir & I915_DISPLAY_PORT_INTERRUPT)
> +		if (iir & I915_DISPLAY_PORT_INTERRUPT)
>  			hotplug_status = i9xx_hpd_irq_ack(display);
>  
>  		/* Call regardless, as some status bits might not be
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
