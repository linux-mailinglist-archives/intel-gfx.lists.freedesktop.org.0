Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7457DCCD2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 13:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141ED10E495;
	Tue, 31 Oct 2023 12:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A73310E495
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 12:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698754782; x=1730290782;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KsP+4vCumPjO4+RrhIOrgRvZWrZpwM3GifcuC7XDqXo=;
 b=G0R4v2liJylVNo65ZRYgBLIsIFKWOoC+obiwvzUcwgQbor5WTEkvVgex
 qwGnUWGFMtMtuCQmAQr6hdPMCANSxbySg9tPNaXp2xQz+IKPpdJCO9+wt
 jxc5c4VhizxRiVJ1ykiQvyNtCa1wwQGeLPLFGQP3twKC3R2XhgtcvPPOy
 VDC4vnhdUiElxgYxLfqRz8Q4yy5kZu0UO+x7vISviHLjD96z5utvpaYBV
 ji2TVz431Fk31o/AJO8cqav7D4S5dyvPArMC4hvwkv+2MQk06kwxoTV1x
 kRByYF5NILB1p0uAT9j1zZBz30nw2WHsGHGQDGK921x7jUDVgY+qpVYEZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="419384547"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="419384547"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="737057281"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="737057281"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.4.135])
 ([10.213.4.135])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:19:38 -0700
Message-ID: <ac3bbef5-c8ff-4e29-84bd-f087d7872c7b@intel.com>
Date: Tue, 31 Oct 2023 13:19:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231026-wabb-v6-0-4aa7d55d0a8a@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 0/4] Apply Wa_16018031267 / Wa_16018063123
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
 Nirmoy Das <nirmoy.das@intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26.10.2023 20:36, Andrzej Hajda wrote:
> Hi all,
> 
> This the series from Jonathan:
> [PATCH v12 0/4] Apply Wa_16018031267 / Wa_16018063123
> taken over by me.
> 
> This patchset requires IGT changes fixing handling gtt sizes
> not being power of 2:
> https://patchwork.freedesktop.org/series/125640/
> 
> Changes in this version are described in the patches, in short:
> v2:
> - use real memory as WABB destination,
> - address CI compains - do not decrease vm.total,
> - minor reordering.
> v3:
> - fixed typos,
> - removed spare defs,
> - added tags
> v4:
> - removed NULL PTE patch,
> - separate selftest to separate patch,
> - use BB only on BCS0
> v5:
> - fixed reserved memory allocation
> v6:
> - decresase vm->total by reserved size
> 
> Regards
> Andrzej
> 
> Andrzej Hajda (1):
>    drm/i915: Reserve some kernel space per vm
> 
> Jonathan Cavitt (3):
>    drm/i915: Enable NULL PTE support for vm scratch
>    drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>    drm/i915: Set copy engine arbitration for Wa_16018031267 /
>      Wa_16018063123
> 
> .../drm/i915/gem/selftests/i915_gem_context.c |   6 ++
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  41 +++++++
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h   |   6 ++
>   drivers/gpu/drm/i915/gt/intel_gt.h            |   4 +
>   drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
>   drivers/gpu/drm/i915/gt/intel_gtt.h           |   2 +
>   drivers/gpu/drm/i915/gt/intel_lrc.c           | 100 +++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c   |   5 +
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        |  65 ++++++++----
>   drivers/gpu/drm/i915/i915_drv.h               |   2 +
>   drivers/gpu/drm/i915/i915_pci.c               |   2 +
>   drivers/gpu/drm/i915/intel_device_info.h      |   1 +
>   12 files changed, 215 insertions(+), 21 deletions(-)
> 
> Test-with: 20231026-gtt_size_fix-v1-2-882d0e0022ec@intel.com
> ---
> - Link to v3: https://lore.kernel.org/r/20231023-wabb-v3-0-1a4fbc632440@intel.com
> - Link to v4: https://lore.kernel.org/r/20231023-wabb-v4-0-f75dec962b7d@intel.com
> - Link to v5: https://lore.kernel.org/r/20231025-wabb-v5-0-398e42309e9d@intel.com
> 
> ---
> Andrzej Hajda (3):
>        drm/i915: Reserve some kernel space per vm
>        drm/i915: Add WABB blit for Wa_16018031267 / Wa_16018063123
>        drm/i915/gt: add selftest to exercise WABB
> 
> Jonathan Cavitt (1):
>        drm/i915: Set copy engine arbitration for Wa_16018031267 / Wa_16018063123
> 
>   drivers/gpu/drm/i915/gt/gen8_ppgtt.c        |  43 ++++++++++++
>   drivers/gpu/drm/i915/gt/intel_engine_regs.h |   6 ++
>   drivers/gpu/drm/i915/gt/intel_gt.h          |   4 ++
>   drivers/gpu/drm/i915/gt/intel_gtt.h         |   4 ++
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 100 +++++++++++++++++++++++++++-
>   drivers/gpu/drm/i915/gt/intel_workarounds.c |   5 ++
>   drivers/gpu/drm/i915/gt/selftest_lrc.c      |  65 +++++++++++++-----
>   7 files changed, 206 insertions(+), 21 deletions(-)
> ---
> base-commit: 201c8a7bd1f3f415920a2df4b8a8817e973f42fe
> change-id: 20231020-wabb-bbe9324a69a8
> 
> Best regards,


Thanks all for reviews, pushed.

Regards
Andrzej



