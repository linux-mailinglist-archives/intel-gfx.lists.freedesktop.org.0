Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47B36B9A31
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 16:46:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D49810E82E;
	Tue, 14 Mar 2023 15:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EC9E10E833
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 15:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678808796; x=1710344796;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tJMt/OG2WNm9zpPVKyijOT+CDUhQrSARyU28sRmcdec=;
 b=AsmaATxAJuxRdfZYJVeR1RSLrWw8qvkASt/DJewNRegbGopf/35i67Oo
 dw9qx+tESXsXVyOrqzwO/NjqsWSey+2VlYHaY1yMq8ZjfR3bo4gEVXUT7
 GVyoeTsRGWEdCA6jRJju71erPyDlUAoL/fzWALnfsG7mPJaRjYheN29UQ
 Rzb0ru/7XQJxUsS7mzMvQQpeHdBsg7ze4QM3NgPo7cI4ENdvo0SQxUT/e
 k3+h6+5DDUo8ryTsqZujeuYrTYJhljIYCDFl246XvQ3X6QD9GOOIstPYp
 7737eZiHAtlML/3pOuSR6FIYzNwRrHClo8jIwDZSAdgCZN3KOHFS8qdxW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="334948692"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="334948692"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:46:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711565610"
X-IronPort-AV: E=Sophos;i="5.98,260,1673942400"; d="scan'208";a="711565610"
Received: from swatish2-mobl2.gar.corp.intel.com (HELO [10.213.124.221])
 ([10.213.124.221])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 08:46:33 -0700
Message-ID: <76d489d6-b2e6-0e97-0850-683567059172@intel.com>
Date: Tue, 14 Mar 2023 21:16:30 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
References: <20230208105932.21681-1-swati2.sharma@intel.com>
 <Y+OHjpIX43yFVKYS@ashyti-mobl2.lan> <87fsb8sabx.fsf@intel.com>
Content-Language: en-US
From: Swati Sharma <swati2.sharma@intel.com>
Organization: Intel
In-Reply-To: <87fsb8sabx.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

Thanks Andi and Jani N for the review comments.
Sorry for the delay.
Will send the next rev soon.

On 14-Feb-23 5:55 PM, Jani Nikula wrote:
> On Wed, 08 Feb 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
>> Hi Swati,
>>
>> [...]
>>
>>> +static void intel_fifo_underrun_inc_count(struct intel_crtc *crtc,
>>> +					  bool is_cpu_fifo)
>>
>> I'm not a big fan of the true/false parameters in functions. I
>> actually hate them because it's never clear from the caller what
>> the true/false means.
>>
>> Isn't it clear to just have some wrappers
>>
>> #define intel_fifo_underrun_inc_cpu_count(...)
>> #define intel_fifo_underrun_inc_cph_count(...)
>>
>> or similar?
>>
>>> +{
>>> +#ifdef CONFIG_DEBUG_FS
>>> +	if (is_cpu_fifo)
>>> +		crtc->cpu_fifo_underrun_count++;
>>> +	else
>>> +		crtc->pch_fifo_underrun_count++;
>>> +#endif
>>> +}
>>> +
>>>   static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>>>   {
>>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>> @@ -103,6 +114,7 @@ static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
>>>   	intel_de_write(dev_priv, reg, enable_mask | PIPE_FIFO_UNDERRUN_STATUS);
>>>   	intel_de_posting_read(dev_priv, reg);
>>>   
>>> +	intel_fifo_underrun_inc_count(crtc, true);
>>>   	trace_intel_cpu_fifo_underrun(dev_priv, crtc->pipe);
>>>   	drm_err(&dev_priv->drm, "pipe %c underrun\n", pipe_name(crtc->pipe));
>>>   }
>>> @@ -156,6 +168,7 @@ static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
>>>   	intel_de_write(dev_priv, GEN7_ERR_INT, ERR_INT_FIFO_UNDERRUN(pipe));
>>>   	intel_de_posting_read(dev_priv, GEN7_ERR_INT);
>>>   
>>> +	intel_fifo_underrun_inc_count(crtc, true);
>>>   	trace_intel_cpu_fifo_underrun(dev_priv, pipe);
>>>   	drm_err(&dev_priv->drm, "fifo underrun on pipe %c\n", pipe_name(pipe));
>>>   }
>>> @@ -244,6 +257,7 @@ static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
>>>   		       SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));
>>>   	intel_de_posting_read(dev_priv, SERR_INT);
>>>   
>>> +	intel_fifo_underrun_inc_count(crtc, false);
>>>   	trace_intel_pch_fifo_underrun(dev_priv, pch_transcoder);
>>>   	drm_err(&dev_priv->drm, "pch fifo underrun on pch transcoder %c\n",
>>>   		pipe_name(pch_transcoder));
>>> @@ -286,6 +300,11 @@ static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
>>>   
>>>   	old = !crtc->cpu_fifo_underrun_disabled;
>>>   	crtc->cpu_fifo_underrun_disabled = !enable;
>>> +#ifdef CONFIG_DEBUG_FS
>>> +	/* don't reset count in fifo underrun irq path */
>>> +	if (!in_irq() && !enable)
>>> +		crtc->cpu_fifo_underrun_count = 0;
>>> +#endif
>>>   
>>>   	if (HAS_GMCH(dev_priv))
>>>   		i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
>>> @@ -365,6 +384,11 @@ bool intel_set_pch_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
>>>   
>>>   	old = !crtc->pch_fifo_underrun_disabled;
>>>   	crtc->pch_fifo_underrun_disabled = !enable;
>>> +#ifdef CONFIG_DEBUG_FS
>>> +	/* don't reset count in fifo underrun irq path */
>>> +	if (!in_irq() && !enable)
>>> +		crtc->pch_fifo_underrun_count = 0;
>>> +#endif
>>
>> All these ifdefs are a bit ugly. Can we put all these stuff
>> inside the debugfs.c file that is compiled only if DEBUG_FS is
>> configured?
> 
> The opposite, the debugfs should be added in this file instead. :)
> 
> See my reply.
> 
> BR,
> Jani.
> 
> 
> 
> 
>>
>> Andi
>>
>>>   
>>>   	if (HAS_PCH_IBX(dev_priv))
>>>   		ibx_set_fifo_underrun_reporting(&dev_priv->drm,
>>> @@ -434,6 +458,7 @@ void intel_cpu_fifo_underrun_irq_handler(struct drm_i915_private *dev_priv,
>>>   			drm_err(&dev_priv->drm, "CPU pipe %c FIFO underrun\n", pipe_name(pipe));
>>>   	}
>>>   
>>> +	intel_fifo_underrun_inc_count(crtc, true);
>>>   	intel_fbc_handle_fifo_underrun_irq(dev_priv);
>>>   }
> 

-- 
~Swati Sharma
