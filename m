Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D76C894C2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 11:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7050410E5A4;
	Wed, 26 Nov 2025 10:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/hujBU3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9370510E5A4
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764152930; x=1795688930;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=okrhM/Mk1+a6rWlFRoHXACSvjjY289t9ye8W0SSu5CY=;
 b=g/hujBU3RqtT/Isk88lWwUSwpVeHu9y9Q7E8WO3D1wQwYYxsJYX0x+7f
 IKby9Qvkc2PLNeuTlQbz9A08c3Rka8oAVhhhhDpGzsKHlcTBqh/+ej1hd
 ggMGu1mFWTHpQwkta3ROmuDR5Cq8IRJvnTo1HbEVwElKRjsO9uAs7n6E7
 6HBy4tFkyzhWZQZfbZNg0L5XUUOoeflLSyD6RL9O/sH32kz8rQr4TsQLq
 k0OGfSfPrF+fdzXSa/os1FSu/HVOKTe8ffZ1YLhboZQd9eiYKRfNH0xWV
 RFFBx6+v2EJMiuqh9HkMRBUzhYfXEzo+ZiFq+knHS0uiernlY0R36lwvq g==;
X-CSE-ConnectionGUID: s8nz6zLbSoe6uIND8E0HEA==
X-CSE-MsgGUID: q1U4zQ8aSBq9mtaj7z2fLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77294496"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="77294496"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:28:50 -0800
X-CSE-ConnectionGUID: GNxxSIrsSwGG5XbkqMFUwQ==
X-CSE-MsgGUID: KrGGHOUqT1qTbDV9NqujPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197851086"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 02:28:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH RESEND v4] drm/i915/selftests: Keep mock file open
 during unfaultable migrate with fill
In-Reply-To: <DEIJOW3JZAAF.11FJU0X7ITGYL@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <zzwquovbezyqrdrjnh2h64css43nhi7dcqyeavg3fnbz2joymk@wtihbwh4zito>
 <DEIJOW3JZAAF.11FJU0X7ITGYL@intel.com>
Date: Wed, 26 Nov 2025 12:28:43 +0200
Message-ID: <4e819a6095164a19891e10b732dd89ab2445aabb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 26 Nov 2025, Sebastian Brzezinka <sebastian.brzezinka@intel.com> wrote:
> Hi Krzysztof
>
> On Wed Nov 26, 2025 at 7:49 AM UTC, Krzysztof Karas wrote:
>> igt_mmap_migrate() tests migration with various parameters.
>> In one of the cases, where FILL and UNFAULTABLE flags are set,
>> during first stages of this test, a mock file is opened in
>> igt_mmap_offset(), which results in allocating GEM objects for
>> page table structures and scratch in GPU mappable memory.
>>
>> Then, also in igt_mmap_offset(), the file is closed (fput) and
>> the cleanup of these objects is scheduled on a delayed worqueue,
>> which is designed to execute after unspecified amount of time.
>>
>> Next, the test calls igt_fill_mappable() to fill mappable GPU
>> memory. At this point, three scenarios are possible
>> (N = max size of GPU memory for this test in MiB):
>>  1) the objects allocated for the mock file get cleaned up after
>>     crucial part of the test is over, so the memory is full with
>>     the 1 MiB they occupy and N - 1 MiB added by
>>     igt_fill_mappable(), so the migration fails properly;
>>  2) the object cleanup fires before igt_fill_mappable()
>>     completes, so the whole memory is populated with N MiB from
>>     igt_fill_mappable(), so migration fails as well;
>>  3) the object cleanup is performed right after fill is done,
>>     so only N - 1 MiB are in the mappable portion of GPU memory,
>>     allowing the migration to succeed - we'd expect no space
>>     left to perform migration, but an object was able to fit in
>>     the remaining 1 MiB, which caused get_user() to succeed, so
>>     a page fault did not fail.
>>
>> The test incorrectly assumes that the GPU mappable memory state
>> is unchanging during the test. Amend this by keeping the mock
>> file open until migration and page fault checking is complete.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
>> ---
>> Resending, because the patch did not get any reviews.
>>
>> There are 7 GEM objects in total allocated as a result of mock
>> file creation:
>> a) 1 object from __i915_gem_object_create_lmem_with_ps()
>>  -> i915_gem_object_create_region(),
>> b) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pt()
>>  -> alloc_pt_lmem(),
>> c) 3 objects from i915_vm_alloc_pt_stash() -> alloc_pd()
>>  -> alloc_pt_lmem().
>>
>> I inspected the behavior of this test on ATS-M and DG2
>> platforms. The latter always freed the GEM objects originating
>> from mock file creation at the end of the test. ATS-M, on the
>> other hand, performed the release much sooner - around the time
>> a call to igt_fill_mappable() would be returning, so there was
>> not much leeway in the timing. I confirmed this by delaying the
>> fill operation by one second and that did away with the issue.
>> On the other end, adding a delay to __i915_gem_free_objects()
>> produced 100% reproduction rate of the issue. However, I felt
>> that juggling delays would not have resolved the problem, only
>> decreased the probability of this race, so I decided to increase
>> control over the contents of mappable memory instead.
>>
>> Chris Wilson had a suspicion that this patch papers over leaking
>> vm_area struct, which was addressed in
>> f768ebbba9110846c9f986a96109d70154d60b5d, but that did not
>> resolve the original issue.
>>
>> v2:
>> * change ownership of the file used in igt_mmap_offset*
>>   functions to the caller (Krzysztof, Sebastian);
>> * rename igt_mmap_offset_get_file() to
>>   igt_mmap_offset_with_file();
>>
>> v3:
>> * remove double fput() call (Krzysztof);
>>
>> v4:
>> * extend the comment above mock_drm_getfile();
>> * reword commit message to contain information about GEM
>>   objects;
>> * rebase;
>>
>>  .../drm/i915/gem/selftests/i915_gem_mman.c    | 23 +++++++---
>>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 46 +++++++++++++------
>>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 ++++
>>  3 files changed, 57 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> index 0d250d57496a..c561df41ba49 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> @@ -1159,6 +1159,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>>  	struct drm_i915_gem_object *obj;
>>  	struct i915_request *rq = NULL;
>>  	struct vm_area_struct *area;
>> +	struct file *mock_file;
>>  	unsigned long addr;
>>  	LIST_HEAD(objects);
>>  	u64 offset;
>> @@ -1178,13 +1179,22 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>>  		goto out_put;
>>  
>>  	/*
>> -	 * This will eventually create a GEM context, due to opening dummy drm
>> -	 * file, which needs a tiny amount of mappable device memory for the top
>> -	 * level paging structures(and perhaps scratch), so make sure we
>> -	 * allocate early, to avoid tears.
>> +	 * Pretend to open("/dev/dri/card0"), which will eventually create a GEM
>> +	 * context along with multiple GEM objects (for paging structures and
>> +	 * scratch) that are placed in mappable portion of GPU memory.
>> +	 * Calling fput() on the file places objects' cleanup routines in delayed
>> +	 * worqueues, which execute after unspecified amount of time.
>> +	 * Keep the file open until migration and page fault checks are done to
>> +	 * make sure object cleanup is not executed after igt_fill_mappable()
>> +	 * finishes and before migration is attempted - that would leave a gap
>> +	 * large enough for the migration to succeed, when we'd expect it to fail.
>>  	 */
>> -	addr = igt_mmap_offset(i915, offset, obj->base.size,
>> -			       PROT_WRITE, MAP_SHARED);
>> +	mock_file = mock_drm_getfile(i915->drm.primary, O_RDWR);
>> +	if (IS_ERR(mock_file))
>> +		return PTR_ERR(mock_file);
>> +
>> +	addr = igt_mmap_offset_with_file(i915, offset, obj->base.size,
>> +					 PROT_WRITE, MAP_SHARED, mock_file);
>>  	if (IS_ERR_VALUE(addr)) {
>>  		err = addr;
>>  		goto out_put;
>> @@ -1295,6 +1305,7 @@ static int __igt_mmap_migrate(struct intel_memory_region **placements,
>>  	vm_munmap(addr, obj->base.size);
>>  
>>  out_put:
>> +	fput(mock_file);
>>  	i915_gem_object_put(obj);
>>  	igt_close_objects(i915, &objects);
>>  	return err;
>> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/i915/selftests/igt_mmap.c
>> index e920a461bd36..6f1b6d5cc2d3 100644
>> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
>> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
>> @@ -9,17 +9,22 @@
>>  #include "i915_drv.h"
>>  #include "igt_mmap.h"
>>  
>> -unsigned long igt_mmap_offset(struct drm_i915_private *i915,
>> -			      u64 offset,
>> -			      unsigned long size,
>> -			      unsigned long prot,
>> -			      unsigned long flags)
>> +unsigned long igt_mmap_offset_with_file(struct drm_i915_private *i915,
>> +					u64 offset,
>> +					unsigned long size,
>> +					unsigned long prot,
>> +					unsigned long flags,
>> +					struct file *file)
>>  {
>>  	struct drm_vma_offset_node *node;
>> -	struct file *file;
>>  	unsigned long addr;
>>  	int err;
>>  
>> +	if (!file) {
> Minor suggestion, consider using WARN_ON() here for better debugging.

Please remove the whole check instead. It can't happen. Please don't set
the example of checking and error handling things that can't happen.

BR,
Jani.

>
> This patch seems okay from my perspective.
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

-- 
Jani Nikula, Intel
