Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCA7580F76
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 10:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2237511BF57;
	Tue, 26 Jul 2022 08:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 589D311BF33
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 08:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658825948; x=1690361948;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=LYLb6fDFXcfRhIlRpGZH5WQg6JSe4f0fkg+F2KToTKI=;
 b=jtsSIwhPJgDoQ8PoOm91sWVJ8JHF7R9Bj8ZjX9ICaSBN7Za4in2rmebP
 oYfOVbXZkN826JoWKdcA6WZM8v1ImzhbjWAAoTT+cNJLyt1PA/R06Jm2f
 Ise8ZAgGRrX13vk+awoHdNRJCBhBjsyGQ3ArLr/muZ+6Z2AuoXVCfAEAD
 Xh1dyMoLU1McyLqB9iEWSBsi8LmpK6ArQlyyYjFjDC7XKoOPJ8lU626ZN
 sp7eYWLEQpTlBIIioPfw/5uGl0AxnGFzUSPgeG3T/e7hvQzENBo3Nbe/b
 7RLy4Mj6K6uam1SzFtTTG7W9hx8kUP2Gt6L+WtpzF/EEf0FNxSu996s9+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="313662541"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="313662541"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:59:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="927248223"
Received: from atilson-mobl2.ger.corp.intel.com (HELO [10.213.238.124])
 ([10.213.238.124])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 01:59:06 -0700
Message-ID: <f7c084d1-1e18-04f4-970a-faa5e0761d21@linux.intel.com>
Date: Tue, 26 Jul 2022 09:59:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
References: <20220721225100.693589-1-anusha.srivatsa@intel.com>
 <CY4PR1101MB21665FF0EE500E6A0344B41CF8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CY4PR1101MB21665FF0EE500E6A0344B41CF8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler/ack()
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


On 25/07/2022 19:38, Srivatsa, Anusha wrote:
> @Ursulin, Tvrtko Is this wat you had in mind?

Two functions aligned in prototype yes - but I left to you guys which 
prototype is correct. AFAICT Matt looked and concluded i915 is correct 
so that's good for me.

Regards,

Tvrtko

>> -----Original Message-----
>> From: Srivatsa, Anusha <anusha.srivatsa@intel.com>
>> Sent: Thursday, July 21, 2022 3:51 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Ursulin, Tvrtko
>> <tvrtko.ursulin@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>
>> Subject: [PATCH] drm/i915: Pass drm_i915_private struct instead of gt for
>> gen11_gu_misc_irq_handler/ack()
>>
>> gen11_gu_misc_irq_handler() and gen11_gu_misc_ack() do nothing tile
>> specific.
>>
>> v2: gen11_gu_misc_irq_ack() tile agnostic like gen11_gu_misc_irq_handler()
>> (Tvrtko)
>>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_irq.c | 16 ++++++++--------
>>   1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c
>> b/drivers/gpu/drm/i915/i915_irq.c index 73cebc6aa650..eb37b6bacaac
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -2653,9 +2653,9 @@ static irqreturn_t gen8_irq_handler(int irq, void
>> *arg)  }
>>
>>   static u32
>> -gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
>> +gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
>> +master_ctl)
>>   {
>> -	void __iomem * const regs = gt->uncore->regs;
>> +	void __iomem * const regs = i915->uncore.regs;
>>   	u32 iir;
>>
>>   	if (!(master_ctl & GEN11_GU_MISC_IRQ)) @@ -2669,10 +2669,10
>> @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)  }
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
>>   static inline u32 gen11_master_intr_disable(void __iomem * const regs) @@
>> -2736,11 +2736,11 @@ static irqreturn_t gen11_irq_handler(int irq, void
>> *arg)
>>   	if (master_ctl & GEN11_DISPLAY_IRQ)
>>   		gen11_display_irq_handler(i915);
>>
>> -	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
>> +	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
>>
>>   	gen11_master_intr_enable(regs);
>>
>> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
>> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>>
>>   	pmu_irq_stats(i915, IRQ_HANDLED);
>>
>> @@ -2801,11 +2801,11 @@ static irqreturn_t dg1_irq_handler(int irq, void
>> *arg)
>>   	if (master_ctl & GEN11_DISPLAY_IRQ)
>>   		gen11_display_irq_handler(i915);
>>
>> -	gu_misc_iir = gen11_gu_misc_irq_ack(gt, master_ctl);
>> +	gu_misc_iir = gen11_gu_misc_irq_ack(i915, master_ctl);
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
> 
