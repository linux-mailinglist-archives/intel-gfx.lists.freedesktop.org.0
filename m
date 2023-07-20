Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA5575AF61
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 15:13:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D444310E5C7;
	Thu, 20 Jul 2023 13:13:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF6010E144
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 13:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689858778; x=1721394778;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=imAlXPY6xdXrKUxtbFRLJu/bZVPjjiaQbIWpb/9eXac=;
 b=ZQoM8rvwOjuj9mdLxk+ATSvq7t0/CZnYnBhukzfyy96qJcrip2CeMjau
 dcbC1hBUz04eV/ssVm2skmz9CJ2LmadSoQbR0AFPy6g8STB3+7Z8oXy6I
 dbWKPh49oHp3eL50SaRPueIReW3AU9sYjEeV69YxW3MfnAScIjTRlw3+Z
 hN9VedFx6gIZZSRuRJL+cS6f6Qlfo4tNobWtd9nNOylEXgHrtZrUloL8a
 rXhsT+Iu5zddD3dYPKxGGHwTTSft6zyOZPVaTa5cmawk4paVPx8/VYnDt
 DerseqJhZ873ZKaUsm31Vk0pKNUNpMQaktTUT328M7+Ls9SeSXVh/Atov g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397606163"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="397606163"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 06:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867831923"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.20.19])
 ([10.213.20.19])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 06:10:28 -0700
Message-ID: <a83c49a0-3eed-c09f-2f62-2298a60281b0@intel.com>
Date: Thu, 20 Jul 2023 15:10:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-13-matthew.d.roper@intel.com>
 <76ec5ac1-f297-0634-0ec8-11899151deec@linux.intel.com>
 <20230719152809.GO138014@mdroper-desk1.amr.corp.intel.com>
 <20230719225424.GS138014@mdroper-desk1.amr.corp.intel.com>
 <4e0a72f0-9cea-b9d3-da6a-26e2093417c3@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <4e0a72f0-9cea-b9d3-da6a-26e2093417c3@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
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

On 20.07.2023 11:36, Tvrtko Ursulin wrote:
> 
> On 19/07/2023 23:54, Matt Roper wrote:
>> On Wed, Jul 19, 2023 at 08:28:12AM -0700, Matt Roper wrote:
>>> On Wed, Jul 19, 2023 at 09:01:58AM +0100, Tvrtko Ursulin wrote:
>>>>
>>>> On 18/07/2023 23:27, Matt Roper wrote:
>>>>> Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
>>>>> of these workarounds are actually tied to MTL as a platform; they only
>>>>> relate to the Xe_LPG graphics IP, regardless of what platform it 
>>>>> appears
>>>>> in.  At the moment MTL is the only platform that uses Xe_LPG with IP
>>>>> versions 12.70 and 12.71, but we can't count on this being true in the
>>>>> future.  Switch these to use a new IS_GFX_IPVER_STEP() macro instead
>>>>> that is purely based on IP version.  IS_GFX_IPVER_STEP() is also
>>>>> GT-based rather than device-based, which will help prevent mistakes
>>>>> where we accidentally try to apply Xe_LPG graphics workarounds to the
>>>>> Xe_LPM+ media GT.
>>>>>
>>>>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>>>> ---
>>>>>    .../drm/i915/display/skl_universal_plane.c    |  4 +-
>>>>>    drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 ++--
>>>>>    drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
>>>>>    drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>>>>>    drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>>>>>    drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 
>>>>> ++++++++++---------
>>>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
>>>>>    .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
>>>>>    drivers/gpu/drm/i915/i915_drv.h               |  8 +--
>>>>>    9 files changed, 46 insertions(+), 41 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c 
>>>>> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> index 6b01a0b68b97..c13e64faaaad 100644
>>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>>> @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct 
>>>>> drm_i915_private *i915,
>>>>>                     enum pipe pipe, enum plane_id plane_id)
>>>>>    {
>>>>>        /* Wa_14017240301 */
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>>> +    if (IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, 
>>>>> STEP_B0))
>>>>
>>>> Do we really need/want a combined/long macro like this and not split 
>>>> it out
>>>> to something like a more readable IS_GFX_IPVER && IS_<...>_STEP?
>>
>> On this part, wouldn't that make it less readable?  Right now these
>> conditions are an ||'d list of cases for which the workaround should
>> apply (relating to various entries in the workaround database).  If we
>> split the version, stepping, and GT checks out into separate macros
>> we'll get more complex conditions that are a mix of && and ||.  We can
>> try that, but my gut feeling is that it's going to be more error-prone
>> since we'll have to be really careful to always get the parenentheses in
>> the right places.  Also many people (myself included) are already having
>> some trouble adjusting to the new idea of GT (primary vs media) being an
>> important factor that needs to be considered in the workaround
>> condition; one of the goals with these new macros was to make sure that
>> got included in the macro so that it couldn't be omitted by accident.
> 
> Oh well I don't know.. maybe. It's just that I find that as amount of 
> all uppercase blocks grows over a certain limit things become quite an 
> eyesore and hard to read. One line of:
> 
> if (IS_GFX_IPVER_STEP(i915, IP_VER(12,70), STEP_A0, STEP_B0))
> 
> Is already borderline. A few of those on the same line is just hard to 
> parse. But your argument also has merit so again, don't know.
> 
> What I was suggesting is to maybe have:
> 
> IS_GFX_IPVER_STEP(i915, IP_VER(12,70), IP_STEP(A0, B0))
> 
> Marginally shorter.
> 
> Maybe find a shorted name for IS_GFX_IPVER_STEP?
> 
> IS_GFX_IP(i915, IP_VER(12,70), IP_STEP(A0, B0))
> 
> ?
> 
> Too bad we can't have that macro take the stepping argument as optional. 
> Or maybe it is possible, I don't know C macro magic that well.

It is possible:

#define IS_GFX_IP(i915, ver, args...) IS_GFX_IP_STEP(i915, ver, args, 
default_step)
#define IS_GFX_IP_STEP(i915, ver, step, ...) definition_ignoring_elipsis

Assuming IP_STEP is just single value.

I am not sure about meaning of steppings in i915, it looks somehow 
special. If it is just another dot in version MAJOR.MINOR.STEP, why not 
extend IP_VER with stepping (ver << 16 & rel << 8 & step):
IP_VER(12)
IP_VER(12,70)
IP_VER(12, 70, A0)

then for example:
IS_IP_VER(gt, IP_VER(12))
IS_IP_VER(gt, IP_VER(12), IP_VER(13))
IS_IP_REL(gt, IP_VER(12, 70))
IS_IP_REL(gt, IP_VER(12, 70), IP_VER(12, 71))
IS_IP_STEP(gt, IP_VER(12, 70, A0))
IS_IP_STEP(gt, IP_VER(12, 70, A0), IP_VER(12, 70, B0))

Regards
Andrzej


> 
> Also, if we added GT based macros we could get away with encoding the GT 
> type in the macro name. Asking the GT/tile directrly about their IP_VER. 
> Not sure how widely applicable tha would be so just a thought.
> 
> IS_IP(gt, IP_VER(12, 70))
> 
> GT_VER_FULL(gt) == IP_VER(13, 0)
> 
> Unless that falls apart with that GT is not a tile story.
> 
> Regards,
> 
> Tvrtko
> 
>>
>>
>> Matt
>>
>>>>
>>>> Adding Jani since we were discussing this direction over the past 
>>>> few weeks.
>>>>
>>>> Hm.. macro trickery for stepping ranges to make it more compact? 
>>>> Like making
>>>> the STEP_ prefix be prepended by the macro. Don't know..
>>>
>>> One other thing that we could consider if some of these things are
>>> getting too long is eliminating IP_VER() and using the "versionx100"
>>> scheme that Xe and Mesa use.  On one hand that makes me a bit nervous
>>> since GMD_ID's release number is 8 bits and could go past 100 on future
>>> platforms, which would break the scheme (and we're already up to .71 on
>>> MTL).  But on the other hand it does make the code simpler and shorter
>>> and we can always wait and see if we ever actually get a platform with
>>> version X.100 or something before we really worry about what to do
>>> there.
>>>
>>> The other point in favor of switching to versionx100 is that we wouldn't
>>> have an inconsistent mix of both IP_VER() and verx100 in the Xe driver
>>> where the display code comes from i915 but the non-display code is
>>> separate.
>>>
>>>
>>> Matt
>>>
>>>>
>>>> Regards,
>>>>
>>>> Tvrtko
>>>>
>>>>>            return false;
>>>>>        /* Wa_22011186057 */
>>>>> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c 
>>>>> b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>>> index 23857cc08eca..c1af91d908e5 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>>> @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt 
>>>>> *gt, u32 *cs, const i915_reg_t inv
>>>>>    static int mtl_dummy_pipe_control(struct i915_request *rq)
>>>>>    {
>>>>>        /* Wa_14016712196 */
>>>>> -    if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, 
>>>>> STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, 
>>>>> STEP_B0)) {
>>>>> +    if (IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, 
>>>>> STEP_B0)) {
>>>>>            u32 *cs;
>>>>>            /* dummy PIPE_CONTROL + depth flush */
>>>>> @@ -755,6 +755,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct 
>>>>> i915_request *rq, u32 *cs)
>>>>>    u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 
>>>>> *cs)
>>>>>    {
>>>>>        struct drm_i915_private *i915 = rq->engine->i915;
>>>>> +    struct intel_gt *gt = rq->engine->gt;
>>>>>        u32 flags = (PIPE_CONTROL_CS_STALL |
>>>>>                 PIPE_CONTROL_TLB_INVALIDATE |
>>>>>                 PIPE_CONTROL_TILE_CACHE_FLUSH |
>>>>> @@ -765,8 +766,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct 
>>>>> i915_request *rq, u32 *cs)
>>>>>                 PIPE_CONTROL_FLUSH_ENABLE);
>>>>>        /* Wa_14016712196 */
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>>>>>            /* dummy PIPE_CONTROL + depth flush */
>>>>>            cs = gen12_emit_pipe_control(cs, 0,
>>>>>                             PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>>> index 0b414eae1683..41140eb86051 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>>>>> @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>>>>>            gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
>>>>>        } else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>>>>>            /* Wa_14016747170 */
>>>>> -        if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -            IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>>> +        if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +            IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>>>>>                fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>>>>>                             intel_uncore_read(gt->uncore,
>>>>>                                       MTL_GT_ACTIVITY_FACTOR));
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>> index 1b710102390b..4fefa67d285f 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>>>>> @@ -1377,8 +1377,8 @@ gen12_emit_indirect_ctx_rcs(const struct 
>>>>> intel_context *ce, u32 *cs)
>>>>>                              cs, GEN12_GFX_CCS_AUX_NV);
>>>>>        /* Wa_16014892111 */
>>>>> -    if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, 
>>>>> STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, 
>>>>> STEP_B0) ||
>>>>>            IS_DG2(ce->engine->i915))
>>>>>            cs = dg2_emit_draw_watermark_setting(cs);
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_reset.c
>>>>> index 1ff7b42521c9..403f0d9caadf 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>>>>> @@ -1641,7 +1641,7 @@ bool 
>>>>> intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
>>>>>        if (GRAPHICS_VER(gt->i915) < 11)
>>>>>            return false;
>>>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
>>>>>            return true;
>>>>>        if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c 
>>>>> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> index 2a5bf50962ad..785453b2e95e 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>>>>> @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct 
>>>>> intel_engine_cs *engine,
>>>>>    static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs 
>>>>> *engine,
>>>>>                         struct i915_wa_list *wal)
>>>>>    {
>>>>> -    struct drm_i915_private *i915 = engine->i915;
>>>>> +    struct intel_gt *gt = engine->gt;
>>>>>        dg2_ctx_gt_tuning_init(engine, wal);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, 
>>>>> STEP_FOREVER) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>>>>>            wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>>>>>    }
>>>>>    static void xelpg_ctx_workarounds_init(struct intel_engine_cs 
>>>>> *engine,
>>>>>                           struct i915_wa_list *wal)
>>>>>    {
>>>>> -    struct drm_i915_private *i915 = engine->i915;
>>>>> +    struct intel_gt *gt = engine->gt;
>>>>>        xelpg_ctx_gt_tuning_init(engine, wal);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>>>>>            /* Wa_14014947963 */
>>>>>            wa_masked_field_set(wal, VF_PREEMPTION,
>>>>>                        PREEMPTION_VERTEX_COUNT, 0x4000);
>>>>> @@ -1746,8 +1746,8 @@ xelpg_gt_workarounds_init(struct intel_gt 
>>>>> *gt, struct i915_wa_list *wal)
>>>>>        /* Wa_22016670082 */
>>>>>        wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>>>>>            /* Wa_14014830051 */
>>>>>            wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>>>>> @@ -2424,16 +2424,17 @@ static void
>>>>>    rcs_engine_wa_init(struct intel_engine_cs *engine, struct 
>>>>> i915_wa_list *wal)
>>>>>    {
>>>>>        struct drm_i915_private *i915 = engine->i915;
>>>>> +    struct intel_gt *gt = engine->gt;
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>>>>>            /* Wa_22014600077 */
>>>>>            wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>>>>                     ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>>>>>        }
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>>>>>            IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>>            IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>>>>            /* Wa_1509727124 */
>>>>> @@ -2443,7 +2444,7 @@ rcs_engine_wa_init(struct intel_engine_cs 
>>>>> *engine, struct i915_wa_list *wal)
>>>>>        if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>>            IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
>>>>>            /* Wa_22012856258 */
>>>>>            wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>>>>>                     GEN12_DISABLE_READ_SUPPRESSION);
>>>>> @@ -3008,8 +3009,9 @@ static void
>>>>>    general_render_compute_wa_init(struct intel_engine_cs *engine, 
>>>>> struct i915_wa_list *wal)
>>>>>    {
>>>>>        struct drm_i915_private *i915 = engine->i915;
>>>>> +    struct intel_gt *gt = engine->gt;
>>>>> -    add_render_compute_tuning_settings(engine->gt, wal);
>>>>> +    add_render_compute_tuning_settings(gt, wal);
>>>>>        if (GRAPHICS_VER(i915) >= 11) {
>>>>>            /* This is not a Wa (although referred to as
>>>>> @@ -3030,13 +3032,13 @@ general_render_compute_wa_init(struct 
>>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>>                     GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>>>>>        }
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, 
>>>>> STEP_FOREVER) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>>>>>            /* Wa_14017856879 */
>>>>>            wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, 
>>>>> MTL_DISABLE_FIX_FOR_EOT_FLUSH);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>>>>>            /*
>>>>>             * Wa_14017066071
>>>>>             * Wa_14017654203
>>>>> @@ -3044,13 +3046,13 @@ general_render_compute_wa_init(struct 
>>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>>            wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>>>>>                     MTL_DISABLE_SAMPLER_SC_OOO);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>>>>>            /* Wa_22015279794 */
>>>>>            wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>>>>>                     DISABLE_PREFETCH_INTO_IC);
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>>>>>            IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>>>>>            IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>>>>>            /* Wa_22013037850 */
>>>>> @@ -3058,16 +3060,16 @@ general_render_compute_wa_init(struct 
>>>>> intel_engine_cs *engine, struct i915_wa_li
>>>>>                    DISABLE_128B_EVICTION_COMMAND_UDW);
>>>>>        }
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>>>>>            IS_PONTEVECCHIO(i915) ||
>>>>>            IS_DG2(i915)) {
>>>>>            /* Wa_22014226127 */
>>>>>            wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, 
>>>>> DISABLE_D8_D16_COASLESCE);
>>>>>        }
>>>>> -    if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>>>>> -        IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>> +        IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>>>>>            IS_DG2(i915)) {
>>>>>            /* Wa_18017747507 */
>>>>>            wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, 
>>>>> POLYGON_TRIFAN_LINELOOP_DISABLE);
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>>> index 1e532981f74e..300b968e6de8 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>>>>> @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>>>>>            flags |= GUC_WA_GAM_CREDITS;
>>>>>        /* Wa_14014475959 */
>>>>> -    if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>>>>> +    if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>>>>>            IS_DG2(gt->i915))
>>>>>            flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
>>>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>>>>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> index 1bd5d8f7c40b..3b159069dbc4 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>>>> @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct 
>>>>> intel_engine_cs *engine)
>>>>>        /* Wa_14014475959:dg2 */
>>>>>        if (engine->class == COMPUTE_CLASS)
>>>>> -        if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, 
>>>>> STEP_B0) ||
>>>>> +        if (IS_GFX_IPVER_STEP(engine->gt, IP_VER(12, 70), STEP_A0, 
>>>>> STEP_B0) ||
>>>>>                IS_DG2(engine->i915))
>>>>>                engine->flags |= 
>>>>> I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>>>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>>>>> b/drivers/gpu/drm/i915/i915_drv.h
>>>>> index f38c93d82c56..d03710c923c8 100644
>>>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>>>> @@ -692,9 +692,11 @@ IS_SUBPLATFORM(const struct drm_i915_private 
>>>>> *i915,
>>>>>    #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>>>>>        (IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>>>>> -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
>>>>> -    (IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, 
>>>>> INTEL_SUBPLATFORM_##variant) && \
>>>>> -     IS_GRAPHICS_STEP(__i915, since, until))
>>>>> +#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
>>>>> +    (BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
>>>>> +     (__gt->type != GT_MEDIA && \
>>>>> +      GRAPHICS_VER_FULL(__gt->i915) == ipver && \
>>>>> +      IS_GRAPHICS_STEP(__gt->i915, since, until)))
>>>>>    #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>>>>>        (IS_METEORLAKE(__i915) && \
>>>
>>> -- 
>>> Matt Roper
>>> Graphics Software Engineer
>>> Linux GPU Platform Enablement
>>> Intel Corporation
>>

