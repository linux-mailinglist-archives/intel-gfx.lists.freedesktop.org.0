Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E8D7D3BBF
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 18:07:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DF710E0BF;
	Mon, 23 Oct 2023 16:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5BB710E0BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 16:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698077223; x=1729613223;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=n+GUYtGsQ5LJAMwoKo2zFgSuask/SfrVycdVpa+flEs=;
 b=WbC10ySoW+fn6YUr52R9Iy+dyUwPiGQcSwkNWMK8Yf8KS6lgC8q/U+p6
 z0EKAXComYdoLTk6M9Z8hOMy0OuZ+63I1dHAQmuaHgX2OjXisXHsKvtcj
 8Q5eEMQ4/tu07Gu1HyxeeBvemva8KHknavYIOAsz/pz9UpIulJY0fmZEO
 2bmYChQiVH97glvs4OVC5hnG2TpKb+JuMTTD4f5XD2hdeQLWNxTfzvl/L
 bzAddTso3Lt67cK3WGUd+7d3rzMoyCa93ZJ+rdVRG13Pgx1MuOmX150iL
 Wh9Cnh/tX5nNF/EoViHe+bZqsmdRIp3j82TfwntaJEkGGDHvn8T7fGn2e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="418002947"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="418002947"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 09:06:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="761788283"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="761788283"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.246])
 ([10.249.40.246])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 09:06:56 -0700
Message-ID: <8fca4e5e-ae37-56f9-83d3-fbecd9b1dabb@linux.intel.com>
Date: Mon, 23 Oct 2023 18:06:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <20231023-wabb-v3-4-1a4fbc632440@intel.com>
 <7a83d52f-0bcb-6223-db6c-1bf9cb7ed39b@linux.intel.com>
 <9e296a17-5a7a-473d-a213-a1e965a3dc4a@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <9e296a17-5a7a-473d-a213-a1e965a3dc4a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915: Set copy engine
 arbitration for Wa_16018031267 / Wa_16018063123
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
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/23/2023 5:24 PM, Andrzej Hajda wrote:
> On 23.10.2023 11:55, Nirmoy Das wrote:
>> Hi Andrzej,
>>
>> On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
>>> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>
>>> Set copy engine arbitration into round robin mode
>>> for part of Wa_16018031267 / Wa_16018063123 mitigation.
>>>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h | 3 +++
>>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>>>   2 files changed, 8 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h 
>>> b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>>> index b8618ee3e3041a..c0c8c12edea104 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
>>> @@ -124,6 +124,9 @@
>>>   #define RING_INDIRECT_CTX(base)            _MMIO((base) + 0x1c4) 
>>> /* gen8+ */
>>>   #define RING_INDIRECT_CTX_OFFSET(base)        _MMIO((base) + 
>>> 0x1c8) /* gen8+ */
>>>   #define ECOSKPD(base)                _MMIO((base) + 0x1d0)
>>> +#define   XEHP_BLITTER_SCHEDULING_MODE_MASK REG_GENMASK(12, 11)
>>> +#define   XEHP_BLITTER_ROUND_ROBIN_MODE        \
>>> +        REG_FIELD_PREP(XEHP_BLITTER_SCHEDULING_MODE_MASK, 1)
>>>   #define   ECO_CONSTANT_BUFFER_SR_DISABLE    REG_BIT(4)
>>>   #define   ECO_GATING_CX_ONLY            REG_BIT(3)
>>>   #define   GEN6_BLITTER_FBC_NOTIFY        REG_BIT(3)
>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> index 192ac0e59afa13..108d9326735910 100644
>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>> @@ -2782,6 +2782,11 @@ xcs_engine_wa_init(struct intel_engine_cs 
>>> *engine, struct i915_wa_list *wal)
>>>                RING_SEMA_WAIT_POLL(engine->mmio_base),
>>>                1);
>>>       }
>>> +    /* Wa_16018031267, Wa_16018063123 */
>>> +    if (NEEDS_FASTCOLOR_BLT_WABB(engine))
>>
>>
>> Not sure if I missed any previous discussion on this, the WA talked 
>> about applying this on main copy engine. This needs to be taken into 
>> account in
>>
>> NEEDS_FASTCOLOR_BLT_WABB()
>
> Do you mean we need to check if instance == 0? Now above macro checks 
> if it is copy engine.


Yes, The WA should be limited to  BCS0.

>
>
>>
>>> +        wa_masked_field_set(wal, ECOSKPD(engine->mmio_base),
>>> +                    XEHP_BLITTER_SCHEDULING_MODE_MASK,
>>> +                    XEHP_BLITTER_ROUND_ROBIN_MODE);
>>>   }
>>
>> This function sets masked_reg = true and will not read the register 
>> back and I remember MattR asked internally to not use that if that is 
>> not required.
>
> IIRC, wa_masked_field_set sets read_mask, so read back is performed, 
> anyway it is the only function (beside low level wa_add), which works 
> on fields(not bits). Are you sure?


Yes, you are right. I misread something. Please ignore that comment.


Regards,

Nirmoy

>
> Regards
> Andrzej
>
>>
>>
>> With those two concern handled this is  Reviewed-by: Nirmoy Das 
>> <nirmoy.das@intel.com>
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>>   static void
>>>
>
