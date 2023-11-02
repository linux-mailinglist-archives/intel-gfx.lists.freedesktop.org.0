Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B12087DF7EC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 17:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851AF10E934;
	Thu,  2 Nov 2023 16:47:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6920D10E934
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 16:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698943660; x=1730479660;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cERRQaOFfcRCf+ZcwOssSl3nKALGGLDmidPIPFEIYAw=;
 b=VmMLzJ2UzAjjQ7B0XS5/DJD8Z0mKe7geN1ba8MyWvD8AaJY1br4I0jSx
 O6KcJ8of9vsuCumm26SFnIUV6C2QRp2YlXbcRLP7StBNZG197sbuW+cLZ
 onYuRaQHsuyn3mWsFxb85lSxIDRl9hCBPiEyhrN5ZCmA4yc2BKplOT3Po
 zhgS2PXJjc3tsJIzsdJ2cel3Fl8iBDqwa8FWGPltl6ObUd2XGkCZdbId9
 ddPZN1ycG0K7FiR0ZheXc18iNpx0SiiSRiV1+fxRplAtogtEyJzW7Q6xr
 hsUe0ZvJyraVZ3MjxkQ3j1yyvLdmNVEdmqTIK7huidHHOpTaDl+t2xnAN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="453059930"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="453059930"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:47:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="737821541"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="737821541"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 09:47:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <9941f1d6-8466-4c69-8b06-34177a658299@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1698939671.git.jani.nikula@intel.com>
 <9941f1d6-8466-4c69-8b06-34177a658299@linux.intel.com>
Date: Thu, 02 Nov 2023 18:47:35 +0200
Message-ID: <87wmv014rc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 02 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 02/11/2023 15:42, Jani Nikula wrote:
>> The implementation details of pmu should be implementation details
>> hidden inside i915_pmu.c. Make it so.
>
> Don't tell me i915->pmu bothers xe somehow?

It doesn't bother xe, it bothers me...

> I am not a fan of the series 
> on a glance. Replacing an increment with a function call for instance.

I think you glanced at the wart of this series. ;)

It just bugs me that we expose a plethora of data that should be
internal to pmu, basically just for that one increment.

And we pull in a bunch of headers to define struct i915_pmu, and then we
implicitly depend on those headers in a ton of places through incredible
chains of includes.

And we rebuild everything and a half when those headers change. Or when
the pmu implementation details change.


BR,
Jani.

>
> Regards,
>
> Tvrtko
>
>> BR,
>> Jani.
>> 
>> 
>> Jani Nikula (5):
>>    drm/i915/pmu: report irqs to pmu code
>>    drm/i915/pmu: convert one more container_of() to event_to_pmu()
>>    drm/i915/pmu: change attr_group allocation and initialization
>>    drm/i915/pmu: hide struct i915_pmu inside i915_pmu.c
>>    drm/i915: add a number of explicit includes to avoid implicit ones
>> 
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   1 +
>>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |   1 +
>>   .../drm/i915/gem/selftests/i915_gem_context.c |   2 +
>>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
>>   drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
>>   drivers/gpu/drm/i915/gt/selftest_migrate.c    |   1 +
>>   drivers/gpu/drm/i915/gt/selftest_slpc.c       |   2 +
>>   drivers/gpu/drm/i915/i915_drv.h               |   5 +-
>>   drivers/gpu/drm/i915/i915_irq.c               |   6 +-
>>   drivers/gpu/drm/i915/i915_pmu.c               | 216 ++++++++++++++++--
>>   drivers/gpu/drm/i915/i915_pmu.h               | 138 +----------
>>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
>>   drivers/gpu/drm/i915/selftests/i915_request.c |   4 +-
>>   drivers/gpu/drm/i915/selftests/igt_mmap.c     |   2 +
>>   .../drm/i915/selftests/intel_memory_region.c  |   1 +
>>   16 files changed, 214 insertions(+), 169 deletions(-)
>> 

-- 
Jani Nikula, Intel
