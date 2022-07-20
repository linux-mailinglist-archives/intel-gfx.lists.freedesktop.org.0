Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A495B57B3FF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jul 2022 11:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AEB11A925;
	Wed, 20 Jul 2022 09:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53BCC11A86D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jul 2022 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658309911; x=1689845911;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=cONTn1k4opGHAIhCVRbVw9wWRAWgo4lkn/D9fbdpm2o=;
 b=WVOtx2Ejr89hmr5XjwJ7GbHSPj4+rgFipSPeHX00yWblOnzbtn+ftc+k
 R+WCMqrgF8/60WoY5pTEG05MtZSLXpxC3QJIm1kOdfwlPyn/29ekrdrkz
 swZkEMnqDdWifFE8HWjRj2oaacHHWQoKAiryk2sE1PsjyeLDyf1J+GPMq
 fuDmsTQwX6sEdrOnfvNnvYjoF7JW4FCFiTATyJzyu2+L4dEWaP3zGWep9
 AW6b06bm7SJM9Ssq6UGq7iMJEO0qV3cpNXbFTDwBSIhNQbTIArOCtRSxY
 zs9FNt2KC1TPUiA/EdRRWPB7vR/mLTw5SMPlP+LEQFAljLzer8G8N46fh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10413"; a="312423180"
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="312423180"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 02:38:30 -0700
X-IronPort-AV: E=Sophos;i="5.92,286,1650956400"; d="scan'208";a="630704058"
Received: from spmccann-mobl.ger.corp.intel.com (HELO [10.213.200.99])
 ([10.213.200.99])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2022 02:38:28 -0700
Message-ID: <8d4c0c06-f6bb-0bd0-46ab-0535deabeabe@linux.intel.com>
Date: Wed, 20 Jul 2022 10:38:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 Anusha Srivatsa <anusha.srivatsa@intel.com>
References: <20220718183424.149988-1-anusha.srivatsa@intel.com>
 <YtWsW+q+soTMtHgi@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <YtWsW+q+soTMtHgi@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 18/07/2022 19:54, Matt Roper wrote:
> On Mon, Jul 18, 2022 at 11:34:24AM -0700, Anusha Srivatsa wrote:
>> gen11_gu_misc_irq_handler() does not do anything tile specific.
>>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
>> ---
>>   drivers/gpu/drm/i915/i915_irq.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index 73cebc6aa650..c304af777d58 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -2669,10 +2669,10 @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
>>   }
>>   
>>   static void
>> -gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
>> +gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>>   {
>>   	if (iir & GEN11_GU_MISC_GSE)
>> -		intel_opregion_asle_intr(gt->i915);
>> +		intel_opregion_asle_intr(i915);
>>   }
>>   
>>   static inline u32 gen11_master_intr_disable(void __iomem * const regs)
>> @@ -2740,7 +2740,7 @@ static irqreturn_t gen11_irq_handler(int irq, void *arg)
>>   

Maybe this is correct but it leaves this, round about here:

	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);

So _if_ these registers are truly not per GT, or don't live in the GT 
block, change this one as well?

Regards,

Tvrtko

>>   	gen11_master_intr_enable(regs);
>>   
>> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>>   
>>   	pmu_irq_stats(i915, IRQ_HANDLED);
>>   
>> @@ -2805,7 +2805,7 @@ static irqreturn_t dg1_irq_handler(int irq, void *arg)
>>   
>>   	dg1_master_intr_enable(regs);
>>   
>> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>>   
>>   	pmu_irq_stats(i915, IRQ_HANDLED);
>>   
>> -- 
>> 2.25.1
>>
> 
