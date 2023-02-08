Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA2668EDED
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E82910E747;
	Wed,  8 Feb 2023 11:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFE4610E747
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675855767; x=1707391767;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=lk9fKNuecWA/zg7zUsyAsAJtvxscXYPXkWShDy+v8AI=;
 b=EX1hLxpKKjdaH/7kPEuNsneWR0oroyU2eiojaeun3QJLVmpd7lptNCpj
 zcYFgGbtivSTNyxblqu2MUmcsC6bMvL3AjF7bHq2EyyN0/9Mg0ZcAl6Kr
 tlz/GWR10O1ca0O73v6xvOELwudmPAn5ZWtNI3e/HVsIpF9mJRqZ/Oodu
 w1uIFVGMN6t+AFngqNuFxbUNkKcQfLGKN1aWYyoCIt44znJMtuNMkZkog
 SNnOAeFxjNy0H/9qtL7jtlpJfDA7jL02lDiT8x79QRpPHCz0s0AK8zTLG
 T7Pp1K52k8NACVM4jjJ+JDstQt3scrlNnaFORqFLP5cdjidkeWi2sklVp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="394364465"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="394364465"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:29:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="735909091"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="735909091"
Received: from lxu17-mobl.ccr.corp.intel.com (HELO intel.com) ([10.252.63.161])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:29:21 -0800
Date: Wed, 8 Feb 2023 12:29:18 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Swati Sharma <swati2.sharma@intel.com>
Message-ID: <Y+OHjpIX43yFVKYS@ashyti-mobl2.lan>
References: <20230208105932.21681-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208105932.21681-1-swati2.sharma@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add a debugfs entry for
 fifo underruns
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
Cc: Mohammed Khajapasha <mohammed.khajapasha@intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Swati,

[...]

> +static void intel_fifo_underrun_inc_count(struct intel_crtc *crtc,
> +					  bool is_cpu_fifo)

I'm not a big fan of the true/false parameters in functions. I
actually hate them because it's never clear from the caller what
the true/false means.

Isn't it clear to just have some wrappers

#define intel_fifo_underrun_inc_cpu_count(...)
#define intel_fifo_underrun_inc_cph_count(...)

or similar?

> +{
> +#ifdef CONFIG_DEBUG_FS
> +	if (is_cpu_fifo)
> +		crtc->cpu_fifo_underrun_count++;
> +	else
> +		crtc->pch_fifo_underrun_count++;
> +#endif
> +}
> +
>  static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> @@ -103,6 +114,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>  	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
>  	intel_de_posting_read(dev_priv, reg);
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
>  	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
>  }
> @@ -156,6 +168,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
>  	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
>  	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
>  	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
>  }
> @@ -244,6 +257,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
>  		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
>  	intel_de_posting_read(dev_priv, SERR_INT);
>  
> +	intel_fifo_underrun_inc_count(crtc, false);
>  	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
>  	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
>  		pipe_name(pch_transcoder));
> @@ -286,6 +300,11 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>  
>  	old = !crtc->cpu_fifo_underrun_disabled;
>  	crtc->cpu_fifo_underrun_disabled = !enable;
> +#ifdef CONFIG_DEBUG_FS
> +	/* don't reset count in fifo underrun irq path */
> +	if (!in_irq() && !enable)
> +		crtc->cpu_fifo_underrun_count = 0;
> +#endif
>  
>  	if (HAS_GMCH(dev_priv))
>  		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
> @@ -365,6 +384,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>  
>  	old = !crtc->pch_fifo_underrun_disabled;
>  	crtc->pch_fifo_underrun_disabled = !enable;
> +#ifdef CONFIG_DEBUG_FS
> +	/* don't reset count in fifo underrun irq path */
> +	if (!in_irq() && !enable)
> +		crtc->pch_fifo_underrun_count = 0;
> +#endif

All these ifdefs are a bit ugly. Can we put all these stuff
inside the debugfs.c file that is compiled only if DEBUG_FS is
configured?

Andi

>  
>  	if (HAS_PCH_IBX(dev_priv))
>  		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
> @@ -434,6 +458,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>  			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>  	}
>  
> +	intel_fifo_underrun_inc_count(crtc, true);
>  	intel_fbc_handle_fifo_underrun_irq(dev_priv);
>  }
