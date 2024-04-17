Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB3D8A83BA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F5F1134D7;
	Wed, 17 Apr 2024 13:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VzBE6uc3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6344D1134D9;
 Wed, 17 Apr 2024 13:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713359060; x=1744895060;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sEBZITT2rCGsffgA1zbphLorChY3WahRUYxj6X07lUc=;
 b=VzBE6uc3Ftld56mR2Mwun35BM4lw05fQLG/vf4F58h+8BztDODb1IyAU
 0X0wvUtMz691zgTl4KRT9C8MOC8sm8a5qDOYpPldAPBderAnnohz8Ivx1
 prDJz2mtMhmimNwnV7kRpePkU6oNIr+SjrpWRySFcY0M8XkObTZ8sfDm4
 zE3qkn3+Tu4EwH/k5GELeZsrcc2Zl494RwNcSrBd9MhaemFM/qsaKtr3f
 O4j9+mxPwpC1kTVKu7CQ19pI4y1dJACxE/wUH/0nQrJEUwV97YqsTcANz
 QzMJFG/vmaMJoeSZF04TlOlvPN6MTehZwmYP2qgSQ/McpIIX3atjpo46m A==;
X-CSE-ConnectionGUID: a+Sfn/fCRwm3q4OAG68/9Q==
X-CSE-MsgGUID: KeVYNfKQS12PJZO4cjcO9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19406670"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="19406670"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:04:19 -0700
X-CSE-ConnectionGUID: SRwKtsFrSSWAPEVW9hfSAQ==
X-CSE-MsgGUID: d67UX/kUT+GN2c5jyJ4HBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22685359"
Received: from vpus-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.45.164])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:04:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 lucas.demarchi@intel.com, ville.syrjala@linux.intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net
Subject: Re: [PATCH v3 4/7] drm/xe/display: add generic __to_intel_display()
In-Reply-To: <87sezkxqko.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712665176.git.jani.nikula@intel.com>
 <503fea3fc545bebe6aa303d33cb5e816f7738343.1712665176.git.jani.nikula@intel.com>
 <Zh6jBLVEU5jmxuHI@intel.com> <87sezkxqko.fsf@intel.com>
Date: Wed, 17 Apr 2024 16:04:12 +0300
Message-ID: <87jzkwxhrn.fsf@intel.com>
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

On Wed, 17 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 16 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Tue, Apr 09, 2024 at 03:26:46PM +0300, Jani Nikula wrote:
>>> Add generic __to_intel_display() macro that accepts either struct
>>> xe_device * or struct intel_display *. This is to be used for
>>> transitional stuff that eventually needs to be converted to use struct
>>> intel_display *, and therefore is not part of to_intel_display().
>>> 
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 11 +++++++++++
>>>  1 file changed, 11 insertions(+)
>>> 
>>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> index 2792a497257e..4448eda8b2a4 100644
>>> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>>> @@ -29,6 +29,17 @@
>>>  #include "intel_runtime_pm.h"
>>>  #include <linux/pm_runtime.h>
>>>  
>>> +/*
>>> + * Transitional macro to optionally convert struct xe_device * to struct
>>> + * intel_display *, also accepting the latter.
>>> + */
>>> +#define __to_intel_display(p)						\
>>> +	_Generic(p,							\
>>> +		 const struct xe_device *: (&((const struct xe_device *)(p))->display), \
>>> +		 struct xe_device *: (&((struct xe_device *)(p))->display), \
>>> +		 const struct intel_display *: (p),			\
>>> +		 struct intel_display *: (p))
>>
>> hmmm... I thought that with our make magic we didn't need this.
>> but well, at least more awareness and trying to get rid of the make magic
>> earlier?
>
> It's needed because in i915 I wanted to put this in i915_drv.h to not
> create a extra dependency to/from i915_drv.h. I tried, it gets tricky.
> So weed another copy xe side.
>
> The make magic does convert all struct drm_i915_private to struct
> xe_device, so this could have struct drm_i915_private, but the other
> copy is not available here.

Okay, so in v4 I decided to shove the macro to a header, and this patch
and the duplication is no longer needed.

BR,
Jani.


>
> BR,
> Jani.
>
>>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>
>>> +
>>>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>>>  {
>>>  	return container_of(dev, struct drm_i915_private, drm);
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
