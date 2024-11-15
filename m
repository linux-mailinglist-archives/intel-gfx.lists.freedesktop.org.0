Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073769CDFAE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 14:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994CD10E3CF;
	Fri, 15 Nov 2024 13:13:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EcZKrAqL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26C910E2D0;
 Fri, 15 Nov 2024 13:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731676418; x=1763212418;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=T8NkwCR1BQ2cIYrzf0dmq0y8GKLd9G6AdXbdZOzSbio=;
 b=EcZKrAqLSVLj7d3CuweQMHy7Le/WLry2qSrngovaDFoCiTc8WGF4v1xO
 UnlFryg7hrjblsuK+226NWoT2l75FHJ99NA0TNzWdn0j3KIBnk+whmihf
 xu03LaiFfNSxjhCuBj0lFnndPp/sGnshwXp8RvMzVPrLLlUSOO1T+YAtb
 lDcw3+6lJKSTd8NRl4fnN6PXxFLgzDyYbIrBVgiBjTxm+BFvfa/YC6KdA
 WbwB9RY2krAeKmxCg4e8TgPW0hk2fr8ZPWmp+FYLkaeertIKrPQ1ZDuAp
 u43XfjGAxL61cdAGVZzmCgxrTdx/8g0uGrWueXPTj47BhVL71AJpRAPe4 w==;
X-CSE-ConnectionGUID: JAdElwB8S9We793hOx+/JQ==
X-CSE-MsgGUID: JQKoDwkaRTKFGw2rtYhj1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="42327537"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="42327537"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 05:13:37 -0800
X-CSE-ConnectionGUID: 18hCa8qBQtmAujBIEomhWQ==
X-CSE-MsgGUID: 0Msy412cQB6W3Mxyi2akvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="93579170"
Received: from ksztyber-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 05:13:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/irq: hide display_irqs_enabled access
In-Reply-To: <ZzY5f-p1ERZwH7mj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1731347547.git.jani.nikula@intel.com>
 <6dcb90c7786532c7df0281e29a3e680c9551f060.1731347547.git.jani.nikula@intel.com>
 <ZzY5f-p1ERZwH7mj@intel.com>
Date: Fri, 15 Nov 2024 15:13:31 +0200
Message-ID: <8734js63no.fsf@intel.com>
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

On Thu, 14 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Mon, Nov 11, 2024 at 07:53:33PM +0200, Jani Nikula wrote:
>> Move the check for display_irqs_enabled within vlv_display_irq_reset()
>> and vlv_display_irq_postinstall() to avoid looking at struct
>> intel_display members within i915 core irq code.
>> 
>> Within display irq code, vlv_display_irq_reset() may need to be called
>> with !display_irqs_enabled, so add a small wrapper.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 ++++++++++++---
>>  drivers/gpu/drm/i915/i915_irq.c                  | 12 ++++--------
>>  2 files changed, 16 insertions(+), 11 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> index e1547ebce60e..d5458b0d976b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1479,7 +1479,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>>  		schedule_work(&display->irq.vblank_dc_work);
>>  }
>>  
>> -void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>> +static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_uncore *uncore = &dev_priv->uncore;
>>  
>> @@ -1497,6 +1497,12 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  	dev_priv->irq_mask = ~0u;
>>  }
>>  
>> +void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>> +{
>> +	if (dev_priv->display.irq.display_irqs_enabled)
>> +		_vlv_display_irq_reset(dev_priv);
>> +}
>> +
>>  void i9xx_display_irq_reset(struct drm_i915_private *i915)
>>  {
>>  	if (I915_HAS_HOTPLUG(i915)) {
>> @@ -1516,6 +1522,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	u32 enable_mask;
>>  	enum pipe pipe;
>>  
>> +	if (!dev_priv->display.irq.display_irqs_enabled)
>> +		return;
>
> I got confused here. this likely deserves a separate patch?

I thought I explained it in the commit message. The check is being moved
from the callers to the callees. But for vlv_display_irq_reset() we also
need to be able to call without the check, so that gets an additional
wrapper.

BR,
Jani.

>
>> +
>>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
>>  
>>  	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
>> @@ -1694,7 +1703,7 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>>  	dev_priv->display.irq.display_irqs_enabled = true;
>>  
>>  	if (intel_irqs_enabled(dev_priv)) {
>> -		vlv_display_irq_reset(dev_priv);
>> +		_vlv_display_irq_reset(dev_priv);
>>  		vlv_display_irq_postinstall(dev_priv);
>>  	}
>>  }
>> @@ -1709,7 +1718,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
>>  	dev_priv->display.irq.display_irqs_enabled = false;
>>  
>>  	if (intel_irqs_enabled(dev_priv))
>> -		vlv_display_irq_reset(dev_priv);
>> +		_vlv_display_irq_reset(dev_priv);
>>  }
>>  
>>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index f75cbf5b8a1c..7920ad9585ae 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -658,8 +658,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>>  	gen5_gt_irq_reset(to_gt(dev_priv));
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> -		vlv_display_irq_reset(dev_priv);
>> +	vlv_display_irq_reset(dev_priv);
>>  	spin_unlock_irq(&dev_priv->irq_lock);
>>  }
>>  
>> @@ -723,8 +722,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
>>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> -		vlv_display_irq_reset(dev_priv);
>> +	vlv_display_irq_reset(dev_priv);
>>  	spin_unlock_irq(&dev_priv->irq_lock);
>>  }
>>  
>> @@ -740,8 +738,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	gen5_gt_irq_postinstall(to_gt(dev_priv));
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> -		vlv_display_irq_postinstall(dev_priv);
>> +	vlv_display_irq_postinstall(dev_priv);
>>  	spin_unlock_irq(&dev_priv->irq_lock);
>>  
>>  	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
>> @@ -794,8 +791,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
>>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
>>  
>>  	spin_lock_irq(&dev_priv->irq_lock);
>> -	if (dev_priv->display.irq.display_irqs_enabled)
>> -		vlv_display_irq_postinstall(dev_priv);
>> +	vlv_display_irq_postinstall(dev_priv);
>>  	spin_unlock_irq(&dev_priv->irq_lock);
>>  
>>  	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
>> -- 
>> 2.39.5
>> 

-- 
Jani Nikula, Intel
