Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63666590C35
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 09:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F5614A1C9;
	Fri, 12 Aug 2022 07:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C35AB18B497
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 07:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660287641; x=1691823641;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LucWU/eM5gL4URswULqCUdvSMKTyNtPUwdV2nY1AMVc=;
 b=hay635sXB/mSOZqlLmtYbklDL7KR2YjojnTRKM1Gdlp09/xgw+svDm+o
 3Lv45+bWFo4dM71CuVfIO7+nVmrHH8JJfHzwIjwQNyfbkljzRy6u7RPf9
 KgVe3EckZ86Yw7EqztYZcFYQ22dXRLz8a0jR+Oh16kJltbaq+uBl2HPpm
 2YPbH56kkL5hMchJxyVic6GYgUHZb1GJwJ/oo6PeTszdtWC9o4sjYMPwj
 SKxpckfXCbyKURI/4+B6FVDXDjmyMY7Ft4oqLb5EesJdcuaM4i1SzG40a
 ia1ck+45H1e4R6Iw+TZnlnYnwap5mTMq+J5AFwPCtSIG9vT+UHXzyuk79 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="290292631"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="290292631"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 00:00:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665714343"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 00:00:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB31771C8CACC002848EF68748BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <034fed72ccfe9c25bfd7543991344a57340ceb43.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB31771C8CACC002848EF68748BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 10:00:37 +0300
Message-ID: <87mtcarlnu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, August 11, 2022 8:37 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>
>> Subject: [Intel-gfx] [PATCH 11/39] drm/i915: move dmc to display.dmc
>>
>> Move display related members under drm_i915_private display sub-struct.
>>
>> FIXME: dmc really needs to be abstracted and hidden inside intel_dmc.c with
>> display.dmc turned into a pointer
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>>  .../drm/i915/display/intel_display_power.c    | 18 +++----
>>  .../i915/display/intel_display_power_well.c   | 18 +++----
>>  drivers/gpu/drm/i915/display/intel_dmc.c      | 52 +++++++++----------
>>  drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
>>  drivers/gpu/drm/i915/i915_drv.h               |  3 --
>>  6 files changed, 49 insertions(+), 48 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 030ced4068bb..ca22706e11e6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -10,6 +10,7 @@
>>  #include <linux/types.h>
>>  #include <linux/wait.h>
>>
>> +#include "intel_dmc.h"
>>  #include "intel_gmbus.h"
>>
>>  struct drm_i915_private;
>> @@ -108,6 +109,9 @@ struct intel_display {
>>               /* protects panel power sequencer state */
>>               struct mutex mutex;
>>       } pps;
>> +
>> +     /* Grouping using named structs. Keep sorted. */
>> +     struct intel_dmc dmc;
> Wouldn't it be better to skip this patch for now?

Why?

> Anyway the patch has a FIXME so can up with a proper patch later and avoid double work.

The FIXME is a long-term todo item, really, just logged it somewhere.

Basically this should be struct intel_dmc *dmc, struct intel_dmc should
be opaque and defined in intel_dmc.c. The patch at hand is really
trivial compared to that, and moves forward with the shorter term goal
of putting all the display stuff under i915->display.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
