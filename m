Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDAB4615AD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:00:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFB76FCFE;
	Mon, 29 Nov 2021 13:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B33A6FC97;
 Mon, 29 Nov 2021 12:55:41 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id c4so36551252wrd.9;
 Mon, 29 Nov 2021 04:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=qemJ+8gCFACeuoFz3XOub8bUAT99hVqeSm4liTeFuFA=;
 b=I/F77x50+M+Nop6Fa/FNQCSy6+GJZcKNJLPNhGWWnCoTR9DYLwIA88OaX1Uuw4ficS
 Me6741i4bEcYSBFbWcvkDg6HelTLP2rllZRSqdpjtXHqD3jFJJa68g2o/u93GDi7nzR7
 SVPR0lwmadbb0B+KDLnPfvSAJncw47lme5xdHc86Uf8qv8kVnMZFsvBZJHdpMC6D/A1c
 lH0HrTAxBUUHsj1ttTyVeEHta0GeIQuplJGbpeTCuYP1/1ehxY/3OzKEDUvlM/we+uzM
 OI9gMVmH3FCsMEaLC4Km49rxXnlT0JtrvbSrNwUedE8A5/1xnnYvgFBDVDCIEPNg7hp9
 SO+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=qemJ+8gCFACeuoFz3XOub8bUAT99hVqeSm4liTeFuFA=;
 b=TnzLxDfEVn3khF3h/HJr+vXQNw61JrGwpR7AKkXV4GkG9ZVffvrrOCYezg/1rF5ZbI
 NIJK77LvGmfM5px3ftXR53hvsgqzHvTElKy4hNSGaAvW+E7Guu638c4QaBI64myJpNKE
 aEOXMhREQYOdc7v2LENK4t7G3iJCNzZt9OcPHdUd4rcoVYHjq+S/r8GYyF0XXbRbEcS9
 QMg82upr7lmfNWOII2+mF5p8cOzum+hMJz3uqI0BSP3p584m1Z5khIBK/3zET5Fe+6Mg
 x3j+X3mAdF8LyxeOU9uTRhQHPzWixjESOqWOKrpifZuMW5Y06i+ih1DRDQEFzXK1WFb/
 KpvQ==
X-Gm-Message-State: AOAM530Jkn0d6sCnJXY19YhDNChdW1BSvPDKNXMFwPmOuxg3wM+B2BTq
 pGe/wuTHHDU7M2LssccH7rE=
X-Google-Smtp-Source: ABdhPJzGg/Imk8nPiQdBSpRopU01jLl1/Izo7h/H/YFv+lsjJUqhvYhGqJ+Xf5v0BgEWA2vHJYT/Og==
X-Received: by 2002:adf:e391:: with SMTP id e17mr33628241wrm.613.1638190539198; 
 Mon, 29 Nov 2021 04:55:39 -0800 (PST)
Received: from [192.168.178.21] (p57b0b77b.dip0.t-ipconnect.de.
 [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id h204sm15657736wmh.33.2021.11.29.04.55.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Nov 2021 04:55:38 -0800 (PST)
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Joonas Lahtinen <joonas.lahtinen@intel.com>
References: <20211129073533.414008-1-thomas.hellstrom@linux.intel.com>
 <4fd0eee6-342f-fb31-717c-901440f38c35@gmail.com>
 <58ca11648ab29d96b84640760d2acc3ac2d39d19.camel@linux.intel.com>
 <e4d8e272-8175-4298-f227-240febc0bda0@gmail.com>
 <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <180f069a-bf29-cf05-c9f9-5b1737ec5664@gmail.com>
Date: Mon, 29 Nov 2021 13:55:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ee128e237dbc2b6b2341b49ab07661c1f1b65e0b.camel@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Mon, 29 Nov 2021 13:00:35 +0000
Subject: Re: [Intel-gfx] [PATCH] dma_fence_array: Fix PENDING_ERROR leak in
 dma_fence_array_signaled()
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
Cc: linaro-mm-sig@lists.linaro.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Am 29.11.21 um 13:46 schrieb Thomas Hellström:
> On Mon, 2021-11-29 at 13:33 +0100, Christian König wrote:
>> Am 29.11.21 um 13:23 schrieb Thomas Hellström:
>>> Hi, Christian,
>>>
>>> On Mon, 2021-11-29 at 09:21 +0100, Christian König wrote:
>>>> Am 29.11.21 um 08:35 schrieb Thomas Hellström:
>>>>> If a dma_fence_array is reported signaled by a call to
>>>>> dma_fence_is_signaled(), it may leak the PENDING_ERROR status.
>>>>>
>>>>> Fix this by clearing the PENDING_ERROR status if we return true
>>>>> in
>>>>> dma_fence_array_signaled().
>>>>>
>>>>> Fixes: 1f70b8b812f3 ("dma-fence: Propagate errors to dma-fence-
>>>>> array container")
>>>>> Cc: linaro-mm-sig@lists.linaro.org
>>>>> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
>>>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>>>> Signed-off-by: Thomas Hellström
>>>>> <thomas.hellstrom@linux.intel.com>
>>>> Reviewed-by: Christian König <christian.koenig@amd.com>
>>> How are the dma-buf / dma-fence patches typically merged? If i915
>>> is
>>> the only fence->error user, could we take this through drm-intel to
>>> avoid a backmerge for upcoming i915 work?
>> Well that one here looks like a bugfix to me, so either through
>> drm-misc-fixes ore some i915 -fixes branch sounds fine to me.
>>
>> If you have any new development based on that a backmerge of the -
>> fixes
>> into your -next branch is unavoidable anyway.
> Ok, I'll check with Joonas if I can take it through
> drm-intel-gt-next, since fixes are cherry-picked from that one. Patch
> will then appear in both the -fixes and the -next branch.

Well exactly that's the stuff Daniel told me to avoid :)

But maybe your i915 workflow is somehow better handling that than the 
AMD workflow.

Christian.

>
> Thanks,
> /Thomas
>
>
>> Regards,
>> Christian.
>>
>>> /Thomas
>>>
>>>
>>>>> ---
>>>>>     drivers/dma-buf/dma-fence-array.c | 6 +++++-
>>>>>     1 file changed, 5 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/dma-buf/dma-fence-array.c b/drivers/dma-
>>>>> buf/dma-fence-array.c
>>>>> index d3fbd950be94..3e07f961e2f3 100644
>>>>> --- a/drivers/dma-buf/dma-fence-array.c
>>>>> +++ b/drivers/dma-buf/dma-fence-array.c
>>>>> @@ -104,7 +104,11 @@ static bool
>>>>> dma_fence_array_signaled(struct
>>>>> dma_fence *fence)
>>>>>     {
>>>>>           struct dma_fence_array *array =
>>>>> to_dma_fence_array(fence);
>>>>>     
>>>>> -       return atomic_read(&array->num_pending) <= 0;
>>>>> +       if (atomic_read(&array->num_pending) > 0)
>>>>> +               return false;
>>>>> +
>>>>> +       dma_fence_array_clear_pending_error(array);
>>>>> +       return true;
>>>>>     }
>>>>>     
>>>>>     static void dma_fence_array_release(struct dma_fence *fence)
>

