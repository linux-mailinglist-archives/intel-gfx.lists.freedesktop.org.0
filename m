Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C81458D615A
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2200110E2B5;
	Fri, 31 May 2024 12:09:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i+ODknK5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10A010E2B5;
 Fri, 31 May 2024 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157346; x=1748693346;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nmVE0LoLuQ2sOz7md1ojpKMEYBQpPODIwXBPf64H4so=;
 b=i+ODknK5vSJ7vsCnB5AvEZPRWyj3vjTtWm/zif31vWBELXpywVm1slWT
 04yjNuW0SdE4m6e+0i4AjJNskIajjwr6i4/mvef+0WF0/9CfxIMl7hs1x
 9+keJAnS3aMaewz8ic1j/GeqzyDWjXVDJA5sYPAQDYFLG+Brx8C9hAjDo
 pP2OXcws6SfUiOLspXY4PbLyUSybDb0XlrRMMIuxZlp6CKczgsnm/ycHc
 K7C0JjnwyHZ6EeHMc02Nx5K1OK7fubaX6hmSttGHc3cUekVh3H1l7QBcv
 79VX2wVSN9ttlqSh6uBCRAQ4tVo0qR/Brq3wqNs8b1NloVSw91jbO+fFJ Q==;
X-CSE-ConnectionGUID: JS7KeWuIQYSr1uRnSuGSXg==
X-CSE-MsgGUID: +7W0qlS3TRGDYZKhdq6L9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="16644179"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="16644179"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:09:05 -0700
X-CSE-ConnectionGUID: MtPrrLO1Scu6kwSFVOqy/Q==
X-CSE-MsgGUID: N0N8foNqRyiJ/lAqKIxhxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36090576"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:09:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 05/10] drm/i915/display: include intel_step.h where needed
In-Reply-To: <Zlm8puJHqqA9kStv@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717004739.git.jani.nikula@intel.com>
 <abee71a6c6edbd1a3ddf0f97838977e53feaa5ff.1717004739.git.jani.nikula@intel.com>
 <Zlm8puJHqqA9kStv@intel.com>
Date: Fri, 31 May 2024 15:08:59 +0300
Message-ID: <87frtyfajo.fsf@intel.com>
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

On Fri, 31 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, May 29, 2024 at 08:48:09PM +0300, Jani Nikula wrote:
>> Include what you use. With this, we can drop the include along with
>> xe_step.h from xe compat i915_drv.h.
>
> it was hard to see this one...
>
> 'intel_display_step' inside the intel_step component is not the right way.
>
> we should probably move intel_display_step_name to intel_dmc.c which is the
> only user.

It's a bit of a bummer. Looks like we'll need to have this duplicated in
i915, xe, and display. :/

>
> But this can be a follow up since for that we will still need the intel_step.h
> include in here.
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc.c          | 1 +
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 2 --
>>  2 files changed, 1 insertion(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>> index b5ebb0f5b269..852c11aa3205 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> @@ -31,6 +31,7 @@
>>  #include "intel_de.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dmc_regs.h"
>> +#include "intel_step.h"
>>  
>>  /**
>>   * DOC: DMC Firmware Support
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index e5966f07a924..3e930ce25c90 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -18,10 +18,8 @@
>>  #include "xe_device.h"
>>  #include "xe_bo.h"
>>  #include "xe_pm.h"
>> -#include "xe_step.h"
>>  #include "i915_reg_defs.h"
>>  #include "i915_utils.h"
>> -#include "intel_step.h"
>>  #include "intel_runtime_pm.h"
>>  #include <linux/pm_runtime.h>
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
