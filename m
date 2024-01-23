Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E866A838A18
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 10:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99F4B10E162;
	Tue, 23 Jan 2024 09:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E05E10E162;
 Tue, 23 Jan 2024 09:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706001440; x=1737537440;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3RQrHW6GMTNH2GTdTqsV49Jo6+AJw+gk6XxNxQYBYrw=;
 b=FsjeNnjfG4OpqD7skZ0e+h0ettMFvNAPTrIcoNg2LSR57xpUu8H55VJ5
 021/F0kjB7MGwfAui3BTUibL/d6jqZUybIaEyIaohiQBvvPO+me0SX6bw
 o4BYOe3lMk/wiMIlqescx+ewVet6cRrhA/Tvg4aGaZg2kRin7JW4S/Sne
 nDH/SR1Me6Px55kgo1+kUf+CKYy2B9WpzNSgvlhDQGqaXqgp4vZyLplqs
 lfqR2tQ3D6g021J3/Glaf2uOG1T2DVQKL2u6Py1DiH4vdkbSfiSBRCw43
 jsd+JI32jZHJH9uOwqF/k9HiIIVWF/I9UF5SZJOsLM7yULWEYdgKPICcs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="8831774"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; 
   d="scan'208";a="8831774"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:17:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="20270900"
Received: from kogorman-mobl.ger.corp.intel.com (HELO [10.252.18.165])
 ([10.252.18.165])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 01:17:15 -0800
Message-ID: <93a40023-c81e-44a7-978d-26491e790c78@intel.com>
Date: Tue, 23 Jan 2024 09:17:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
 <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com> <Za9zURjbgjDUdlmJ@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <Za9zURjbgjDUdlmJ@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23/01/2024 08:05, Ville Syrjälä wrote:
> On Fri, Jan 19, 2024 at 03:45:22PM +0000, Matthew Auld wrote:
>> On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
>>> Store pat index from xe_vma to xe_bo
>>>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>    drivers/gpu/drm/xe/xe_pt.c | 4 ++++
>>>    1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>>> index de1030a47588..4b76db698878 100644
>>> --- a/drivers/gpu/drm/xe/xe_pt.c
>>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>>> @@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct xe_vma *vma, struct xe_exec_queue
>>>    		return ERR_PTR(-ENOMEM);
>>>    	}
>>>    
>>> +	if (xe_vma_bo(vma)) {
>>> +		xe_vma_bo(vma)->pat_index = vma->pat_index;
>>
>> Multiple mappings will trash this I think. Is that OK for your usecase?
>> It can be useful to map the same resource as compressed and uncompressed
>> to facilitate in-place decompression/compression.
> 
> I thought the pat_index is set for the entire bo? The
> cache_level->pat_index stuff doesn't really work otherwise
> I don't think (assuming it works at all).

AFAIK it is mostly like that in i915 because it doesn't have a vm_bind 
interface. With Xe we have vm_bind. The pat_index is a property of the 
ppGTT binding and therefore vma. There seem to be legitimate reasons to 
map the same resource with different pat_index, like with 
compressed/uncompressed. See BSpec: 58797 "double map (alias) surfaces".

> 
> So dunno why this is doing anything using vmas. I think
> what we probably need is to check/set the bo pat_index
> at fb create time, and lock it into place (if there's
> some mechanism by which a random userspace client could
> change it after the fact, and thus screw up everything).

Maybe we can seal the pat_index on first bind or something if the BO 
underneath is marked with XE_BO_SCANOUT?

> 
>>
>> Also would be good to be clear about what happens if the KMD doesn't do
>> anything to prevent compression with non-tile4? Is it just a bit of
>> display corruption or something much worse that we need to prevent? Is
>> this just a best effort check to help userspace? Otherwise it is hard to
>> evaluate how solid we need to be here in our checking to prevent this
>> scenario. For example how is binding vs display races handled? What
>> happens if the bind appears after the display check?
>>
>>> +	}
>>> +
>>>    	fence = xe_migrate_update_pgtables(tile->migrate,
>>>    					   vm, xe_vma_bo(vma), q,
>>>    					   entries, num_entries,
> 
