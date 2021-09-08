Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0A4403A76
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 15:18:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AE206E1A7;
	Wed,  8 Sep 2021 13:18:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E87E6E1A7;
 Wed,  8 Sep 2021 13:18:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="200682792"
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="200682792"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 06:18:06 -0700
X-IronPort-AV: E=Sophos;i="5.85,278,1624345200"; d="scan'208";a="538732354"
Received: from cofaolai-mobl1.ger.corp.intel.com (HELO [10.213.198.69])
 ([10.213.198.69])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 06:18:05 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com
References: <20210906165515.450541-1-thomas.hellstrom@linux.intel.com>
 <20210906165515.450541-6-thomas.hellstrom@linux.intel.com>
 <160c96ac-3cf2-5542-9ad0-bbc0b5ebec55@intel.com>
 <da61dd83293eb1650ca3da8a650db74a856142ad.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <08f8b9fd-36b1-2565-b2f0-17d57f1640ff@intel.com>
Date: Wed, 8 Sep 2021 14:18:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <da61dd83293eb1650ca3da8a650db74a856142ad.camel@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915: Don't back up pinned LMEM
 context images and rings during suspend
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

On 08/09/2021 13:26, Thomas Hellström wrote:
> On Wed, 2021-09-08 at 12:07 +0100, Matthew Auld wrote:
>> On 06/09/2021 17:55, Thomas Hellström wrote:
>>> Pinned context images are now reset during resume. Don't back them
>>> up,
>>> and assuming that rings can be assumed empty at suspend, don't back
>>> them
>>> up either.
>>>
>>> Introduce a new object flag, I915_BO_ALLOC_PM_VOLATILE meaning that
>>> an
>>> object is allowed to lose its content on suspend.
>>>
>>> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> ---
>>>    .../gpu/drm/i915/gem/i915_gem_object_types.h    | 17 ++++++++++--
>>> -----
>>>    drivers/gpu/drm/i915/gem/i915_gem_ttm_pm.c      |  3 +++
>>>    drivers/gpu/drm/i915/gt/intel_lrc.c             |  3 ++-
>>>    drivers/gpu/drm/i915/gt/intel_ring.c            |  3 ++-
>>>    4 files changed, 17 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> index 734cc8e16481..66123ba46247 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
>>> @@ -288,16 +288,19 @@ struct drm_i915_gem_object {
>>>          I915_SELFTEST_DECLARE(struct list_head st_link);
>>>    
>>>          unsigned long flags;
>>> -#define I915_BO_ALLOC_CONTIGUOUS BIT(0)
>>> -#define I915_BO_ALLOC_VOLATILE   BIT(1)
>>> -#define I915_BO_ALLOC_CPU_CLEAR  BIT(2)
>>> -#define I915_BO_ALLOC_USER       BIT(3)
>>> +#define I915_BO_ALLOC_CONTIGUOUS  BIT(0)
>>> +#define I915_BO_ALLOC_VOLATILE    BIT(1)
>>> +#define I915_BO_ALLOC_CPU_CLEAR   BIT(2)
>>> +#define I915_BO_ALLOC_USER        BIT(3)
>>> +/* Object may lose its contents on suspend / resume */
>>> +#define I915_BO_ALLOC_PM_VOLATILE BIT(4)
> 
>>
>> PM_SKIP_PINNED? Not sure if that is better.
> 
> I think we could update the comment to say "object is allowed to
> lose..", I think we could keep PM_VOLATILE to keep it consistent with
> the ALLOC_VOLATILE flag?

I guess that's the potentially confusing bit. ALLLOC_VOLATILE means the 
pages might be discarded as soon as the pages become unpinned, without 
needing to worry about persisting their contents. With PM_VOLATILE I was 
expecting something similar where unpinned objects can simply be skipped 
or ignored during pm. Anyway, that's just a bikeshed, I think with 
improved comment this should be fine.

> 
> /Thomas
> 
> 
