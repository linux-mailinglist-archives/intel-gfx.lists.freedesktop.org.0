Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B596453F7E6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jun 2022 10:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013F912A96E;
	Tue,  7 Jun 2022 08:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD1E12A85C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jun 2022 08:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654589324; x=1686125324;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=9G7vX0psWSSFQ/o5RebnvLOe/xkaDVUEiY9U1HRW0sU=;
 b=Ix0Q+id8Yk2eAClCy2Rl7umER1z1SYq5SODLIl1qA0KG02cXLr1o9RpL
 8u5xtcLLw8XuwLpDDqCSuHYeAzX6TyRFZnIcb1TbeWGFL8L6CTFgERV8W
 uXjQ4kI/OK2vDjX/JdQZ5cn3xkPeukmRAYnR/9XvzIv4o4S6uHN7oRDVQ
 b827Haq65+L6twie0PyjnQipXwANioPuiCfwS/pA4rs4shQTpPx6L4ioJ
 7Xhj9+N7GuB6hl+OmMK7mD47jnj1w4vpyJyWuP/reZimlz4UCxvEiRtFr
 mkItFLGnR8dfrUN+xj2IeH0wkNRG8HtClsIWdHxj9ukhi/iU+MoCy5LKD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10370"; a="340359615"
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="340359615"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 01:08:43 -0700
X-IronPort-AV: E=Sophos;i="5.91,283,1647327600"; d="scan'208";a="584096925"
Received: from gknielse-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.57.112])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 01:08:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <e264365e-7f1c-66e4-8d41-9cd37f87b390@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1654261471.git.jani.nikula@intel.com>
 <e264365e-7f1c-66e4-8d41-9cd37f87b390@linux.intel.com>
Date: Tue, 07 Jun 2022 11:08:39 +0300
Message-ID: <87y1y8q4jc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: i915_drv.h & i915_gem.h
 header refactoring
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

On Mon, 06 Jun 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 03/06/2022 14:05, Jani Nikula wrote:
>> Turn i915_gem.h into a useful header that contains stuff the name
>> implies, and clean up i915_drv.h a bit.
>> 
>> Jani Nikula (7):
>>    drm/i915/tasklet: separate local hacks around struct tasklet_struct
>>    drm/i915/debug: add new i915_debug.h for debug asserts
>>    drm/i915: un-inline i915_gem_drain_* functions
>>    drm/i915/gem: split out the gem stuff from i915_drv.h
>>    drm/i915/drv: drop intel_bios.h include
>>    drm/i915/client: only include what's needed
>>    drm/i915/utils: throw out unused stuff
>
> Read through it all and it looks good. For the series:
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

And again conflicts badly between our -next branches. I wonder how we'll
move this forward. Maybe I need to split out the low hanging fruit first
and send them separately.

BR,
Jani.


>
> Regards,
>
> Tvrtko
>
>>   drivers/gpu/drm/i915/TODO.txt                 |   2 +-
>>   drivers/gpu/drm/i915/display/intel_dpt.c      |   1 +
>>   drivers/gpu/drm/i915/display/intel_dsb.c      |   1 +
>>   drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_context.h   |   1 -
>>   drivers/gpu/drm/i915/gem/i915_gem_domain.c    |   1 +
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   1 -
>>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   5 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_object.c    |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |   5 +-
>>   drivers/gpu/drm/i915/gem/i915_gem_phys.c      |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_pm.c        |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |   1 -
>>   drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c  |   1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |   1 +
>>   .../i915/gem/selftests/i915_gem_coherency.c   |   1 +
>>   .../drm/i915/gem/selftests/i915_gem_context.c |   1 +
>>   .../drm/i915/gem/selftests/i915_gem_mman.c    |   1 +
>>   drivers/gpu/drm/i915/gt/gen8_engine_cs.h      |   2 +-
>>   drivers/gpu/drm/i915/gt/intel_engine_stats.h  |   2 +-
>>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |   1 -
>>   drivers/gpu/drm/i915/gt/intel_ggtt.c          |  10 +-
>>   drivers/gpu/drm/i915/gt/intel_gt.c            |   1 +
>>   drivers/gpu/drm/i915/gt/intel_gt_sysfs.h      |   2 -
>>   drivers/gpu/drm/i915/gt/intel_renderstate.h   |   2 +-
>>   drivers/gpu/drm/i915/gt/intel_ring.h          |   2 +-
>>   drivers/gpu/drm/i915/gt/intel_sseu.h          |   5 +-
>>   drivers/gpu/drm/i915/gt/selftest_migrate.c    |   2 +
>>   drivers/gpu/drm/i915/gt/selftest_timeline.c   |   1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   1 -
>>   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.h      |   1 -
>>   drivers/gpu/drm/i915/gvt/scheduler.c          |   1 +
>>   drivers/gpu/drm/i915/i915_debug.h             |  63 ++++++++++
>>   drivers/gpu/drm/i915/i915_debugfs.c           |   1 +
>>   drivers/gpu/drm/i915/i915_driver.c            |   3 +-
>>   drivers/gpu/drm/i915/i915_drm_client.c        |   1 -
>>   drivers/gpu/drm/i915/i915_drm_client.h        |   2 +-
>>   drivers/gpu/drm/i915/i915_drv.h               |  75 ------------
>>   drivers/gpu/drm/i915/i915_gem.c               |  39 ++++++
>>   drivers/gpu/drm/i915/i915_gem.h               | 114 ++++++------------
>>   drivers/gpu/drm/i915/i915_gpu_error.h         |   1 -
>>   drivers/gpu/drm/i915/i915_ioctl.c             |   1 -
>>   drivers/gpu/drm/i915/i915_perf.c              |   1 +
>>   drivers/gpu/drm/i915/i915_request.h           |   1 -
>>   drivers/gpu/drm/i915/i915_scatterlist.h       |   2 +-
>>   drivers/gpu/drm/i915/i915_scheduler.h         |   1 +
>>   drivers/gpu/drm/i915/i915_syncmap.c           |   5 +-
>>   drivers/gpu/drm/i915/i915_tasklet.h           |  43 +++++++
>>   drivers/gpu/drm/i915/i915_ttm_buddy_manager.c |   3 +-
>>   drivers/gpu/drm/i915/i915_utils.h             |  40 ------
>>   drivers/gpu/drm/i915/i915_vma_resource.h      |   1 -
>>   drivers/gpu/drm/i915/intel_gvt.c              |   1 +
>>   .../gpu/drm/i915/selftests/i915_gem_evict.c   |   2 +-
>>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   4 +-
>>   .../gpu/drm/i915/selftests/i915_selftest.c    |   1 +
>>   drivers/gpu/drm/i915/selftests/i915_vma.c     |   2 +-
>>   .../drm/i915/selftests/intel_memory_region.c  |   1 +
>>   60 files changed, 236 insertions(+), 236 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/i915_debug.h
>>   create mode 100644 drivers/gpu/drm/i915/i915_tasklet.h
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
