Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9120959541E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 09:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33C4410EE83;
	Tue, 16 Aug 2022 07:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F221130AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660636253; x=1692172253;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EpA+Kt7ZVQaQSYmsaOEvsu5EpxTVBfQN70YhrNiCQns=;
 b=m3zxnIN+gm3vz2GEklIuW3rXTdqBcXQ002rvmVMOC73h5i9aujR7ho3y
 fKByAiL1ddNegFoWxp+kk2SXOr3uoIMK3zFZfZ5MvJQhEuCsa/Bgk0HNt
 QSK0eCyqHaLZA0Z9sqNBgdTSZC/kKWfrnC2DrNufl8Uae+ZKo6E4UBtws
 yXYhETz55raDC/+TiCkr/a+O4BsviszennP5WiseKw4mHmJDLhS7fzFWl
 8NqFJDxVheHvlPnNfKvrvlDNApF0KGk6INJBgE94tpvaCHzOCzV8ZQjk3
 0rKUiUP+Oy2OFGoJ/gtD6rAyZoh3aExly9uWUs+Ij/R8vhUvZ1y2IdQpK A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279114083"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279114083"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:50:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="667001891"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 00:50:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177133F3D84617B275A7393BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <5e67135a49e766b6890c92fd35bab43386f40c11.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177BB7AF101A9021E62C4DCBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87sfm2rlv2.fsf@intel.com>
 <DM6PR11MB3177133F3D84617B275A7393BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Tue, 16 Aug 2022 10:50:49 +0300
Message-ID: <87v8qsr5ie.fsf@intel.com>
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

On Tue, 16 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Friday, August 12, 2022 12:26 PM
>> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
>> gfx@lists.freedesktop.org
>> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
>> Subject: RE: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
>> members under display.gmbus
>>
>> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> >> -----Original Message-----
>> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
>> >> Of Jani Nikula
>> >> Sent: Thursday, August 11, 2022 8:37 PM
>> >> To: intel-gfx@lists.freedesktop.org
>> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> >> <lucas.demarchi@intel.com>
>> >> Subject: [Intel-gfx] [PATCH 09/39] drm/i915: move and group gmbus
>> >> members under display.gmbus
>> >>
>> >> Move display related members under drm_i915_private display sub-
>> struct.
>> >>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_cdclk.c    |  6 +--
>> >>  .../gpu/drm/i915/display/intel_display_core.h | 23 ++++++++++
>> >>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
>> >>  drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 +++++++++----------
>> >>  drivers/gpu/drm/i915/i915_drv.h               | 16 -------
>> >>  drivers/gpu/drm/i915/i915_irq.c               |  4 +-
>> >>  drivers/gpu/drm/i915/i915_reg.h               | 14 +++---
>> >>  7 files changed, 59 insertions(+), 52 deletions(-)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> index 6095f5800a2e..ea40c75c2986 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> >> @@ -2098,12 +2098,12 @@ static void intel_set_cdclk(struct
>> >> drm_i915_private *dev_priv,
>> >>        * functions use cdclk. Not all platforms/ports do,
>> >>        * but we'll lock them all for simplicity.
>> >>        */
>> >> -     mutex_lock(&dev_priv->gmbus_mutex);
>> >> +     mutex_lock(&dev_priv->display.gmbus.mutex);
>> >>       for_each_intel_dp(&dev_priv->drm, encoder) {
>> >>               struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> >>
>> >>               mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
>> >> -                                  &dev_priv->gmbus_mutex);
>> >> +                                  &dev_priv->display.gmbus.mutex);
>> >>       }
>> >>
>> >>       intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe); @@ -2113,7
>> >> +2113,7 @@ static void intel_set_cdclk(struct drm_i915_private
>> >> +*dev_priv,
>> >>
>> >>               mutex_unlock(&intel_dp->aux.hw_mutex);
>> >>       }
>> >> -     mutex_unlock(&dev_priv->gmbus_mutex);
>> >> +     mutex_unlock(&dev_priv->display.gmbus.mutex);
>> >>
>> >>       for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
>> >>               struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>> >> diff -- git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> index 306584c038c9..fe19d4f9a9ab 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> @@ -6,7 +6,11 @@
>> >>  #ifndef __INTEL_DISPLAY_CORE_H__
>> >>  #define __INTEL_DISPLAY_CORE_H__
>> >>
>> >> +#include <linux/mutex.h>
>> >>  #include <linux/types.h>
>> >> +#include <linux/wait.h>
>> >> +
>> >> +#include "intel_gmbus.h"
>> >>
>> >>  struct drm_i915_private;
>> >>  struct intel_atomic_state;
>> >> @@ -78,6 +82,25 @@ struct intel_display {
>> >>               /* Display internal color functions */
>> >>               const struct intel_color_funcs *color;
>> >>       } funcs;
>> >> +
>> >> +     /* Grouping using anonymous structs. Keep sorted. */
>> >> +     struct {
>> >> +             /*
>> >> +              * Base address of where the gmbus and gpio blocks are
>> >> located
>> >> +              * (either on PCH or on SoC for platforms without PCH).
>> >> +              */
>> >> +             u32 mmio_base;
>> >> +
>> >> +             /*
>> >> +              * gmbus.mutex protects against concurrent usage of the
>> >> single
>> >> +              * hw gmbus controller on different i2c buses.
>> >> +              */
>> >> +             struct mutex mutex;
>> >> +
>> >> +             struct intel_gmbus *bus[GMBUS_NUM_PINS];
>> >> +
>> >> +             wait_queue_head_t wait_queue;
>> >> +     } gmbus;
>> >>  };
>> >
>> > Can this be moved to struct intel_dp?
>>
>> Well, no. The data here is shared across all of them.
>>
> Then maybe we might need to think on this. I somehow feel having this under display wont look good. Since it's a low level bus communication, can be tagged under bus related to interface.
> I agree from your other comments that this is just a first step to cleanup i915 and there is scope to cleanup further.

As I've explained elsewhere, the "display" here should be taken to be
very high level. Not "a display device", but "everything related to
display hardware". Only display needs gmbus, nothing else.

There may be further cleanups to be made, but this series has a very
specific purpose of splitting the display parts to a display sub-struct
of drm_i915_private. This is already 39 patches, it's not even complete
on that target, so need to not lose focus here.

BR,
Jani.



>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>
> Thanks and Regards,
> Arun R Murthy
> -------------------

-- 
Jani Nikula, Intel Open Source Graphics Center
