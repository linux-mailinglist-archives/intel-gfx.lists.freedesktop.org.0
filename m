Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACE32BAC15
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 15:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D3E16E8C3;
	Fri, 20 Nov 2020 14:43:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66D46E8C3
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 14:43:24 +0000 (UTC)
IronPort-SDR: vMMNaE1gq5Tklmf1VOShbTlZInw8RpnJQdR2osx8v8gxFYfaOBdw1DKKUeYbJ86WIgNKKAUwAc
 mPjpvwiDyRRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="150747672"
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="150747672"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:43:24 -0800
IronPort-SDR: onuZSY9E3NmoSCa9ej2/r9mw9NevxmktxK+A9JwkR2rh1M4mhlSe+1VNYD2JUaO2j4NChCoanB
 z7YJz/HMZc4g==
X-IronPort-AV: E=Sophos;i="5.78,356,1599548400"; d="scan'208";a="545464409"
Received: from shilatbx-mobl1.ger.corp.intel.com (HELO [10.255.201.139])
 ([10.255.201.139])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2020 06:43:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20201120095636.1987395-1-tvrtko.ursulin@linux.intel.com>
 <20201120095636.1987395-2-tvrtko.ursulin@linux.intel.com>
 <160588276123.28535.4760687203912180414@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6ccee2a4-73e4-2a7b-5872-4af19161665d@linux.intel.com>
Date: Fri, 20 Nov 2020 14:43:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <160588276123.28535.4760687203912180414@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: Use correct lock for CT
 event handler
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


On 20/11/2020 14:32, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-11-20 09:56:36)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> CT event handler is called under the gt->irq_lock from the interrupt
>> handling paths so make it the same from the init path. I don't think this
>> mismatch caused any functional issue but we need to wean the code of the
>> global i915->irq_lock.
> 
> ct_read definitely wants to be serialised. Is guc->irq_lock the right
> choice?

Not under my understanding and also confirmed by Daniele off line.

>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 220626c3ad81..6a0452815c41 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -203,7 +203,8 @@ static void guc_disable_interrupts(struct intel_guc *guc)
>>   
>>   static int guc_enable_communication(struct intel_guc *guc)
>>   {
>> -       struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>> +       struct intel_gt *gt = guc_to_gt(guc);
>> +       struct drm_i915_private *i915 = gt->i915;
>>          int ret;
>>   
>>          GEM_BUG_ON(guc_communication_enabled(guc));
>> @@ -223,9 +224,9 @@ static int guc_enable_communication(struct intel_guc *guc)
>>          guc_enable_interrupts(guc);
>>   
>>          /* check for CT messages received before we enabled interrupts */
>> -       spin_lock_irq(&i915->irq_lock);
>> +       spin_lock_irq(&gt->irq_lock);
>>          intel_guc_ct_event_handler(&guc->ct);
>> -       spin_unlock_irq(&i915->irq_lock);
>> +       spin_unlock_irq(&gt->irq_lock);
> 
> You used guc->irq_lock in the previous patch. I suggest
> intel_guc_ct_event_handler() should specify what lock it requires.

There are indeed too many locks and too little asserts to help the reader.

But the other end of the state ct_read needs is updated from the GuC 
firmware itself, which then send the interrupt, which we process in:

  guc_irq_handler
    -> intel_guc_to_host_event_handler
         -> intel_guc_ct_event_handler

And this side runs under the gt->irq_lock.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
