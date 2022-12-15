Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A705364D814
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 09:55:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34D710E4FA;
	Thu, 15 Dec 2022 08:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEACD10E4FA
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 08:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671094496; x=1702630496;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IlRwxFDW25yNkNL6qkpV8Sv/BO7SdGK/aMMpuPhuUGE=;
 b=Oq2BmMvEL+Wmqibpf828A+X1nvQFaaVgtxrzcudc3agQeXozHdf9TEU3
 7LvEJoFQoaa+5j1waxUJO/ERSUlFwjEXz4pySs4nM9PM1Ouqq1G54e8+2
 eKVHM43r0teMLMnqSI8cYhO58pwB2ILSdId/zblT4HJnK366yK0AmC2oq
 wdA3IAIT5ClkFFTHSqpJqCSddzHIY1O/xtC7a0160piu/C3bspEozc6TL
 oxgeHKL+PYEJ1/cNSbtZ3GkDPvRayAB5+OygSCnF4xaBvZn8udzl/t+tO
 MLVyXPQq6Sjah+fz7kV0Brhdt3nFU2CkGh2D8bc7hBxAjx8+05t0BImPH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="316263159"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="316263159"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 00:54:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="681780591"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="681780591"
Received: from tgodea-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.26])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 00:54:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20221215001459.3759580-1-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221215001459.3759580-1-lucas.demarchi@intel.com>
Date: Thu, 15 Dec 2022 10:54:51 +0200
Message-ID: <874jtxvyg4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: ratelimit errors in display
 engine irq
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 14 Dec 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> While debugging page table faults it's useful not to kill the machine
> with thousands of error mesages. Ratelimit all errors in
> gen8_de_irq_handler().
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index edfe363af838..7a43d1bb6f97 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2448,8 +2448,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  			ret = IRQ_HANDLED;
>  			gen8_de_misc_irq_handler(dev_priv, iir);
>  		} else {
> -			drm_err(&dev_priv->drm,
> -				"The master control interrupt lied (DE MISC)!\n");
> +			drm_err_ratelimited(&dev_priv->drm,
> +					    "The master control interrupt lied (DE MISC)!\n");
>  		}
>  	}
>  
> @@ -2460,8 +2460,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  			ret = IRQ_HANDLED;
>  			gen11_hpd_irq_handler(dev_priv, iir);
>  		} else {
> -			drm_err(&dev_priv->drm,
> -				"The master control interrupt lied, (DE HPD)!\n");
> +			drm_err_ratelimited(&dev_priv->drm,
> +					    "The master control interrupt lied, (DE HPD)!\n");
>  		}
>  	}
>  
> @@ -2510,12 +2510,12 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  			}
>  
>  			if (!found)
> -				drm_err(&dev_priv->drm,
> -					"Unexpected DE Port interrupt\n");
> +				drm_err_ratelimited(&dev_priv->drm,
> +						    "Unexpected DE Port interrupt\n");
>  		}
>  		else
> -			drm_err(&dev_priv->drm,
> -				"The master control interrupt lied (DE PORT)!\n");
> +			drm_err_ratelimited(&dev_priv->drm,
> +					    "The master control interrupt lied (DE PORT)!\n");
>  	}
>  
>  	for_each_pipe(dev_priv, pipe) {
> @@ -2526,8 +2526,8 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  
>  		iir = intel_uncore_read(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe));
>  		if (!iir) {
> -			drm_err(&dev_priv->drm,
> -				"The master control interrupt lied (DE PIPE)!\n");
> +			drm_err_ratelimited(&dev_priv->drm,
> +					    "The master control interrupt lied (DE PIPE)!\n");
>  			continue;
>  		}
>  
> @@ -2548,10 +2548,10 @@ gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>  		if (fault_errors)
> -			drm_err(&dev_priv->drm,
> -				"Fault errors on pipe %c: 0x%08x\n",
> -				pipe_name(pipe),
> -				fault_errors);
> +			drm_err_ratelimited(&dev_priv->drm,
> +					    "Fault errors on pipe %c: 0x%08x\n",
> +					    pipe_name(pipe),
> +					    fault_errors);
>  	}
>  
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_PCH_NOP(dev_priv) &&

-- 
Jani Nikula, Intel Open Source Graphics Center
