Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C48A4DDA5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:16:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8120510E310;
	Tue,  4 Mar 2025 12:16:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mf8D12lI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431B510E310
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741090585; x=1772626585;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bWdW7oHTCO12V5NW43EHSezOxYB4hKqc9jClQdENag0=;
 b=mf8D12lINOpXSveDvOxS+qvBAHH4iYjJ/EbhOtMoIGILszLj2omcuzIK
 xxgSY44paoK7vAa9vRnXSuTuJazLWxxaihM5um0OKzR2IhptPvetLM2Nb
 F/WefHQO8M/4zcP2OVW+JWqTa81fvDQERupJZcgS6GxfR4rHJszgP/pxc
 lHOiQr8EMOrcN8hGkMqcRboi/JLUeOCAj8ie1rxnniELgCKH+UkW3SMD5
 L1xQZ7bWVBBOS0EWGybp/I6yycJz0lQyqQ/FsHiFeR5UBoR6L7wXVC7M7
 2Xld4LGYr6BeGL1XIyAErZUesfuzKypKG6oX/sZD/Viq41DUk02gquJx+ Q==;
X-CSE-ConnectionGUID: bm0mZTTrSOKVf5mWmoblPQ==
X-CSE-MsgGUID: N05eCdKAQiGcKe77uuHvsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45930686"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45930686"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:16:20 -0800
X-CSE-ConnectionGUID: v3fqQdf4RtiO7rygCWl+uA==
X-CSE-MsgGUID: ne7ZPX5XQN2gd17kxOd5ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="118354216"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:16:18 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/dmc: Create debugfs entry for dc6 counter
In-Reply-To: <Z8bdMhVqZcUMI2XF@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250303192319.4315-1-mohammed.thasleem@intel.com>
 <Z8bdMhVqZcUMI2XF@ideak-desk.fi.intel.com>
Date: Tue, 04 Mar 2025 14:16:15 +0200
Message-ID: <87mse1yos0.fsf@intel.com>
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

On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Mar 04, 2025 at 12:53:19AM +0530, Mohammed Thasleem wrote:
>> Starting from MTL we don't have a platform agnostic way to validate
>> DC6 state due to dc6 counter has been removed to validate DC state.
>> 
>> The goal is to validate that the display HW can reach the DC6 power
>> state. There is no HW DC6 residency counter (and there wasn't such
>> a counter earlier either), so an alternative way is required. According
>> to the HW team the display driver has programmed everything correctly in
>> order to allow the DC6 power state if the DC5 power state is reached
>> (indicated by the HW DC5 residency counter incrementing) and DC6 is
>> enabled by the driver.
>> 
>> Driver could take a snapshot of the DC5 residency counter right
>> after it enables DC6 (dc5_residency_start) and increment the SW
>> DC6 residency counter right before it disables DC6 or when user space
>> reads the DC6 counter. So the driver would update the counter at these
>> two points in the following way:
>> dc6_residency_counter += dc5_current_count - dc5_start_count
>> 
>> v2: Update the discription. (Imre)
>>     Read dc5 count during dc6 enable and disable then and update
>>     dc6 residency counter. (Imre)
>>     Remove variable from dmc structure. (Jani)
>>     Updated the subject title.
>> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
>>     Use flags to check dc6 enable/disable states. (Imre)
>>     Move the display version check and counter read/update to
>>     a helper. (Imre)
>>     Resize the variable length. (Rodrigo)
>>     Use old dc6 debugfs entry for every platform. (Rodrigo)
>> 
>> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
>>  .../i915/display/intel_display_power_well.c   | 26 +++++++++++++++++++
>>  .../i915/display/intel_display_power_well.h   |  1 +
>>  drivers/gpu/drm/i915/display/intel_dmc.c      | 21 ++++++++++++---
>>  4 files changed, 47 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 554870d2494b..1608268bd9e2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -490,6 +490,8 @@ struct intel_display {
>>  
>>  		/* perform PHY state sanity checks? */
>>  		bool chv_phy_assert[2];
>> +		unsigned int dc6_count;
>
> I think it's better to use dc6_allowed_count as Rodrigo suggested, not
> regarding it as a counter for actual DC6 transitions.
>
>> +		unsigned int dc5_start_count;
>>  	} power;
>>  
>>  	struct {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 5b60db597329..8478e687abb7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -17,6 +17,7 @@
>>  #include "intel_dkl_phy.h"
>>  #include "intel_dkl_phy_regs.h"
>>  #include "intel_dmc.h"
>> +#include "intel_dmc_regs.h"
>>  #include "intel_dmc_wl.h"
>>  #include "intel_dp_aux_regs.h"
>>  #include "intel_dpio_phy.h"
>> @@ -728,6 +729,22 @@ void gen9_sanitize_dc_state(struct intel_display *display)
>>  	power_domains->dc_state = val;
>>  }
>>  
>> +void update_dc6_count(struct intel_display *display, bool dc6_en_dis)
>
> Maybe rename dc6_en_dis to start_tracking?
>
> As Jani suggested the function should be in intel_dmc.c

Well, maybe.

I think the DMC register read should be in intel_dmc.c.

But maybe the display->power.* handling should be in
intel_display_power(_well).c?

IOW, make the functions and interfaces make sense for both. Now there's
no logic in the division.


BR,
Jani.

-- 
Jani Nikula, Intel
