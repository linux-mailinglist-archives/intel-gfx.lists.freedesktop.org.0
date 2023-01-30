Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB40680B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 12:04:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BDC010E0E8;
	Mon, 30 Jan 2023 11:04:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418FC10E0E8;
 Mon, 30 Jan 2023 11:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675076651; x=1706612651;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=JfhXPcpcWmX7obaF1yYNyQOYzl0Gi8Gg3Ncy/519OQw=;
 b=J9uYm0QWXt/se8XN1rhEkn9wmwhHOEiGA6BJ1NympNmIVCbqzu3uKHfy
 Gh/HarU2Ujc5LJRGPRiGzD58MfwNgZX5Zogw+mr3aQ9bQqSQbnelSmWRA
 BlQ3mQeg9zRCyOcIbyAFtIJPJQnrE/h4UVvc/+HXebURo1inUMHr7xh4P
 MImzxNAqRtDX+1eJVUFr9Um2zvMc/0kkb51xFmrOssl12KEBC4fpGXM70
 XNVEliLN2ItZ7MVJyP+Acd3k4y3MqLnBUfeXjG2m3uPUVtYDYQO0ikraQ
 3KW+NeJXD7fZuklxTJshHcKwObrHMTCC7RhjMiNAvw6nTlGGfHSZxXqO6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="307181874"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="307181874"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 03:04:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="992857287"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="992857287"
Received: from pjoconno-mobl1.ger.corp.intel.com (HELO [10.213.216.153])
 ([10.213.216.153])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 03:04:09 -0800
Message-ID: <aa70698a-040d-aa8b-6a01-9d11ac4759bc@linux.intel.com>
Date: Mon, 30 Jan 2023 11:04:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Petri Latvala <petri.latvala@intel.com>,
 =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
 <20230127161727.oeyjjbt32jn27zgj@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230127161727.oeyjjbt32jn27zgj@kamilkon-desk1>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/01/2023 16:17, Kamil Konieczny wrote:
> Hi Tvrtko,
> 
> On 2023-01-27 at 11:12:41 +0000, Tvrtko Ursulin wrote:
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
> 
> Please send this as separate patch, not in this series.

Yeah I was lazy and wanting to save time so okay.

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
> Put the comment here why it can be problematic to relay on driver name.

Function name being __find_first_*i915*_card is IMO enough so it feels 
any comment to the same effect would be redundant.

Hm if anything igt_device_find_integrated_card should be renamed..

Regards,

Tvrtko

> 
> Regards,
> Kamil
> 
>>   			continue;
>>   
>>   		cmp = strncmp(dev->pci_slot_name, INTEGRATED_I915_GPU_PCI_ID,
>> @@ -1023,6 +1025,7 @@ static void igt_device_free(struct igt_device *dev)
>>   	free(dev->drm_render);
>>   	free(dev->vendor);
>>   	free(dev->device);
>> +	free(dev->driver);
>>   	free(dev->pci_slot_name);
>>   	g_hash_table_destroy(dev->attrs_ht);
>>   	g_hash_table_destroy(dev->props_ht);
>> -- 
>> 2.34.1
>>
