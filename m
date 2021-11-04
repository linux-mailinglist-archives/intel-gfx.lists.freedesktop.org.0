Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 857AA445144
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 10:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9416EAAF;
	Thu,  4 Nov 2021 09:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 482E46EAAF
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 09:39:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="255313121"
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="255313121"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 02:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,208,1631602800"; d="scan'208";a="542009875"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP; 04 Nov 2021 02:39:00 -0700
Received: from [10.255.228.97] (nchaplot-mobl1.amr.corp.intel.com
 [10.255.228.97])
 by linux.intel.com (Postfix) with ESMTP id 42E9C580970
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 02:39:00 -0700 (PDT)
Message-ID: <8f436622-dd1f-33e3-c1ee-3b432d75fa45@intel.com>
Date: Thu, 4 Nov 2021 11:38:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20210916184012.2642295-1-John.C.Harrison@Intel.com>
 <20210916184012.2642295-3-John.C.Harrison@Intel.com>
 <877ddr51i5.fsf@jljusten-skl>
 <e2aff696-917c-e57d-f4ef-dafd90b669db@intel.com>
 <871r3w5383.fsf@jljusten-skl>
 <0ece155d-3d35-5fd4-f449-87c2a8de0f55@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <0ece155d-3d35-5fd4-f449-87c2a8de0f55@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/uapi: Add query for
 hwconfig table
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

On 04/11/2021 01:49, John Harrison wrote:
> On 11/3/2021 14:38, Jordan Justen wrote:
>> John Harrison <john.c.harrison@intel.com> writes:
>>
>>> On 11/1/2021 08:39, Jordan Justen wrote:
>>>> <John.C.Harrison@Intel.com> writes:
>>>>
>>>>> From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>>
>>>>> GuC contains a consolidated table with a bunch of information 
>>>>> about the
>>>>> current device.
>>>>>
>>>>> Previously, this information was spread and hardcoded to all the 
>>>>> components
>>>>> including GuC, i915 and various UMDs. The goal here is to consolidate
>>>>> the data into GuC in a way that all interested components can grab 
>>>>> the
>>>>> very latest and synchronized information using a simple query.
>>>>>
>>>>> As per most of the other queries, this one can be called twice.
>>>>> Once with item.length=0 to determine the exact buffer size, then
>>>>> allocate the user memory and call it again for to retrieve the
>>>>> table data. For example:
>>>>>     struct drm_i915_query_item item = {
>>>>>       .query_id = DRM_I915_QUERY_HWCONCFIG_TABLE;
>>>>>     };
>>>>>     query.items_ptr = (int64_t) &item;
>>>>>     query.num_items = 1;
>>>>>
>>>>>     ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));
>>>>>
>>>>>     if (item.length <= 0)
>>>>>       return -ENOENT;
>>>>>
>>>>>     data = malloc(item.length);
>>>>>     item.data_ptr = (int64_t) &data;
>>>>>     ioctl(fd, DRM_IOCTL_I915_QUERY, query, sizeof(query));
>>>>>
>>>>>     // Parse the data as appropriate...
>>>>>
>>>>> The returned array is a simple and flexible KLV (Key/Length/Value)
>>>>> formatted table. For example, it could be just:
>>>>>     enum device_attr {
>>>>>        ATTR_SOME_VALUE = 0,
>>>>>        ATTR_SOME_MASK  = 1,
>>>>>     };
>>>>>
>>>>>     static const u32 hwconfig[] = {
>>>>>         ATTR_SOME_VALUE,
>>>>>         1,             // Value Length in DWords
>>>>>         8,             // Value
>>>>>
>>>>>         ATTR_SOME_MASK,
>>>>>         3,
>>>>>         0x00FFFFFFFF, 0xFFFFFFFF, 0xFF000000,
>>>>>     };
>>>> Seems simple enough, so why doesn't i915 define the format of the
>>>> returned hwconfig blob in i915_drm.h?
>>> Because the definition is nothing to do with i915. This table comes 
>>> from
>>> the hardware spec. It is not defined by the KMD and it is not currently
>>> used by the KMD. So there is no reason for the KMD to be creating
>>> structures for it in the same way that the KMD does not document,
>>> define, struct, etc. every other feature of the hardware that the UMDs
>>> might use.
>> So, i915 wants to wash it's hands completely of the format? There is
>> obviously a difference between hardware features and a blob coming from
>> closed source software. (Which i915 just happens to be passing along.)
>> The hardware is a lot more difficult to change...
> Actually, no. The table is not "coming from closed source software". 
> The table is defined by hardware specs. It is a table of hardware 
> specific values. It is not being invented by the GuC just for fun or 
> as a way to subvert the universe into the realms of closed source 
> software. As per KMD, GuC is merely passing the table through. The 
> table is only supported on newer hardware platforms and all GuC does 
> is provide a mechanism for the KMD to retrieve it because the KMD 
> cannot access it directly. The table contents are defined by hardware 
> architects same as all the other aspects of the hardware.
>
>>
>> It seems like these details should be dropped from the i915 patch commit
>> message since i915 wants nothing to do with it.
> Sure. Can remove comments.
>
>>
>> I would think it'd be preferable for i915 to stand behind the basic blob
>> format as is (even if the keys/values can't be defined), and make a new
>> query item if the closed source software changes the format.
> Close source software is not allowed to change the format because 
> closed source software has no say in defining the format. The format 
> is officially defined as being fixed in the spec. New key values can 
> be added to the key enumeration but existing values cannot be 
> deprecated and re-purposed. The table must be stable across all OSs 
> and all platforms. No software can arbitrarily decide to change it.
>
>>
>> Of course, it'd be even better if i915 could define some keys/values as
>> well. (Or if a spec could be released to help document / tie down the
>> format.)
> See the corresponding IGT test that details all the currently defined 
> keys.
>
>
>>
>>>> struct drm_i915_hwconfig {
>>>>     uint32_t key;
>>>>     uint32_t length;
>>>>     uint32_t values[];
>>>> };
>>>>
>>>> It sounds like the kernel depends on the closed source guc being 
>>>> loaded
>>>> to return this information. Is that right? Will i915 also become
>>>> dependent on some of this data such that it won't be able to 
>>>> initialize
>>>> without the firmware being loaded?
>>> At the moment, the KMD does not use the table at all. We merely provide
>>> a mechanism for the UMDs to retrieve it from the hardware.
>>>
>>> In terms of future direction, that is something you need to take up 
>>> with
>>> the hardware architects.
>>>
>> Why do you keep saying hardware, when only software is involved?
> See above - because the table is defined by hardware. No software, 
> closed or open, has any say in the specification of the table.


The values in the table might be defined by hardware, but the table 
itself definitely isn't.

Like Jordan tried to explain, because this is a software interface, it 
changes more often than HW.

Now testing doesn't just involve the number of different HW, it's the 
number of different HW times the number of different GuC firmwares.


As a UMD using this table, what guarantees do I get regarding the values 
I can find in the table?

Looking at the IGT test, it seems an empty table is a perfectly valid 
blob to get from GuC.

For instance, can I get a INTEL_HWCONFIG_TOTAL_VS_THREADS value and all 
the other threads count being missing from the table?

If any of the values I need to use is not there, what should I do? Just 
assert and refuse to run? Carry some default values to try keep going?

At least with the device info file we have now in UMD, we can fix any 
issue related to the in UMD without having to update the KMD/GuC.

This table looks like it effectively ties the UMDs to a particular GuC 
version.


There are also products for which the HW spec just doesn't provide 
values that are workable :

https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/3173

https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8550

https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/8731


-Lionel


>
> John.
>
>
>>
>>>>> The attribute ids are defined in a hardware spec.
>>>> Which spec?
>>> Unfortunately, it is not one that is currently public. We are pushing
>>> the relevant people to get it included in the public bspec / HRM. It is
>>> a slow process :(.
>>>
>> Right. I take it no progress has been made in the 1.5 months since you
>> posted this, so it'll probably finally be documented 6~12 months after
>> hardware is available? :)
>>
>> -Jordan
>

