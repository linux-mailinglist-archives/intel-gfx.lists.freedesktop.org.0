Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4457D3400
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 13:36:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFD6710E088;
	Mon, 23 Oct 2023 11:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798A410E09B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 11:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698060958; x=1729596958;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2WIl3g7xyilw5h+NHw3n8kCPssf/h/mVVHoTjJSTdkE=;
 b=awY2/bcbOwzPNh8rJLMuwRbPgkmusfcX+voLnBpQpuuJf13cwwdZaNUj
 Aww1tJEa3oCz54gajHQ95ryBezTmjsu6BljjGizqPMf9L6fKCDunmZeyT
 EG77YV4YuKCOeAABkSrp5Trp2rs/sPJIVlDS1DObd9YpTCZ2uEoLQsllM
 fJBn2PSsJB1gwOjOhEzLzC6hCtFJV50hkORNsXfo1XFakUqqoJUgFREDc
 6f3grtqHRURH7gmDOpKceO3f3c736w74lewMm9MP17Vm3+kfncjUDSi0r
 1QQ0Pk9vmw7EPe0d+4d6fv5uEgfQij5c9sXR4jl05AePcxdF8IhYrkivK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="8375675"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="8375675"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 04:35:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="758120698"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="758120698"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.16.23])
 ([10.213.16.23])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 04:35:25 -0700
Message-ID: <03fdcc3a-d649-4202-990f-df9cf05e5ae4@intel.com>
Date: Mon, 23 Oct 2023 13:35:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Nirmoy Das <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <4d4705bb-573d-3c95-3c70-7313c59effe1@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <4d4705bb-573d-3c95-3c70-7313c59effe1@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 0/4] Apply Wa_16018031267 / Wa_16018063123
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
Cc: Chris Wilson <chris.p.wilson@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 23.10.2023 10:38, Nirmoy Das wrote:
> Hi Andrzej
>
> On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
>> Hi all,
>>
>> This the series from Jonathan:
>> [PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123
>>
>> taken over by me.
>>
>> Changes in this version are described in the patches, in short:
>> v2:
>> - use real memory as WABB destination,
>
> Do we still need the NULL PTE patch now ?

In fact no, since we are using real address.
On the other side it is still valuable, IMO, but probably better is to 
drop it from this patchset.


Regards
Andrzej

>
>
> Regards,
>
> Nirmoy
>
>> - address CI compains - do not decrease vm.total,
>> - minor reordering.
>> v3:
>> - fixed typos,
>> - removed spare defs,
>> - added tags
>>
>> Regards
>> Andrzej
>>
>> Andrzej Hajda (1):
>>    drm/i915: Reserve some kernel space per vm
>>
>> Jonathan Cavitt (3):
>>    drm/i915: Enable NULL PTE support for vm scratch
>>    drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>>    drm/i915: Set copy engine arbitration for Wa_16018031267 /
>>      Wa_16018063123
>>
>> .../drm/i915/gem/selftests/i915_gem_context.c |   6 ++
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  41 +++++++
>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   6 ++
>>   drivers/gpu/drm/i915/gt/intel_gt.h            |   4 +
>>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
>>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
>>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 100 +++++++++++++++++-
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |   5 +
>>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  65 ++++++++----
>>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>>   12 files changed, 215 insertions(+), 21 deletions(-)
>>
>> ---
>> Andrzej Hajda (1):
>>        drm/i915: Reserve some kernel space per vm
>>
>> Jonathan Cavitt (3):
>>        drm/i915: Enable NULL PTE support for vm scratch
>>        drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>>        drm/i915: Set copy engine arbitration for Wa_16018031267 / 
>> Wa_16018063123
>>
>>   .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |   6 ++
>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c               |  41 +++++++++
>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h        |   6 ++
>>   drivers/gpu/drm/i915/gt/intel_gt.h                 |   4 +
>>   drivers/gpu/drm/i915/gt/intel_gtt.h                |   2 +
>>   drivers/gpu/drm/i915/gt/intel_lrc.c                | 100 
>> ++++++++++++++++++++-
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c        |   5 ++
>>   drivers/gpu/drm/i915/gt/selftest_lrc.c             |  65 
>> ++++++++++----
>>   drivers/gpu/drm/i915/i915_drv.h                    |   2 +
>>   drivers/gpu/drm/i915/i915_pci.c                    |   2 +
>>   drivers/gpu/drm/i915/intel_device_info.h           |   1 +
>>   11 files changed, 213 insertions(+), 21 deletions(-)
>> ---
>> base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
>> change-id: 20231020-wabb-bbe9324a69a8
>>
>> Best regards,

