Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E0496021B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 08:43:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00FC10E284;
	Tue, 27 Aug 2024 06:43:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPcn35J+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CA9310E280;
 Tue, 27 Aug 2024 06:43:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724741019; x=1756277019;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4vxpAwtvtF5WGuttQiVSNF5ydNiHjjq7NEm3lzbfHWM=;
 b=IPcn35J+/ijADjaTl5QDrYMkS/IE+hId8vcbdQcSduq68IrD0WvlpYb5
 j/Hp6S5ywfeYGPr4makcIBZB8YvRtyIdLROqgTnTC11Q1ga8fqRLVhtQb
 NfLxGIHMczppL2xCYblmAs8ByYeBsJHNcPXPcpEB5mJAEg/8/vMciu5bK
 uXKfw/nxJK+5h9RVqWXhee3aNXPXQsL7xsT1RUB3KrrY5e6mqn+Jvw4xy
 gKFY5gL+RysWzRotkPAPC4X4D46WyPULvqPFZqyzyAvGbz2okYi5waUNT
 URR6qN9Y/S0HaVy3BTgUURHjFhR2YYfKCfzE2JbBbirT7EFOMn7dwYRem Q==;
X-CSE-ConnectionGUID: naA5teHiSXWmdNa9Df9ryA==
X-CSE-MsgGUID: 9mj5lkPyT96TLCH8EdKrbw==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23324992"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="23324992"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:43:38 -0700
X-CSE-ConnectionGUID: tG5FDlN0TpWF0qeiWXR+ow==
X-CSE-MsgGUID: 3lnfmLvxQx+7oqSsl3S+Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="93553520"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO [10.245.244.6])
 ([10.245.244.6])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 23:43:34 -0700
Message-ID: <927bdb3b-8372-4d21-b807-0f051832f6d5@linux.intel.com>
Date: Tue, 27 Aug 2024 08:43:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, =?UTF-8?Q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
 <ZszXzIwntGCQobwy@DUT025-TGLU.fm.intel.com>
 <361abc93-0246-4f21-b235-4e0699682ef3@linux.intel.com>
 <Zs1D93hrqLRxI9SQ@DUT025-TGLU.fm.intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <Zs1D93hrqLRxI9SQ@DUT025-TGLU.fm.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2024-08-27 kl. 05:11, skrev Matthew Brost:
> On Mon, Aug 26, 2024 at 09:42:54PM +0200, Maarten Lankhorst wrote:
>> Hey,
>>
>> Den 2024-08-26 kl. 21:30, skrev Matthew Brost:
>>> On Mon, Aug 26, 2024 at 07:01:16PM +0200, Maarten Lankhorst wrote:
>>>> For CCS formats on affected platforms, CCS can be used freely, but
>>>> display engine requires a multiple of 64k physical pages. No other
>>>> changes are needed.
>>>>
>>>> At the BO creation time we don't know if the BO will be used for CCS
>>>> or not. If the scanout flag is set, and the BO is a multiple of 64k,
>>>> we take the safe route and force the physical alignment of 64k pages.
>>>>
>>>> If the BO is not a multiple of 64k, or the scanout flag was not set
>>>> at BO creation, we reject it for usage as CCS in display. The physical
>>>> pages are likely not aligned correctly, and this will cause corruption
>>>> when used as FB.
>>>>
>>>> The scanout flag and size being a multiple of 64k are used together
>>>> to enforce 64k physical placement.
>>>>
>>>> VM_BIND is completely unaffected, mappings to a VM can still be aligned
>>>> to 4k, just like for normal buffers.
>>>>
>>>> Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>> Cc: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
>>>>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
>>>>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
>>>>  3 files changed, 26 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
>>>> index f835492f73fb4..63ce97cc4cfef 100644
>>>> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
>>>> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
>>>> @@ -7,6 +7,7 @@
>>>>  #include <drm/ttm/ttm_bo.h>
>>>>  
>>>>  #include "intel_display_types.h"
>>>> +#include "intel_fb.h"
>>>>  #include "intel_fb_bo.h"
>>>>  #include "xe_bo.h"
>>>>  
>>>> @@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
>>>>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
>>>>  	int ret;
>>>>  
>>>> +	/*
>>>> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
>>>> +	 * require that the BO in those cases is created correctly.
>>>> +	 */
>>>> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
>>>> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
>>>> +		return -EINVAL;
>>>
>>> I don't think this is correct use of this macro as XE_BO_FLAG_NEEDS_64K
>>> is an internal flag we set and typically this macro is used to santize
>>> user input. An assert here or WARN would make more sense.
>> Ideally we'd use 'is bo created as scanout', but that flag can be set by fb_init too, so if the BO was used for normal 4-tiled before, then as CCS it would pass when it wouldn't be valid.
>>
>> I could change it to bo_created_with_scanout_flag_on_64k_platform inline, but I doubt that's more readable. :)
>>
> 
> Not trying to block the patch and really don't know anything about
> display but still think XE_IOCTL_DBG should replaced by either an
> assert or WARN (or Xe flavor of warn). Kinda pedantic but we really are
> trying hard to uniformly use these types of macros and this just doesn't
> look correct.

mode_cmd->modifier[0] is passed from userspace without validation, and this function is called very early on in fb creation. Anything more than XE_IOCTL_DBG would be invalid here.
