Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54C0620CD8
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 11:07:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF0310E0E8;
	Tue,  8 Nov 2022 10:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C16610E0E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 10:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667902016; x=1699438016;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=10mfojkvrcKAfRNcguihPF3czLgyRoaxFbzd4IXz1cE=;
 b=NpgwNfbKJtTqV2D1AkJM8NmMuGBgg7+oT4Jxu4cMPFBhnjHSznyaGEzP
 FERN/ugjVBrRupqkitXhfyalSgdGOM5wjNCkZtz3ER8P7q288+jnQ6g8R
 07M/XPBjOMLfY6XeJDLAmMCV5Ib4FolsJPQbgj4Ww92i25OgIV3S59Fdh
 LoTf8V88pHBr12pBtBbcrzae3isX6N702te/TRHFCls/FnJlKrs53H10i
 3HBxa+nTDLBCEg/O6wKqZFqUP+vGblcHkDRZpMamgQCSqL9pl7IHGD1xM
 BFokwXHY5oLCbJl3mWkFI9BJjF9PCDgPjHz0tZfOb4h9xiRzT4Hhpg3ua g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="311813265"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="311813265"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:06:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="725508551"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="725508551"
Received: from shylandx-mobl2.ger.corp.intel.com (HELO [10.213.210.50])
 ([10.213.210.50])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 02:06:54 -0800
Message-ID: <4482cdde-8c8b-261a-cba7-36595d849a0e@linux.intel.com>
Date: Tue, 8 Nov 2022 10:06:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20221105003235.1717908-1-umesh.nerlige.ramappa@intel.com>
 <20221105003235.1717908-2-umesh.nerlige.ramappa@intel.com>
 <a6daeb51-8552-9f26-94c0-425ae1e24077@linux.intel.com>
 <87pmdylarc.wl-ashutosh.dixit@intel.com> <Y2mer/algb78p4Fh@unerlige-ril>
 <87h6zauvdt.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87h6zauvdt.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] i915/uncore: Acquire fw before loop in
 intel_uncore_read64_2x32
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


On 08/11/2022 00:45, Dixit, Ashutosh wrote:
> On Mon, 07 Nov 2022 16:11:27 -0800, Umesh Nerlige Ramappa wrote:
>>
>> On Mon, Nov 07, 2022 at 01:23:19PM -0800, Dixit, Ashutosh wrote:
>>> On Mon, 07 Nov 2022 02:13:46 -0800, Tvrtko Ursulin wrote:
>>>>
>>>> On 05/11/2022 00:32, Umesh Nerlige Ramappa wrote:
>>>>> PMU reads the GT timestamp as a 2x32 mmio read and since upper and lower
>>>>> 32 bit registers are read in a loop, there is a latency involved between
>>>>> getting the GT timestamp and the CPU timestamp. As part of the
>>>>> resolution, refactor intel_uncore_read64_2x32 to acquire forcewake and
>>>>> uncore lock prior to reading upper and lower regs.
>>>>>
>>>>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/intel_uncore.h | 44 ++++++++++++++++++++---------
>>>>>    1 file changed, 30 insertions(+), 14 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>>>>> index 5449146a0624..e9e38490815d 100644
>>>>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>>>>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>>>>> @@ -382,20 +382,6 @@ __uncore_write(write_notrace, 32, l, false)
>>>>>     */
>>>>>    __uncore_read(read64, 64, q, true)
>>>>>    -static inline u64
>>>>> -intel_uncore_read64_2x32(struct intel_uncore *uncore,
>>>>> -			 i915_reg_t lower_reg, i915_reg_t upper_reg)
>>>>> -{
>>>>> -	u32 upper, lower, old_upper, loop = 0;
>>>>> -	upper = intel_uncore_read(uncore, upper_reg);
>>>>> -	do {
>>>>> -		old_upper = upper;
>>>>> -		lower = intel_uncore_read(uncore, lower_reg);
>>>>> -		upper = intel_uncore_read(uncore, upper_reg);
>>>>> -	} while (upper != old_upper && loop++ < 2);
>>>>> -	return (u64)upper << 32 | lower;
>>>>> -}
>>>>> -
>>>>>    #define intel_uncore_posting_read(...) ((void)intel_uncore_read_notrace(__VA_ARGS__))
>>>>>    #define intel_uncore_posting_read16(...) ((void)intel_uncore_read16_notrace(__VA_ARGS__))
>>>>>    @@ -455,6 +441,36 @@ static inline void intel_uncore_rmw_fw(struct
>>>>> intel_uncore *uncore,
>>>>> 		intel_uncore_write_fw(uncore, reg, val);
>>>>>    }
>>>>>    +static inline u64
>>>>> +intel_uncore_read64_2x32(struct intel_uncore *uncore,
>>>>> +			 i915_reg_t lower_reg, i915_reg_t upper_reg)
>>>>> +{
>>>>> +	u32 upper, lower, old_upper, loop = 0;
>>>>> +	enum forcewake_domains fw_domains;
>>>>> +	unsigned long flags;
>>>>> +
>>>>> +	fw_domains = intel_uncore_forcewake_for_reg(uncore, lower_reg,
>>>>> +						    FW_REG_READ);
>>>>> +
>>>>> +	fw_domains |= intel_uncore_forcewake_for_reg(uncore, upper_reg,
>>>>> +						    FW_REG_READ);
>>>>> +
>>>>> +	spin_lock_irqsave(&uncore->lock, flags);
>>>>> +	intel_uncore_forcewake_get__locked(uncore, fw_domains);
>>>>> +
>>>>> +	upper = intel_uncore_read_fw(uncore, upper_reg);
>>>>> +	do {
>>>>> +		old_upper = upper;
>>>>> +		lower = intel_uncore_read_fw(uncore, lower_reg);
>>>>> +		upper = intel_uncore_read_fw(uncore, upper_reg);
>>>>> +	} while (upper != old_upper && loop++ < 2);
>>>>> +
>>>>> +	intel_uncore_forcewake_put__locked(uncore, fw_domains);
>>>>
>>>> I mulled over the fact this no longer applies the put hysteresis, but then
>>>> I saw GuC busyness is essentially the only current caller so thought it
>>>> doesn't really warrant adding a super long named
>>>> intel_uncore_forcewake_put_delayed__locked helper.
>>>>
>>>> Perhaps it would make sense to move this out of static inline,
>>
>> Are you saying - drop the inline OR drop static inline? I am assuming the
>> former.
> 
> No you need to have 'static inline' for functions defined in a header
> file. I also don't understand completely but seems what Tvrtko is saying is
> move the function to the .c leaving only the declarations in the .h? Anyway
> let Tvrtko explain more.

Yes I does not feel warranted for it to be a static inline so I'd just 
move it to .c. In which case..

>>>> in which
>>>> case it would also be easier to have the hysteresis without needing to
>>>> export any new helpers,
>>
>> I don't understand this part. Do you mean that it makes it easier to just
>> call __intel_uncore_forcewake_put(uncore, fw_domains, true) then?

.. you could indeed call this and keep the put hysteresis. But I don't 
think that it matters really. You can go with the patch as is for what I 
am concerned.

> Yes I think this will work, drop the lock and call
> __intel_uncore_forcewake_put.
> 
>> Just
>> wondering how 'static inline' has any effect on that.
>>
>>>> but mostly because it does not feel the static
>>>> inline is justified.
>>
>> Agree, just carried it over from the previous helper definition.
>>
>>>> Sounds an attractive option but it is passable as is.
>>>
>>> Yup, copy that. Also see now how this reduces the read latency. And also it
>>> would increase the latency a bit for a different thread trying to do an
>>> uncore read/write since we hold uncore->lock longer but should be ok I
>>> think.
>>
>> Didn't think about it from that perspective. Worst case is that
>> gt_park/gt_unpark may happen very frequently (as seen on some use
>> cases). In that case, the unpark would end up calling this helper each
>> time.

Concern is two mmio reads under the uncore lock versus two lock-unlock 
cycles with one mmio read under them each? Feels like a meh. I guess 
with this DC induced latency issue it's a worse worst case but 
difference between normal times and pathological spike is probably 
orders of magnitude right?

Regards,

Tvrtko
