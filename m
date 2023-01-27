Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6963E67E438
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 12:53:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F22810E030;
	Fri, 27 Jan 2023 11:53:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEAA410E030;
 Fri, 27 Jan 2023 11:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674820422; x=1706356422;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=oG4GJTC9+0H1VwniWam6g6buKV6rbrF73EkuakMX48o=;
 b=bUUAmk5zC+zJxU1t6zXaCpcywUOxPNNH8WND8FYBRA0ube/WwHespfP+
 UmhWILNZAxeswiTIoNGHqel8tk1+FDq8fZdn+c3jXjeJeSdrQycRLAVhg
 Z9J86oKsZGn7wxrNFt4fZL1S4CtRQRRQ0xlOw0zkuidjkDI824s4C8qWr
 GJdqO9Q3ldKpXL1gKQ0KFSoHKAIJXN61VcOBOUYxp31MUD8YgUMjstgBn
 QWPVI95Z0nkyHSWVPa0J6OzECnu9RLR4Z3BoDiuh8eAX8FHpzbctW5Lne
 OSfKS0EMRn/dgW0VXg2mUbqfrzn31J56FTo9wDgw11OcJWuGfNJZs3pqj A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="391621259"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="391621259"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:53:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="837085141"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="837085141"
Received: from jgeary-mobl1.ger.corp.intel.com (HELO [10.213.233.162])
 ([10.213.233.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 03:53:40 -0800
Message-ID: <c66a95c2-374b-e6d6-b828-8c9147f98a0b@linux.intel.com>
Date: Fri, 27 Jan 2023 11:53:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Petri Latvala <petri.latvala@intel.com>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
 <Y9O3+wLrQNr/pyNf@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <Y9O3+wLrQNr/pyNf@platvala-desk.ger.corp.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 6/6] lib/igt_device_scan:
 Improve Intel discrete GPU selection
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/01/2023 11:39, Petri Latvala wrote:
> On Fri, Jan 27, 2023 at 11:12:41AM +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Now that DRM subsystem can contain PCI cards with the vendor set to Intel
>> but they are not Intel GPUs, we need a better selection logic than looking
>> at the vendor. Use the driver name instead.
>>
>> Caveat that the driver key was on a blacklist so far, and although I can't
>> imagine it can be slow to probe, this is something to double check.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
>> ---
>>   lib/igt_device_scan.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
>> index ed128d24dd10..8b767eed202d 100644
>> --- a/lib/igt_device_scan.c
>> +++ b/lib/igt_device_scan.c
>> @@ -237,6 +237,7 @@ struct igt_device {
>>   	char *vendor;
>>   	char *device;
>>   	char *pci_slot_name;
>> +	char *driver;
>>   	int gpu_index; /* For more than one GPU with same vendor and device. */
>>   
>>   	char *codename; /* For grouping by codename */
>> @@ -440,7 +441,6 @@ static bool is_on_blacklist(const char *what)
>>   				      "resource3", "resource4", "resource5",
>>   				      "resource0_wc", "resource1_wc", "resource2_wc",
>>   				      "resource3_wc", "resource4_wc", "resource5_wc",
>> -				      "driver",
>>   				      "uevent", NULL};
>>   	const char *key;
>>   	int i = 0;
>> @@ -662,6 +662,8 @@ static struct igt_device *igt_device_new_from_udev(struct udev_device *dev)
>>   		get_pci_vendor_device(idev, &vendor, &device);
>>   		idev->codename = __pci_codename(vendor, device);
>>   		idev->dev_type = __pci_devtype(vendor, device, idev->pci_slot_name);
>> +		idev->driver = strdup_nullsafe(get_attr(idev, "driver"));
>> +		igt_assert(idev->driver);
>>   	}
>>   
>>   	return idev;
>> @@ -776,7 +778,7 @@ static bool __find_first_i915_card(struct igt_device_card *card, bool discrete)
>>   
>>   	igt_list_for_each_entry(dev, &igt_devs.all, link) {
>>   
>> -		if (!is_pci_subsystem(dev) || !is_vendor_matched(dev, "intel"))
>> +		if (!is_pci_subsystem(dev) || strcmp(dev->driver, "i915"))
> 
> Is this the time to prepare for that other driver as well?

Ha, didn't think of that TBH, but AFAICT this patch will work for that 
case too, no?

Regards,

Tvrtko
