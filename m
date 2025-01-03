Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9D2A00847
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:12:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 918F410E87A;
	Fri,  3 Jan 2025 11:12:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hF0yB7Sy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B693F10E87A;
 Fri,  3 Jan 2025 11:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735902725; x=1767438725;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Frb5Xr1K8JSuTh7D6Uld0EJrQ+oAcuQKs3A0tFfamME=;
 b=hF0yB7Syiu9CnP/Wg8/4b5mCI810xKEfS1GCFdIrJdS9SIAve50JSTNS
 ObHJhuenvpN6KkLa/9a6NyZWIq6xu3H76FKPUrqBfInytIofT+4HCCRH8
 NLp4IfpZ1vD2kMLrg4XluECCeIbRcfZbXg8rliyb7r3ngRTBTItTCO8Co
 IidpelVKRh6AW9PIPwx1FAzq3BGRVkH2oaMk5W6txJ6O3zNtLtA/3T5tm
 sXnGcJOAJQj/yASnnz7nJ7BBPhL5LN3BfTtdqwGYwx0j1dFG5zfgPLfAe
 6Ho59dG/RiGPc5iWWi0Nrln2x0UQIrE6R3q9nCsmt0MaQzRhCqhn6oN4P w==;
X-CSE-ConnectionGUID: GlK1mVfaQg+vnV+9QRIvdg==
X-CSE-MsgGUID: u3fuwACiQXKBsQ8VhJs15g==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="35852290"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35852290"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:12:05 -0800
X-CSE-ConnectionGUID: CDjX5SnYSp2RHKGMWCOqAQ==
X-CSE-MsgGUID: 0KszDhDLRp+JsWe8xftjCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="106807844"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:12:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/cmtg: Disable the CMTG
In-Reply-To: <173566983648.6883.16609818129709969328@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <87pll8nki3.fsf@intel.com>
 <173566983648.6883.16609818129709969328@intel.com>
Date: Fri, 03 Jan 2025 13:11:59 +0200
Message-ID: <87jzbcm9s0.fsf@intel.com>
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

On Tue, 31 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2024-12-31 08:45:56-03:00)
>>On Tue, 24 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>I understand you're following patterns from elsewhere in the driver. But
>
> Correct.
>
>>I've always wondered why we use a mixture of atomic state, global state,
>>and the specific (e.g. struct intel_cmtg_state) here. Makes no sense.
>>
>>I believe the specific global state structs should all be internal to
>>the implementation in the .c file, opaque outside, with accessor
>>functions. The to_intel_cmtg_state() should be a proper function
>>(although the constness handling may require a _Generic wrapper).
>
> Yeah. I agree that the specific state bits should be private to the
> implementation. Even the type "struct intel_cmtg_state" could be private
> and then we would have the exposed interface dealing with only "struct
> intel_global_state" or "struct intel_atomic_state" pointers.
>
> The only function that is currently asking for a struct intel_cmtg_state
> pointer is intel_cmtg_readout_state(), but that one can be easily
> changed to receive a pointer to struct intel_global_state instead (or
> even converted to be a function specific to display->cmtg.obj.state,
> dropping the state argument).
>
> With that, there would be no need to expose the struct intel_cmtg_state
> type anymore and it can be made entirely private to intel_cmtg.c.
>
> Let me know what you think.
>
>>
>>I actually have had patches to do this for all the global state stuff,
>>but they've conflicted and gone stale. It's hard when basically anyone
>>can just poke at the state when this shouldn't really be the case.
>
> We could maybe start with CMTG state and progressively converting the
> other guys?

I kind of jumped the gun with pmdemand that you already reviewed. That
could be the minimal direction here too. There's the to_intel_*_state()
but it could be an intermediate step towards the right direction. Could
do that here as well.

> (Although, after reading the entire review, if we decide to deal with
> the CMTG only as part of the sanitization, I guess implementing the
> whole global state "protocol" for the CMTG wouldn't make much sense
> anymore, right?).

I'll reply to this below.

>
>>
>>
>>> +
>>> +#endif /* __INTEL_CMTG_H__ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> new file mode 100644
>>> index 000000000000..082f96cad284
>>> --- /dev/null
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> @@ -0,0 +1,21 @@
>>> +/* SPDX-License-Identifier: MIT */
>>> +/*
>>> + * Copyright (C) 2024 Intel Corporation
>>> + */
>>> +
>>> +#ifndef __INTEL_CMTG_REGS_H__
>>> +#define __INTEL_CMTG_REGS_H__
>>> +
>>> +#include "i915_reg_defs.h"
>>> +
>>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>>> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>>> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>>> +
>>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>>
>>Could make those underscore prefixed, with a parametrized
>>TRANS_CMTG_CTL(idx).
>
> I had thought about that, but then decided to go with two separate
> defines.
>
> The main reason was because of the fact that the second instance was
> added to support the async dual eDP case and not necessarily to be a
> common "per pipe" resource like with other pipe/transcoder components.

Not insisting, not a huge deal.

>
>>
>>> +#define  CMTG_ENABLE                        REG_BIT(31)
>>> +
>>> +#endif /* __INTEL_CMTG_REGS_H__ */
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 4271da219b41..098985ad7ad4 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -62,6 +62,7 @@
>>>  #include "intel_bw.h"
>>>  #include "intel_cdclk.h"
>>>  #include "intel_clock_gating.h"
>>> +#include "intel_cmtg.h"
>>>  #include "intel_color.h"
>>>  #include "intel_crt.h"
>>>  #include "intel_crtc.h"
>>> @@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
>>>          if (ret)
>>>                  goto fail;
>>>  
>>> +        ret = intel_cmtg_atomic_check(state);
>>> +        if (ret)
>>> +                goto fail;
>>> +
>>>          for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>>>                  if (!intel_crtc_needs_modeset(new_crtc_state))
>>>                          continue;
>>> @@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>>                          intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);
>>>          }
>>>  
>>> +        intel_cmtg_disable(state);
>>> +
>>>          intel_commit_modeset_disables(state);
>>>  
>>>          intel_dp_tunnel_atomic_alloc_bw(state);
>>> @@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device *dev)
>>>                  }
>>>          }
>>>  
>>> +        ret = intel_cmtg_force_disabled(to_intel_atomic_state(state));
>>> +        if (ret)
>>> +                goto out;
>>> +
>>
>>I think the usual way is to do foo_sanitize_state() at
>>intel_modeset_setup_hw_state().
>
> Hm... I see. In this case:
>
> - For Xe2_LPD and newer, we can simply disable the CMTG as part of the
>   sanitization;
> - For pre-Xe2_LPD displays, which would require a modeset when disabling
>   the CMTG, additionally force the CRTC to be disabled.
>
> Right?

I'm not sure what you mean by forcing the CRTC to be disabled, but I
think that's the general idea, yes.

> In this case, I guess implementing the whole "global state" protocol for
> the CMTG wouldn't make much sense if we are not going to handle the
> disabling as part of the initial commit. We could simply store the state
> in a "vanilla" struct (and it would be good if such struct lived only
> during the readout+sanitization time).

I think it all depends on what we'll need if/when we properly implement
CMTG support. If we're going to need global state for that, and you have
it written here, might just as well use it instead of throwing it in the
curb.

BR,
Jani.


>
>>
>>The above is incredibly specific to what intel_initial_commit()
>>does. There's nothing like that, it's a nice pure high level function
>>currently.
>>
>>>          ret = drm_atomic_commit(state);
>>>  
>>>  out:
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> index 554870d2494b..d0b039114e2d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>> @@ -354,6 +354,10 @@ struct intel_display {
>>>                  unsigned int skl_preferred_vco_freq;
>>>          } cdclk;
>>>  
>>> +        struct {
>>> +                struct intel_global_obj obj;
>>> +        } cmtg;
>>> +
>>>          struct {
>>>                  struct drm_property_blob *glk_linear_degamma_lut;
>>>          } color;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index 9a333d9e6601..a126247eb6b8 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -145,6 +145,7 @@ struct intel_display_platforms {
>>>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >= 11 && HAS_DSC(__display))
>>>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has_cdclk_crawl)
>>>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->has_cdclk_squash)
>>> +#define HAS_CMTG(__display)                (!(__display)->platform.dg2 && DISPLAY_VER(__display) >= 13)
>>>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && IS_DISPLAY_VER(__display, 7, 13))
>>>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
>>>  #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_INFO(__display)->has_dbuf_overlap_detection)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> index 497b4a1f045f..3e1483814e8d 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>>> @@ -25,6 +25,7 @@
>>>  #include "intel_bios.h"
>>>  #include "intel_bw.h"
>>>  #include "intel_cdclk.h"
>>> +#include "intel_cmtg.h"
>>>  #include "intel_color.h"
>>>  #include "intel_crtc.h"
>>>  #include "intel_display_debugfs.h"
>>> @@ -269,6 +270,10 @@ int intel_display_driver_probe_noirq(struct intel_display *display)
>>>          if (ret)
>>>                  goto cleanup_vga_client_pw_domain_dmc;
>>>  
>>> +        ret = intel_cmtg_init(display);
>>> +        if (ret)
>>> +                goto cleanup_vga_client_pw_domain_dmc;
>>> +
>>>          intel_init_quirks(display);
>>>  
>>>          intel_fbc_init(display);
>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> index 9db30db428f7..737a43916ac5 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>> @@ -15,6 +15,7 @@
>>>  #include "i9xx_wm.h"
>>>  #include "intel_atomic.h"
>>>  #include "intel_bw.h"
>>> +#include "intel_cmtg.h"
>>>  #include "intel_color.h"
>>>  #include "intel_crtc.h"
>>>  #include "intel_crtc_state_dump.h"
>>> @@ -702,6 +703,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>>>          struct intel_display *display = &i915->display;
>>>          struct intel_cdclk_state *cdclk_state =
>>>                  to_intel_cdclk_state(i915->display.cdclk.obj.state);
>>> +        struct intel_cmtg_state *cmtg_state =
>>> +                to_intel_cmtg_state(display->cmtg.obj.state);
>>>          struct intel_dbuf_state *dbuf_state =
>>>                  to_intel_dbuf_state(i915->display.dbuf.obj.state);
>>>          struct intel_pmdemand_state *pmdemand_state =
>>> @@ -906,6 +909,8 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
>>>          }
>>>  
>>>          intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
>>> +
>>> +        intel_cmtg_readout_state(display, cmtg_state);
>>>  }
>>>  
>>>  static void
>>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>>> index 765e6c0528fb..b34bccfb1ccc 100644
>>> --- a/drivers/gpu/drm/i915/i915_reg.h
>>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>>> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>>>  #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>>>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_priv, tran, _TRANS_DDI_FUNC_CTL2_A)
>>>  #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>>> +#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
>>>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
>>>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYNC_MODE_MASTER_SELECT_MASK, (x))
>>>  
>>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>>> index 5c97ad6ed738..cd0e25fce14b 100644
>>> --- a/drivers/gpu/drm/xe/Makefile
>>> +++ b/drivers/gpu/drm/xe/Makefile
>>> @@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>>>          i915-display/intel_bios.o \
>>>          i915-display/intel_bw.o \
>>>          i915-display/intel_cdclk.o \
>>> +        i915-display/intel_cmtg.o \
>>>          i915-display/intel_color.o \
>>>          i915-display/intel_combo_phy.o \
>>>          i915-display/intel_connector.o \
>>
>>-- 
>>Jani Nikula, Intel

-- 
Jani Nikula, Intel
