Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDpDNHFrEGoAXQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 16:42:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 499075B6631
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 16:42:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53CFA10F681;
	Fri, 22 May 2026 14:42:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="aq3UwJeK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEC210F67D;
 Fri, 22 May 2026 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1779460971;
 bh=AS3E5xMJlRIoeqQyWmA5K1xKtmtTqwqV2usHsiEM8Uc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=aq3UwJeKktpIxr2caTsUL1DopQmlKzt7lOVLPDjyOucZdgFGZ4SeON2TnYdAgs40R
 dfVVajFoseXH19LbZH4+5qYAftk5Em6g3datKOXAEieJgT7Xml43FjKh8+SETPDefm
 0iqBJzM/ETYzqD+t25jipHR3hMw6L4XlnVliMu5PLlPkvzlO/8WpOKAuGZ5cWnC++r
 doN5LwA3Il1Flqg08hUqZoVJ8r6YKb1hux+1xA89NU+RRMCzj+6s9hhcAhxx4EZxW6
 /kkqNQA/jh7qVemaUdmlZ6qxF6H/cWPyxa3ybuJ5h6Vm69G1UEhJt1T6fsRwpd0QU6
 zKF0de1CeVLFA==
Message-ID: <f1f09a62-b36e-4ddf-b42c-dad300a72aef@lankhorst.se>
Date: Fri, 22 May 2026 16:42:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/intel/display: Add support for pipe background color
 (v4)
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Chandra Konduru <chandra.konduru@intel.com>,
 dri-devel@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
References: <20260505200133.636584-2-dev@lankhorst.se>
 <a734e41d-3665-402b-a56a-43fd4f8819ff@intel.com>
 <fef9056c-460e-4a49-bed8-f2882109e886@linux.intel.com>
 <090aca95-975d-4564-8b44-30df139800b5@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <090aca95-975d-4564-8b44-30df139800b5@intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,lankhorst.se:mid,lankhorst.se:dkim,patchwork.freedesktop.org:url];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Queue-Id: 499075B6631
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hey,

Den 2026-05-18 kl. 12:47, skrev Borah, Chaitanya Kumar:
> 
> 
> On 5/18/2026 3:56 PM, Maarten Lankhorst wrote:
>> Hello,
>>
>> Den 2026-05-18 kl. 11:30, skrev Borah, Chaitanya Kumar:
>>>
>>>
>>> On 5/6/2026 1:31 AM, Maarten Lankhorst wrote:
>>>> Gen9 platforms allow CRTC's to be programmed with a background/canvas
>>>> color below the programmable planes.  Let's expose this as a property to
>>>> allow userspace to program a desired value.
>>>>
>>>> This patch is based on earlier work by Chandra Konduru and Matt Roper.
>>>> Between 2018 and now, intel/display has changed so much that another
>>>> rewrite was necessary.
>>>>
>>>> v2:
>>>>    - Set initial background color (black) via proper helper function (Bob)
>>>>    - Fix debugfs output
>>>>    - General rebasing
>>>> v3 (Maarten):
>>>>    - Rebase on top of recent changes.
>>>> v4 (Maarten):
>>>>    - Complete rewrite based on the solution that went upstream, and
>>>>      on the new intel color management features.
>>>>
>>>> Cc: Chandra Konduru <chandra.konduru@intel.com>
>>>> Cc: dri-devel@lists.freedesktop.org
>>>> Co-developed-by: Matt Roper <matthew.d.roper@intel.com>
>>>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>> ---
>>>> Corresponding IGT: https://patchwork.freedesktop.org/series/166016/
>>>>
>>>>    drivers/gpu/drm/i915/display/intel_color.c    | 47 ++++++++++++-------
>>>>    drivers/gpu/drm/i915/display/intel_color.h    |  3 ++
>>>>    drivers/gpu/drm/i915/display/intel_crtc.c     |  4 ++
>>>>    drivers/gpu/drm/i915/display/intel_display.c  |  5 ++
>>>>    .../drm/i915/display/intel_display_debugfs.c  |  6 +++
>>>>    .../drm/i915/display/intel_display_types.h    |  1 +
>>>>    .../drm/i915/display/intel_modeset_setup.c    |  2 +
>>>>    7 files changed, 52 insertions(+), 16 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>>> index 0531c60e5e5d5..2365cf06cd514 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>>> @@ -1102,19 +1102,37 @@ static void skl_get_config(struct intel_crtc_state *crtc_state)
>>>>    {
>>>>        struct intel_display *display = to_intel_display(crtc_state);
>>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>> +    u32 color;
>>>>          crtc_state->gamma_mode = hsw_read_gamma_mode(crtc);
>>>>        crtc_state->csc_mode = ilk_read_csc_mode(crtc);
>>>>    +    color = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>>>>        if (DISPLAY_VER(display) < 35) {
>>>> -        u32 tmp = intel_de_read(display, SKL_BOTTOM_COLOR(crtc->pipe));
>>>> -
>>>> -        if (tmp & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
>>>> +        if (color & SKL_BOTTOM_COLOR_GAMMA_ENABLE)
>>>>                crtc_state->gamma_enable = true;
>>>>    -        if (tmp & SKL_BOTTOM_COLOR_CSC_ENABLE)
>>>> +        if (color & SKL_BOTTOM_COLOR_CSC_ENABLE)
>>>>                crtc_state->csc_enable = true;
>>>>        }
>>>> +
>>>> +    crtc_state->hw.background_color = color & GENMASK(29, 0);
>>>> +}
>>>> +
>>>> +u32 intel_color_hw_background_color(u64 drm_background_color)
>>>> +{
>>>> +    return (DRM_ARGB64_GETR_BPC(drm_background_color, 10) << 20) |
>>>> +           (DRM_ARGB64_GETG_BPC(drm_background_color, 10) << 10) |
>>>> +           (DRM_ARGB64_GETB_BPC(drm_background_color, 10));
>>>> +}
>>>> +
>>>> +u64 intel_color_drm_background_color(u32 hw_background_color)
>>>> +{
>>>> +    uint16_t r = (hw_background_color >> 20) & 0x3ff;
>>>> +    uint16_t g = (hw_background_color >> 10) & 0x3ff;
>>>> +    uint16_t b = hw_background_color & 0x3ff;
>>>> +
>>>> +    return DRM_ARGB64_PREP_BPC(0x3ff, r, g, b, 10);
>>>>    }
>>>
>>> nit:
>>> Better names?
>>>
>>> intel_color_background_color_drm_to_hw
>>> intel_color_background_color_hw_to_drm
>>>
>>> Stick to kernel types u16?
>>>
>>>>      static void skl_color_commit_arm(struct intel_dsb *dsb,
>>>> @@ -1123,16 +1141,11 @@ static void skl_color_commit_arm(struct intel_dsb *dsb,
>>>>        struct intel_display *display = to_intel_display(crtc_state);
>>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>>        enum pipe pipe = crtc->pipe;
>>>> -    u32 val = 0;
>>>> +    u32 val = crtc_state->hw.background_color;
>>>>          if (crtc_state->has_psr)
>>>>            ilk_load_csc_matrix(dsb, crtc_state);
>>>>    -    /*
>>>> -     * We don't (yet) allow userspace to control the pipe background color,
>>>> -     * so force it to black, but apply pipe gamma and CSC appropriately
>>>> -     * so that its handling will match how we program our planes.
>>>> -     */
>>>>        if (crtc_state->gamma_enable)
>>>>            val |= SKL_BOTTOM_COLOR_GAMMA_ENABLE;
>>>>        if (crtc_state->csc_enable)
>>>> @@ -1151,11 +1164,7 @@ static void icl_color_commit_arm(struct intel_dsb *dsb,
>>>>        struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>>        enum pipe pipe = crtc->pipe;
>>>>    -    /*
>>>> -     * We don't (yet) allow userspace to control the pipe background color,
>>>> -     * so force it to black.
>>>> -     */
>>>> -    intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), 0);
>>>> +    intel_de_write_dsb(display, dsb, SKL_BOTTOM_COLOR(pipe), crtc_state->hw.background_color);
>>>>          intel_de_write_dsb(display, dsb, GAMMA_MODE(crtc->pipe), crtc_state->gamma_mode);
>>>>    @@ -2107,9 +2116,15 @@ int intel_color_check(struct intel_atomic_state *state,
>>>>         * May need to update pipe gamma enable bits
>>>>         * when C8 planes are getting enabled/disabled.
>>>>         */
>>>> -    if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes)
>>>> +    if (!old_crtc_state->c8_planes != !new_crtc_state->c8_planes ||
>>>> +        old_crtc_state->hw.background_color != new_crtc_state->hw.background_color)
>>>>            new_crtc_state->uapi.color_mgmt_changed = true;
>>>>    +    if (DRM_ARGB64_GETA(new_crtc_state->uapi.background_color) != 0xffff) {
>>>> +        drm_dbg_kms(display->drm, "New background not completely opaque\n");
>>>> +        return -EINVAL;
>>>> +    }
>>>> +
>>>
>>> can be within a old != new check, not to invoke it unconditionally.
>> The check we have above checks hw.background_color old vs new, the value programmed
>> into the hardware without alpha component.
>>
>> This check is about uapi.background_color which does have the alpha component.
>>
>> I can put it in a new vs old check, but it would have to be a separate one and
>> there is no benefit to having 2 comparisons vs 1.
>>
>>
> 
> Yes, I meant a new check but not really a blocker.
> 
> I will leave the name change up to your discretion. The i915 CI needs a re-run, though.
> 
> With the typo and checkpatch issues fixed, LGTM.
> 
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 

Addressed and renamed the functions.
Pushed!

>>>
>>>>        if (!intel_crtc_needs_color_update(new_crtc_state))
>>>>            return 0;
>>>>    diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm/i915/display/intel_color.h
>>>> index c21b9bdf7bb8a..f2cbce57b63d7 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_color.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_color.h
>>>> @@ -47,4 +47,7 @@ void intel_color_plane_program_pipeline(struct intel_dsb *dsb,
>>>>    void intel_color_plane_commit_arm(struct intel_dsb *dsb,
>>>>                      const struct intel_plane_state *plane_state);
>>>>    bool intel_color_crtc_has_3dlut(struct intel_display *display, enum pipe pipe);
>>>> +u32 intel_color_hw_background_color(u64 drm_background_color);
>>>> +u64 intel_color_drm_background_color(u32 hw_background_color);
>>>> +
>>>>    #endif /* __INTEL_COLOR_H__ */
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>>>> index 03de219f7a645..b7600cecafc85 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>>> @@ -7,6 +7,7 @@
>>>>    #include <linux/slab.h>
>>>>      #include <drm/drm_atomic_helper.h>
>>>> +#include <drm/drm_blend.h>
>>>>    #include <drm/drm_fourcc.h>
>>>>    #include <drm/drm_plane.h>
>>>>    #include <drm/drm_print.h>
>>>> @@ -405,6 +406,9 @@ static int __intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>>>                            BIT(DRM_SCALING_FILTER_DEFAULT) |
>>>>                            BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>>>>    +    if (DISPLAY_VER(display) >= 9)
>>>> +        drm_crtc_attach_background_color_property(&crtc->base);
>>>> +
>>>>        intel_color_crtc_init(crtc);
>>>>        intel_drrs_crtc_init(crtc);
>>>>        intel_crtc_crc_init(crtc);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 2fa10f8582794..306908f20b5a0 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -4505,6 +4505,8 @@ intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *state,
>>>>                      crtc_state->uapi.gamma_lut);
>>>>        drm_property_replace_blob(&crtc_state->hw.ctm,
>>>>                      crtc_state->uapi.ctm);
>>>> +    crtc_state->hw.background_color =
>>>> +        intel_color_hw_background_color(crtc_state->uapi.background_color);
>>>>    }
>>>>      static void
>>>> @@ -4544,6 +4546,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>>>>                      primary_crtc_state->hw.gamma_lut);
>>>>        drm_property_replace_blob(&secondary_crtc_state->hw.ctm,
>>>>                      primary_crtc_state->hw.ctm);
>>>> +    secondary_crtc_state->hw.background_color = primary_crtc_state->hw.background_color;
>>>>          secondary_crtc_state->uapi.color_mgmt_changed = primary_crtc_state->uapi.color_mgmt_changed;
>>>>    }
>>>> @@ -5356,6 +5359,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>>>            else
>>>>                PIPE_CONF_CHECK_X(csc_mode);
>>>>            PIPE_CONF_CHECK_BOOL(gamma_enable);
>>>> +
>>>> +        PIPE_CONF_CHECK_X(hw.background_color);
>>>>            PIPE_CONF_CHECK_BOOL(csc_enable);
>>>>            PIPE_CONF_CHECK_BOOL(wgc_enable);
>>>>    diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> index 81bef000a4e3e..336ef29d0c5b5 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>>> @@ -572,6 +572,12 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
>>>>          intel_scaler_info(m, crtc);
>>>>    +    if (DISPLAY_VER(display) >= 9) {
>>>> +        u32 background = crtc_state->hw.background_color;
>>>> +
>>>> +        seq_printf(m, "\tbackground color (10bpc XRGB210101010): %08x\n", background);
>>>
>>> Typo: XRGB2101010
>>>
>>> ==
>>> Chaitanya
>>>
>> Oops, missed that one!
>>
>> Kind regards,
>> ~Maarten Lankhorst
>>
>>>> +    }
>>>> +
>>>>        if (crtc_state->joiner_pipes)
>>>>            seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
>>>>                   crtc_state->joiner_pipes,
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> index c819167618502..aa07be41648c4 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>> @@ -1034,6 +1034,7 @@ struct intel_crtc_state {
>>>>            /* logical state of LUTs */
>>>>            struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
>>>>            struct drm_display_mode mode, pipe_mode, adjusted_mode;
>>>> +        u32 background_color;
>>>>            enum drm_scaling_filter scaling_filter;
>>>>            u8 sharpness_strength;
>>>>        } hw;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> index 4c646b1bd0ee0..d3b2433eae791 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>>>> @@ -334,6 +334,8 @@ static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *crtc_state
>>>>        crtc_state->uapi.adjusted_mode = crtc_state->hw.adjusted_mode;
>>>>        crtc_state->uapi.scaling_filter = crtc_state->hw.scaling_filter;
>>>>        crtc_state->uapi.sharpness_strength = crtc_state->hw.sharpness_strength;
>>>> +    crtc_state->uapi.background_color =
>>>> +        intel_color_drm_background_color(crtc_state->hw.background_color);
>>>>          if (DISPLAY_INFO(display)->color.degamma_lut_size) {
>>>>            /* assume 1:1 mapping */
>>>
>>
> 

