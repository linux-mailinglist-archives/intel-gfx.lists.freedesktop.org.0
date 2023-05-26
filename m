Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AAB71245E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 12:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3F7210E7DE;
	Fri, 26 May 2023 10:16:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C327610E7D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 10:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685096201; x=1716632201;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ES0TeegCRM83F7+AkpQA2MY935G5WUXgPZb5HcizWFk=;
 b=EwfN+fi9BiHpbIgxEk497k0khtURyQl9VryKqu9DTKCY2cSOhDhSMeVb
 UkcLvPx/oo2hs6A/+o3CariUXdflMrGJ3Ybc9GnjwY+K8ZRkMUV6s3oTA
 t4+xMSz5AhkYmdqtvIh46XcU6HfsbLzwect+CY+Oaun8J7Wa4tEalkKtR
 U1HaZmSROgoNnLL/ctZyFUhFyolKS/lwQWGNg8b2z4hwR2mTIc3V3J294
 pZ70MWvkLXroPfNIzr+G7wI0A815kWNOjp+RwML3F43bP1AIZiIb1TvrP
 lGVKdhsb8I8RamQ20YmmKgIqAejZT1F0huNgR8c/2IjeNrtmz003x+Mfv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="382414429"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="382414429"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 03:16:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="699378651"
X-IronPort-AV: E=Sophos;i="6.00,193,1681196400"; d="scan'208";a="699378651"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 03:16:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <b8ffd141-fedb-6d0a-0bf5-1e6080b53e1f@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230525094942.941123-1-jani.nikula@intel.com>
 <b8ffd141-fedb-6d0a-0bf5-1e6080b53e1f@intel.com>
Date: Fri, 26 May 2023 13:16:36 +0300
Message-ID: <87v8gfieij.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: use system include style for
 drm headers
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 25 May 2023, "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com> wrote:
> On 5/25/2023 2:49 AM, Jani Nikula wrote:
>> Use <> instead of "" for including headers from include/.
>>
>> Fixes: 8a9bf29546a1 ("drm/i915/gsc: add initial support for GSC proxy")
>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> dumb mistake, thanks for fixing it

It happens, no worries.

> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Thanks for the reviews, pushed to drm-intel-gt-next.

BR,
Jani.


>
> Daniele
>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> index ebee0b5a2c1d..5f138de3c14f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_proxy.c
>> @@ -5,8 +5,8 @@
>>   
>>   #include <linux/component.h>
>>   
>> -#include "drm/i915_component.h"
>> -#include "drm/i915_gsc_proxy_mei_interface.h"
>> +#include <drm/i915_component.h>
>> +#include <drm/i915_gsc_proxy_mei_interface.h>
>>   
>>   #include "gt/intel_gt.h"
>>   #include "gt/intel_gt_print.h"
>

-- 
Jani Nikula, Intel Open Source Graphics Center
