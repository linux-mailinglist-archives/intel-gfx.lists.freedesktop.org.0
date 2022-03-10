Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D21E4D4334
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 448C010FD5A;
	Thu, 10 Mar 2022 09:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10F210FD5A
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646903534; x=1678439534;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OYGeDaEZhpcL1ykJ+9GQgHxOfIXQEhc3/w8sETNLQAg=;
 b=BSSXsIxRrs0zT6W8DRsqiLRI12vWisYTZmAWia3hd8chwKUeyx606VYr
 4Y1heA8xiREJQcyjlWiRaq91svIShmW+41uh1pEMD8pq53PSgHowMK5XO
 BxGvAfa6Owr3M+X2O3eS17YLO3iAc0IKrZ+zbPp4r365G8Gkdjo/YM4v+
 PtjDsGLyNRCTHXJnOp59Zl+VJ+PhVyezCcga0KxZE4F6YGRdS61/tlWkC
 5YuSgMhA5W3A/6ZEtdVm8F32Rs3BVG9IHZ/NxXR28L+sMLWtg4zsZ5fBZ
 o4F9el3M7EVYcrZBJAM7H051VmByboiG/gFXa+MZe5xqzd7y0aDl4o8Is Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235807526"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="235807526"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:12:14 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="554557376"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:12:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <YikvJzweylS9mXMF@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220309090913.2820533-1-jani.nikula@intel.com>
 <YikvJzweylS9mXMF@mdroper-desk1.amr.corp.intel.com>
Date: Thu, 10 Mar 2022 11:12:10 +0200
Message-ID: <877d92yxw5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/regs: move GEN12_SFC_DONE_MAX
 where it belongs
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

On Wed, 09 Mar 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Wed, Mar 09, 2022 at 11:09:13AM +0200, Jani Nikula wrote:
>> Commit ce2fce2513c5 ("drm/i915: Only include i915_reg.h from .c files")
>> moved GEN12_SFC_DONE_MAX from i915_regs.h to i915_reg_defs.h. Arguably
>> it belongs next to the GEN12_SFC_DONE() definition, as it describes the
>> number of GEN12_SFC_DONE instances.
>
> It should probably be replaced with an I915_MAX_SFC define instead,
> since what we really care about is the number of SFC units rather than
> the number of registers; there's always one register per SFC unit.  Or
> maybe even get rid of this completely and replace it with I915_MAX_VCS/2
> since we expect there to be a 2:1:1 ratio of VCS:VECS:SFC.

Even if we used I915_MAX_VCS/2 I think adding a macro for it would be
warranted.

So...

#define I915_MAX_SFC	(I915_MAX_VCS / 2)

in intel_engine_types.h or i915_gpu_error.h or where?

BR,
Jani.


>
>
> Matt
>
>> 
>> The unfortunate downside is obviously having to pull in intel_gt_regs.h
>> in i915_gpu_error.h.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> ---
>> 
>> I guess the alternative is to define GEN12_SFC_DONE_MAX in
>> i915_gpu_error.h, to avoid the extra include. No matter what, IMO it's
>> really out of place in i915_reg_defs.h.
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 1 +
>>  drivers/gpu/drm/i915/i915_gpu_error.h   | 1 +
>>  drivers/gpu/drm/i915/i915_reg_defs.h    | 2 --
>>  3 files changed, 2 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> index 19cd34f24263..6bb987fe3289 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -1502,5 +1502,6 @@
>>  #define GEN12_CCS2_CCS3_INTR_MASK		_MMIO(0x190104)
>>  
>>  #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
>> +#define GEN12_SFC_DONE_MAX			4
>>  
>>  #endif /* __INTEL_GT_REGS__ */
>> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
>> index 903d838e2e63..d29155aca84c 100644
>> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
>> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
>> @@ -15,6 +15,7 @@
>>  #include <drm/drm_mm.h>
>>  
>>  #include "gt/intel_engine.h"
>> +#include "gt/intel_gt_regs.h"
>>  #include "gt/intel_gt_types.h"
>>  #include "gt/uc/intel_uc_fw.h"
>>  
>> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
>> index d78d78fce431..8f486f77609f 100644
>> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
>> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
>> @@ -123,6 +123,4 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>>  
>>  #define VLV_DISPLAY_BASE		0x180000
>>  
>> -#define GEN12_SFC_DONE_MAX		4
>> -
>>  #endif /* __I915_REG_DEFS__ */
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
