Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19576524758
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 09:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C29010EBA8;
	Thu, 12 May 2022 07:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF15E10EBA8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 07:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652341715; x=1683877715;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=knNtCeRrTKPLZbmY/tjUZsKXa1REZyR/E8uto4tQick=;
 b=FZw7wztLL9+G1rrTkn/ND02mpOZzeZQ4P1baTBIAP7P/7stDW7dkPIsr
 IAqWhaVVDAU9CDpap66HuSM92wpfxFwKFcwnpdI0kaTxFazNe4GR3UgTV
 GDkKuUU5L9Vl6g/ju5WaK3PqhNX4kCbldl6RurQe7MYRIvBuXyF/XNKva
 oLYYba5q5SjTn6exykAq2hfDsxTHgOKAG12ebXVqKe3dY0FtUwohj1WoP
 oWStK1Si/LOU8WrJGnTC4Wnhy67nROAWkSJYCkLgBxkfj6gG4CD5iqTkK
 ha/nBUUoRG+NfIzuOJsfoZYBujdNpKCk6HWqK9Df+6K0izY0gh95K5N28 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10344"; a="269601150"
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="269601150"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 00:48:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,219,1647327600"; d="scan'208";a="697928672"
Received: from khamid-mobl1.ger.corp.intel.com (HELO [10.213.211.21])
 ([10.213.211.21])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 00:48:11 -0700
Message-ID: <eee5af37-c287-5c3d-d536-e6612d0fe8f8@linux.intel.com>
Date: Thu, 12 May 2022 08:48:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
 <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
 <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
 <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
 <9f1f6c83-67ad-b222-97ff-ec3905e68eeb@linux.intel.com>
 <ced026cc-183a-d387-ff8c-2a3b83f704b1@intel.com>
 <87fslf7jav.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87fslf7jav.wl-ashutosh.dixit@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/05/2022 00:15, Dixit, Ashutosh wrote:
> On Tue, 10 May 2022 03:41:57 -0700, Andrzej Hajda wrote:
>> On 10.05.2022 11:48, Tvrtko Ursulin wrote:
>>> On 10/05/2022 10:39, Andrzej Hajda wrote:
>>>> On 10.05.2022 10:18, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> Was there closure/agreement on the matter of whether or not there is
>>>>>>> a potential race between "kfree(gt)" and sysfs access (last put from
>>>>>>> sysfs that is)? I've noticed Andrzej and Ashutosh were discussing it
>>>>>>> but did not read all the details.
>>>>>>>
>>>>>>
>>>>>> Not really :)
>>>>>> IMO docs are against this practice, Ashutosh shows examples of this
>>>>>> practice in code and according to his analysis it is safe.
>>>>>> I gave up looking for contradictions :) Either it is OK, kobject is
>>>>>> not fully shared object, docs are obsolete and needs update, either
>>>>>> the patch is wrong.
>>>>>> Anyway finally I tend to accept this solution, I failed to prove it is
>>>>>> wrong :)
>>>>>
>>>>> Like a question of whether hotunplug can be triggered while userspace
>>>>> is sitting in a sysfs hook? Final kfree then has to be delayed until
>>>>> userspace exists.
>>>>>
>>>>> Btw where is the "kfree(gt)" for the tiles on the PCI remove path? I
>>>>> can't find it.. Do we have a leak?
>>>>
>>>> intel_gt_tile_cleanup ?
>>>
>>> Called from intel_gt_release_all, whose only caller is the failure path
>>> of i915_driver_probe. Feels like something is missing?
>>
>> This is final proof this patch is safe - no kfree, no UAF :)
>>
>> Apparently it is broken in internal branch as well.
>> Should I take care of it?
> 
> See Daniele's comment here:
> 
> https://patchwork.freedesktop.org/patch/478856/?series=101551&rev=1

Yeah we found that same leak yesterday, or the day before in this thread.

> We clean up the gt sysfs during PCI device remove (i915_driver_remove ->
> i915_driver_unregister -> intel_gt_driver_unregister ->
> intel_gt_sysfs_unregister (added in this patch)). But from Daniele's mail
> it appears that "kfree(gt)" can only be done from i915_driver_release().
> 
> So as long as i915_driver_release() always happens after
> i915_driver_remove() (which seems to be the case though I couldn't figure
> out why (i.e. who is putting the final reference of the drm device)) there
> is no UAF and no race. Thanks!

No worried by the unknown? I had a quick look whether core_hotunplug 
tests for sysfs interactions but couldn't spot it. What I had in mind is 
userspace stuck in a sysfs hook (say read into a userfaultfd buffer) 
with device hotunplug in parallel. Maybe it is all handled already, not 
claiming that it isn't.

Regards,

Tvrtko
