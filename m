Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 566F6987FF3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 10:04:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66F0B10EC43;
	Fri, 27 Sep 2024 08:04:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lZJYZKmx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD8810EC42;
 Fri, 27 Sep 2024 08:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727424267; x=1758960267;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ViPzcIkp0y5csYqmxCePIfrV6RTQYMiJDJNQyO1qp/0=;
 b=lZJYZKmxGSjUiM57hf1a2Td/w1MrWA6yglBzFQXkzlZRoEr5Jy6k4oyZ
 qrXc+j7yYz6Ad2694c5TttADUvDMpInUcNlHJbsTifFHJav7EAmpaSltS
 xuLpnbiZbVvFNUx516xKK9pGtDhShiIkJuk9bX0nlDQgL0B0h0mhqJuj1
 VMl+Nk09S07zs3Kj3ngtR4ILUUbBy/KKOxPC0tXTGh3FuHCQDMjdZo1sa
 hf4sYTowIn7cp5Adt9ssQdIawyYieO8aynEU9vF0lyu7KkTHysUXzx4vR
 RUgSV1qeVD33I6AMAuS/U/fINL/ziscE6QdSX27BwxcKGB/nhR+oRARN1 g==;
X-CSE-ConnectionGUID: J8RuE2cZThGujIf8iZbRRw==
X-CSE-MsgGUID: z9tV6rIOSC+0SKckdNG4uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37140691"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="37140691"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:04:25 -0700
X-CSE-ConnectionGUID: TSON4GiwQ2++VWIZ8e+PAA==
X-CSE-MsgGUID: KHPHEwRMTuOp2ntuR1FmbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="95802461"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 01:04:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/irq: add struct i915_irq_regs triplet
In-Reply-To: <ZvWyF0RORVLoXMVP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1727369787.git.jani.nikula@intel.com>
 <a51dac3cb572e58654fa705b011d357671c17413.1727369787.git.jani.nikula@intel.com>
 <ZvWyF0RORVLoXMVP@intel.com>
Date: Fri, 27 Sep 2024 11:04:18 +0300
Message-ID: <87y13dzfnh.fsf@intel.com>
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

On Thu, 26 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Sep 26, 2024 at 07:57:46PM +0300, Jani Nikula wrote:
>> Add struct i915_irq_regs to hold IMR/IER/IIR register offsets to pass to
>> gen3_irq_reset() and gen3_irq_init(). This helps in grouping the
>> registers and further cleanup.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_irq.c           | 31 ++++++++++-------------
>>  drivers/gpu/drm/i915/i915_irq.h           | 30 ++++++++++------------
>>  drivers/gpu/drm/i915/i915_reg_defs.h      | 10 ++++++++
>>  drivers/gpu/drm/xe/display/ext/i915_irq.c | 31 ++++++++++-------------
>>  4 files changed, 51 insertions(+), 51 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index a784803f709a..7938a44b5681 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -77,19 +77,18 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
>>  	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
>>  }
>>  
>> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
>> -		    i915_reg_t iir, i915_reg_t ier)
>> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
>>  {
>> -	intel_uncore_write(uncore, imr, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, imr);
>> +	intel_uncore_write(uncore, regs.imr, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.imr);
>>  
>> -	intel_uncore_write(uncore, ier, 0);
>> +	intel_uncore_write(uncore, regs.ier, 0);
>>  
>>  	/* IIR can theoretically queue up two events. Be paranoid. */
>> -	intel_uncore_write(uncore, iir, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, iir);
>> -	intel_uncore_write(uncore, iir, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, iir);
>> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.iir);
>> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.iir);
>>  }
>>  
>>  static void gen2_irq_reset(struct intel_uncore *uncore)
>> @@ -141,16 +140,14 @@ static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
>>  	intel_uncore_posting_read16(uncore, GEN2_IIR);
>>  }
>>  
>> -void gen3_irq_init(struct intel_uncore *uncore,
>> -		   i915_reg_t imr, u32 imr_val,
>> -		   i915_reg_t ier, u32 ier_val,
>> -		   i915_reg_t iir)
>> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>> +		   u32 imr_val, u32 ier_val)
>>  {
>> -	gen3_assert_iir_is_zero(uncore, iir);
>> +	gen3_assert_iir_is_zero(uncore, regs.iir);
>>  
>> -	intel_uncore_write(uncore, ier, ier_val);
>> -	intel_uncore_write(uncore, imr, imr_val);
>> -	intel_uncore_posting_read(uncore, imr);
>> +	intel_uncore_write(uncore, regs.ier, ier_val);
>> +	intel_uncore_write(uncore, regs.imr, imr_val);
>> +	intel_uncore_posting_read(uncore, regs.imr);
>>  }
>>  
>>  static void gen2_irq_init(struct intel_uncore *uncore,
>> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
>> index cde4cac5eca2..361ba46eed76 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.h
>> +++ b/drivers/gpu/drm/i915/i915_irq.h
>> @@ -42,37 +42,33 @@ void intel_synchronize_hardirq(struct drm_i915_private *i915);
>>  
>>  void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
>>  
>> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
>> -		    i915_reg_t iir, i915_reg_t ier);
>> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
>>  
>> -void gen3_irq_init(struct intel_uncore *uncore,
>> -		   i915_reg_t imr, u32 imr_val,
>> -		   i915_reg_t ier, u32 ier_val,
>> -		   i915_reg_t iir);
>> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>> +		   u32 imr_val, u32 ier_val);
>>  
>>  #define GEN8_IRQ_RESET_NDX(uncore, type, which) \
>>  ({ \
>>  	unsigned int which_ = which; \
>> -	gen3_irq_reset((uncore), GEN8_##type##_IMR(which_), \
>> -		       GEN8_##type##_IIR(which_), GEN8_##type##_IER(which_)); \
>> +	gen3_irq_reset((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
>> +					       GEN8_##type##_IER(which_), \
>> +					       GEN8_##type##_IIR(which_))); \
>
> after checking other patches and seeing that this is really going away,

Yeah, it's not a pretty intermediate step, but I kept that intermediate
step with hopes that it's easier to review this way.

> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, will push once the CI results are in.

>
>>  })
>>  
>>  #define GEN3_IRQ_RESET(uncore, type) \
>> -	gen3_irq_reset((uncore), type##IMR, type##IIR, type##IER)
>> +	gen3_irq_reset((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR))
>>  
>>  #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
>>  ({ \
>>  	unsigned int which_ = which; \
>> -	gen3_irq_init((uncore), \
>> -		      GEN8_##type##_IMR(which_), imr_val, \
>> -		      GEN8_##type##_IER(which_), ier_val, \
>> -		      GEN8_##type##_IIR(which_)); \
>> +	gen3_irq_init((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
>> +					      GEN8_##type##_IER(which_), \
>> +					      GEN8_##type##_IIR(which_)), \
>> +		      imr_val, ier_val); \
>>  })
>>  
>>  #define GEN3_IRQ_INIT(uncore, type, imr_val, ier_val) \
>> -	gen3_irq_init((uncore), \
>> -		      type##IMR, imr_val, \
>> -		      type##IER, ier_val, \
>> -		      type##IIR)
>> +	gen3_irq_init((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR), \
>> +		      imr_val, ier_val)
>>  
>>  #endif /* __I915_IRQ_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
>> index a685db1e815d..e251bcc0c89f 100644
>> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
>> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
>> @@ -284,4 +284,14 @@ typedef struct {
>>  #define i915_mmio_reg_equal(a, b) (i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b))
>>  #define i915_mmio_reg_valid(r) (!i915_mmio_reg_equal(r, INVALID_MMIO_REG))
>>  
>> +/* A triplet for IMR/IER/IIR registers. */
>> +struct i915_irq_regs {
>> +	i915_reg_t imr;
>> +	i915_reg_t ier;
>> +	i915_reg_t iir;
>> +};
>> +
>> +#define I915_IRQ_REGS(_imr, _ier, _iir) \
>> +	((const struct i915_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
>> +
>>  #endif /* __I915_REG_DEFS__ */
>> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
>> index eb40f1cb44f6..977ef47ea1f9 100644
>> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
>> +++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
>> @@ -7,19 +7,18 @@
>>  #include "i915_reg.h"
>>  #include "intel_uncore.h"
>>  
>> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
>> -		    i915_reg_t iir, i915_reg_t ier)
>> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
>>  {
>> -	intel_uncore_write(uncore, imr, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, imr);
>> +	intel_uncore_write(uncore, regs.imr, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.imr);
>>  
>> -	intel_uncore_write(uncore, ier, 0);
>> +	intel_uncore_write(uncore, regs.ier, 0);
>>  
>>  	/* IIR can theoretically queue up two events. Be paranoid. */
>> -	intel_uncore_write(uncore, iir, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, iir);
>> -	intel_uncore_write(uncore, iir, 0xffffffff);
>> -	intel_uncore_posting_read(uncore, iir);
>> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.iir);
>> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
>> +	intel_uncore_posting_read(uncore, regs.iir);
>>  }
>>  
>>  /*
>> @@ -42,16 +41,14 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
>>  	intel_uncore_posting_read(uncore, reg);
>>  }
>>  
>> -void gen3_irq_init(struct intel_uncore *uncore,
>> -		   i915_reg_t imr, u32 imr_val,
>> -		   i915_reg_t ier, u32 ier_val,
>> -		   i915_reg_t iir)
>> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
>> +		   u32 imr_val, u32 ier_val)
>>  {
>> -	gen3_assert_iir_is_zero(uncore, iir);
>> +	gen3_assert_iir_is_zero(uncore, regs.iir);
>>  
>> -	intel_uncore_write(uncore, ier, ier_val);
>> -	intel_uncore_write(uncore, imr, imr_val);
>> -	intel_uncore_posting_read(uncore, imr);
>> +	intel_uncore_write(uncore, regs.ier, ier_val);
>> +	intel_uncore_write(uncore, regs.imr, imr_val);
>> +	intel_uncore_posting_read(uncore, regs.imr);
>>  }
>>  
>>  bool intel_irqs_enabled(struct xe_device *xe)
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
