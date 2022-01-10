Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E76489B36
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 15:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5559110E713;
	Mon, 10 Jan 2022 14:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A4C610E6B5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jan 2022 14:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641824728; x=1673360728;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mjD5HYY3dK06oHL0fgEHoKCMq3JygBwPHp7/c9epJ78=;
 b=JRedzkZ+at5OwFFvZMRpaPmx0LaNq0Q9ociP3EW6EDjK9vXDV+0lRtbo
 /B/32eDJiAPX0hsB1+QKLykVrLgrQb4oVmeqTsi+sPpnFNuUKP9jnO+fw
 jcGUyUNtgLHO0ufDDRkxkKkQ6lhLN0CXOERs+Zgc5UJ6MA6hyxIwpOeAl
 VNmQNR/145hReTsb0muZ0IenbSBDDJrnUmPcQ6/ebaizHY2+hT+4FGOis
 dBz6fj1cjvplAc844/efbs+kJeOzAs6I7khmQU1UDjnR07br2xcdTFhvf
 /KzHy9r3XsJ6pduVPjU1Z9G53A5RxaP35a1F9MzchzMBaEXJ/Rm5CqbBL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="242047721"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="242047721"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 06:25:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="514688028"
Received: from bdoyle2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.184])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 06:25:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <87k0fbllu7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641561552.git.jani.nikula@intel.com>
 <87k0fbllu7.fsf@intel.com>
Date: Mon, 10 Jan 2022 16:25:21 +0200
Message-ID: <877db7acry.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 0/5] drm/i915: clean up i915_drv.h, part 1
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

On Fri, 07 Jan 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 07 Jan 2022, Jani Nikula <jani.nikula@intel.com> wrote:
>> First five patches from [1], chopping it up a bit.
>
> Aarrgh. Today I learned, the hard way, that you can actually specify
> both files *and* rev-list to git send-email at the same time, and it'll
> send all. *facepalm*.
>
> Let's see how badly CI gets confused about this. Maybe I need to send
> this yet again.

Didn't get confused, series pushed, more to come.

BR,
Jani.

>
> BR,
> Jani.
>
>
>>
>> BR,
>> Jani.
>>
>> [1] https://patchwork.freedesktop.org/series/98515/
>>
>>
>> Jani Nikula (5):
>>   drm/i915: split out i915_getparam.h from i915_drv.h
>>   drm/i915: split out i915_cmd_parser.h from i915_drv.h
>>   drm/i915: split out i915_gem_evict.h from i915_drv.h
>>   drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
>>   drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h
>>
>>  .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 ++
>>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  1 +
>>  drivers/gpu/drm/i915/gem/i915_gem_tiling.h    | 18 ++++++++++
>>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  1 +
>>  drivers/gpu/drm/i915/gem/i915_gem_userptr.h   | 14 ++++++++
>>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
>>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
>>  drivers/gpu/drm/i915/i915_cmd_parser.c        |  1 +
>>  drivers/gpu/drm/i915/i915_cmd_parser.h        | 26 ++++++++++++++
>>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>>  drivers/gpu/drm/i915/i915_drv.h               | 34 -------------------
>>  drivers/gpu/drm/i915/i915_gem.c               |  1 +
>>  drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
>>  drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++
>>  drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
>>  drivers/gpu/drm/i915/i915_getparam.c          |  2 ++
>>  drivers/gpu/drm/i915/i915_getparam.h          | 15 ++++++++
>>  drivers/gpu/drm/i915/i915_ioc32.c             |  1 +
>>  drivers/gpu/drm/i915/i915_vma.c               |  3 +-
>>  19 files changed, 113 insertions(+), 36 deletions(-)
>>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h
>>  create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h
>>  create mode 100644 drivers/gpu/drm/i915/i915_cmd_parser.h
>>  create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
>>  create mode 100644 drivers/gpu/drm/i915/i915_getparam.h

-- 
Jani Nikula, Intel Open Source Graphics Center
