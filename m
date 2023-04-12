Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FA46DF794
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 15:46:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8128F10E7EC;
	Wed, 12 Apr 2023 13:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAACB10E7EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 13:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681307162; x=1712843162;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=HRrME3gBlYWdgJbPI3nXxJeHwqgvY9Wr6mbW6YVO/JI=;
 b=UeWbvyrOERCQrX8wnKDJW36YM16qegDT8sa//ZexTP9WTe/bbp9/Y3cB
 jFvAYl/Saspn/ea43GQ9PrbuwUXsXxkJOTGRPzK3apkGbJr/ZzjL0dcha
 F/DK/wHb3MtuZvi8VX14hpvkZACBHJ4ZpKWsb8rHWOhh1tIZmz9rKPSZQ
 N0xjDlEQZWjx6r4lwlQpgRq7e8J3MN8HoZJlVJvCih2EOq7zT2hKhG2mj
 YgIK/NeNdI8vtPnxjuTFzL80BCHVPDXMlb6OIUilhEbP31a/ru6sxEa+r
 4x5AxXmWVYalKasJ3mwmsZBJsQH82zrKg1faBDrFVHDT8m0uSlCt5YCIY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="406726707"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="406726707"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 06:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="666360795"
X-IronPort-AV: E=Sophos;i="5.98,339,1673942400"; d="scan'208";a="666360795"
Received: from smoticic-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.172])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2023 06:46:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <9d5122a1-7877-2bbb-5195-7f9f0fe2b78c@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230411131922.401602-1-jani.nikula@intel.com>
 <9d5122a1-7877-2bbb-5195-7f9f0fe2b78c@linux.intel.com>
Date: Wed, 12 Apr 2023 16:45:58 +0300
Message-ID: <87fs95ciy1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: remove unnecessary
 i915_debugfs.h includes
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

On Tue, 11 Apr 2023, "Das, Nirmoy" <nirmoy.das@linux.intel.com> wrote:
> On 4/11/2023 3:19 PM, Jani Nikula wrote:
>> Leftovers from before display debugfs was separated to its own file.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c   | 1 -
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 1 -
>>   2 files changed, 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f0bace9d98a1..48d43f7f0c58 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -44,7 +44,6 @@
>>   #include <drm/drm_probe_helper.h>
>>   
>>   #include "g4x_dp.h"
>> -#include "i915_debugfs.h"
>>   #include "i915_drv.h"
>>   #include "i915_reg.h"
>>   #include "intel_atomic.h"
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index a690a5616506..4fd944520826 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -40,7 +40,6 @@
>>   #include <drm/drm_edid.h>
>>   #include <drm/intel_lpe_audio.h>
>>   
>> -#include "i915_debugfs.h"
>>   #include "i915_drv.h"
>>   #include "i915_reg.h"
>>   #include "intel_atomic.h"

-- 
Jani Nikula, Intel Open Source Graphics Center
