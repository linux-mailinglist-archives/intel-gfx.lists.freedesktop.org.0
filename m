Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2E1590C2E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627CAA1D86;
	Fri, 12 Aug 2022 06:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B7BD12A9D2
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660287382; x=1691823382;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=08dr0tjIC2X9NJ33nYLx0gScTSIVh04nHJfkb/SwqHo=;
 b=Ym87oCBM8CZJAg/tloy/vhmfWlzROawG1/9WytJj6WZBtvoMYqS1ohLL
 eIdbp2Z8LYOiIIRvtM7CDpTLdMks00Ou9fXZ/32lbnCVYuEpHAmi5E7TH
 0HYo7LIkmZwLcaFQqZzYA8p057vqcNhhIUC3i4Tv+NQ5tXhErzsQe8olY
 WHUx5Q/h9E23nZFY/SbSKBJ62tkewRByDKI5m15gQv4BqZ9VR55iexqyr
 px6vz2zXxjBEPoI379ixh8mBgoOa7WpK3MtY4zcQIhczPex7Or5NjTRx6
 BeqpaluN/JZe2cNPBtxLUcS39mbmwcgkTfiWQQcBXECfZj5cdJ4g15jY4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="317505129"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="317505129"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:56:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="665712572"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:56:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:56:17 +0300
Message-ID: <87sfm2rlv2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
 members under display.gmbus
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
>> Subject: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
>> members under display.gmbus
>>
>> Move display related members under drm_i915_private display sub-struct.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
>>  .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
>>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++----------
>>  drivers/gpu/drm/i915/i915_drv.h               | 16 -------
>>  drivers/gpu/drm/i915/i915_irq.c               |  4 +-
>>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
>>  7 files changed, 59 insertions(+), 52 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> index 6095f5800a2e..ea40c75c2986 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct
>> drm_i915_private *dev_priv,
>>        * functions use cdclk. Not all platforms/ports do,
>>        * but we'll lock them all for simplicity.
>>        */
>> -     mutex_lock(&dev_priv->gmbus_mutex);
>> +     mutex_lock(&dev_priv->display.gmbus.mutex);
>>       for_each_intel_dp(&dev_priv->drm, encoder) {
>>               struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>>
>>               mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
>> -                                  &dev_priv->gmbus_mutex);
>> +                                  &dev_priv->display.gmbus.mutex);
>>       }
>>
>>       intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe); @@ -2113,7
>> +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
>>
>>               mutex_unlock(&intel_dp->aux.hw_mutex);
>>       }
>> -     mutex_unlock(&dev_priv->gmbus_mutex);
>> +     mutex_unlock(&dev_priv->display.gmbus.mutex);
>>
>>       for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
>>               struct intel_dp *intel_dp = enc_to_intel_dp(encoder); diff --
>> git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 306584c038c9..fe19d4f9a9ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -6,7 +6,11 @@
>>  #ifndef __INTEL_DISPLAY_CORE_H__
>>  #define __INTEL_DISPLAY_CORE_H__
>>
>> +#include <linux/mutex.h>
>>  #include <linux/types.h>
>> +#include <linux/wait.h>
>> +
>> +#include "intel_gmbus.h"
>>
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -78,6 +82,25 @@ struct intel_display {
>>               /* Display internal color functions */
>>               const struct intel_color_funcs *color;
>>       } funcs;
>> +
>> +     /* Grouping using anonymous structs. Keep sorted. */
>> +     struct {
>> +             /*
>> +              * Base address of where the gmbus and gpio blocks are
>> located
>> +              * (either on PCH or on SoC for platforms without PCH).
>> +              */
>> +             u32 mmio_base;
>> +
>> +             /*
>> +              * gmbus.mutex protects against concurrent usage of the
>> single
>> +              * hw gmbus controller on different i2c buses.
>> +              */
>> +             struct mutex mutex;
>> +
>> +             struct intel_gmbus *bus[GMBUS_NUM_PINS];
>> +
>> +             wait_queue_head_t wait_queue;
>> +     } gmbus;
>>  };
>
> Can this be moved to struct intel_dp?

Well, no. The data here is shared across all of them.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
