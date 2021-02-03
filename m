Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDB330DAB5
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 14:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E0589C13;
	Wed,  3 Feb 2021 13:12:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9750B89C13;
 Wed,  3 Feb 2021 13:12:12 +0000 (UTC)
IronPort-SDR: DMP+IqnjbF1FFN+48wxpLZMZTJqdBqQ/16BK5FqI6sHzkheo/ZLEpT+xyQbJ4ImL8VNMpKwf7l
 mjTShD4ekf+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="242547954"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="242547954"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 05:12:10 -0800
IronPort-SDR: /xUN6hv+tPrHpn67t58rms+pVkz5e7K/q83Xp7q3N7pYZQTc2wRDzuhlYvwEB3AKlH6bxwiMdC
 r1cqEgdRS37g==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392432996"
Received: from eransege-mobl.ger.corp.intel.com (HELO [10.214.208.106])
 ([10.214.208.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 05:12:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20210201115756.876351-1-tvrtko.ursulin@linux.intel.com>
 <161218123064.27906.1183308463378840226@build.alporthouse.com>
 <c947cfbc-bb9d-02c4-5b97-ca76d252e778@linux.intel.com>
 <161235004418.6538.3517367090743505584@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c3f9a058-307b-3fee-526b-a17a871f8fb3@linux.intel.com>
Date: Wed, 3 Feb 2021 13:12:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <161235004418.6538.3517367090743505584@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Wrap
 interactive header
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/02/2021 11:00, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-03 10:31:04)
>>
>> On 01/02/2021 12:07, Chris Wilson wrote:
>>> Quoting Tvrtko Ursulin (2021-02-01 11:57:56)
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> Slight improvement with regards to wrapping header components to fit
>>>> console width. If a single element is wider than max it can still
>>>> overflow but it should now work better for practical console widths.
>>>
>>> <----
>>> intel-gpu-top: Intel Kabylake (Gen9) @ /dev/dri/card0
>>>    900/ 949 MHz;   0% RC6;  6.97/18.42 W;        2 irqs/s
>>>         IMC reads:        6 MiB/s
>>>        IMC writes:        0 MiB/s
>>>
>>> ---->
>>> intel-gpu-top: Intel Kabylake (Gen9) @ /dev/dri/card0 -  903/ 954 MHz;   0% RC6
>>>       7.16/18.40 W;       14 irqs/s
>>>
>>>         IMC reads:       80 MiB/s
>>>        IMC writes:        0 MiB/s
>>>
>>> I thought it looked reasonably tidy, without adding any lines to the
>>> header.
>>
>> Or on a wider terminal:
>> <----
>> intel-gpu-top: Intel Skylake (Gen9) @ /dev/dri/card0
>>      0/   0 MHz; 100% RC6;  0.00/ 1.29 W;        0 irqs/s
>>         IMC reads:      138 MiB/s
>>        IMC writes:        6 MiB/s
>> --->
>> intel-gpu-top: Intel Skylake (Gen9) @ /dev/dri/card0 -    0/   0 MHz; 100% RC6;  0.00/ 0.00 W;        0 irqs/s
>>
>>         IMC reads:       77 MiB/s
>>        IMC writes:        4 MiB/s
>>
>>
>> So a "fight" between 80 chars vs 120 (or so). :) It may be a bit of an over-engineered solution but I don't like the wrap on a wide terminal, plus I like an extra blank line.
> 
> But the memory counters are visually similar to the
> frequency/rc6/power/interrupts...

But I broke my layout by accident when rebasing client stats... ;D

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
