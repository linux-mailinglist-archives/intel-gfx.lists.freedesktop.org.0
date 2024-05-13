Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E47108C402E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 13:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EAE310E6E3;
	Mon, 13 May 2024 11:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mBFyWOQG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA97610E6E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 11:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715601284; x=1747137284;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BGpXWNE/6SDKY0jeWd4LtRnWFWiLoo9181IC9/BHskI=;
 b=mBFyWOQGlxwbpcirfiwlbbW/DOkwYie79F6hNlm188aARmySsxp1OttJ
 sKzQl6MFU5VRd08OzGZkB5K+NS4EKWueiqhf6I1hqdzq8rGhrNtxpRXZ9
 OSSUr7gf2Vx/Ybg1R5S7Ts79SdA8hTRSjsn7xLFQM+91x2QclSNuVl8ZJ
 PKUSr7vP17H34HwHNLu0WHNpcc39mNU7I7gZ1DifZmcbiyh2aNaih/ruk
 pVjHld0/IK2eEZhuZyKEfOyCBXVMFi75WomKDcHW/5a129coq6zZ5/VLl
 A5dhnu6so+X0uO44VpGxZL5RcB5oS4zwOFWXORjk9G/3r8s298HP0VdrY g==;
X-CSE-ConnectionGUID: ymvpbPNoQjuPdGynzyTCTA==
X-CSE-MsgGUID: lzK3ylIqR8qZxPNfqKXN4Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22936021"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22936021"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:54:43 -0700
X-CSE-ConnectionGUID: fwp3xx71S2GdDOYMROuNQg==
X-CSE-MsgGUID: Rd32nUGwRvqrxxoZcMfYGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="67814430"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.7])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 04:54:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Golani, Mitulkumar
 Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
 registers
In-Reply-To: <IA0PR11MB730783B83EF53EA344A1D3EDBAE22@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-2-mitulkumar.ajitkumar.golani@intel.com>
 <IA0PR11MB730783B83EF53EA344A1D3EDBAE22@IA0PR11MB7307.namprd11.prod.outlook.com>
Date: Mon, 13 May 2024 14:54:38 +0300
Message-ID: <871q66exkx.fsf@intel.com>
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

On Mon, 13 May 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mitul
>> Golani
>> Sent: Thursday, May 9, 2024 1:28 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
>> <jani.nikula@intel.com>
>> Subject: [PATCH v8 1/7] drm/i915: Define and compute Transcoder CMRR
>> registers
>>
>> Add register definitions for Transcoder Fixed Average Vtotal mode/CMRR
>> function, with the necessary bitfields.
>> Compute these registers when CMRR is enabled, extending Adaptive refresh
>> rate capabilities.
>>
>> --v2:
>> - Use intel_de_read64_2x32 in intel_vrr_get_config. [Jani]
>> - Fix indent and order based on register offset. [Jani]
>>
>> --v3:
>> - Removing RFC tag.
>>
>> --v4:
>> - Update place holder for CMRR register definition. (Jani)
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c  | 23 ++++++++++++++++++-
>>  .../drm/i915/display/intel_display_types.h    |  6 +++++
>>  drivers/gpu/drm/i915/display/intel_vrr.c      | 22 ++++++++++++++++++
>>  drivers/gpu/drm/i915/i915_reg.h               | 10 ++++++++
> Please create a new header file to add the CMRR related register definitions.

Or just intel_vrr_regs.h?

BR,
Jani.

>
> Thanks and Regards,
> Arun R Murthy
> --------------------
>
>>  4 files changed, 60 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index ef986b508431..258a78447fba 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1001,6 +1001,13 @@ static bool vrr_params_changed(const struct
>> intel_crtc_state *old_crtc_state,
>>               old_crtc_state->vrr.pipeline_full != new_crtc_state-
>> >vrr.pipeline_full;
>>  }
>>
>> +static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>> +                             const struct intel_crtc_state *new_crtc_state) {
>> +     return old_crtc_state->cmrr.cmrr_m != new_crtc_state->cmrr.cmrr_m ||
>> +             old_crtc_state->cmrr.cmrr_n != new_crtc_state->cmrr.cmrr_n; }
>> +
>>  static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>>                        const struct intel_crtc_state *new_crtc_state)  { @@ -
>> 5051,6 +5058,16 @@ intel_pipe_config_compare(const struct intel_crtc_state
>> *current_config,
>>       } \
>>  } while (0)
>>
>> +#define PIPE_CONF_CHECK_LLI(name) do { \
>> +     if (current_config->name != pipe_config->name) { \
>> +             pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>> +                                  "(expected %lli, found %lli)", \
>> +                                  current_config->name, \
>> +                                  pipe_config->name); \
>> +             ret = false; \
>> +     } \
>> +} while (0)
>> +
>>  #define PIPE_CONF_CHECK_BOOL(name) do { \
>>       if (current_config->name != pipe_config->name) { \
>>               BUILD_BUG_ON_MSG(!__same_type(current_config->name,
>> bool), \ @@ -5415,10 +5432,13 @@ intel_pipe_config_compare(const struct
>> intel_crtc_state *current_config,
>>               PIPE_CONF_CHECK_I(vrr.guardband);
>>               PIPE_CONF_CHECK_I(vrr.vsync_start);
>>               PIPE_CONF_CHECK_I(vrr.vsync_end);
>> +             PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>> +             PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>>       }
>>
>>  #undef PIPE_CONF_CHECK_X
>>  #undef PIPE_CONF_CHECK_I
>> +#undef PIPE_CONF_CHECK_LLI
>>  #undef PIPE_CONF_CHECK_BOOL
>>  #undef PIPE_CONF_CHECK_P
>>  #undef PIPE_CONF_CHECK_FLAGS
>> @@ -6807,7 +6827,8 @@ static void intel_pre_update_crtc(struct
>> intel_atomic_state *state,
>>                   intel_crtc_needs_fastset(new_crtc_state))
>>                       icl_set_pipe_chicken(new_crtc_state);
>>
>> -             if (vrr_params_changed(old_crtc_state, new_crtc_state))
>> +             if (vrr_params_changed(old_crtc_state, new_crtc_state) ||
>> +                 cmrr_params_changed(old_crtc_state, new_crtc_state))
>>                       intel_vrr_set_transcoder_timings(new_crtc_state);
>>       }
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index a06a154d587b..475fb5252dd4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1396,6 +1396,12 @@ struct intel_crtc_state {
>>               u32 vsync_end, vsync_start;
>>       } vrr;
>>
>> +     /* Content Match Refresh Rate state */
>> +     struct {
>> +             bool enable;
>> +             u64 cmrr_n, cmrr_m;
>> +     } cmrr;
>> +
>>       /* Stream Splitter for eDP MSO */
>>       struct {
>>               bool enable;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 894ee97b3e1b..831554ea46b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -217,6 +217,19 @@ void intel_vrr_set_transcoder_timings(const struct
>> intel_crtc_state *crtc_state)
>>               return;
>>       }
>>
>> +     if (crtc_state->cmrr.enable) {
>> +             intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
>> +                            VRR_CTL_CMRR_ENABLE |
>> trans_vrr_ctl(crtc_state));
>> +             intel_de_write(dev_priv, TRANS_CMRR_M_HI(cpu_transcoder),
>> +                            upper_32_bits(crtc_state->cmrr.cmrr_m));
>> +             intel_de_write(dev_priv, TRANS_CMRR_M_LO(cpu_transcoder),
>> +                            lower_32_bits(crtc_state->cmrr.cmrr_m));
>> +             intel_de_write(dev_priv, TRANS_CMRR_N_HI(cpu_transcoder),
>> +                            upper_32_bits(crtc_state->cmrr.cmrr_n));
>> +             intel_de_write(dev_priv, TRANS_CMRR_N_LO(cpu_transcoder),
>> +                            lower_32_bits(crtc_state->cmrr.cmrr_n));
>> +     }
>> +
>>       intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder),
>> crtc_state->vrr.vmin - 1);
>>       intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder),
>> crtc_state->vrr.vmax - 1);
>>       intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
>> trans_vrr_ctl(crtc_state)); @@ -296,6 +309,15 @@ void
>> intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>
>>       crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>>
>> +     if (crtc_state->cmrr.enable) {
>> +             crtc_state->cmrr.cmrr_n =
>> +                     intel_de_read64_2x32(dev_priv,
>> TRANS_CMRR_N_LO(cpu_transcoder),
>> +
>> TRANS_CMRR_N_HI(cpu_transcoder));
>> +             crtc_state->cmrr.cmrr_m =
>> +                     intel_de_read64_2x32(dev_priv,
>> TRANS_CMRR_M_LO(cpu_transcoder),
>> +
>> TRANS_CMRR_M_HI(cpu_transcoder));
>> +     }
>> +
>>       if (DISPLAY_VER(dev_priv) >= 13)
>>               crtc_state->vrr.guardband =
>>
>>       REG_FIELD_GET(XELPD_VRR_CTL_VRR_GUARDBAND_MASK,
>> trans_vrr_ctl); diff --git a/drivers/gpu/drm/i915/i915_reg.h
>> b/drivers/gpu/drm/i915/i915_reg.h index 5670eee4a498..a4a510793344
>> 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -1237,6 +1237,7 @@
>>  #define   VRR_CTL_VRR_ENABLE                 REG_BIT(31)
>>  #define   VRR_CTL_IGN_MAX_SHIFT                      REG_BIT(30)
>>  #define   VRR_CTL_FLIP_LINE_EN                       REG_BIT(29)
>> +#define   VRR_CTL_CMRR_ENABLE                        REG_BIT(27)
>>  #define   VRR_CTL_PIPELINE_FULL_MASK         REG_GENMASK(10, 3)
>>  #define   VRR_CTL_PIPELINE_FULL(x)
>>       REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>>  #define   VRR_CTL_PIPELINE_FULL_OVERRIDE     REG_BIT(0)
>> @@ -1328,6 +1329,15 @@
>>  #define VRR_VSYNC_START_MASK         REG_GENMASK(12, 0)
>>  #define VRR_VSYNC_START(vsync_start)
>>       REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
>>
>> +#define      _TRANS_CMRR_M_LO_A              0x604F0
>> +#define      _TRANS_CMRR_M_HI_A              0x604F4
>> +#define      _TRANS_CMRR_N_LO_A              0x604F8
>> +#define      _TRANS_CMRR_N_HI_A              0x604FC
>> +#define      TRANS_CMRR_M_LO(trans)
>>       _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_LO_A)
>> +#define      TRANS_CMRR_M_HI(trans)
>>       _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_M_HI_A)
>> +#define      TRANS_CMRR_N_LO(trans)
>>       _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_LO_A)
>> +#define      TRANS_CMRR_N_HI(trans)
>>       _MMIO_TRANS2(dev_priv, trans, _TRANS_CMRR_N_HI_A)
>> +
>>  /* VGA port control */
>>  #define ADPA                 _MMIO(0x61100)
>>  #define PCH_ADPA                _MMIO(0xe1100)
>> --
>> 2.25.1
>

-- 
Jani Nikula, Intel
