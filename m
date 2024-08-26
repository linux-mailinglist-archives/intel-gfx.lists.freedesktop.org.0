Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998CB95EC29
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 10:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B97910E149;
	Mon, 26 Aug 2024 08:38:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCEIOXGL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DE310E149
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 08:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724661518; x=1756197518;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=v3Lqqfm30HIFbU7EKaPRT5gOBvmg0i16a/gvgFmPUqM=;
 b=PCEIOXGLDMTiTHXmiH7u1HottTuSE83CqH+GxLWNEZgDPN71XPJyW9+X
 JxPyyFIQyHSBqoBuSaUnZsljUX9c7ekbMwyaV/oTJyOqlx0cbVZXEkGHx
 ymjeBZQmtPPcid9NRjV+PLb51pRDeRfRTpAXRERDP+OYsRKkYHFR10dNM
 7/b+tXIAjgPBTNpvFYNHvGzqp3uWPNOMLv5e4wGY44FhZ1ffpBSupxpoS
 xaGFS+VBXAVoiEMJPMg1ylX9I55qaJfxpkmvkKRh8AS/255B/7Al6u1as
 F0dw0UdG6XRZvivVLpin3fZv16MtCVbzyvRc0XvuRhbNhwLg5KaNa8lnw g==;
X-CSE-ConnectionGUID: JnIIIe7jRSqC09LJTHJDyg==
X-CSE-MsgGUID: 5eyCyqjOTjueqEGb9/mHFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23198600"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23198600"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 01:38:38 -0700
X-CSE-ConnectionGUID: eEfmLueNSFCQkA5YXaznuA==
X-CSE-MsgGUID: zEbRF86fSVS7EDPcbCdjsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="62275866"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 01:38:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: remove unnecessary display includes
In-Reply-To: <ZsidVbQKnjuuSgb3@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240823123318.3189503-1-jani.nikula@intel.com>
 <ZsidVbQKnjuuSgb3@intel.com>
Date: Mon, 26 Aug 2024 11:38:24 +0300
Message-ID: <87h6b73chr.fsf@intel.com>
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

On Fri, 23 Aug 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Fri, Aug 23, 2024 at 03:33:18PM +0300, Jani Nikula wrote:
>> There are a number of leftover #include "display/..." directives that
>> are completely unnecessary. Remove them to make it easier to spot the
>> relevant ones. In one case, switch to a more specific include.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> trusting more the compiler then manual inspection:
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 --
>>  drivers/gpu/drm/i915/gt/intel_ggtt.c           | 1 -
>>  drivers/gpu/drm/i915/i915_driver.c             | 4 +---
>>  drivers/gpu/drm/i915/i915_gem.c                | 2 --
>>  drivers/gpu/drm/i915/i915_gem_gtt.c            | 1 -
>>  drivers/gpu/drm/i915/i915_irq.c                | 1 -
>>  drivers/gpu/drm/i915/i915_pci.c                | 1 -
>>  7 files changed, 1 insertion(+), 11 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> index c58290274f97..01b7587dd1f8 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -12,8 +12,6 @@
>>  #include <drm/drm_auth.h>
>>  #include <drm/drm_syncobj.h>
>>  
>> -#include "display/intel_frontbuffer.h"
>> -
>>  #include "gem/i915_gem_ioctls.h"
>>  #include "gt/intel_context.h"
>>  #include "gt/intel_gpu_commands.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 206a5e0fedf1..d60a6ca0cae5 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -12,7 +12,6 @@
>>  #include <drm/intel/i915_drm.h>
>>  #include <drm/intel/intel-gtt.h>
>>  
>> -#include "display/intel_display.h"
>>  #include "gem/i915_gem_lmem.h"
>>  
>>  #include "intel_context.h"
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index e32766286369..ccdd2983cfb5 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -49,7 +49,7 @@
>>  #include "display/intel_bw.h"
>>  #include "display/intel_cdclk.h"
>>  #include "display/intel_display_driver.h"
>> -#include "display/intel_display_types.h"
>> +#include "display/intel_display.h"
>>  #include "display/intel_dmc.h"
>>  #include "display/intel_dp.h"
>>  #include "display/intel_dpt.h"
>> @@ -58,10 +58,8 @@
>>  #include "display/intel_hotplug.h"
>>  #include "display/intel_overlay.h"
>>  #include "display/intel_pch_refclk.h"
>> -#include "display/intel_pipe_crc.h"
>>  #include "display/intel_pps.h"
>>  #include "display/intel_sprite.h"
>> -#include "display/intel_vga.h"
>>  #include "display/skl_watermark.h"
>>  
>>  #include "gem/i915_gem_context.h"
>> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
>> index 1391c01d7663..070ab6546987 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.c
>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>> @@ -39,8 +39,6 @@
>>  #include <drm/drm_cache.h>
>>  #include <drm/drm_vma_manager.h>
>>  
>> -#include "display/intel_display.h"
>> -
>>  #include "gem/i915_gem_clflush.h"
>>  #include "gem/i915_gem_context.h"
>>  #include "gem/i915_gem_ioctls.h"
>> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
>> index 7bd1861ddbdf..a9662cc6ed1e 100644
>> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
>> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
>> @@ -15,7 +15,6 @@
>>  #include <asm/set_memory.h>
>>  #include <asm/smp.h>
>>  
>> -#include "display/intel_frontbuffer.h"
>>  #include "gt/intel_gt.h"
>>  #include "gt/intel_gt_requests.h"
>>  
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>> index 8059ac7e15fe..2321de48d169 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -34,7 +34,6 @@
>>  #include <drm/drm_drv.h>
>>  
>>  #include "display/intel_display_irq.h"
>> -#include "display/intel_display_types.h"
>>  #include "display/intel_hotplug.h"
>>  #include "display/intel_hotplug_irq.h"
>>  #include "display/intel_lpe_audio.h"
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>> index 94c89ca2ef30..d37bb3a704d0 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -26,7 +26,6 @@
>>  #include <drm/drm_drv.h>
>>  #include <drm/intel/i915_pciids.h>
>>  
>> -#include "display/intel_display.h"
>>  #include "display/intel_display_driver.h"
>>  #include "gt/intel_gt_regs.h"
>>  #include "gt/intel_sa_media.h"
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
