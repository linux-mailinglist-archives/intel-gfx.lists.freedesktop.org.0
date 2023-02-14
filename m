Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333ED69636F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 13:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A764E10E215;
	Tue, 14 Feb 2023 12:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9E5710E215
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 12:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676377527; x=1707913527;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1lRisvyQDeZSfPKD6rSjqVDmyDuVWJV3T4azwM1cd4k=;
 b=WIilVzk6XFBc+ZiP++2rIPzzChDjNpEtEn9LevyYQd08zkKkFNJDo90k
 EUaEpWxJgMfw/w+KALJnb3l+hBWA0LYt2v2S/VtngXFA7F2ytTbq2opsl
 EcFow55T8ZnxoC+eVhfIpMMpwRcAkDp1WdbD0P0YsnsvkNzkT3ZSvoLiX
 LzGWRSXQ8tjT4o7nZmAb9a1yyS6Kim96DbOBGivmSnGB0K4JmPoYGby9g
 z1QbJMk8oUwHmVVDP0wrJPPIBkys1UWnYWiUGAg67HfHLL55AqCMZedWb
 ht6LGCeuBxUof4ZZX5mlWnPMV2tN7c1xhewDxC9pkD3dQplScvwMP43QK A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="311506898"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="311506898"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:25:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="619046716"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="619046716"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:25:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
In-Reply-To: <Y+OHjpIX43yFVKYS@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230208105932.21681-1-swati2.sharma@intel.com>
 <Y+OHjpIX43yFVKYS@ashyti-mobl2.lan>
Date: Tue, 14 Feb 2023 14:25:22 +0200
Message-ID: <87fsb8sabx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 08 Feb 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Swati,
>
> [...]
>
>> +static void intel_fifo_underrun_inc_count(struct intel_crtc *crtc,
>> +					  bool is_cpu_fifo)
>
> I'm not a big fan of the true/false parameters in functions. I
> actually hate them because it's never clear from the caller what
> the true/false means.
>
> Isn't it clear to just have some wrappers
>
> #define intel_fifo_underrun_inc_cpu_count(...)
> #define intel_fifo_underrun_inc_cph_count(...)
>
> or similar?
>
>> +{
>> +#ifdef CONFIG_DEBUG_FS
>> +	if (is_cpu_fifo)
>> +		crtc->cpu_fifo_underrun_count++;
>> +	else
>> +		crtc->pch_fifo_underrun_count++;
>> +#endif
>> +}
>> +
>>  static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> @@ -103,6 +114,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>>  	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
>>  	intel_de_posting_read(dev_priv, reg);
>>  
>> +	intel_fifo_underrun_inc_count(crtc, true);
>>  	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
>>  	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
>>  }
>> @@ -156,6 +168,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
>>  	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
>>  	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
>>  
>> +	intel_fifo_underrun_inc_count(crtc, true);
>>  	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
>>  	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
>>  }
>> @@ -244,6 +257,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
>>  		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
>>  	intel_de_posting_read(dev_priv, SERR_INT);
>>  
>> +	intel_fifo_underrun_inc_count(crtc, false);
>>  	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
>>  	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
>>  		pipe_name(pch_transcoder));
>> @@ -286,6 +300,11 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>>  
>>  	old = !crtc->cpu_fifo_underrun_disabled;
>>  	crtc->cpu_fifo_underrun_disabled = !enable;
>> +#ifdef CONFIG_DEBUG_FS
>> +	/* don't reset count in fifo underrun irq path */
>> +	if (!in_irq() && !enable)
>> +		crtc->cpu_fifo_underrun_count = 0;
>> +#endif
>>  
>>  	if (HAS_GMCH(dev_priv))
>>  		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
>> @@ -365,6 +384,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>>  
>>  	old = !crtc->pch_fifo_underrun_disabled;
>>  	crtc->pch_fifo_underrun_disabled = !enable;
>> +#ifdef CONFIG_DEBUG_FS
>> +	/* don't reset count in fifo underrun irq path */
>> +	if (!in_irq() && !enable)
>> +		crtc->pch_fifo_underrun_count = 0;
>> +#endif
>
> All these ifdefs are a bit ugly. Can we put all these stuff
> inside the debugfs.c file that is compiled only if DEBUG_FS is
> configured?

The opposite, the debugfs should be added in this file instead. :)

See my reply.

BR,
Jani.




>
> Andi
>
>>  
>>  	if (HAS_PCH_IBX(dev_priv))
>>  		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
>> @@ -434,6 +458,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>>  			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>>  	}
>>  
>> +	intel_fifo_underrun_inc_count(crtc, true);
>>  	intel_fbc_handle_fifo_underrun_irq(dev_priv);
>>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
