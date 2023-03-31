Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBA06D210C
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 15:03:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C84D810E325;
	Fri, 31 Mar 2023 13:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226AB10E325
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 13:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680267787; x=1711803787;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=t3NxxbmHm753Bb2hkSXcOtyeYFfBPZu4tzlwP763Rj8=;
 b=fW7gHdz21QHND3jRwUj7UcAa8lGwzZasI940fFZnhrO+gc6WD9vuoxT2
 6Oxd6pXYl6ZA4gXneDH8MO8pjUoKZl0p6C83yULl3AXlFQlM8fTERxZqx
 Nd2itAC+NoyIJVLtZLctdzoFFzdCpdQhJ+tSCdUuwsuV8N5vMDCufaymo
 RT/2GUS0Gf38Fw/dfWXpMn8xP6DX/fI2gUqT31BWe0rS7sX9dnyu+Y2/3
 bMWzZ1sWWvIt54Hnb379SzthAsmch5Y95pLAWnzDmk0J+5QT0ttxi81UX
 7s5uJJdOPLgsduwDYKl7gb8sdgq+zrgI7iwRyIQNsYC1EZV2ATHC9UCv6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="343963671"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="343963671"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 06:02:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="796112562"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796112562"
Received: from bpower-mobl3.ger.corp.intel.com (HELO [10.213.225.27])
 ([10.213.225.27])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 06:02:42 -0700
Message-ID: <3129e943-fdb4-1671-f114-9384f6373cec@linux.intel.com>
Date: Fri, 31 Mar 2023 14:02:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20230330004103.1295413-1-umesh.nerlige.ramappa@intel.com>
 <20230330004103.1295413-10-umesh.nerlige.ramappa@intel.com>
 <6d3b06eb-d18e-de8f-cc2a-1e9e90a590b0@linux.intel.com>
 <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ZCXVmTQJi8ulgE8+@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/pmu: Enable legacy PMU events
 for MTL
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


On 30/03/2023 19:31, Umesh Nerlige Ramappa wrote:
> + Joonas for comments on this
> 
> On Thu, Mar 30, 2023 at 02:38:03PM +0100, Tvrtko Ursulin wrote:
>>
>> On 30/03/2023 01:41, Umesh Nerlige Ramappa wrote:
>>> MTL introduces separate GTs for render and media. This complicates the
>>> definition of frequency and rc6 counters for the GPU as a whole since
>>> each GT has an independent counter. The best way to support this change
>>> is to deprecate the GPU-specific counters and create GT-specific
>>> counters, however that just breaks ABI. Since perf tools and scripts may
>>> be decentralized with probably many users, it's hard to deprecate the
>>> legacy counters and have all the users on board with that.
>>>
>>> Re-introduce the legacy counters and support them as min/max of
>>> GT-specific counters as necessary to ensure backwards compatibility.
>>>
>>> I915_PMU_ACTUAL_FREQUENCY - will show max of GT-specific counters
>>> I915_PMU_REQUESTED_FREQUENCY - will show max of GT-specific counters
>>> I915_PMU_INTERRUPTS - no changes since it is GPU specific on all 
>>> platforms
>>> I915_PMU_RC6_RESIDENCY - will show min of GT-specific counters
>>> I915_PMU_SOFTWARE_GT_AWAKE_TIME - will show max of GT-specific counters
>>
>> IMO max/min games are _very_ low value and probably just confusing.
> 
> By value, do you mean ROI or actually that the values would be incorrect?

Both really.

>> I am not convinced we need to burden the kernel with this. New 
>> platform, new counters.. userspace can just deal with it.
> 
> I agree and would prefer to drop this patch. There are some counter 
> arguments, I have added Joonas here for comments.
> 
> 1) an app/script hard-coded with the legacy events would be used on a 
> new platform and fail and we should maintain backwards compatibility.

I thought we pretty much agreed multiple times in the past (on different 
topics) that a new platform can require new userspace.

PMU is probably even a more clear cut case since it is exposing hardware 
counters (or close) so sometimes it is not even theoretically possible 
to preserve "backward" compatibility.

(I double quote backward because I think real backward compatibility 
does not apply on a new platform. And MTL is under force probe still.)

So for me it all comes under the "would be nice" category. But since we 
need to add kernel code to do it, code which asy intel_gpu_top could run 
in userspace, I am not at all convinced it wouldn't be a bad idea.

The aggregated counters wouldn't even be giving the full picture.

So I'd simply add tiles/gt support to intel_gpu_top. Same as it 
currently can do "-p" on the command line, or '1' in the interactive 
mode, to aggregate the engine classes into one line item, I'd extend 
that concept into frequencies and RC6.

By default we start with normalized values and in physical mode we show 
separate counters per tile/gt.

Someone running old intel_gpu_top on MTL gets to see nothing since the 
counter names are different. Which is IMO fine - better than showing 
tile 0 data, or some minimums/maximums from one tile only.

> 2) the sysfs attributes for rc6/frequency have already adopted an 
> aggregate vs gt0/gt1 approach to address that and pmu should have a 
> similar solution (or rather, PMU and the sysfs approaches should match 
> based on whatever is the approach)

Yeah I disagreed with min/max reads in sysfs too and am pretty sure I 
expressed that at the time. :shrug:

But I don't think there is a strong argument that PMU needs to follow.

Only impact is to people who access perf_event_open directly so yeah, if 
there are such users, they will need to add multi-tile support.

Regards,

Tvrtko
