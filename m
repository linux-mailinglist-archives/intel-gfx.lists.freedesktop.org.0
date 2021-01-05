Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9972EB68A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 00:51:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AC686E13C;
	Tue,  5 Jan 2021 23:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0E086E123
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 23:51:52 +0000 (UTC)
IronPort-SDR: hkjzxZJ3Ne9LDXKBCoDf0kgyHj1P0ICpRvcaHIJhXQ8FkBHIDL2zWaYVhWOB17A2zv9RH64WWn
 0W3xWp5ao4sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9855"; a="195740725"
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="195740725"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:51:52 -0800
IronPort-SDR: yYrhDEUHg9bkRod8BywpKHZewVi93C60lqKj8kjF1JlN20+sB90WsUhxldatGJoV7M15kRo/7n
 KUVOE2aojcmA==
X-IronPort-AV: E=Sophos;i="5.78,478,1599548400"; d="scan'208";a="462484700"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.17.148])
 ([10.251.17.148])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 15:51:52 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-4-daniele.ceraolospurio@intel.com>
 <160988961366.14894.93245696639759403@build.alporthouse.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <529180df-643e-5287-77e6-7f19d16754df@intel.com>
Date: Tue, 5 Jan 2021 15:51:43 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <160988961366.14894.93245696639759403@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/guc: init engine directly in
 GuC submission mode
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/5/2021 3:33 PM, Chris Wilson wrote:
> Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:45)
>> Instead of starting the engine in execlists submission mode and then
>> switching to GuC, start directly in GuC submission mode. The initial
>> setup functions have been copied over from the execlists code
>> and simplified by removing the execlists submission-specific parts.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Cc: John Harrison <john.c.harrison@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   5 +-
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 249 +++++++++++++++++-
>>   .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   1 +
>>   3 files changed, 244 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> index f62303bf80b8..6b4483b72c3f 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>> @@ -40,6 +40,7 @@
>>   #include "intel_lrc_reg.h"
>>   #include "intel_reset.h"
>>   #include "intel_ring.h"
>> +#include "uc/intel_guc_submission.h"
>>   
>>   /* Haswell does have the CXT_SIZE register however it does not appear to be
>>    * valid. Now, docs explain in dwords what is in the context object. The full
>> @@ -907,7 +908,9 @@ int intel_engines_init(struct intel_gt *gt)
>>          enum intel_engine_id id;
>>          int err;
>>   
>> -       if (HAS_EXECLISTS(gt->i915))
>> +       if (intel_uc_uses_guc_submission(&gt->uc))
> When do we determine intel_uc_uses_guc_submission?

at firmware fetch time.

>
> I'm a bit nervous since I've lost track of needs/wants/uses. Is there a
> telltale we can place here to assert that we've processed the relevant
> init functions (also acting as an aide memoire)?

There is already a GEM_BUG_ON for this inside the function, it'll 
trigger if we call it too early.
For the submission side of things, there isn't much difference at the 
moment between "wants" and "uses" since we do wedge if GuC submission is 
selected and the FW is not found. I still prefer to use "uses" where 
possible in case we want to change this in the future.

>
>> +               setup = intel_guc_submission_setup;
>> +       else if (HAS_EXECLISTS(gt->i915))
>>                  setup = intel_execlists_submission_setup;
>>          else
>>                  setup = intel_ring_submission_setup;
>> +static bool unexpected_starting_state(struct intel_engine_cs *engine)
>> +{
>> +       bool unexpected = false;
>> +
>> +       if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
>> +               drm_dbg(&engine->i915->drm,
>> +                       "STOP_RING still set in RING_MI_MODE\n");
>> +               unexpected = true;
>> +       }
> Do we care? Is this something we can assume the guc will handle?
> (It originated in debugging reset failures.)

GuC handles it post engine reset, but not on init and resume. If you 
think this only makes sense for reset debug then I'll get rid of it.

Thanks,
Daniele

>
>> +       return unexpected;
>> +}

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
