Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB24A3122E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 17:57:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CB010E712;
	Tue, 11 Feb 2025 16:57:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZra/PKa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B15710E70E;
 Tue, 11 Feb 2025 16:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739293051; x=1770829051;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hehcflHIDCb1WIQWmW4uc0/8BI+FZe1uIwMt9dfQbjE=;
 b=LZra/PKa5a9PidxoOFQht1/ZtDa5dPhTWgFiQW4umJX16mJ0b0kE7Hpe
 qTihSd69CONuUuIu89GKxzsmHKABG3oNh3e7ffburPEOffjHJwjnarl4z
 EfoAF/O0gT6dLnta0OiHI176oqQipElZVZGxEZhu3Gx28lMVy3J/lhZUR
 c3k+OdUTn71WONlS0Mw4CkdhWkgogf3U4IqvgtM2CPALk5Cs7srpTFID4
 JUO8E3Yi7zU3wh0w/wKRdItofLmOHunFi86z3fX9GwToFy3Q1HpznwMqa
 M2wL02lI/PlVSssBLQEKl2GAoR32OTJYkESVD36vFfsOmmaEiMKdOtW/P A==;
X-CSE-ConnectionGUID: eg6hbIGNSMm8A0gcrsiQvg==
X-CSE-MsgGUID: IsdsmntLRDCzB/1dXVI5RQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="40046582"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="40046582"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 08:57:30 -0800
X-CSE-ConnectionGUID: 7d/gnsd7TPiKGdISyNqGkg==
X-CSE-MsgGUID: toZU5keERtecx4wtsqJudQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112542775"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 08:57:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
 shared_dpll_init
In-Reply-To: <SN7PR11MB6750C81DB52D61A104B27223E3FD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211104857.3501566-1-suraj.kandpal@intel.com>
 <20250211104857.3501566-9-suraj.kandpal@intel.com>
 <87jz9w1v42.fsf@intel.com>
 <SN7PR11MB6750C81DB52D61A104B27223E3FD2@SN7PR11MB6750.namprd11.prod.outlook.com>
Date: Tue, 11 Feb 2025 18:57:25 +0200
Message-ID: <8734gk1ksq.fsf@intel.com>
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

On Tue, 11 Feb 2025, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
>> -----Original Message-----
>> From: Nikula, Jani <jani.nikula@intel.com>
>> Sent: Tuesday, February 11, 2025 6:45 PM
>> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
>> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
>> <suraj.kandpal@intel.com>
>> Subject: Re: [PATCH 8/9] drm/i915/dpll: Accept intel_display as argument for
>> shared_dpll_init
>>
>> On Tue, 11 Feb 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
>> > Use intel_display as an argument for intel_shared_dpll_init() and
>> > replace drm_i915_private in function wherever possible.
>> > While at it prefer using display->platform.xx over IS_PLATFORM.
>> >
>> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> > ---
>> >  .../drm/i915/display/intel_display_driver.c   |  2 +-
>> >  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 49
>> > ++++++++++---------  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |
>> > 3 +-
>> >  3 files changed, 27 insertions(+), 27 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > index 978f530c810e..852f1129a058 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > @@ -448,7 +448,7 @@ int intel_display_driver_probe_nogem(struct
>> intel_display *display)
>> >     }
>> >
>> >     intel_plane_possible_crtcs_init(display);
>> > -   intel_shared_dpll_init(i915);
>> > +   intel_shared_dpll_init(display);
>> >     intel_fdi_pll_freq_update(i915);
>> >
>> >     intel_update_czclk(i915);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > index f94da1ffc8ce..26b6b9372fa3 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>> > @@ -2042,8 +2042,8 @@ static void bxt_ddi_pll_enable(struct
>> > intel_display *display,  {
>> >     const struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
>> >     enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping
>> */
>> > -   enum dpio_phy phy;
>> > -   enum dpio_channel ch;
>> > +   enum dpio_phy phy = DPIO_PHY0;
>> > +   enum dpio_channel ch = DPIO_CH0;
>>
>> Unrelated change, please drop.
>>
>
> The problem is by dropping these changes I am not able to build the kernel and it throws the following warning because of which I had to add this
>
>
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c: In function _bxt_ddi_pll_enable_:
> ./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:240:56: error: _phy_ is used uninitialized [-Werror=uniniti
> alized]
>   240 |         (BUILD_BUG_ON_ZERO(!__is_constexpr(__c_index)) +                        \
>       |                                                        ^
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2047:23: note: _phy_ was declared here
>  2047 |         enum dpio_phy phy;
>       |                       ^~~
> In file included from ./drivers/gpu/drm/xe/compat-i915-headers/i915_reg_defs.h:6,
>                  from drivers/gpu/drm/i915/display/intel_display_reg_defs.h:9,
>                  from drivers/gpu/drm/i915/display/bxt_dpio_phy_regs.h:9,
>                  from drivers/gpu/drm/i915/display/intel_dpll_mgr.c:27:
> ./drivers/gpu/drm/xe/compat-i915-headers/../../i915/i915_reg_defs.h:213:58: error: _ch_ is used uninitialized [-Werror=uninitia
> lized]
>   213 | #define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
>       |                                                          ^
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2048:27: note: _ch_ was declared here
>  2048 |         enum dpio_channel ch;

Did you think to look into why this happens? I encourage you to always
do that instead of just silencing the warning. You'll learn about C and
the compiler.

It's quite interesting and subtle and deserves to be mentioned in the
commit message.

For i915.ko, bxt_port_to_phy_channel() is a regular function, and the
compiler will likely assume it'll initialize the parameters. And it
does.

For xe.ko, bxt_port_to_phy_channel() is a static inline stub, and the
compiler can be absolutely certain the parameters aren't initialized.

So, why does this cause an error now? The above didn't change now!

With IS_GEMINILAKE() || IS_BROXTON() the compiler can be sure it's false
for xe.ko. The whole chain bxt_pll_mgr -> bxt_plls -> bxt_ddi_pll_funcs
-> bxt_ddi_pll_enable can be optimized away. It's unreachable.

Not so with display->platform.geminilake ||
display->platform.broxton. The compiler sees use of uninitialized
variables.

BR,
Jani.



>
> Regards,
> Suraj Kandpal
>
>> With that fixed,
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>
>>
>> >     u32 temp;
>> >
>> >     bxt_port_to_phy_channel(display, port, &phy, &ch); @@ -4302,40
>> > +4302,41 @@ static const struct intel_dpll_mgr adlp_pll_mgr = {
>> >
>> >  /**
>> >   * intel_shared_dpll_init - Initialize shared DPLLs
>> > - * @i915: i915 device
>> > + * @display: intel_display device
>> >   *
>> > - * Initialize shared DPLLs for @i915.
>> > + * Initialize shared DPLLs for @display.
>> >   */
>> > -void intel_shared_dpll_init(struct drm_i915_private *i915)
>> > +void intel_shared_dpll_init(struct intel_display *display)
>> >  {
>> > +   struct drm_i915_private *i915 = to_i915(display->drm);
>> >     const struct intel_dpll_mgr *dpll_mgr = NULL;
>> >     const struct dpll_info *dpll_info;
>> >     int i;
>> >
>> > -   mutex_init(&i915->display.dpll.lock);
>> > +   mutex_init(&display->dpll.lock);
>> >
>> > -   if (DISPLAY_VER(i915) >= 14 || IS_DG2(i915))
>> > +   if (DISPLAY_VER(display) >= 14 || display->platform.dg2)
>> >             /* No shared DPLLs on DG2; port PLLs are part of the PHY */
>> >             dpll_mgr = NULL;
>> > -   else if (IS_ALDERLAKE_P(i915))
>> > +   else if (display->platform.alderlake_p)
>> >             dpll_mgr = &adlp_pll_mgr;
>> > -   else if (IS_ALDERLAKE_S(i915))
>> > +   else if (display->platform.alderlake_s)
>> >             dpll_mgr = &adls_pll_mgr;
>> > -   else if (IS_DG1(i915))
>> > +   else if (display->platform.dg1)
>> >             dpll_mgr = &dg1_pll_mgr;
>> > -   else if (IS_ROCKETLAKE(i915))
>> > +   else if (display->platform.rocketlake)
>> >             dpll_mgr = &rkl_pll_mgr;
>> > -   else if (DISPLAY_VER(i915) >= 12)
>> > +   else if (DISPLAY_VER(display) >= 12)
>> >             dpll_mgr = &tgl_pll_mgr;
>> > -   else if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915))
>> > +   else if (display->platform.jasperlake ||
>> > +display->platform.elkhartlake)
>> >             dpll_mgr = &ehl_pll_mgr;
>> > -   else if (DISPLAY_VER(i915) >= 11)
>> > +   else if (DISPLAY_VER(display) >= 11)
>> >             dpll_mgr = &icl_pll_mgr;
>> > -   else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
>> > +   else if (display->platform.geminilake || display->platform.broxton)
>> >             dpll_mgr = &bxt_pll_mgr;
>> > -   else if (DISPLAY_VER(i915) == 9)
>> > +   else if (DISPLAY_VER(display) == 9)
>> >             dpll_mgr = &skl_pll_mgr;
>> > -   else if (HAS_DDI(i915))
>> > +   else if (HAS_DDI(display))
>> >             dpll_mgr = &hsw_pll_mgr;
>> >     else if (HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915))
>> >             dpll_mgr = &pch_pll_mgr;
>> > @@ -4346,20 +4347,20 @@ void intel_shared_dpll_init(struct
>> drm_i915_private *i915)
>> >     dpll_info = dpll_mgr->dpll_info;
>> >
>> >     for (i = 0; dpll_info[i].name; i++) {
>> > -           if (drm_WARN_ON(&i915->drm,
>> > -                           i >= ARRAY_SIZE(i915-
>> >display.dpll.shared_dplls)))
>> > +           if (drm_WARN_ON(display->drm,
>> > +                           i >= ARRAY_SIZE(display->dpll.shared_dplls)))
>> >                     break;
>> >
>> >             /* must fit into unsigned long bitmask on 32bit */
>> > -           if (drm_WARN_ON(&i915->drm, dpll_info[i].id >= 32))
>> > +           if (drm_WARN_ON(display->drm, dpll_info[i].id >= 32))
>> >                     break;
>> >
>> > -           i915->display.dpll.shared_dplls[i].info = &dpll_info[i];
>> > -           i915->display.dpll.shared_dplls[i].index = i;
>> > +           display->dpll.shared_dplls[i].info = &dpll_info[i];
>> > +           display->dpll.shared_dplls[i].index = i;
>> >     }
>> >
>> > -   i915->display.dpll.mgr = dpll_mgr;
>> > -   i915->display.dpll.num_shared_dpll = i;
>> > +   display->dpll.mgr = dpll_mgr;
>> > +   display->dpll.num_shared_dpll = i;
>> >  }
>> >
>> >  /**
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>> > b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>> > index 3d988f17f31d..caffb084830c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
>> > @@ -35,7 +35,6 @@
>> >                  ((__pll) = &(__display)->dpll.shared_dplls[(__i)]) ; (__i)++)
>> >
>> >  enum tc_port;
>> > -struct drm_i915_private;
>> >  struct drm_printer;
>> >  struct intel_atomic_state;
>> >  struct intel_crtc;
>> > @@ -422,7 +421,7 @@ bool intel_dpll_get_hw_state(struct intel_display
>> > *display,  void intel_enable_shared_dpll(const struct intel_crtc_state
>> > *crtc_state);  void intel_disable_shared_dpll(const struct
>> > intel_crtc_state *crtc_state);  void
>> > intel_shared_dpll_swap_state(struct intel_atomic_state *state); -void
>> > intel_shared_dpll_init(struct drm_i915_private *i915);
>> > +void intel_shared_dpll_init(struct intel_display *display);
>> >  void intel_dpll_update_ref_clks(struct intel_display *display);  void
>> > intel_dpll_readout_hw_state(struct intel_display *display);  void
>> > intel_dpll_sanitize_state(struct intel_display *display);
>>
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
