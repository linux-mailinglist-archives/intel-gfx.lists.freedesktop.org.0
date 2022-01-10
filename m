Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0268E4895D8
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 10:58:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A34212B71A;
	Mon, 10 Jan 2022 09:58:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CE812B71A
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 09:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641808711; x=1673344711;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=3JgWNncTobS6MxpfiYWXDqzctjKRXI8Z6qD165vbbsA=;
 b=K3hY2tWXpzDeZEi98fYy4RMJUogt7KKH64ZCWhzu/YkamYPafG+hTyzJ
 vUdb9JujoygqCRVk22/LRa2EjsVvtb0C+KSPdeYGw42cYu4SrACNYmvXI
 uu7edK5JFPeJhNkCCKqN6PorgcJ+wtGiy2Mjx+BL4yF5j8ILFX/o5XBJK
 uuGINLEJfQ0QxXmcJP+j0HV+3TfJWHwNY0nZCTm3YjH3dkqFJzJVJlaPw
 p2YsJOQhQwRM9bEc2YAQURT05T9KbiZqKyPaBlNxCAoFiPC4kFdBqk1px
 JzZcxjEka8m9o94IfgWZiuHfldexFgqj32sFZ4HbIa7FnbW9O8nsuEK6M Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="267521000"
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="267521000"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:58:17 -0800
X-IronPort-AV: E=Sophos;i="5.88,276,1635231600"; d="scan'208";a="528211847"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 01:58:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <Ydh3ZwPYc9h4vtuX@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220107094951.96181-1-jani.nikula@intel.com>
 <20220107094951.96181-2-jani.nikula@intel.com>
 <Ydh3ZwPYc9h4vtuX@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 10 Jan 2022 11:58:12 +0200
Message-ID: <87a6g3c3pn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: move VGA registers to
 intel_vga.c
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

On Fri, 07 Jan 2022, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Jan 07, 2022 at 11:49:50AM +0200, Jani Nikula wrote:
>> The only users of the VGA register macros are in intel_vga.c. Hide the
>> macros there.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> It looks like only 5 of the ~30 registers here are actually used.  And
> I think those could just be pulled from generic definitions in
> include/video/vga.h rather than having something in i915?

Good idea, thanks. Fixed in v2.

BR,
Jani.

>
> E.g.,
>  * VGA_MSR_WRITE -> VGA_MIS_W
>  * VGA_MSR_READ -> VGA_MIS_R
>  * VGA_SR_INDEX -> VGA_SEQ_I
>  * SR01 -> 1
>  * VGA_SR_DATA -> VGA_SEQ_D
>
>
> Matt
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vga.c | 41 ++++++++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_reg.h          | 41 ------------------------
>>  2 files changed, 41 insertions(+), 41 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
>> index fa779f7ea415..5801cd41eb72 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>> @@ -12,6 +12,47 @@
>>  #include "intel_de.h"
>>  #include "intel_vga.h"
>>  
>> +/* VGA registers */
>> +#define VGA_ST01_MDA				0x3ba
>> +#define VGA_ST01_CGA				0x3da
>> +
>> +#define VGA_MSR_WRITE				0x3c2
>> +#define VGA_MSR_READ				0x3cc
>> +#define   VGA_MSR_MEM_EN			(1 << 1)
>> +#define   VGA_MSR_CGA_MODE			(1 << 0)
>> +
>> +#define VGA_SR_INDEX				0x3c4
>> +#define   SR01					1
>> +#define VGA_SR_DATA				0x3c5
>> +
>> +#define VGA_AR_INDEX				0x3c0
>> +#define   VGA_AR_VID_EN (1 << 5)
>> +#define VGA_AR_DATA_WRITE			0x3c0
>> +#define VGA_AR_DATA_READ			0x3c1
>> +
>> +#define VGA_GR_INDEX				0x3ce
>> +#define VGA_GR_DATA				0x3cf
>> +/* GR05 */
>> +#define   VGA_GR_MEM_READ_MODE_SHIFT		3
>> +#define   VGA_GR_MEM_READ_MODE_PLANE		1
>> +/* GR06 */
>> +#define   VGA_GR_MEM_MODE_MASK			0xc
>> +#define   VGA_GR_MEM_MODE_SHIFT			2
>> +#define   VGA_GR_MEM_A0000_AFFFF		0
>> +#define   VGA_GR_MEM_A0000_BFFFF		1
>> +#define   VGA_GR_MEM_B0000_B7FFF		2
>> +#define   VGA_GR_MEM_B0000_BFFFF		3
>> +
>> +#define VGA_DACMASK				0x3c6
>> +#define VGA_DACRX				0x3c7
>> +#define VGA_DACWX				0x3c8
>> +#define VGA_DACDATA				0x3c9
>> +
>> +#define VGA_CR_INDEX_MDA			0x3b4
>> +#define VGA_CR_DATA_MDA				0x3b5
>> +#define VGA_CR_INDEX_CGA			0x3d4
>> +#define VGA_CR_DATA_CGA				0x3d5
>> +
>>  static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
>>  {
>>  	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index baa0b9e6acb2..7517a2688896 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -460,48 +460,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>>  #define GEN6_STOLEN_RESERVED_ENABLE	(1 << 0)
>>  #define GEN11_STOLEN_RESERVED_ADDR_MASK	(0xFFFFFFFFFFFULL << 20)
>>  
>> -/* VGA stuff */
>> -
>> -#define VGA_ST01_MDA 0x3ba
>> -#define VGA_ST01_CGA 0x3da
>> -
>>  #define _VGA_MSR_WRITE _MMIO(0x3c2)
>> -#define VGA_MSR_WRITE 0x3c2
>> -#define VGA_MSR_READ 0x3cc
>> -#define   VGA_MSR_MEM_EN (1 << 1)
>> -#define   VGA_MSR_CGA_MODE (1 << 0)
>> -
>> -#define VGA_SR_INDEX 0x3c4
>> -#define SR01			1
>> -#define VGA_SR_DATA 0x3c5
>> -
>> -#define VGA_AR_INDEX 0x3c0
>> -#define   VGA_AR_VID_EN (1 << 5)
>> -#define VGA_AR_DATA_WRITE 0x3c0
>> -#define VGA_AR_DATA_READ 0x3c1
>> -
>> -#define VGA_GR_INDEX 0x3ce
>> -#define VGA_GR_DATA 0x3cf
>> -/* GR05 */
>> -#define   VGA_GR_MEM_READ_MODE_SHIFT 3
>> -#define     VGA_GR_MEM_READ_MODE_PLANE 1
>> -/* GR06 */
>> -#define   VGA_GR_MEM_MODE_MASK 0xc
>> -#define   VGA_GR_MEM_MODE_SHIFT 2
>> -#define   VGA_GR_MEM_A0000_AFFFF 0
>> -#define   VGA_GR_MEM_A0000_BFFFF 1
>> -#define   VGA_GR_MEM_B0000_B7FFF 2
>> -#define   VGA_GR_MEM_B0000_BFFFF 3
>> -
>> -#define VGA_DACMASK 0x3c6
>> -#define VGA_DACRX 0x3c7
>> -#define VGA_DACWX 0x3c8
>> -#define VGA_DACDATA 0x3c9
>> -
>> -#define VGA_CR_INDEX_MDA 0x3b4
>> -#define VGA_CR_DATA_MDA 0x3b5
>> -#define VGA_CR_INDEX_CGA 0x3d4
>> -#define VGA_CR_DATA_CGA 0x3d5
>>  
>>  #define MI_PREDICATE_SRC0	_MMIO(0x2400)
>>  #define MI_PREDICATE_SRC0_UDW	_MMIO(0x2400 + 4)
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
