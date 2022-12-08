Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A557F64743F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 17:27:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6CD10E12C;
	Thu,  8 Dec 2022 16:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C712210E12C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 16:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670516862; x=1702052862;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=FdPsIHXTLYgOTmlWk9yZloXMW2pF7G1IoW2lqR6/DUA=;
 b=YDcb0XSE82681UCYrR6zEKxEQkIyC0HRn3XWtUtsK8/EY6gXCj84WG7r
 e67nGPuJIJY0xwP7J4UlXdt3JSSY7OpqnsUMwUHPOHCO3fBWatV8w5QyN
 A8ZPR0qIyFtECpbblxKLmdqX+Mvyf4KE2I/haUsbBSkwMBVSLvaGv4eQ3
 pVFomQmU00FuhPiX5dsnm4T2mRafvsPzf65eq4sqKq2jAPtA1AtCdPXPA
 BXCw+AvUWYvtbSPOEWevcX1VK5bQEnfte3rbqcmhwczFYGeAMXFXBiJXl
 AkPlxD/w0KV+CfE76CHK5eYgKawPGyD8XV4QO5ILxv/NKmRXhw3O7eKs5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="300646735"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="300646735"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:26:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="821398068"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="821398068"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.160])
 ([10.213.6.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 08:26:53 -0800
Message-ID: <4fc63ffa-f0a5-d1d5-153d-e8515ed210c9@intel.com>
Date: Thu, 8 Dec 2022 17:26:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20221208111217.3734461-1-andrzej.hajda@intel.com>
 <877cz213fa.fsf@intel.com>
 <a53c2ec0607493d46fe0fc9f1884cd5d32103058.camel@intel.com>
 <87tu26ym4x.fsf@intel.com>
 <4295836a-2702-c534-c861-f6b5055017f2@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <4295836a-2702-c534-c861-f6b5055017f2@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: use fetch_and_zero if
 applicable
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

On 08.12.2022 16:44, Tvrtko Ursulin wrote:
> 
> On 08/12/2022 15:02, Jani Nikula wrote:
>> On Thu, 08 Dec 2022, "Vivi, Rodrigo" <rodrigo.vivi@intel.com> wrote:
>>> On Thu, 2022-12-08 at 14:32 +0200, Jani Nikula wrote:
>>>> On Thu, 08 Dec 2022, Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>>>>> Simplify the code.
>>>>
>>>> Personally, I absolutely hate fetch_and_zero().
>>>>
>>>> I understand the point, but there are two main traps:
>>>>
>>>> First, the name implies atomicity, which there is none at all.
>>>>
>>>> Second, the name implies it's part of a kernel core header, which it
>>>> isn't, and this just amplifies the first point.
>>>>
>>>> It's surprising and misleading, and those are not things I like about
>>>> interfaces in the kernel.
>>>>
>>>> I would not like to see this proliferate. If fetch_and_zero() was
>>>> atomic
>>>> *and* part of a core kernel header, it would be a different matter.
>>>> But
>>>> I don't think that's going to happen, exactly because it won't be
>>>> atomic
>>>> and the name implies it is.
>>>
>>> +1 here.
>>>
>>> Please let's go the other way around and try to kill macros like this.
>>>
>>> we either kill or we ensure this gets accepted in the core kernel
>>> libraries.
>>
>> Agreed. I'd be fine with either:
>>
>> 1) Get something like this accepted in core kernel headers:
>>
>> #define fetch_and_zero(ptr) xchg(ptr, 0)
>>
>> 2) Do this in i915:
>>
>> @@
>> expression E;
>> @@
>>
>> - fetch_and_zero(E)
>> + xchg(E, 0)
> 
> We don't need atomic so both solution would IMO be bad.

Heh, too late, already sent :)

> 
> We could propose __fetch_and_zero and fetch_and_zero, to mimic 
> __set_bit/set_bit&co for some consistency in terms of atomic vs 
> non-atomic API flavour?
> 

Or non-atomic xchg


> Assuming of course people will think that the long-ish name of the 
> utility macro brings an overall positive cost benefit.
> 
> Worth a try I guess.
> 
> First step I think we need a cocci script for finding the open coded 
> "fetch and zero" pattern. Not my forte but I can try if no one else has 
> an immediate solution or desire to drive the attempt.

About 1600 patterns:
x = y;
y = 0;

but I guess there could be more:
x = xchg(&y, 0);

x = y;
...
y = 0;

custom macros

Regards
Andrzej


> 
> Regards,
> 
> Tvrtko

