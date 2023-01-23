Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A12EC67791B
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 11:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF4F10E1E4;
	Mon, 23 Jan 2023 10:24:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C516B10E1C7;
 Mon, 23 Jan 2023 10:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674469459; x=1706005459;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=INyLX+xNNroZU0it3wu5ecYnBMXDw3tBjXi3TBCfHgU=;
 b=Nl/2ux7j6DUXK/n7Q4BapwjVk1hj/IjYKMYZhgd8aGCbg7ML3UoGF4yO
 Kj91vDUpMmSzmIuyIJ9QZdupYBhaI9WhubfaSeknz2YKpWpjWWF8HZzei
 8qHs8q60GnB1BPJF5rvuTE+fOGNsKDeYfgyM2T4zAFaOYG3C4qUOgjYoA
 XoY3tKbf+a4srEvz+qVWM8zmgD2+nHePnt3v6Fl4PyjmgvxAgSI1NafDh
 ttBoD9SWZbOb43at5s4liPQcc3AfFpF9extNX7go9G+HU3jyir5fttz74
 VlZyJbeQ8+m0aravz/Dof+x5IPfA+DaIPqm74+vjKjWdt9f+akj3hTTTj Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="326045596"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="326045596"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 02:24:19 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="611497277"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="611497277"
Received: from bridge4x-mobl.ger.corp.intel.com (HELO [10.213.214.72])
 ([10.213.214.72])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 02:24:17 -0800
Message-ID: <3d3c7982-5ad3-d5a7-0574-ec1b9848dd2a@linux.intel.com>
Date: Mon, 23 Jan 2023 10:24:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
References: <20230119155428.3260937-1-tvrtko.ursulin@linux.intel.com>
 <46f7db49-eb5c-515f-b450-75cac53d770e@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <46f7db49-eb5c-515f-b450-75cac53d770e@linux.intel.com>
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


On 20/01/2023 14:29, Das, Nirmoy wrote:
> Hi Tvrtko,
> 
> On 1/19/2023 4:54 PM, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Avoid trying to dereference null engines on exit when there are either
>> none which are supported, or kernel does not have i915 PMU support.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   tools/intel_gpu_top.c | 10 +++++++---
>>   1 file changed, 7 insertions(+), 3 deletions(-)
>>
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index 7aa233570463..517dc2995d26 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -448,6 +448,9 @@ static void free_engines(struct engines *engines)
>>       };
>>       unsigned int i;
>> +    if (!engines)
>> +        return;
>> +
> 
> 
> This check should happen before the  struct pmu_counter free_list 
> generation.

I could, but it doesn't have to, not sure what reasons for should you 
have in mind?

Regards,

Tvrtko

> 
> Regards,
> 
> Nirmoy
> 
>>       for (pmu = &free_list[0]; *pmu; pmu++) {
>>           if ((*pmu)->present)
>>               free((char *)(*pmu)->units);
>> @@ -2568,7 +2571,7 @@ int main(int argc, char **argv)
>>               "Failed to detect engines! (%s)\n(Kernel 4.16 or newer 
>> is required for i915 PMU support.)\n",
>>               strerror(errno));
>>           ret = EXIT_FAILURE;
>> -        goto err;
>> +        goto err_engines;
>>       }
>>       ret = pmu_init(engines);
>> @@ -2585,7 +2588,7 @@ int main(int argc, char **argv)
>>   "More information can be found at 'Perf events and tool security' 
>> document:\n"
>>   
>> "https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html\n");
>>           ret = EXIT_FAILURE;
>> -        goto err;
>> +        goto err_pmu;
>>       }
>>       ret = EXIT_SUCCESS;
>> @@ -2699,8 +2702,9 @@ int main(int argc, char **argv)
>>           free_clients(clients);
>>       free(codename);
>> -err:
>> +err_pmu:
>>       free_engines(engines);
>> +err_engines:
>>       free(pmu_device);
>>   exit:
>>       igt_devices_free();
