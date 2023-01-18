Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F31A67189A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 11:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD9610E0D5;
	Wed, 18 Jan 2023 10:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5808210E0D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 10:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674036684; x=1705572684;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+/NE/H19XD034XMxku5Fti5cIkLQCsu1xbB9upAUyA0=;
 b=m6sE+42YHIL6lsmr8P3ipgxYoRcr2COCjZ8gm4tI7Rsca6hWyAgJCkQx
 pE+K6l0fk3V4+TgjB6hKCWyA8c+zb/jEhAPXt6DZFuRVEAuU8MdnaVZGN
 eiBvcwOalizjidSL00S9cX6IvLXI1fnd0FUBjJelPoCP6EPWP37WK7Qkg
 fdjjqaU/0VEt/SSWs1YAqUdV8kIx/i1RjMmI7rky5hQBNeONBoPs01i6Y
 SpeG4RTanLdqMCwSwltC52V8/1a+y6pg/QncVB03tVsgDk7eJDAkLzKs/
 rR2Nr4sJJXuhjME5wuuwrsN+QmI1ARIWVTZXpSAssKzOa8DJsapP+Su/7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="327023772"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="327023772"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 02:11:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="659737119"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="659737119"
Received: from kozlovdm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.28.132])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 02:11:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <Y8aphQCW98phcmD6@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230117123856.2271720-1-jani.nikula@intel.com>
 <Y8aphQCW98phcmD6@ashyti-mobl2.lan>
Date: Wed, 18 Jan 2023 12:11:20 +0200
Message-ID: <87mt6gcfuf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove a couple of superfluous
 i915_drm.h includes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Jan 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> Hi Jani,
>
> On Tue, Jan 17, 2023 at 02:38:56PM +0200, Jani Nikula wrote:
>> Remove a couple of unnecessary includes.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.

>
> Thanks,
> Andi
>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c | 1 -
>>  drivers/gpu/drm/i915/pxp/intel_pxp_huc.c  | 2 --
>>  2 files changed, 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
>> index 4e2163a1aa46..0e3630103693 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
>> @@ -6,7 +6,6 @@
>>  #include "intel_ggtt_gmch.h"
>>  
>>  #include <drm/intel-gtt.h>
>> -#include <drm/i915_drm.h>
>>  
>>  #include <linux/agp_backend.h>
>>  
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> index 812c8bc7005e..64609d1b1c0f 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
>> @@ -3,8 +3,6 @@
>>   * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
>>   */
>>  
>> -#include <drm/i915_drm.h>
>> -
>>  #include "i915_drv.h"
>>  
>>  #include "gem/i915_gem_region.h"
>> -- 
>> 2.34.1

-- 
Jani Nikula, Intel Open Source Graphics Center
