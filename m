Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CF5838F07
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 13:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6889610E770;
	Tue, 23 Jan 2024 12:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347A910E770;
 Tue, 23 Jan 2024 12:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706014767; x=1737550767;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=EkS0OBDDZVB0OcNwtfWw4v+m5eH0rLOB20P2de2U/gc=;
 b=QudYmoJ4avEzNTjsXHY4wlBO6k1BjJ/UR+WuukbmI3Q8nIz9TwAQE2eh
 NK7OSoYtH62aXgp2rfvZ8L/Hus01cd/BgUpjWaaLmEDx5VKSKywQZOstD
 9fwyeVw1fhgOlYOaKHSC/l/0FFYRd/cGorZTSWGlMaJUhH5vfrLEwLEU8
 YqecaseL/Kbjvlx2lIyZ3jR0m4RiglzOQ+/w+dRjgmuhj4cnu4wPZ3j6U
 7TQx0V6VuKD9QGuoPI2J2ZtrtJmV5PvQ+d2WzFuhlk/uG2x3tvOIiWxQ2
 KHiX/B0aU5AgYuXLh0LEFnt544bASnwcej3jZZ3WQFJhT2KxtfTUFOMga Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="14866303"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="14866303"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 04:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="959112167"
X-IronPort-AV: E=Sophos;i="6.05,214,1701158400"; d="scan'208";a="959112167"
Received: from kogorman-mobl.ger.corp.intel.com (HELO [10.252.18.165])
 ([10.252.18.165])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 04:59:25 -0800
Message-ID: <b38a1766-e265-4aee-a164-67884b330873@intel.com>
Date: Tue, 23 Jan 2024 12:59:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] drm/xe: store bind time pat index to xe_bo
Content-Language: en-GB
To: juhapekka.heikkila@gmail.com, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20240118152745.162960-1-juhapekka.heikkila@gmail.com>
 <20240118152745.162960-3-juhapekka.heikkila@gmail.com>
 <6333556b-60ec-4233-be50-1dcb745bb89d@intel.com>
 <a8db92fd-71b4-4ba8-b4a0-901ca68a4b64@gmail.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <a8db92fd-71b4-4ba8-b4a0-901ca68a4b64@gmail.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22/01/2024 18:26, Juha-Pekka Heikkila wrote:
> Hi Matthew, thanks for looking into these. Below few thoughts.
> 
> On 19.1.2024 17.45, Matthew Auld wrote:
>> On 18/01/2024 15:27, Juha-Pekka Heikkila wrote:
>>> Store pat index from xe_vma to xe_bo
>>>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>   drivers/gpu/drm/xe/xe_pt.c | 4 ++++
>>>   1 file changed, 4 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/xe/xe_pt.c b/drivers/gpu/drm/xe/xe_pt.c
>>> index de1030a47588..4b76db698878 100644
>>> --- a/drivers/gpu/drm/xe/xe_pt.c
>>> +++ b/drivers/gpu/drm/xe/xe_pt.c
>>> @@ -1252,6 +1252,10 @@ __xe_pt_bind_vma(struct xe_tile *tile, struct 
>>> xe_vma *vma, struct xe_exec_queue
>>>           return ERR_PTR(-ENOMEM);
>>>       }
>>> +    if (xe_vma_bo(vma)) {
>>> +        xe_vma_bo(vma)->pat_index = vma->pat_index;
>>
>> Multiple mappings will trash this I think. Is that OK for your 
>> usecase? It can be useful to map the same resource as compressed and 
>> uncompressed to facilitate in-place decompression/compression.
> 
> On i915 I think we did map framebuffers only once and did stay with it 
> until fb was destroyed. XE_BO_SCANOUT_BIT is for buffers that are meant 
> to be framebuffers? I could make it so pat index given first is not 
> allowed to change for buffers with this bit set?

Yeah, sealing the pat_index for such objects might be the simplest option.

> 
>>
>> Also would be good to be clear about what happens if the KMD doesn't 
>> do anything to prevent compression with non-tile4? Is it just a bit of 
>> display corruption or something much worse that we need to prevent? Is 
>> this just a best effort check to help userspace? Otherwise it is hard 
>> to evaluate how solid we need to be here in our checking to prevent 
>> this scenario. For example how is binding vs display races handled? 
>> What happens if the bind appears after the display check?
> 
> For what happen with incorrect buffers going for display I've seen they 
> are corrupted on screen but my testing is very minimal. On bspec 67158 
> it just said linear and tile X formats are not supported with 
> decompression on display, so it is broken config. Couldn't say generally 
> how robust display hw is for broken configs. I remember Ville had found 
> with TGL broken configs caused unrecoverable issues which followed ccs 
> getting blocked on some steppings because it was only way to block 
> broken config Ville found. I'll add Ville here on cc if he has views on 
> this what's needed here for Xe2.
> 
> /Juha-Pekka
> 
>>
>>> +    }
>>> +
>>>       fence = xe_migrate_update_pgtables(tile->migrate,
>>>                          vm, xe_vma_bo(vma), q,
>>>                          entries, num_entries,
> 
