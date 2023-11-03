Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE2A7E01B7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 12:06:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 804D810E09E;
	Fri,  3 Nov 2023 11:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AB2C10E09E
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 11:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699009602; x=1730545602;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=9JLmuNwCiu8gTw5/3ixubSDLU45KLv7g4D0zDzj8lDE=;
 b=FjqLGOHdaSDtkeVfh4DrsZYjRcJdwuPs2SLWGyKq8rYJRLzlDasliHfp
 p3mY15CLU1hkpYx0HHGhtSQ/3r4SVym3tRL6zGt7hBYC5pFmp7TUKo/Ny
 2tHm7EmWE+qUQYEIuelFBTygIFqK/X+Zy4HFbCajJhPlYXPwE+BuUVdAO
 K9pVvW7plY8gVh6v0EyT7rfeUlm8dJ4WW+yywulGFHqbiHRSwvjbsJFYN
 3QnH4xTmripa0uLWte8dv+q9Gmgdb3ADlUU6QUCO987ctE2jM1qMHM5Ue
 lNffzTbQGztxXDFdyA5E8s+V4iux9HGcnk0Q2rPzwtV8bOk+sWrvepx9V A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="369133047"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="369133047"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:06:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="885198202"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="885198202"
Received: from sdobbela-mobl.ger.corp.intel.com (HELO [10.213.223.51])
 ([10.213.223.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 04:06:40 -0700
Message-ID: <4b259843-c3e2-4fd0-9160-14f1d67ed27d@linux.intel.com>
Date: Fri, 3 Nov 2023 11:06:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1698939671.git.jani.nikula@intel.com>
 <9941f1d6-8466-4c69-8b06-34177a658299@linux.intel.com>
 <87wmv014rc.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87wmv014rc.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915/pmu: hide struct i915_pmu
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


On 02/11/2023 16:47, Jani Nikula wrote:
> On Thu, 02 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 02/11/2023 15:42, Jani Nikula wrote:
>>> The implementation details of pmu should be implementation details
>>> hidden inside i915_pmu.c. Make it so.
>>
>> Don't tell me i915->pmu bothers xe somehow?
> 
> It doesn't bother xe, it bothers me...
> 
>> I am not a fan of the series
>> on a glance. Replacing an increment with a function call for instance.
> 
> I think you glanced at the wart of this series. ;)
> 
> It just bugs me that we expose a plethora of data that should be
> internal to pmu, basically just for that one increment.
> 
> And we pull in a bunch of headers to define struct i915_pmu, and then we
> implicitly depend on those headers in a ton of places through incredible
> chains of includes.
> 
> And we rebuild everything and a half when those headers change. Or when
> the pmu implementation details change.

On the other hand i915_pmu.h is a small header file, which does not 
include _any_ other internal i915 headers (only uapi) and is always 
present (if you ignore gens <= 2) which does not driver the allocate on 
demand approach. In the past three years it had like seven edits.

Given all that, the change of direction you propose here sounds a bit 
radical and I would rather not replace that increment with a function 
call, when it is questionable if the same separation of components 
approach can be, or will be, applied to the whole driver. Gut feeling 
says it is bound to be hard and possibly not happen in which case I 
don't see what is gained by churning on the tiny and quiet i915_pmu.h|c.

Regards,

Tvrtko

> 
> 
> BR,
> Jani.
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>> BR,
>>> Jani.
>>>
>>>
>>> Jani Nikula (5):
>>>     drm/i915/pmu: report irqs to pmu code
>>>     drm/i915/pmu: convert one more container_of() to event_to_pmu()
>>>     drm/i915/pmu: change attr_group allocation and initialization
>>>     drm/i915/pmu: hide struct i915_pmu inside i915_pmu.c
>>>     drm/i915: add a number of explicit includes to avoid implicit ones
>>>
>>>    .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>>>    drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   1 +
>>>    .../gpu/drm/i915/gem/selftests/huge_pages.c   |   1 +
>>>    .../drm/i915/gem/selftests/i915_gem_context.c |   2 +
>>>    drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
>>>    drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
>>>    drivers/gpu/drm/i915/gt/selftest_migrate.c    |   1 +
>>>    drivers/gpu/drm/i915/gt/selftest_slpc.c       |   2 +
>>>    drivers/gpu/drm/i915/i915_drv.h               |   5 +-
>>>    drivers/gpu/drm/i915/i915_irq.c               |   6 +-
>>>    drivers/gpu/drm/i915/i915_pmu.c               | 216 ++++++++++++++++--
>>>    drivers/gpu/drm/i915/i915_pmu.h               | 138 +----------
>>>    drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
>>>    drivers/gpu/drm/i915/selftests/i915_request.c |   4 +-
>>>    drivers/gpu/drm/i915/selftests/igt_mmap.c     |   2 +
>>>    .../drm/i915/selftests/intel_memory_region.c  |   1 +
>>>    16 files changed, 214 insertions(+), 169 deletions(-)
>>>
> 
