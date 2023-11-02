Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFB47DF71B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:54:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD0710E91C;
	Thu,  2 Nov 2023 15:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74D110E91B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698940479; x=1730476479;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Xgh2+M3GENQgrVBi39ssNFgz7VAm5PeYAE4QhMJT4FU=;
 b=gY01MAdYvrKB+NR2QDyTTj5qR+nQjdD5uxocEEUn4WzRuNGPC4/nxXhp
 s0pXPDJGjR5XziH12qtHznyzIj+FZCHv+8rrblBQXEeXWPWY8CoYpU+4P
 yHcjtF+hCM7MBcFsS3IMZkI+JQmH0iJrL0TXbM3tTM+v0xSfiCT2chhDH
 bXe2W097MwoHO5NHwLtISxPhHNShxah2hK2eEG3vqpuTyxhvDUkbSN2zn
 kAOisgStdb/snjEpUqcshSg80qbBLEFkhKZnmJyfVXim8gcEj2br9qdGy
 7pRowElbqtWMTIzvIJ81kc1m7UpZtxwYgYLQfXv+u4phHJzt4q6k1LQnV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="391608846"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="391608846"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:54:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="884930238"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="884930238"
Received: from stevenwo-mobl1.ger.corp.intel.com (HELO [10.213.233.30])
 ([10.213.233.30])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:54:38 -0700
Message-ID: <9941f1d6-8466-4c69-8b06-34177a658299@linux.intel.com>
Date: Thu, 2 Nov 2023 15:54:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1698939671.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cover.1698939671.git.jani.nikula@intel.com>
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


On 02/11/2023 15:42, Jani Nikula wrote:
> The implementation details of pmu should be implementation details
> hidden inside i915_pmu.c. Make it so.

Don't tell me i915->pmu bothers xe somehow? I am not a fan of the series 
on a glance. Replacing an increment with a function call for instance.

Regards,

Tvrtko

> BR,
> Jani.
> 
> 
> Jani Nikula (5):
>    drm/i915/pmu: report irqs to pmu code
>    drm/i915/pmu: convert one more container_of() to event_to_pmu()
>    drm/i915/pmu: change attr_group allocation and initialization
>    drm/i915/pmu: hide struct i915_pmu inside i915_pmu.c
>    drm/i915: add a number of explicit includes to avoid implicit ones
> 
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |   1 +
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c      |   1 +
>   .../gpu/drm/i915/gem/selftests/huge_pages.c   |   1 +
>   .../drm/i915/gem/selftests/i915_gem_context.c |   2 +
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   1 +
>   drivers/gpu/drm/i915/gt/selftest_execlists.c  |   1 +
>   drivers/gpu/drm/i915/gt/selftest_migrate.c    |   1 +
>   drivers/gpu/drm/i915/gt/selftest_slpc.c       |   2 +
>   drivers/gpu/drm/i915/i915_drv.h               |   5 +-
>   drivers/gpu/drm/i915/i915_irq.c               |   6 +-
>   drivers/gpu/drm/i915/i915_pmu.c               | 216 ++++++++++++++++--
>   drivers/gpu/drm/i915/i915_pmu.h               | 138 +----------
>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c |   1 +
>   drivers/gpu/drm/i915/selftests/i915_request.c |   4 +-
>   drivers/gpu/drm/i915/selftests/igt_mmap.c     |   2 +
>   .../drm/i915/selftests/intel_memory_region.c  |   1 +
>   16 files changed, 214 insertions(+), 169 deletions(-)
> 
