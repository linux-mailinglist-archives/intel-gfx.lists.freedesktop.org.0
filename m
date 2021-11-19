Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1276E45701C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:54:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 193DC6E06B;
	Fri, 19 Nov 2021 13:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F8776E06B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 13:54:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="233134828"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="233134828"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:54:08 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="495879833"
Received: from sgconnee-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.83])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:54:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <YZPFIcMXsYPD/o2S@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211116135813.19806-1-jani.nikula@intel.com>
 <YZPFIcMXsYPD/o2S@intel.com>
Date: Fri, 19 Nov 2021 15:53:58 +0200
Message-ID: <87ee7cjlop.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: fix includes for headers in
 include/drm
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

On Tue, 16 Nov 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Tue, Nov 16, 2021 at 03:58:13PM +0200, Jani Nikula wrote:
>> Use <> not "" for including headers from include/drm.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/pxp/intel_pxp_session.c | 3 ++-
>>  drivers/gpu/drm/i915/pxp/intel_pxp_tee.c     | 6 ++++--
>>  2 files changed, 6 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> index d02732f04757..598840b73dfa 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_session.c
>> @@ -3,7 +3,8 @@
>>   * Copyright(c) 2020, Intel Corporation. All rights reserved.
>>   */
>>  
>> -#include "drm/i915_drm.h"
>> +#include <drm/i915_drm.h>
>> +
>>  #include "i915_drv.h"
>>  
>>  #include "intel_pxp.h"
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> index 49508f31dcb7..5d169624ad60 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
>> @@ -4,8 +4,10 @@
>>   */
>>  
>>  #include <linux/component.h>
>> -#include "drm/i915_pxp_tee_interface.h"
>> -#include "drm/i915_component.h"
>> +
>> +#include <drm/i915_pxp_tee_interface.h>
>> +#include <drm/i915_component.h>
>> +
>>  #include "i915_drv.h"
>>  #include "intel_pxp.h"
>>  #include "intel_pxp_session.h"
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
