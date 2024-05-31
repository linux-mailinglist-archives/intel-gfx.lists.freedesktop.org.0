Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E008D6135
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:04:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A0A10E785;
	Fri, 31 May 2024 12:04:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWiBrYaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB13610E721;
 Fri, 31 May 2024 12:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157040; x=1748693040;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bzH8vep84Aa50pckZxXp6y2r6RMQfTLQjnS63HOlRgI=;
 b=nWiBrYaD12N+k5YEQ+ks4fbwtGbdI38hZdVy0iqyxr4fea+Hx5xiFa4J
 w87k8zAkYOxj6IDATTXE4ZRdyDW7cZGplSNw2CR2z1bvOpJ8a4TSmTFDt
 5c4+erZPDu7OE/UZRH+N6pf8XX6W33Z+zVth/nf5LyhZLUCcS4c0siuIW
 zJAcp3P7rIPA2nam1tl+1VMm1hf9Ly2zGJHjQv+qKTy2mAHcNjzaEbH+i
 BrDWudAb4V39E6pia5RHqC/3dxkUJKzD80qX2886w2DvYVISXf65rNLgw
 TKS90uwMMxmIKhLBolKIXpWlD5LLpVgIOySH11GsJBBcZwZCa1Ysnq6NB A==;
X-CSE-ConnectionGUID: g+QeuxxSSmSO/GeeuKkt3g==
X-CSE-MsgGUID: jDjoNSJQTUiN4vrL0Sb0Qg==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="31224183"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="31224183"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:03:58 -0700
X-CSE-ConnectionGUID: 1JGa/ujCQzW3qYyPydxITA==
X-CSE-MsgGUID: fDYtiO8NTK+AVmrtI4WKUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="36076651"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.190])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:03:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 01/10] drm/i915/display: include gem/i915_gem_stolen.h
 where needed
In-Reply-To: <Zlmum6_8IPuz37Ty@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717004739.git.jani.nikula@intel.com>
 <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
 <Zlmum6_8IPuz37Ty@intel.com>
Date: Fri, 31 May 2024 15:03:52 +0300
Message-ID: <87o78mfas7.fsf@intel.com>
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
> On Wed, May 29, 2024 at 08:48:05PM +0300, Jani Nikula wrote:
>> Include what you use. We need to move the compat i915_gem_stolen.h under
>> gem subdir.
>
> The patch below looks fine, but this message here is strange.
> It looks like this patch is moving the header file from a top dir to
> under 'gem' dir. But the header is already there.

Huh, in compat-i915-headers it's not? And that's the point, the
hierarchy should match i915 but for a couple of files it doesn't.

BR,
Jani.


>
>> With this, we can drop the include from xe compat
>> i915_drv.h.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
>>  .../gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h   | 0
>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
>>  3 files changed, 1 insertion(+), 1 deletion(-)
>>  rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index e9189a864f69..6985abeb6102 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -43,6 +43,7 @@
>>  #include <drm/drm_blend.h>
>>  #include <drm/drm_fourcc.h>
>>  
>> +#include "gem/i915_gem_stolen.h"
>>  #include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "i915_utils.h"
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>> similarity index 100%
>> rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
>> rename to drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> index cd4632276141..3be3d419530a 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>> @@ -19,7 +19,6 @@
>>  #include "xe_bo.h"
>>  #include "xe_pm.h"
>>  #include "xe_step.h"
>> -#include "i915_gem_stolen.h"
>>  #include "i915_gpu_error.h"
>>  #include "i915_reg_defs.h"
>>  #include "i915_utils.h"
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
