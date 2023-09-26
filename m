Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB81D7AE9A1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 11:55:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF3BC10E048;
	Tue, 26 Sep 2023 09:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D960B10E048
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695722136; x=1727258136;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=MpImtw0f2GFJTMvBus30BBe5OIbpEnhdBgwPDOKJiIQ=;
 b=CG7RCTWZMr6rjJmZJ6qieEGaMG+iVv3FXBOTYludz+oWdg+7yl3GT4P5
 sO7HD/IJ8JACOX449dOXpXE2zWjUKsw+qs3Q44fQv0fBA78tqaGaDtQ50
 N1kug54uCYyq8SGkOqF+3jZknp2Ny9UApe3KdYhDryRJJYvrtzBxCB2XX
 X3tmxuKo4bJa0WuZ1k88lZC8K9R1Eot4ApM+FIHgo3MC6QVfffBzhdtm6
 26ibQSu03NOnSMIOT1FWe2HqcBXdDWt1PuSq4MbjyQ9mnzOSp2lTBhEay
 5jpdWlRftCMcnT5RH6FhOwBHHXmm9Lyn4uogo618nM2ngLAFRPgSkE2vk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="385378111"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="385378111"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:55:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="698405304"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="698405304"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 02:55:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <ZQypLvTIlF7dsWX0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230921155325.3851197-1-jani.nikula@intel.com>
 <ZQypLvTIlF7dsWX0@intel.com>
Date: Tue, 26 Sep 2023 12:55:32 +0300
Message-ID: <87msx9l0mj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cx0: prefer forward declarations
 over includes
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

On Thu, 21 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Sep 21, 2023 at 06:53:25PM +0300, Jani Nikula wrote:
>> Avoid including the world from headers when forward declarations
>> suffice.
>> 
>> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Trusting more your compiler then my eyes, but
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cx0_phy.h | 14 ++++++++------
>>  1 file changed, 8 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> index 4c4db5cdcbd0..912e0eeb0be3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
>> @@ -10,14 +10,15 @@
>>  #include <linux/bitfield.h>
>>  #include <linux/bits.h>
>>  
>> -#include "i915_drv.h"
>> -#include "intel_display_types.h"
>> -
>> -struct drm_i915_private;
>> -struct intel_encoder;
>> -struct intel_crtc_state;
>>  enum icl_port_dpll_id;
>>  enum phy;
>> +struct drm_i915_private;
>> +struct intel_atomic_state;
>> +struct intel_c10pll_state;
>> +struct intel_c20pll_state;
>> +struct intel_crtc_state;
>> +struct intel_encoder;
>> +struct intel_hdmi;
>>  
>>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
>>  void intel_mtl_pll_enable(struct intel_encoder *encoder,
>> @@ -44,4 +45,5 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>>  				     const struct intel_crtc_state *crtc_state);
>>  int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>> +
>>  #endif /* __INTEL_CX0_PHY_H__ */
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
