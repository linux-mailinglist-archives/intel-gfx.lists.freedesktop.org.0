Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FE99C0D24
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 18:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06DBF10E1A1;
	Thu,  7 Nov 2024 17:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iNKYLa+o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3816D10E084;
 Thu,  7 Nov 2024 17:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731001537; x=1762537537;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=uAnp9TxLtSGZI9kBb1bdZs5d+UDeNr6DPxisvGBVruw=;
 b=iNKYLa+ovMhGtiTWrQNDCbRENE+tyFEHA7pNsQhAzGdDgT/tF0S7eh41
 gfxJrod7k5ANnCeLWBn3UXaYU61WzneCUBhCaq3EIxVNDc+jW7tHLFfbd
 wciTHkTYLvUoBHoL/FhwnHADsD1SO0SpearJfywie35B71ZYFNvOerKoz
 80Jloyb4VH/JzcPlG4P+Gi6UxlkVAjvfw9ie+8PTLea4NffXPqYZOC43/
 qKUJoRSZMLPtntigka77fHNnaUzWD2hkOQAb/jZs6QjxBAd31WlKJGD6z
 o4Tmf4Q4a5apr/RBFZUL8Ah/wg6xtylAoHa5Jk87UAbs+hT0mdItZUs7Q Q==;
X-CSE-ConnectionGUID: 3vjoIy++R1qGxKoE8OBiNQ==
X-CSE-MsgGUID: sWEI9z7mTQ27MoeqYeWL5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41481848"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41481848"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 09:45:37 -0800
X-CSE-ConnectionGUID: tlbtkEoSSHOqFfCjJmzFXA==
X-CSE-MsgGUID: Jg5e+ZJlRMG8xhRGTfim1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85500666"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO [10.245.245.58])
 ([10.245.245.58])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 09:45:34 -0800
Message-ID: <fa84c1c1-a636-4634-8ca6-63fa0c3d6e9a@linux.intel.com>
Date: Thu, 7 Nov 2024 18:45:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Add intel_plane_initial_vblank_wait
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Maarten@mblankhorst.nl, Lankhorst@mblankhorst.nl, dev@lankhorst.se
References: <20241107100140.292928-2-maarten.lankhorst@linux.intel.com>
 <20241107113617.349916-1-maarten.lankhorst@linux.intel.com>
 <Zyyw5-E1-Ae5yVBr@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <Zyyw5-E1-Ae5yVBr@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

Den 2024-11-07 kl. 13:21, skrev Ville Syrjälä:
> On Thu, Nov 07, 2024 at 12:36:17PM +0100, Maarten Lankhorst wrote:
>> We're changing the driver to have no interrupts during early init for
>> Xe, so we poll the PIPE_FRMSTMSMP counter instead.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-2-maarten.lankhorst@linux.intel.com
>> Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c  |  6 +++---
>>  .../drm/i915/display/intel_plane_initial.c    |  9 ++++++++-
>>  .../drm/i915/display/intel_plane_initial.h    |  2 ++
>>  drivers/gpu/drm/xe/display/xe_plane_initial.c | 19 ++++++++++++++++++-
>>  4 files changed, 31 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index d7f92dc56d1e9..7bd6da2bb36f7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -795,7 +795,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>>  	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
>>  	    hsw_ips_disable(crtc_state)) {
>>  		crtc_state->ips_enabled = false;
>> -		intel_crtc_wait_for_next_vblank(crtc);
>> +		intel_plane_initial_vblank_wait(plane);
>>  	}
>>  
>>  	/*
>> @@ -809,7 +809,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>>  	 */
>>  	if (HAS_GMCH(dev_priv) &&
>>  	    intel_set_memory_cxsr(dev_priv, false))
>> -		intel_crtc_wait_for_next_vblank(crtc);
>> +		intel_plane_initial_vblank_wait(plane);
>>  
>>  	/*
>>  	 * Gen2 reports pipe underruns whenever all planes are disabled.
>> @@ -819,7 +819,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, false);
>>  
>>  	intel_plane_disable_arm(NULL, plane, crtc_state);
>> -	intel_crtc_wait_for_next_vblank(crtc);
>> +	intel_plane_initial_vblank_wait(plane);
>>  }
>>  
>>  unsigned int
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>> index 62401f6a04e4f..77eb2b763be5e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
>> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
>> @@ -14,6 +14,13 @@
>>  #include "intel_frontbuffer.h"
>>  #include "intel_plane_initial.h"
>>  
>> +void intel_plane_initial_vblank_wait(struct intel_plane *plane)
>> +{
>> +	struct intel_crtc *crtc = intel_crtc_for_pipe(to_intel_display(plane->base.dev), plane->pipe);
>> +
>> +	intel_crtc_wait_for_next_vblank(crtc);
>> +}
>> +
>>  static bool
>>  intel_reuse_initial_plane_obj(struct intel_crtc *this,
>>  			      const struct intel_initial_plane_config plane_configs[],
>> @@ -438,7 +445,7 @@ void intel_initial_plane_config(struct drm_i915_private *i915)
>>  		intel_find_initial_plane_obj(crtc, plane_configs);
>>  
>>  		if (i915->display.funcs.display->fixup_initial_plane_config(crtc, plane_config))
>> -			intel_crtc_wait_for_next_vblank(crtc);
>> +			intel_plane_initial_vblank_wait(to_intel_plane(crtc->base.primary));
>>  
>>  		plane_config_fini(plane_config);
>>  	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
>> index 64ab95239cd45..149b1bf1bc1f8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
>> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
>> @@ -7,7 +7,9 @@
>>  #define __INTEL_PLANE_INITIAL_H__
>>  
>>  struct drm_i915_private;
>> +struct intel_plane;
>>  
>> +void intel_plane_initial_vblank_wait(struct intel_plane *plane);
>>  void intel_initial_plane_config(struct drm_i915_private *i915);
>>  
>>  #endif
>> diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> index 668f544a7ac80..9252cfeef0a1f 100644
>> --- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> +++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
>> @@ -8,7 +8,9 @@
>>  
>>  #include "regs/xe_gtt_defs.h"
>>  #include "xe_ggtt.h"
>> +#include "xe_mmio.h"
>>  
>> +#include "i915_reg.h"
>>  #include "intel_atomic_plane.h"
>>  #include "intel_crtc.h"
>>  #include "intel_display.h"
>> @@ -22,6 +24,21 @@
>>  
>>  #include <generated/xe_wa_oob.h>
>>  
>> +void intel_plane_initial_vblank_wait(struct intel_plane *plane)
>> +{
>> +	/* Early xe has no irq */
>> +	struct xe_device *xe = to_xe_device(plane->base.dev);
>> +	struct xe_reg pipe_frmtmstmp = XE_REG(i915_mmio_reg_offset(PIPE_FRMTMSTMP(plane->pipe)));
>> +	u32 timestamp;
>> +	int ret;
>> +
>> +	timestamp = xe_mmio_read32(xe_root_tile_mmio(xe), pipe_frmtmstmp);
>> +
>> +	ret = xe_mmio_wait32_not(xe_root_tile_mmio(xe), pipe_frmtmstmp, ~0U, timestamp, 40000U, &timestamp, false);
>> +	if (ret < 0)
>> +		drm_warn(&xe->drm, "waiting for early vblank failed with %i\n", ret);
> 
> Why did you change to this from the earlier SURFLIVE approach?This works correctly when calling disable_plane too. When I tested on lunarlake, this gave me an issue.
When failing to construct initial fb, intel_plane_disable_noatomic() is called,
and then calls drm_crtc_wait_one_vblank if not fixed like above.

SURFLIVE works great for the specific case of flipping, not that great for disabling. :)

Cheers,
~Maarten 
