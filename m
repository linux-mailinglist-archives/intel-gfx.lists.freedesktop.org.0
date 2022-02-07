Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2297E4AC3CE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Feb 2022 16:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD7511245B;
	Mon,  7 Feb 2022 15:36:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09ECC11245B
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Feb 2022 15:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644248184; x=1675784184;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=fgMxhQLkLWuNa0/yOd7XrV8m46eS6SZfDNGKPbzAe1g=;
 b=BMLKDJ8LdldAdF+ptAULXfqxq+bJ0s/x3wdTycuJ3d6uGy8A8fEvO4U5
 Cmb1cYiF5CYS/1kezOIoywM1yd8fAnnYL6grAYIQnRx0fQI5oLEK3C3kD
 rCwH2CpadYNQy1qg0Pio3vGvciBrfEpPBhDGuXIwfSpto9eWhVMfIMYD+
 6pl3xknT7KSTWDIXcHBmx2yEBswhUL0R+SDb6HtDjwq2VywU0foiKhuZQ
 Ukn7vR3wxWrMbERnlqpa44sc5h5WbwqE4QVy+AqZzAg6QWgXkAsj7JrcZ
 FmBS2EOuHIsY41atpSTA4TGrCxVPppckUafqSSeh0jBiefew22ruC9p6l Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10250"; a="248688682"
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="248688682"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 07:36:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,350,1635231600"; d="scan'208";a="481616388"
Received: from conroyco-mobl2.ger.corp.intel.com (HELO [10.213.251.21])
 ([10.213.251.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2022 07:36:21 -0800
Message-ID: <e72a6679-2fe6-9390-2e7b-9c59cdd4cda8@linux.intel.com>
Date: Mon, 7 Feb 2022 15:36:19 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Casey Bowman <casey.g.bowman@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220120221652.207255-1-casey.g.bowman@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/01/2022 22:16, Casey Bowman wrote:
> In this RFC I would like to ask the community their thoughts
> on how we can best handle splitting architecture-specific
> calls.
> 
> I would like to address the following:
> 
> 1. How do we want to split architecture calls? Different object files
> per platform? Separate function calls within the same object file?

If we are talking about per-platform divergence of significant functions (not necessarily in size but their height position in the i915 stack) I agree with Jani that top-level per platform organisation is not the best choice.

On the other hand I doubt that there should be many, if any, such functions. In practice I think it should be only low level stuff which diverges.

On a concrete example..
  
> 2. How do we address dummy functions? If we have a function call that is
> used for one or more platforms, but is not used in another, what should
> we do for this case?

... depends on the situation. Sometimes a flavour of "warn on once" can be okay I guess, but also why not build bug on? Because..

> 
> I've given an example of splitting an architecture call
> in my patch with run_as_guest() being split into different
> implementations for x86 and arm64 in separate object files, sharing
> a single header.

... run_as_guest may be a very tricky example, given it is called from intel_vtd_active which has a number of callers.

What is correct behaviour on Arm in this example? None of these call sites will run on Arm? Or that you expect the warn on added in this patch to trigger as a demonstration? If so, what is the plan going forward? We can take one example and talk about it hypothetically:

./i915_driver.c:        drm_printf(p, "iommu: %s\n", enableddisabled(intel_vtd_active(i915)));

What is the "fix" (refactor) for Arm here? Looks like a new top-level function is needed which does not carry the intel_vtd_ prefix but something more generic. That one could then legitimately "warn on once", while for intel_vtd_active it would be wrong to do so.

And when I say it is needed.. well perhaps it is not strictly needed in this case, but in some other cases I think we go back to the problem I stated some months ago and that is that I suspect use of intel_vtd_active is overloaded. I think it is currently used to answer all these questions: 1. Is the IOMMU active, just for information.; 2. Is the IOMMU active and we want to counteract the performance hit by say using huge pages, adjusting the display bandwidth calculations or whatever. (In which case we also may want to distinguish between pass-through and translation modes.); 3. Is a potentially buggy IOMMU active and we need to work around it. All these under one kind of worked with one iommu implementation but does it with a different IOMMU?

Which I mean leads to end conclusion that this particular function is a tricky example to answer the questions asked. :)

> 
> Another suggestion from Michael (michael.cheng@intel.com) involved
> using a single object file, a single header, and splitting various
> functions calls via ifdefs in the header file.

In principle, mostly what you have outlined sounds acceptable to me, with the difference that I would not use i915_platform, but for this particular example something like i915_hypervisor prefix.

Then I would prepare i915 with the same scheme kernel uses, not just for source file divergence, but header file as well. That is:

some_source.c:

#include "i915_hypervisor.h"

i915_hypervisor.h:

#include "platform/i915_hypervisor.h"

Then in i915 root you could have:

platforms/x86/include/platform/i915_hypervisor.h
platforms/arm/include/platform/i915_hypervisor.h

And some kbuild stuff to make that work. Is this doable and does it make sense? Per-platform source files could live in there as well.

Same scheme for i915_clflush would work as well.

Regards,

Tvrtko

> 
> I would appreciate any input on how we can avoid scaling issues when
> including multiple architectures and multiple functions (as the number
> of function calls will inevitably increase with more architectures).
> 
> Casey Bowman (1):
>    i915/drm: Split out x86 and arm64 functionality
> 
>   drivers/gpu/drm/i915/Makefile              |  4 +++
>   drivers/gpu/drm/i915/i915_drv.h            |  6 +---
>   drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
>   drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
>   5 files changed, 87 insertions(+), 5 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_platform.h
>   create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
>   create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c
> 
