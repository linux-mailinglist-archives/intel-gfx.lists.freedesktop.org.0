Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3F3457018
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 14:52:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 412936E218;
	Fri, 19 Nov 2021 13:52:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0BC6E159
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 13:52:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="233134688"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="233134688"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:52:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="673218398"
Received: from sgconnee-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.83])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 05:52:36 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Daniel Vetter <daniel@ffwll.ch>
In-Reply-To: <YZPwtXx7o8jsB2N1@phenom.ffwll.local>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211116171434.20516-1-jani.nikula@intel.com>
 <20211116171434.20516-5-jani.nikula@intel.com>
 <YZPwtXx7o8jsB2N1@phenom.ffwll.local>
Date: Fri, 19 Nov 2021 15:52:29 +0200
Message-ID: <87h7c8jlr6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: drop intel_display.h include
 from intel_display_power.h
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

On Tue, 16 Nov 2021, Daniel Vetter <daniel@ffwll.ch> wrote:
> On Tue, Nov 16, 2021 at 07:14:34PM +0200, Jani Nikula wrote:
>> Use forward declarations instead.
>> 
>> Cc: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> On the series: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
>
> I'm assuming you've copypaste stuff correctly, at a glance it looks like
> it :-)
>
> Also I think that's a solid direction for untangling our include mess!

Thanks for the reviews, pushed to drm-intel-next.

BR,
Jani.


> -Daniel
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.h | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
>> index 2777af09c711..686d18eaa24c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> @@ -6,10 +6,11 @@
>>  #ifndef __INTEL_DISPLAY_POWER_H__
>>  #define __INTEL_DISPLAY_POWER_H__
>>  
>> -#include "intel_display.h"
>>  #include "intel_runtime_pm.h"
>>  #include "i915_reg.h"
>>  
>> +enum dpio_channel;
>> +enum dpio_phy;
>>  struct drm_i915_private;
>>  struct i915_power_well;
>>  struct intel_encoder;
>> -- 
>> 2.30.2
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
