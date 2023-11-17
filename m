Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8297EF2ED
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 13:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922F010E75D;
	Fri, 17 Nov 2023 12:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2945110E75A;
 Fri, 17 Nov 2023 12:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700225199; x=1731761199;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=43nGqCyFRPCw3KnCxoBL1AIf5rLpz+JZhSspG+z+93M=;
 b=MIcjZRb/O8bWSB6SbVJuyRiazp/xQgrrcXh2IwVs7IVQTRY2m60MWtZg
 DE9nKAWShaNokPM3AODts3usldJ5ksv+YujkLOtKzvCO4CI+07Z4XdRsU
 gS8h5uzIbXEoDD15GzElJ+lAwXgxxkqzhwos9XjaLCU570xeYIanNA3ks
 9dC25VgwRxB+QBBpAyi+UfOk+wYsT43rA1KffCycqYzAsWX198Qa64jdW
 2HHuATcmhY84qnrkNObaf+xUPbN4TCi98GBPtqZuYcJJN77coRH8mJipc
 fiJ9URlzoz5ZnB0KuWOPY5lKmKEOm1bHNHcMNuFkefn5NRsclsN3ENj3x g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="390151742"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="390151742"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:46:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; 
   d="scan'208";a="7003373"
Received: from sharlene-mobl.ger.corp.intel.com (HELO [10.213.239.99])
 ([10.213.239.99])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 04:46:37 -0800
Message-ID: <9d09f2e0-fcaf-4519-8661-5c4d7ca41693@linux.intel.com>
Date: Fri, 17 Nov 2023 12:46:34 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com> <ZVcx1MSvP0UgZ14o@intel.com>
 <b5b7c522527332eb54be2dfa6da5b0ad7cc25a07.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <b5b7c522527332eb54be2dfa6da5b0ad7cc25a07.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Ursulin,
 Tvrtko" <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/11/2023 12:21, Coelho, Luciano wrote:
> Adding Tvrtko, for some reason he didn't get CCed before.
> 
> 
> On Fri, 2023-11-17 at 11:26 +0200, Ville Syrjälä wrote:
>> On Fri, Nov 17, 2023 at 10:41:43AM +0200, Ville Syrjälä wrote:
>>> On Fri, Nov 17, 2023 at 08:05:21AM +0000, Coelho, Luciano wrote:
>>>> Thanks for your comments, Ville!
>>>>
>>>> On Fri, 2023-11-17 at 09:19 +0200, Ville Syrjälä wrote:
>>>>> On Thu, Nov 16, 2023 at 01:27:00PM +0200, Luca Coelho wrote:
>>>>>> Since we're abstracting the display code from the underlying driver
>>>>>> (i.e. i915 vs xe), we can't use the uncore's spinlock to protect
>>>>>> critical sections of our code.
>>>>>>
>>>>>> After further inspection, it seems that the spinlock is not needed at
>>>>>> all and this can be handled by disabling preemption and interrupts
>>>>>> instead.
>>>>>
>>>>> uncore.lock has multiple purposes:
>>>>> 1. serialize all register accesses to the same cacheline as on
>>>>>     certain platforms that can hang the machine
>>>>
>>>> Okay, do you remember which platforms?
>>>
>>> HSW is the one I remember for sure being affected.
>>> Althoguh I don't recall if I ever managed to hang it
>>> using display registers specifically. intel_gpu_top
>>> certainly was very good at reproducing the problem.
>>>
>>>> I couldn't find any reference to
>>>> this reason.
>>>
>>> If all else fails git log is your friend.
>>
>> It seems to be documented in intel_uncore.h. Though that one
>> mentions IVB instead of HSW for some reason. I don't recall
>> seeing it on IVB myself, but I suppose it might have been an
>> issue there as well. How long the problem remained after HSW
>> I have no idea.
> 
> Oh, somehow I missed that.  Thanks.
> 
> So, it seems that the locking is indeed needed.  I think there are two
> options, then:
> 
> 1. Go back to my previous version of the patch, where I had the wrapper
> that didn't lock anything on Xe and implement the display part when we
> get a similar implementation of the uncore.lock on Xe (if ever needed).
> 
> 2. Implement a display-local lock for this, as suggested at some point,
> including the other intel_de*() accesses.  But can we be sure that it's
> enough to protect only the registers accessed by the display? I.e.
> won't accessing display registers non-serially in relation to non-
> display registers?
> 
> 
> Preferences?

AFAIR my initial complaint was the naming which was along the lines of 
intel_spin_lock(uncore). How to come up with a clean and logical name is 
the question...

On Xe you don't need a lock since HSW/IVB/cacheline angle does not exist 
but you need a name which does not clash with either.

Assuming you still need the preempt off (or irq off) on Xe for better 
timings, maybe along the lines of intel_vblank_section_enter/exit(i915)? 
Although I am not up to speed with what object instead of i915 would you 
be passing in from Xe ie. how exactly polymorphism is implemented in 
shared code.

Regards,

Tvrtko
