Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBD3747557
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jul 2023 17:31:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E403510E12A;
	Tue,  4 Jul 2023 15:31:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AEC010E12A
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jul 2023 15:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688484671; x=1720020671;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=S4P9KIgdZ04Q8tN7KdokQNTPag2uOt09xkB7fuLnxrs=;
 b=f4VcbldUSd4wOLfqKV2nuNCLzmI85mIJXWxawMC4SA+z3MxjiuidKmfR
 D7JgC97++ANnMDd+a8hqDVoUqVs0IdlL9i+IKL4/bdbMgPjlZNgf23tWM
 hJBT1SVqTSGxyEpffRxkiW+GQl9EKDk4f8vD0s0Z1uJ+meBTlkp8GQJQ+
 qgEoEK11kiY/adrTEs8PHeN3r/8qbN3OUzqzHj8kYunAD9rZZqGgCi9/s
 T7ocENgp+55dY4spAYPMkz/47B6Ez2PTWPbRgpvxi1YyziAeqjT1OY11E
 A/bTQS23JZkeOoDeh0dBIWYjo8PyxJIPigxUs0NWN5hdioVOUnAVaCWWs A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="449513818"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="449513818"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10760"; a="892898336"
X-IronPort-AV: E=Sophos;i="6.01,181,1684825200"; d="scan'208";a="892898336"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.32.220])
 ([10.249.32.220])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2023 08:31:08 -0700
Message-ID: <c87c16c3-ef15-e2b0-452b-d14c099f3770@linux.intel.com>
Date: Tue, 4 Jul 2023 17:31:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: "Zeng, Oak" <oak.zeng@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: "Hajda, Andrzej" <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Oak,

On 7/4/2023 5:01 PM, Zeng, Oak wrote:
> Hi Nirmoy,
>
> The changes in this series make sense to me. I searched my code base, there are a few other places where stolen memory is allocated:
Thanks for checking all the places.
>
> 1) intel_dpt_create: I don't know what is dpt. Should we also consider this one? Maybe we never read from cpu?
This expects i915_ggtt_has_aperture() which MTL doesn't have.
> 2) create_ring_vma: I think cpu only write ring buffer but never read it. So should be okay.
Same as above.
> 3) vlv_rc6_init
This  seems to be only for IS_VALLEYVIEW().
> 4) there are a few places calling i915_gem_object_create_stolen_for_preallocated. I think this is also stolen memory?

Where is this from, do you mean I915_BO_PREALLOC ?


>
> For integrated gpu like MTL, do we use stolen memory for ggtt? If yes, does CPU only write ggtt/never read?

GTT pages only seems to be written.


Thanks,

Nirmoy

>
> Thanks,
> Oak
>
>> -----Original Message-----
>> From: Das, Nirmoy <nirmoy.das@intel.com>
>> Sent: June 30, 2023 1:02 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Das, Nirmoy <nirmoy.das@intel.com>; Zeng, Oak <oak.zeng@intel.com>; Jani
>> Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
>> <joonas.lahtinen@linux.intel.com>; Andi Shyti <andi.shyti@linux.intel.com>;
>> Hajda, Andrzej <andrzej.hajda@intel.com>
>> Subject: [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
>>
>> Use smem on MTL due to a HW bug in MTL that prevents
>> reading from stolen memory using LMEM BAR.
>>
>> Cc: Oak Zeng <oak.zeng@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 33a61046ba58..9f64d61dd5fc 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned
>> int size)
>>   	obj = i915_gem_object_create_lmem(i915, size,
>>   					  I915_BO_ALLOC_VOLATILE |
>>   					  I915_BO_ALLOC_GPU_ONLY);
>> -	if (IS_ERR(obj))
>> +	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
>>   		obj = i915_gem_object_create_stolen(i915, size);
>>   	if (IS_ERR(obj))
>>   		obj = i915_gem_object_create_internal(i915, size);
>> --
>> 2.39.0
