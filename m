Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AD75A157E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 17:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E6BB10E6CB;
	Thu, 25 Aug 2022 15:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7254A10E6CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 15:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661440866; x=1692976866;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=QkvqvZiKMneSskD6DEkycbiY2HDqCdzsvraJAnbI7WI=;
 b=IwGLDW4nDVE/P3oClou811+wUReufs3u+o5x7iXyDoYz9uxw+mWlvoFn
 +rK8WCkAuXQa7QDEVLilZm2ctIR7IWWeQOtB7XZ8gr4g/HAMFU7qAvjb3
 dYQmiVFE2UqhK0CbLMXGaosjFRpfMqx5w+BNJ3YnxQXfJQFN0NjBaoMdN
 sek7uajDS/p+JfbZ0db68Uwf1oGRH8AR9GDRv5To3schr2l6B9WQgaH3E
 EsJrRe2H1f3g9vU9V6ncX+jvV2SeDQ03wCKmfddJ+eEoufNn5LmT2hjsW
 IBLTeAt0xycGAArvrAbRv5etGXlzAnBYc4DpvczHSKaFR7J4+BrvtxJoz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="277281660"
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="277281660"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:21:05 -0700
X-IronPort-AV: E=Sophos;i="5.93,263,1654585200"; d="scan'208";a="639637014"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.14.40])
 ([10.213.14.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 08:21:04 -0700
Message-ID: <3836f188-fd3d-c452-6a14-3e20ae4a655c@intel.com>
Date: Thu, 25 Aug 2022 17:21:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.13.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220825145211.22941-1-andrzej.hajda@intel.com>
 <85085f8d-8ade-0c4e-4d9e-5f4630fbc3f8@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <85085f8d-8ade-0c4e-4d9e-5f4630fbc3f8@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: do not try
 misaligned_pin test on unmappable memory
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 25.08.2022 17:13, Matthew Auld wrote:
> On 25/08/2022 15:52, Andrzej Hajda wrote:
>> In case of Small BAR configurations stolen local memory can be 
>> unmappable.
>> Trying to test it causes -ENOSPC error from 
>> _i915_gem_object_stolen_init.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6565
>> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Ah right. That failure makes perfect sense now :)
>
>> ---
>>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
>> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> index fb5e6196347925..667c4c004bdbcf 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> @@ -1164,6 +1164,10 @@ static int misaligned_pin(struct 
>> i915_address_space *vm,
>>           if (hole_size < 3 * min_alignment)
>>               continue;
>>   +        /* avoid -ENOSPC on unmappable memory */
>> +        if (!mr->io_size)
>> +            continue;
>
> We could also pass I915_BO_ALLOC_GPU_ONLY when calling 
> i915_gem_object_create_region(), since nothing actually needs to CPU 
> access that memory, and then we still get coverage here for stolen? 
> What do you think?

I agree, I've just tested it successfully.

Regards
Andrzej


>
>> +
>>           /* we can't test < 4k alignment due to flags being encoded 
>> in lower bits */
>>           if (min_alignment != I915_GTT_PAGE_SIZE_4K) {
>>               err = misaligned_case(vm, mr, addr + (min_alignment / 
>> 2), size, flags);

