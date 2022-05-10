Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF46352115F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 11:48:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF3710E3B4;
	Tue, 10 May 2022 09:48:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BA9D10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 09:48:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652176092; x=1683712092;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3kQ6RZ9v/jkxhjVFrTCFiYFeboocOMMLNcYbmjI6rQs=;
 b=b9/dtfSXvhBJ7Q2uGG+HwZMQ2XkugG8AgJoazlVLjOJry51vB2n1qbLQ
 zOy5bTTFAJ+7bYziIDW9AupEv8pB1GripyADnMDuSR/f5bsNizkP1zsLC
 YseBEVa8J6zKsIxIhX5kNFDQINcwE6NS+Q9DILJASjxS+QXk+BS7ckpaz
 19675FnwLvf8ok5bWUH8b+JAJ1q3OdC+NeemPEEUOtd8Eo3Uuk3tgTyUA
 dUsDFgSqrNXjVPZaqanVA9gzbpBrpeH/CMyueJvRJc/O0T4sQiPyEiu25
 WWpiepaDW0JAfmVpDltEez6VI4iagjbsbrdUcQY3BrNJCk6kraBjG55tG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256860216"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256860216"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 02:48:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="738600077"
Received: from rcpalaku-mobl1.ger.corp.intel.com (HELO [10.213.208.196])
 ([10.213.208.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 02:48:09 -0700
Message-ID: <9f1f6c83-67ad-b222-97ff-ec3905e68eeb@linux.intel.com>
Date: Tue, 10 May 2022 10:48:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1651261886.git.ashutosh.dixit@intel.com>
 <06685e6216a1afc79bdf76bd1cfafbc929d4e376.1651261886.git.ashutosh.dixit@intel.com>
 <91a24f6c-4eb6-cc40-f252-d2d45673f932@linux.intel.com>
 <b1bf937f-c38f-f1fb-1deb-1b4c31daae71@intel.com>
 <a37189a5-7c2e-0331-819b-d85603a2de39@linux.intel.com>
 <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <d0fe2315-563d-31b1-28eb-7816800270dd@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/05/2022 10:39, Andrzej Hajda wrote:
> On 10.05.2022 10:18, Tvrtko Ursulin wrote:
>>
>> On 10/05/2022 08:58, Andrzej Hajda wrote:
>>> Hi Tvrtko,
>>>
>>> On 10.05.2022 09:28, Tvrtko Ursulin wrote:
>>>>
>>>> On 29/04/2022 20:56, Ashutosh Dixit wrote:
>>>>> All kmalloc'd kobjects need a kobject_put() to free memory. For 
>>>>> example in
>>>>> previous code, kobj_gt_release() never gets called. The requirement of
>>>>> kobject_put() now results in a slightly different code organization.
>>>>>
>>>>> v2: s/gtn/gt/ (Andi)
>>>>>
>>>>> Cc: Andi Shyti <andi.shyti@intel.com>
>>>>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>>>>> Fixes: b770bcfae9ad ("drm/i915/gt: create per-tile sysfs interface")
>>>>> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>>>>> ---
>>>>>   drivers/gpu/drm/i915/gt/intel_gt.c       |  1 +
>>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.c | 29 
>>>>> ++++++++++--------------
>>>>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h |  6 +----
>>>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h |  3 +++
>>>>>   drivers/gpu/drm/i915/i915_sysfs.c        |  2 ++
>>>>>   5 files changed, 19 insertions(+), 22 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>> index 92394f13b42f..9aede288eb86 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>>>>> @@ -785,6 +785,7 @@ void intel_gt_driver_unregister(struct intel_gt 
>>>>> *gt)
>>>>>   {
>>>>>       intel_wakeref_t wakeref;
>>>>>   +    intel_gt_sysfs_unregister(gt);
>>>>>       intel_rps_driver_unregister(&gt->rps);
>>>>>       intel_gsc_fini(&gt->gsc);
>>>>>   diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>> index 8ec8bc660c8c..9e4ebf53379b 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs.c
>>>>> @@ -24,7 +24,7 @@ bool is_object_gt(struct kobject *kobj)
>>>>>     static struct intel_gt *kobj_to_gt(struct kobject *kobj)
>>>>>   {
>>>>> -    return container_of(kobj, struct kobj_gt, base)->gt;
>>>>> +    return container_of(kobj, struct intel_gt, sysfs_gt);
>>>>>   }
>>>>>     struct intel_gt *intel_gt_sysfs_get_drvdata(struct device *dev,
>>>>> @@ -72,9 +72,9 @@ static struct attribute *id_attrs[] = {
>>>>>   };
>>>>>   ATTRIBUTE_GROUPS(id);
>>>>>   +/* A kobject needs a release() method even if it does nothing */
>>>>>   static void kobj_gt_release(struct kobject *kobj)
>>>>>   {
>>>>> -    kfree(kobj);
>>>>>   }
>>>>>     static struct kobj_type kobj_gt_type = {
>>>>> @@ -85,8 +85,6 @@ static struct kobj_type kobj_gt_type = {
>>>>>     void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>>   {
>>>>> -    struct kobj_gt *kg;
>>>>> -
>>>>>       /*
>>>>>        * We need to make things right with the
>>>>>        * ABI compatibility. The files were originally
>>>>> @@ -98,25 +96,22 @@ void intel_gt_sysfs_register(struct intel_gt *gt)
>>>>>       if (gt_is_root(gt))
>>>>>           intel_gt_sysfs_pm_init(gt, gt_get_parent_obj(gt));
>>>>>   -    kg = kzalloc(sizeof(*kg), GFP_KERNEL);
>>>>> -    if (!kg)
>>>>> +    /* init and xfer ownership to sysfs tree */
>>>>> +    if (kobject_init_and_add(&gt->sysfs_gt, &kobj_gt_type,
>>>>> +                 gt->i915->sysfs_gt, "gt%d", gt->info.id))
>>>>
>>>> Was there closure/agreement on the matter of whether or not there is 
>>>> a potential race between "kfree(gt)" and sysfs access (last put from 
>>>> sysfs that is)? I've noticed Andrzej and Ashutosh were discussing it 
>>>> but did not read all the details.
>>>>
>>>
>>> Not really :)
>>> IMO docs are against this practice, Ashutosh shows examples of this 
>>> practice in code and according to his analysis it is safe.
>>> I gave up looking for contradictions :) Either it is OK, kobject is 
>>> not fully shared object, docs are obsolete and needs update, either 
>>> the patch is wrong.
>>> Anyway finally I tend to accept this solution, I failed to prove it 
>>> is wrong :)
>>
>> Like a question of whether hotunplug can be triggered while userspace 
>> is sitting in a sysfs hook? Final kfree then has to be delayed until 
>> userspace exists.
>>
>> Btw where is the "kfree(gt)" for the tiles on the PCI remove path? I 
>> can't find it.. Do we have a leak?
> 
> intel_gt_tile_cleanup ?

Called from intel_gt_release_all, whose only caller is the failure path 
of i915_driver_probe. Feels like something is missing?

Regards,

Tvrtko
