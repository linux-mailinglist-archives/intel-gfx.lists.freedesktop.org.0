Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E0C5BE91D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 16:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F9D10E4AB;
	Tue, 20 Sep 2022 14:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75E710E4AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 14:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663684400; x=1695220400;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9B4f4tIrV11S9RuMJAwn0M37ma/8hRMUTPwhqsqdNbU=;
 b=d8HeGrfc6Vq3xtub5EqSwEyN/w0Mv1Xxdld9ISPTv+Nv1Os1n/3eodKI
 yqR7htGJgauFonFP3BUfwfknoucJZrtjgZpzgDVhRYLSWP74UoNljjJXi
 OF9E9j6O8TppO4eWc0z6TuKEZ9/t9RjjIMkMAfRTKK4jOS2DwmmwzYYZ8
 wfO4l8iO/B27J3p2kgLKEGYO9v/suqUQ4VKQmSoAyXWqtErGVlNyPNHS/
 f5whyfgXUxmMdjosu3L56fk9VWfWpHsx5CrUKi9+9Y7JzCLmQCW9J4j4s
 P3EtqatCdKpRcvbCcra85gFA5ApqSArhZFAK7txQrv0Ddv5NdJw2eRnP2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="286760208"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="286760208"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 07:33:13 -0700
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="947693754"
Received: from bradyadx-mobl1.ger.corp.intel.com (HELO [10.213.218.179])
 ([10.213.218.179])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 07:33:11 -0700
Message-ID: <cd372139-2a33-c556-e375-03a578da157c@linux.intel.com>
Date: Tue, 20 Sep 2022 15:33:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220915021218.1412111-1-alan.previn.teres.alexis@intel.com>
 <20220915021218.1412111-2-alan.previn.teres.alexis@intel.com>
 <5aec4a0d-e99b-011d-68a9-84ad1f1120bf@linux.intel.com>
 <2808b0f67797543e453e74b4e156df4a5cdd8656.camel@intel.com>
 <70636d43-57e8-46ac-7751-d8fd0fb13d72@linux.intel.com>
 <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <c6e968c8-aaa0-949c-61c9-857ef5d9f617@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/guc: Delay disabling guc_id
 scheduling for better hysteresis
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



On 16/09/2022 16:36, Ceraolo Spurio, Daniele wrote:
> 
> 
> On 9/16/2022 1:58 AM, Tvrtko Ursulin wrote:
>>
>> On 16/09/2022 08:53, Teres Alexis, Alan Previn wrote:

[snip]

>>>>
>>>>> +    /*
>>>>> +     * If the context gets closed while the execbuf is ongoing, 
>>>>> the context
>>>>> +     * close code will race with the below code to cancel the 
>>>>> delayed work.
>>>>> +     * If the context close wins the race and cancels the work, it 
>>>>> will
>>>>> +     * immediately call the sched disable (see guc_context_close), 
>>>>> so there
>>>>> +     * is a chance we can get past this check while the 
>>>>> sched_disable code
>>>>> +     * is being executed. To make sure that code completes before 
>>>>> we check
>>>>> +     * the status further down, we wait for the close process to 
>>>>> complete.
>>>>> +     */
>>>>> +    if (cancel_delayed_work_sync(&ce->guc_state.sched_disable_delay))
>>>>> +        intel_context_sched_disable_unpin(ce);
>>>>> +    else if (intel_context_is_closed(ce))
>>>>> +        wait_for(context_close_done(ce), 1);
>>>>
>>>> Comment makes it sounds important to handle the race, althought it
>>>> doesn't really explain the consequences. But most importantly, what if
>>>> close doesn't complete in 1ms?
>>>
>>> will add the consequence (i believe the consequence is that we could 
>>> prematurely
>>> read context flags bit indicating its gucid is still registered and 
>>> after skipping
>>> re-registration, find that context gets closed and guc-id freed).
>>>
>>> Yes the 1 second is arbitrary and unnervingly short. Just spent 
>>> sometime trying to
>>
>> One millisecond even. :)
> 
> Normally 1ms is not a slow time for this. We can only hit the wait if 
> the context_close call has already called the cancel_delayed_work, so 
> the only thing left to do in that function is to send the H2G, which is 
> relatively fast. However, I've just realized that if the H2G buffer is 
> full the H2G will stall, so in that case it can take longer (maximum 
> stall time before a hang is declared is 1.5s).
> 
>>
>> What would be the consequence of prematurely reading the still 
>> registered context flag? Execbuf fails? GuC hangs? Kernel crashes? 
>> Something else?
> 
> i915 thinks that a request pending with the GuC, while GuC thinks we 
> disabled it (because the completion of the delayed_disable happens after 
> the new request has been submitted). The heartbeat will still go 
> through, so no reset will be triggered, the request is just lost. A new 
> request submission on the same context should be able to recover it, but 
> we didn't test that.
> 
> 
>>
>> And why cant' this race with context close happen at any other point 
>> than this particular spot in guc_request_alloc? Immediately after the 
>> added checks? After atomic_add_unless?
> 
> The race is tied to the canceling of the delayed work. context_close 
> only does something if it cancels the delayed work, so if the 
> cancel_delayed_work_sync here does the cancelling then context_close is 
> a no-op.

It's a bit involved* to follow so I'll give up and declare a "whatever" if that's okay with you.

*)
intel_context_close
   set_bit(CONTEXT_CLOSED_BIT, &ce->flags)
   ->guc_context_close
	if (test_bit(CONTEXT_GUC_INIT, &ce->flags) &&
	    cancel_delayed_work(&ce->guc_state.sched_disable_delay))
		__delay_sched_disable(&ce->guc_state.sched_disable_delay.work);
		  ((which is:
			spin_lock_irqsave(&ce->guc_state.lock, flags);
			..stuff..
			unlock
		  ))
  
	spin_lock_irqsave(&ce->guc_state.lock, flags);
	set_context_close_done(ce);
	spin_unlock_irqrestore(&ce->guc_state.lock, flags);

Takes and releases the same lock two times so I have no idea why twice, and less so whether it is safe and race free.

Regards,

Tvrtko
