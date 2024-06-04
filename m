Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDCE8FB146
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 13:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBBDC10E45B;
	Tue,  4 Jun 2024 11:41:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnjBCnYe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D9D10E2DC;
 Tue,  4 Jun 2024 11:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717501277; x=1749037277;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Wmmm5dYxDFDzjH7zJVmwD+cuC89G5QUyCUsEBVIhygQ=;
 b=UnjBCnYe3kJBvItEHm3kc0r9916YEpDxQcXCt6uBQ6AnKYQMEzpJnLvU
 EMJz6yOwPdRBKw1clgdaFbGW3dt4klV5bJqKsWpSNGHPLvf204Kmuy12H
 HNDoYFwUJYtApbTnVIBa9TeRFxGxS4J/zcorIx90AFGUzfCeyW4MvXX4a
 5T7toH0tSqxtsMbFnn6nsDZiwbR5dZF+r9v4guBwf0OdaBBm2hD2jpSY2
 TrUqXQ9NYHDUQ/BcowZuVeZOuU/WF6YsMgJ0dhTwdVmdbKVzd7NvomllY
 OWDLIwHTW3uw5MzEfy5CjUaje3j2KCc0FSioQ/xf2iPIIgBpUC8RNYKi9 Q==;
X-CSE-ConnectionGUID: uGFwulGgTjWnfI7iqRq/Tg==
X-CSE-MsgGUID: jWHNNhR9TB22oQyA7o88LQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11092"; a="13788402"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="13788402"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 04:41:16 -0700
X-CSE-ConnectionGUID: M6LcEC0RTNaB5e/qoAFAvg==
X-CSE-MsgGUID: h9R9y82mQtasngnHqoX4xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="41655385"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 04:41:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com
Subject: Re: [PATCH 01/10] drm/i915/display: include gem/i915_gem_stolen.h
 where needed
In-Reply-To: <87o78mfas7.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1717004739.git.jani.nikula@intel.com>
 <6ac3480a8689fda5aaf4007cb604e06e939a03f7.1717004739.git.jani.nikula@intel.com>
 <Zlmum6_8IPuz37Ty@intel.com> <87o78mfas7.fsf@intel.com>
Date: Tue, 04 Jun 2024 14:41:11 +0300
Message-ID: <87h6e9c4vc.fsf@intel.com>
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

On Fri, 31 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 31 May 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Wed, May 29, 2024 at 08:48:05PM +0300, Jani Nikula wrote:
>>> Include what you use. We need to move the compat i915_gem_stolen.h under
>>> gem subdir.
>>
>> The patch below looks fine, but this message here is strange.
>> It looks like this patch is moving the header file from a top dir to
>> under 'gem' dir. But the header is already there.
>
> Huh, in compat-i915-headers it's not? And that's the point, the
> hierarchy should match i915 but for a couple of files it doesn't.

Rodrigo, any follow-up here? Am I missing something?

BR,
Jani.


>
> BR,
> Jani.
>
>
>>
>>> With this, we can drop the include from xe compat
>>> i915_drv.h.
>>> 
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_fbc.c                         | 1 +
>>>  .../gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h   | 0
>>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h                | 1 -
>>>  3 files changed, 1 insertion(+), 1 deletion(-)
>>>  rename drivers/gpu/drm/xe/compat-i915-headers/{ => gem}/i915_gem_stolen.h (100%)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> index e9189a864f69..6985abeb6102 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>>> @@ -43,6 +43,7 @@
>>>  #include <drm/drm_blend.h>
>>>  #include <drm/drm_fourcc.h>
>>>  
>>> +#include "gem/i915_gem_stolen.h"
>>>  #include "i915_drv.h"
>>>  #include "i915_reg.h"
>>>  #include "i915_utils.h"
>>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h b/drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>>> similarity index 100%
>>> rename from drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
>>> rename to drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
>>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> index cd4632276141..3be3d419530a 100644
>>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> @@ -19,7 +19,6 @@
>>>  #include "xe_bo.h"
>>>  #include "xe_pm.h"
>>>  #include "xe_step.h"
>>> -#include "i915_gem_stolen.h"
>>>  #include "i915_gpu_error.h"
>>>  #include "i915_reg_defs.h"
>>>  #include "i915_utils.h"
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
