Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AAD671840
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 10:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EDFC10E6F8;
	Wed, 18 Jan 2023 09:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B78310E6F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 09:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674035701; x=1705571701;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=w83WJ7xOwzEo8S/PwRTvNvvvV+YwkrK8j8rL/jp7BrI=;
 b=AhZvMvPAAxQye9XglhSSQxJukPEf+t63MCXwztnayjGy9RcwhxhIKgnC
 xiswqZj6JEZBQrvQ9RvRxgKl+fUFXyyc2NTauBqLFZtUfrRfSSt9R8hG+
 xBmFYSUMt3UfEqxTrldxyJv1jS9h3jfKpm7/7i3LEdP7PIUNKSOg7yitN
 PjEUDO2PXqM+r39Gb6h2EZML3FYdLHQ5nIKV8anB0TgeoI9i/FDCHd+c9
 QjXSD+r4CbAB0QYXn3u10MfXlDB3zaPsfVU79DU/LQ4kG0xOa6Zc2lTQD
 ocrmVdQizvB0T6j8jYaTdECqXVzMSax/j8/Qpmd5FK2jdCR/VmPyJE/8b Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="326215581"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326215581"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:55:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="767682366"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="767682366"
Received: from llvincen-mobl.ger.corp.intel.com (HELO [10.213.215.37])
 ([10.213.215.37])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 01:54:59 -0800
Message-ID: <d020f333-6309-d343-4f57-e1a3c105ddd4@linux.intel.com>
Date: Wed, 18 Jan 2023 09:54:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
References: <20221123183648.407058-1-matthew.s.atwood@intel.com>
 <20221123194525.4k6qovx2gnhdiew5@gjsousa-mobl2>
 <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y4T9RqbhLBzgXgP6@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915/dg2: Introduce
 Wa_18018764978
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 28/11/2022 18:26, Matt Roper wrote:
> On Wed, Nov 23, 2022 at 04:45:25PM -0300, Gustavo Sousa wrote:
>> On Wed, Nov 23, 2022 at 10:36:47AM -0800, Matt Atwood wrote:
>>> Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
>>> G11 and G12 A0+). Clean up style in function at the same time.
>>>
>>> Bspec: 66622
>>>
>>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>>
>> Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Both patches applied to drm-intel-gt-next.  Thanks for the patches and
> review.

Do these need to be sent to 6.2 fixes, given DG2 is out of force probe 
there?

Regards,

Tvrtko

>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 ++++++-
>>>   2 files changed, 9 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> index 80a979e6f6be..74379d3c5a4d 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>>> @@ -457,6 +457,9 @@
>>>   #define GEN8_L3CNTLREG				_MMIO(0x7034)
>>>   #define   GEN8_ERRDETBCTRL			(1 << 9)
>>>   
>>> +#define PSS_MODE2				_MMIO(0x703c)
>>> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>>> +
>>>   #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>>>   #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>>>   #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index 2afb4f80a954..870db5a202dd 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -771,9 +771,14 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>>>   
>>>   	/* Wa_14014947963:dg2 */
>>>   	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_B0, STEP_FOREVER) ||
>>> -		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>>> +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>>>   		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>>>   
>>> +	/* Wa_18018764978:dg2 */
>>> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
>>> +	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>>> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>>> +
>>>   	/* Wa_15010599737:dg2 */
>>>   	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>>>   }
>>> -- 
>>> 2.38.1
>>>
> 
