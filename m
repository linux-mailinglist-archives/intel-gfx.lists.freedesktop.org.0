Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52173C847DA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 11:30:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3A310E3AF;
	Tue, 25 Nov 2025 10:29:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZ+hXOms";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432B110E3AB;
 Tue, 25 Nov 2025 10:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764066595; x=1795602595;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Z1KyZdNO1jwLLInFwQS/7jSsVjsQ05oniFpJhhwAO8c=;
 b=MZ+hXOmsR9iMgY8rZuuakLC8hY6REyYh9QkI7N6kdHkvU027J0g73u8o
 qypz059myb0lWqoDGOvqr8miG7S4KOJ6Tz5YLp6hwXx+6vcodeJNqsuC8
 IiWoeCMovAd8hr60Ocs58W2zCLoAi4K55a5pGqDXFfPFX+dXhIKGpD9Vd
 vOObXYG0OB7sihbt9WnN23fAs+wj7DZHes0W8wt4TcZfhdkfIzRNG+kj8
 Ohlk46U/W1IpyozgBjkU8wCOYOI6HnZwp48TwWMhOkqGpAYZkdAgJ+boq
 1kgVYHQSg4iButc2sxWCP0YYmokqNESvEYxZfgNzuSHQs/EZdzXCueRmO w==;
X-CSE-ConnectionGUID: p6hSAwUrS/iisip3Rxh0Vg==
X-CSE-MsgGUID: J2s+2oEiSZOwN9gD603A4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76765412"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="76765412"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:29:55 -0800
X-CSE-ConnectionGUID: rHfEqK98QouuvFIVXaRJwQ==
X-CSE-MsgGUID: MtqlFYvWToCXIQV3KcL8lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="192415598"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:29:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/cdclk: drop i915_drv.h include
In-Reply-To: <DS4PPF69154114F605C32298C3BA3899E0BEFD5A@DS4PPF69154114F.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251121112200.3435099-1-jani.nikula@intel.com>
 <DS4PPF69154114F605C32298C3BA3899E0BEFD5A@DS4PPF69154114F.namprd11.prod.outlook.com>
Date: Tue, 25 Nov 2025 12:29:50 +0200
Message-ID: <d69d499c731f996e25420d262d5575c88ec86c04@intel.com>
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

On Fri, 21 Nov 2025, "Kahola, Mika" <mika.kahola@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
>> Sent: Friday, 21 November 2025 13.22
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH 1/2] drm/i915/cdclk: drop i915_drv.h include
>> 
>> intel_cdclk.c no longer needs i915_drv.h. Drop it.
>> 
>
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>

Thanks! Is that for both patches or just 1/2?

BR,
Jani.

>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 5c90e53b4e46..69a79ccdd1ba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -29,7 +29,6 @@
>>  #include <drm/drm_print.h>
>> 
>>  #include "hsw_ips.h"
>> -#include "i915_drv.h"
>>  #include "i915_reg.h"
>>  #include "intel_atomic.h"
>>  #include "intel_audio.h"
>> @@ -46,6 +45,7 @@
>>  #include "intel_pcode.h"
>>  #include "intel_plane.h"
>>  #include "intel_psr.h"
>> +#include "intel_step.h"
>>  #include "intel_vdsc.h"
>>  #include "skl_watermark.h"
>>  #include "skl_watermark_regs.h"
>> --
>> 2.47.3
>

-- 
Jani Nikula, Intel
