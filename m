Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 247756779D8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 12:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76E210E346;
	Mon, 23 Jan 2023 11:09:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EFCB10E33E;
 Mon, 23 Jan 2023 11:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674472170; x=1706008170;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=QJTrXrkuUAqQGUSHQ4Wdvb8ibxQud6d09MmiAZ+8jpU=;
 b=A2Zgb/RH1mexvxLctiKX77uQVEzmgnFd6TPtc3buYbFkTh/diBzJKXc2
 6Wn0DwzaBdGT04o0PWtAL/GZ9vb90sn9bKs2NE7TM8CERlgwaiJHEhv2v
 zZuzoP9k5IeJJ3ve7L6JKu882zSTT6+iXREbAIfercVwVwfUuWv53Hu+3
 DTmVO9fr9OF+VLODTPJNMemFLNICrIQaKylIOg+6WQq74qwm6KjZIiZau
 TkFdDxCi5N7vJNwXMrY8VQF1pZtM2bUQf/MuMwdj2osPkIzOeJaKYpjSD
 qLLXSfr9C2HJTdiKNw5VrN50v2EoyvSLUG4fWVxa161s+2q+ie1Hrdt/W A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="305676194"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="305676194"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:09:29 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="785554942"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="785554942"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.57.143])
 ([10.252.57.143])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:09:28 -0800
Message-ID: <fbf23b72-224b-d411-b121-e1e8334198d1@linux.intel.com>
Date: Mon, 23 Jan 2023 12:09:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
References: <20230119155428.3260937-1-tvrtko.ursulin@linux.intel.com>
 <46f7db49-eb5c-515f-b450-75cac53d770e@linux.intel.com>
 <3d3c7982-5ad3-d5a7-0574-ec1b9848dd2a@linux.intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <3d3c7982-5ad3-d5a7-0574-ec1b9848dd2a@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel_gpu_top: Fix cleanup on old
 kernels / unsupported GPU
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

Hi Tvrtko,

On 1/23/2023 11:24 AM, Tvrtko Ursulin wrote:
>
> On 20/01/2023 14:29, Das, Nirmoy wrote:
>> Hi Tvrtko,
>>
>> On 1/19/2023 4:54 PM, Tvrtko Ursulin wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Avoid trying to dereference null engines on exit when there are either
>>> none which are supported, or kernel does not have i915 PMU support.
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>> ---
>>>   tools/intel_gpu_top.c | 10 +++++++---
>>>   1 file changed, 7 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>>> index 7aa233570463..517dc2995d26 100644
>>> --- a/tools/intel_gpu_top.c
>>> +++ b/tools/intel_gpu_top.c
>>> @@ -448,6 +448,9 @@ static void free_engines(struct engines *engines)
>>>       };
>>>       unsigned int i;
>>> +    if (!engines)
>>> +        return;
>>> +
>>
>>
>> This check should happen before the  struct pmu_counter free_list 
>> generation.
>
> I could, but it doesn't have to, not sure what reasons for should you 
> have in mind?

In my tree, I see:

"

static void free_engines(struct engines *engines)

{
         struct pmu_counter **pmu, *free_list[] = {
                 &engines->r_gpu,
                 &engines->r_pkg,
                 &engines->imc_reads,
                 &engines->imc_writes,
                 NULL
         };

         unsigned int i;

"

Maybe I am missing something here, wouldn't those dereferences of 
"engines" segfault if the engines  is NULL.


Regards,

Nirmoy

>
> Regards,
>
> Tvrtko
>
>>
>> Regards,
>>
>> Nirmoy
>>
>>>       for (pmu = &free_list[0]; *pmu; pmu++) {
>>>           if ((*pmu)->present)
>>>               free((char *)(*pmu)->units);
>>> @@ -2568,7 +2571,7 @@ int main(int argc, char **argv)
>>>               "Failed to detect engines! (%s)\n(Kernel 4.16 or newer 
>>> is required for i915 PMU support.)\n",
>>>               strerror(errno));
>>>           ret = EXIT_FAILURE;
>>> -        goto err;
>>> +        goto err_engines;
>>>       }
>>>       ret = pmu_init(engines);
>>> @@ -2585,7 +2588,7 @@ int main(int argc, char **argv)
>>>   "More information can be found at 'Perf events and tool security' 
>>> document:\n"
>>> "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>>>           ret = EXIT_FAILURE;
>>> -        goto err;
>>> +        goto err_pmu;
>>>       }
>>>       ret = EXIT_SUCCESS;
>>> @@ -2699,8 +2702,9 @@ int main(int argc, char **argv)
>>>           free_clients(clients);
>>>       free(codename);
>>> -err:
>>> +err_pmu:
>>>       free_engines(engines);
>>> +err_engines:
>>>       free(pmu_device);
>>>   exit:
>>>       igt_devices_free();
