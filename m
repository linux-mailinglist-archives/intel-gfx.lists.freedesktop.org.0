Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6EA517F9C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 10:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27BB110EB33;
	Tue,  3 May 2022 08:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7081310EB27;
 Tue,  3 May 2022 08:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651566068; x=1683102068;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C5UZo01+EFUpepA0QIX3pEWf1JDEKVl/U2r75fsezKA=;
 b=ToGRy9XQwSKjUeRv/nqOJbkFEHZixHNfa9CW8o7jFu6b9eEOGz3iT8C4
 P9+cqeOe57Q7gdmYtZvnE9PhSayAyaBAu68UHtjXESBv7/JdH/SnepHTs
 F8eEk6KXZ4ysd6BVWzQnQy4t/dBHN5dfYnLvsHU+OY+PGn++9iNffzRLg
 lVP1Cg2ehp5Mvda9FmpuZAWzRgcs1IfnzeSTWuvypjqJnx5Hu0tt64sBM
 0QPJiI6bqaEpxWgyO9H3x+HcCZDfRcb86v2cpiizfj6j3xIbhpltzQNJx
 HEXipO1ViMoaB6Sbveehs2so1ULSJOzyoWeFYVbGd1ztEETOa+Uz9Zx6h w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="330416222"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="330416222"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:21:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="562126682"
Received: from doshaugh-mobl.ger.corp.intel.com (HELO [10.213.236.211])
 ([10.213.236.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 01:21:05 -0700
Message-ID: <0524db05-4d9e-4522-4d80-10ffe4c4207c@linux.intel.com>
Date: Tue, 3 May 2022 09:21:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220502163417.2635462-1-matthew.d.roper@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220502163417.2635462-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 00/11] i915: Introduce Ponte Vecchio
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 02/05/2022 17:34, Matt Roper wrote:
> Ponte Vecchio (PVC) is a new GPU based on the Xe_HPC architecture.  As a
> compute-focused platform, PVC has compute engines and enhanced copy
> engines, but no render engine (there is no geometry pipeline) and no
> display.
> 
> This is just a handful of early enablement patches, including some
> initial support for the new copy engines (although we're not yet adding
> those to the platform's engine list or exposing them to userspace just
> yet).

IMO lets hold off merging this until next week if that sounds 
acceptable? This week I need to do a final pull for final bits of DG2 
and I would like to keep it as small as possible.

Regards,

Tvrtko

> 
> Ayaz A Siddiqui (1):
>    drm/i915/pvc: Define MOCS table for PVC
> 
> John Harrison (1):
>    drm/i915/pvc: Reduce stack usage in reset selftest with extra blitter
>      engine
> 
> Lucas De Marchi (2):
>    drm/i915/pvc: skip all copy engines from aux table invalidate
>    drm/i915/pvc: read fuses for link copy engines
> 
> Matt Roper (5):
>    drm/i915/pvc: Add forcewake support
>    drm/i915/pvc: Read correct RP_STATE_CAP register
>    drm/i915/pvc: Engines definitions for new copy engines
>    drm/i915/pvc: Interrupt support for new copy engines
>    drm/i915/pvc: Reset support for new copy engines
> 
> Stuart Summers (2):
>    drm/i915/pvc: add initial Ponte Vecchio definitions
>    drm/i915/pvc: Remove additional 3D flags from PIPE_CONTROL
> 
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  20 ++-
>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  92 +++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h  |  10 +-
>   drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |  12 +-
>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  16 ++
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  56 ++++---
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   1 +
>   drivers/gpu/drm/i915/gt/intel_mocs.c          |  24 ++-
>   drivers/gpu/drm/i915/gt/intel_rps.c           |   4 +-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |  13 +-
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |   9 +-
>   drivers/gpu/drm/i915/gvt/cmd_parser.c         |   2 +-
>   drivers/gpu/drm/i915/i915_drv.h               |   6 +
>   drivers/gpu/drm/i915/i915_pci.c               |  23 +++
>   drivers/gpu/drm/i915/i915_reg.h               |   9 ++
>   drivers/gpu/drm/i915/intel_device_info.c      |   1 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   5 +-
>   drivers/gpu/drm/i915/intel_uncore.c           | 150 +++++++++++++++++-
>   drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +
>   19 files changed, 417 insertions(+), 38 deletions(-)
> 
