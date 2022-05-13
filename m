Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E98525EB6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 11:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9950010F94F;
	Fri, 13 May 2022 09:28:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D991110F94F
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 09:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652434101; x=1683970101;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=avdSngxHA17ADkyeWnhrIIPDdXa0nafnjkoaOW77/k4=;
 b=kaYqVP/XyCINeZrM7QbF1GHw/ytzR+jJY+BoT3CxytNdHwOdG/9JAQkz
 zGkrOVSvN2QYkW1mg3lt8EUZw/JAqGoOCcnT8LqNuITSuClyZuPIohrO0
 qjLJB6M2Kcip+/1Hdr5JxhqaXGPnvhtK8bSPtJkH59yfkB2VSJWeuvtU5
 ZJSwqRlZgzBRz3tcSKy7StFYN+zzpZQL3RhxnFjEAhqCbBfKHwD4eLalh
 BlLIRAzxcmoBFJN0k33slIBdphBzRG8EzcR7heXq27rBfl3cC0rBmQqG+
 fHv2Sp/WCBzowCfsxTxqxux6orvqGGkOkG01M7Z8YCsgoUTUW5ew6IsZ0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="333297444"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="333297444"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 02:28:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="554156372"
Received: from cpazx-mobl.ger.corp.intel.com (HELO [10.213.209.239])
 ([10.213.209.239])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 02:28:20 -0700
Message-ID: <5fd75764-8f2c-800f-076c-ba8feb538fad@linux.intel.com>
Date: Fri, 13 May 2022 10:28:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
 <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
 <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
 <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
 <9f1f6c83-67ad-b222-97ff-ec3905e68eeb@linux.intel.com>
 <ced026cc-183a-d387-ff8c-2a3b83f704b1@intel.com>
 <87fslf7jav.wl-ashutosh.dixit@intel.com>
 <eee5af37-c287-5c3d-d536-e6612d0fe8f8@linux.intel.com>
 <871qwy6mzd.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <871qwy6mzd.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/05/2022 06:05, Dixit, Ashutosh wrote:
> On Thu, 12 May 2022 00:48:08 -0700, Tvrtko Ursulin wrote:
> 
> Hi Tvrtko,
> 
>> On 12/05/2022 00:15, Dixit, Ashutosh wrote:
>>> On Tue, 10 May 2022 03:41:57 -0700, Andrzej Hajda wrote:
>>>> On 10.05.2022 11:48, Tvrtko Ursulin wrote:
>>>>> On 10/05/2022 10:39, Andrzej Hajda wrote:
>>>>>> On 10.05.2022 10:18, Tvrtko Ursulin wrote:
>>>>>>>>>
>>>>>>>>> Was there closure/agreement on the matter of whether or not there is
>>>>>>>>> a potential race between "kfree(gt)" and sysfs access (last put from
>>>>>>>>> sysfs that is)? I've noticed Andrzej and Ashutosh were discussing it
>>>>>>>>> but did not read all the details.
>>>>>>>>>
>>>>>>>>
>>>>>>>> Not really :)
>>>>>>>> IMO docs are against this practice, Ashutosh shows examples of this
>>>>>>>> practice in code and according to his analysis it is safe.
>>>>>>>> I gave up looking for contradictions :) Either it is OK, kobject is
>>>>>>>> not fully shared object, docs are obsolete and needs update, either
>>>>>>>> the patch is wrong.
>>>>>>>> Anyway finally I tend to accept this solution, I failed to prove it is
>>>>>>>> wrong :)
>>>>>>>
>>>>>>> Like a question of whether hotunplug can be triggered while userspace
>>>>>>> is sitting in a sysfs hook? Final kfree then has to be delayed until
>>>>>>> userspace exists.
>>>>>>>
>>>>>>> Btw where is the "kfree(gt)" for the tiles on the PCI remove path? I
>>>>>>> can't find it.. Do we have a leak?
>>>>>>
>>>>>> intel_gt_tile_cleanup ?
>>>>>
>>>>> Called from intel_gt_release_all, whose only caller is the failure path
>>>>> of i915_driver_probe. Feels like something is missing?
>>>>
>>>> This is final proof this patch is safe - no kfree, no UAF :)
>>>>
>>>> Apparently it is broken in internal branch as well.
>>>> Should I take care of it?
>>>
>>> See Daniele's comment here:
>>>
>>> https://patchwork.freedesktop.org/patch/478856/?series=101551&rev=1
>>
>> Yeah we found that same leak yesterday, or the day before in this thread.
>>
>>> We clean up the gt sysfs during PCI device remove (i915_driver_remove ->
>>> i915_driver_unregister -> intel_gt_driver_unregister ->
>>> intel_gt_sysfs_unregister (added in this patch)). But from Daniele's mail
>>> it appears that "kfree(gt)" can only be done from i915_driver_release().
>>>
>>> So as long as i915_driver_release() always happens after
>>> i915_driver_remove() (which seems to be the case though I couldn't figure
>>> out why (i.e. who is putting the final reference of the drm device)) there
>>> is no UAF and no race. Thanks!
>>
>> No worried by the unknown?
> 
> Well if release() happens before or during remove() then (as is clear from
> Daniele's mail) we have a much bigger problem than sysfs on our hands and
> will see UAF crashes during device remove/unbind. But as far as we know no
> such crashes have been reported.
> 
>> I had a quick look whether core_hotunplug tests for sysfs interactions
>> but couldn't spot it. What I had in mind is userspace stuck in a sysfs
>> hook (say read into a userfaultfd buffer) with device hotunplug in
>> parallel. Maybe it is all handled already, not claiming that it isn't.
> 
> This is the 20 year old issue mentioned by Andrzej here:
> https://lwn.net/Articles/36850/
> 
> So I thought I'll try this out today and see what actually happens to
> settle this. And you will see it makes perfect sense. So this is what I
> did:
> 
> * Change IGT to add a 20 second sleep after opening a sysfs file
> * In that 20 second period, with an open fd, unbind the device using:
> 	echo -n "0000:03:00.0" > /sys/bus/pci/drivers/i915/unbind
>    And also rmmod i915.
> 
> So this is what we see when we do this:
> * As soon as the device is unbound, the complete i915 sysfs tree (under
>    /sys/card/drm/card0) is cleanly removed (even with the open fd in IGT).
> * The fd open in IGT is now orphan/invalid, so when IGT resumes and tries
>    to use that fd IGT crashes.
> * So no problem with device unbind but if IGT is still hanging around rmmod
>    fails (saying module is in use, most likely due to the still open drm fd)
>    but after IGT is completely killed rmmod is also fine.
> 
> So this confirms all this is correctly handled.

I was unsure what does "IGT crashes" exactly meant so I went to try it 
out myself. It's -ENODEV from read(2) it receives so it all indeed seems 
handled fine.

Although hotunplug seems generally very unhealthy, at least on 
5.18.0-rc8 I tested on.. I'll send my subtest to the mailing list in 
case it is consider useful to have it.

Regards,

Tvrtko

> 
> Separately, note that kobject_put's introduced in this patch are only
> needed for freeing the memory allocated for the kobject's themselves (or
> their containing struct's). kobject_put's don't play a role in cleaning up
> the sysfs hierarchy itself (which will get cleaned up even without the
> kobject_put's). Further, child kobject's take a reference on their parents
> so child kobjects need a kobject_put before the parent kobject_put to free
> the memory allocated for the parent (i.e. doing a kobject_put on the parent
> will not automatically free all the child kobjects).
> 
> Thanks.
> --
> Ashutosh
