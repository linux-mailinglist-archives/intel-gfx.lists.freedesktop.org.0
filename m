Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 175ED537A89
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 14:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561C810E6FF;
	Mon, 30 May 2022 12:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF8810E6FF;
 Mon, 30 May 2022 12:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653913156; x=1685449156;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=IjAP8+jpNDpnQQ3L8xnGmZSeIJDK7OiWYCk7kdVJdic=;
 b=AaFo+FcmhaEBOPO4+1u82/co9TXXLprdQogCEzwcbiacRMPvnepTzViu
 gvX6nYyZieIF2ZtynTU5xlkB90LpDtUM9rRfFfhErLmT6DDwclkkidq3P
 quPhhJ8xY0LgtepOhl1JN3JmAIQOkakHt08zxRh5uJqul4tfGRFwgp6pW
 JtBWfdpWDMOEn+AAVRk/UpnxCN88gwDuD0iBFN8E+PV1KyjVLulhG9sn4
 Vq0i6fLGFWRhooZ9hhzatqRaLyehkdNInSYwjTna4qoIh8kod7n1oLEHB
 jJO79Ab4L9sGg6WeeICHWnjzspDeqa6c83EDrbAVbb4dW+341rNIIxwkU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="273798614"
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="273798614"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 05:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,262,1647327600"; d="scan'208";a="679120962"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 30 May 2022 05:19:10 -0700
Received: from [10.249.137.127] (unknown [10.249.137.127])
 by linux.intel.com (Postfix) with ESMTP id B4DC258067A;
 Mon, 30 May 2022 05:19:08 -0700 (PDT)
Message-ID: <69d347fb-7de9-c4dd-f2e2-217661064dd2@intel.com>
Date: Mon, 30 May 2022 15:19:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220209182600.434803-1-christian.koenig@amd.com>
 <2bf6b110-cd85-e17f-e9c5-69e5e7eedd0d@intel.com>
 <dbdb02cb-26fa-4f08-b125-c4a850e73780@gmail.com>
 <d97d1700-4f05-a78c-aa3c-d4c52226d0ca@intel.com>
 <996331e1-4442-7b43-b3f4-24bd6861eacd@intel.com>
 <419c9bff-4292-3062-b7f2-efeb64b9e79f@gmail.com>
 <20220525215933.m4yhm3b653gt4knp@ldmartin-desk2>
 <b54b2cc7-f511-e6ce-72fa-da5c8cd5e7b4@gmail.com>
 <442b3a43-2b8b-e9be-6ee4-b4b2357c8cf0@intel.com>
 <d363c177-c874-f7c7-1d53-c0a2ea9510a7@gmail.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <d363c177-c874-f7c7-1d53-c0a2ea9510a7@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/syncobj: flatten dma_fence_chains on
 transfer
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 30/05/2022 14:40, Christian König wrote:
> Am 30.05.22 um 12:09 schrieb Lionel Landwerlin:
>> On 30/05/2022 12:52, Christian König wrote:
>>> Am 25.05.22 um 23:59 schrieb Lucas De Marchi:
>>>> On Wed, May 25, 2022 at 12:38:51PM +0200, Christian König wrote:
>>>>> Am 25.05.22 um 11:35 schrieb Lionel Landwerlin:
>>>>>> [SNIP]
>>>>>>
>>>>>> Err... Let's double check with my colleagues.
>>>>>>
>>>>>> It seems we're running into a test failure in IGT with this 
>>>>>> patch, but now I have doubts that it's where the problem lies.
>>>>>
>>>>> Yeah, exactly that's what I couldn't understand as well.
>>>>>
>>>>> What you describe above should still work fine.
>>>>>
>>>>> Thanks for taking a look into this,
>>>>> Christian.
>>>>
>>>> With some additional prints:
>>>>
>>>> [  210.742634] Console: switching to colour dummy device 80x25
>>>> [  210.742686] [IGT] syncobj_timeline: executing
>>>> [  210.756988] [IGT] syncobj_timeline: starting subtest 
>>>> transfer-timeline-point
>>>> [  210.757364] [drm:drm_syncobj_transfer_ioctl] *ERROR* adding 
>>>> fence0 signaled=1
>>>> [  210.764543] [drm:drm_syncobj_transfer_ioctl] *ERROR* resulting 
>>>> array fence signaled=0
>>>> [  210.800469] [IGT] syncobj_timeline: exiting, ret=98
>>>> [  210.825426] Console: switching to colour frame buffer device 240x67
>>>>
>>>>
>>>> still learning this part of the code but AFAICS the problem is because
>>>> when we are creating the array, the 'signaled' doesn't propagate to 
>>>> the
>>>> array.
>>>
>>> Yeah, but that is intentionally. The array should only signal when 
>>> requested.
>>>
>>> I still don't get what the test case here is checking.
>>
>>
>> There must be something I don't know about fence arrays.
>>
>> You seem to say that creating an array of signaled fences will not 
>> make the array signaled.
>
> Exactly that, yes. The array delays it's signaling until somebody asks 
> for it.
>
> In other words the fences inside the array are check only after 
> someone calls dma_fence_enable_sw_signaling() which in turn calls 
> dma_fence_array_enable_signaling().
>
> It is certainly possible that nobody does that in the drm_syncobj and 
> because of this the array never signals.
>
> Regards,
> Christian.


Thanks,


Yeah I guess dma_fence_enable_sw_signaling() is never called for sw_sync.

Don't we also want to call it right at the end of 
drm_syncobj_flatten_chain() ?


-Lionel


>
>>
>>
>> This is the situation with this IGT test.
>>
>> We started with a syncobj with point 1 & 2 signaled.
>>
>> We take point 2 and import it as a new point 3 on the same syncobj.
>>
>> We expect point 3 to be signaled as well and it's not.
>>
>>
>> Thanks,
>>
>>
>> -Lionel
>>
>>
>>>
>>> Regards,
>>> Christian.
>>>
>>>>
>>>> dma_fence_array_create() {
>>>>     ...
>>>>     atomic_set(&array->num_pending, signal_on_any ? 1 : num_fences);
>>>>     ...
>>>> }
>>>>
>>>> This is not considering the fact that some of the fences could already
>>>> have been signaled as is the case in the 
>>>> igt@syncobj_timeline@transfer-timeline-point
>>>> test. See 
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11693/shard-dg1-12/igt@syncobj_timeline@transfer-timeline-point.html
>>>>
>>>> Quick patch on this function fixes it for me:
>>>>
>>>> ---------8<----------------
>>>> Subject: [PATCH] dma-buf: Honor already signaled fences on array 
>>>> creation
>>>>
>>>> When creating an array, array->num_pending is marked with the 
>>>> number of
>>>> fences. However the fences could alredy have been signaled. Propagate
>>>> num_pending to the array by looking at each individual fence the array
>>>> contains.
>>>>
>>>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>> ---
>>>>  drivers/dma-buf/dma-fence-array.c | 11 ++++++++++-
>>>>  1 file changed, 10 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/dma-buf/dma-fence-array.c 
>>>> b/drivers/dma-buf/dma-fence-array.c
>>>> index 5c8a7084577b..32f491c32fa0 100644
>>>> --- a/drivers/dma-buf/dma-fence-array.c
>>>> +++ b/drivers/dma-buf/dma-fence-array.c
>>>> @@ -158,6 +158,8 @@ struct dma_fence_array 
>>>> *dma_fence_array_create(int num_fences,
>>>>  {
>>>>      struct dma_fence_array *array;
>>>>      size_t size = sizeof(*array);
>>>> +    unsigned num_pending = 0;
>>>> +    struct dma_fence **f;
>>>>
>>>>      WARN_ON(!num_fences || !fences);
>>>>
>>>> @@ -173,7 +175,14 @@ struct dma_fence_array 
>>>> *dma_fence_array_create(int num_fences,
>>>>      init_irq_work(&array->work, irq_dma_fence_array_work);
>>>>
>>>>      array->num_fences = num_fences;
>>>> -    atomic_set(&array->num_pending, signal_on_any ? 1 : num_fences);
>>>> +
>>>> +    for (f = fences; f < fences + num_fences; f++)
>>>> +        num_pending += !dma_fence_is_signaled(*f);
>>>> +
>>>> +    if (signal_on_any)
>>>> +        num_pending = !!num_pending;
>>>> +
>>>> +    atomic_set(&array->num_pending, num_pending);
>>>>      array->fences = fences;
>>>>
>>>>      array->base.error = PENDING_ERROR;
>>>
>>
>

