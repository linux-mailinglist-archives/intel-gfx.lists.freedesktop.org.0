Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 505367D3654
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 14:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5B2910E067;
	Mon, 23 Oct 2023 12:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0323C10E1CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 12:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698063658; x=1729599658;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AOQV24s++D4odiG1+OPDAVHgf78meLAi+2Jz1MdxRqI=;
 b=V7C/vMcxBQ+t8BUZN6jTiO5Iibb/Hkb8u2e4m4TbGwsajdBMScAnBaWR
 nOS7eouqomvP7djv+im0bC422ZX3jUoM6Urz2y18+XbYHI0RbSdwRXs6b
 HTjkHFTj6iynHLLPIjv3rf5zieLum7Vv4Gpo6/oZHUaT1JE5+In7ZqHpo
 lLYNAZfsn1OzYxg11cpAJAXTkHXbOV5lSU9MKt+43WF6eSKdk9i7hmt9M
 0hJON/tHaTfd3Z5PkkdfldTRMEHSdKaKDm3pXloNeQR47yFsc77p8K7Qa
 TtkP6/5FO/NEqX8mx8uwUvsneU/aLYN6Ta9I237yfTYX5d0npmdcNcymk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="417961075"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="417961075"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 05:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="787446251"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="787446251"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.40.234])
 ([10.249.40.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 05:20:56 -0700
Message-ID: <e081e966-5207-2a32-b158-009fcb15f07d@linux.intel.com>
Date: Mon, 23 Oct 2023 14:20:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20231023-wabb-v3-0-1a4fbc632440@intel.com>
 <4d4705bb-573d-3c95-3c70-7313c59effe1@linux.intel.com>
 <03fdcc3a-d649-4202-990f-df9cf05e5ae4@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <03fdcc3a-d649-4202-990f-df9cf05e5ae4@intel.com>
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


On 10/23/2023 1:35 PM, Andrzej Hajda wrote:
>
>
> On 23.10.2023 10:38, Nirmoy Das wrote:
>> Hi Andrzej
>>
>> On 10/23/2023 9:41 AM, Andrzej Hajda wrote:
>>> Hi all,
>>>
>>> This the series from Jonathan:
>>> [PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123
>>>
>>> taken over by me.
>>>
>>> Changes in this version are described in the patches, in short:
>>> v2:
>>> - use real memory as WABB destination,
>>
>> Do we still need the NULL PTE patch now ?
>
> In fact no, since we are using real address.
> On the other side it is still valuable, IMO, but probably better is to 
> drop it from this patchset.

Yes, sounds good.


Thanks,

Nirmoy

>
>
> Regards
> Andrzej
>
>>
>>
>> Regards,
>>
>> Nirmoy
>>
>>> - address CI compains - do not decrease vm.total,
>>> - minor reordering.
>>> v3:
>>> - fixed typos,
>>> - removed spare defs,
>>> - added tags
>>>
>>> Regards
>>> Andrzej
>>>
>>> Andrzej Hajda (1):
>>>    drm/i915: Reserve some kernel space per vm
>>>
>>> Jonathan Cavitt (3):
>>>    drm/i915: Enable NULL PTE support for vm scratch
>>>    drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>>>    drm/i915: Set copy engine arbitration for Wa_16018031267 /
>>>      Wa_16018063123
>>>
>>> .../drm/i915/gem/selftests/i915_gem_context.c |   6 ++
>>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  41 +++++++
>>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   6 ++
>>>   drivers/gpu/drm/i915/gt/intel_gt.h            |   4 +
>>>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
>>>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
>>>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 100 
>>> +++++++++++++++++-
>>>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |   5 +
>>>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  65 ++++++++----
>>>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>>>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>>>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>>>   12 files changed, 215 insertions(+), 21 deletions(-)
>>>
>>> ---
>>> Andrzej Hajda (1):
>>>        drm/i915: Reserve some kernel space per vm
>>>
>>> Jonathan Cavitt (3):
>>>        drm/i915: Enable NULL PTE support for vm scratch
>>>        drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>>>        drm/i915: Set copy engine arbitration for Wa_16018031267 / 
>>> Wa_16018063123
>>>
>>>   .../gpu/drm/i915/gem/selftests/i915_gem_context.c  |   6 ++
>>>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c               |  41 +++++++++
>>>   drivers/gpu/drm/i915/gt/intel_engine_regs.h        |   6 ++
>>>   drivers/gpu/drm/i915/gt/intel_gt.h                 |   4 +
>>>   drivers/gpu/drm/i915/gt/intel_gtt.h                |   2 +
>>>   drivers/gpu/drm/i915/gt/intel_lrc.c                | 100 
>>> ++++++++++++++++++++-
>>>   drivers/gpu/drm/i915/gt/intel_workarounds.c        |   5 ++
>>>   drivers/gpu/drm/i915/gt/selftest_lrc.c             |  65 
>>> ++++++++++----
>>>   drivers/gpu/drm/i915/i915_drv.h                    |   2 +
>>>   drivers/gpu/drm/i915/i915_pci.c                    |   2 +
>>>   drivers/gpu/drm/i915/intel_device_info.h           |   1 +
>>>   11 files changed, 213 insertions(+), 21 deletions(-)
>>> ---
>>> base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
>>> change-id: 20231020-wabb-bbe9324a69a8
>>>
>>> Best regards,
>
