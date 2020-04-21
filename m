Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A11B2385
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 12:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D166E909;
	Tue, 21 Apr 2020 10:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E90A6E07B
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 10:03:28 +0000 (UTC)
IronPort-SDR: Mrv6egfKYM4lVo0f8im+45DTmbfUSVjDDlmh/F0FlJ8A7p4nIfF1jvEuICF1qnvOYozPhWBcoq
 1FLRM/Zp6FPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 03:03:28 -0700
IronPort-SDR: tEgyJfMnvGxXc8u3ssarbcyoLOrBwqPbYBpoPJO9ZGXmzx+fxNQTxMGScynGjMxUEcp+P7j4gf
 qv1v1HhbqbSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,410,1580803200"; d="scan'208";a="245639272"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2020 03:03:26 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A7E405C1DA7; Tue, 21 Apr 2020 13:01:32 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158713603767.2062.7250129675154187769@build.alporthouse.com>
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
 <158713603767.2062.7250129675154187769@build.alporthouse.com>
Date: Tue, 21 Apr 2020 13:01:32 +0300
Message-ID: <87ftcxma2r.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add per ctx batchbuffer wa
 for timestamp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-04-17 15:44:27)
>> Restoration of a previous timestamp can collide
>> with updating the timestamp, causing a value corruption.
>> 
>> Combat this issue by using indirect ctx bb to
>> modify the context image during restoring process.
>> 
>> For render engine, we can preload value into
>> scratch register. From which we then do the actual
>> write with LRR. LRR is faster and thus less error prone.
>> For other engines, no scratch is available so we
>> must do a more complex sequence of sync and async LRMs.
>> As the LRM is slower, the probablity of racy write
>> raises and thus we still see corruption sometimes.
>> 
>> References: HSDES#16010904313
>> Testcase: igt/i915_selftest/gt_lrc
>> Suggested-by: Joseph Koston <joseph.koston@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> 
>> bug on fix
>> ---
>>  drivers/gpu/drm/i915/gt/intel_context_types.h |   3 +
>>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   3 +-
>>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 196 ++++++++++++++----
>>  drivers/gpu/drm/i915/gt/intel_lrc_reg.h       |   1 +
>>  4 files changed, 165 insertions(+), 38 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> index 07cb83a0d017..c7573d565f58 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
>> @@ -70,6 +70,9 @@ struct intel_context {
>>  
>>         u32 *lrc_reg_state;
>>         u64 lrc_desc;
>> +
>> +       u32 ctx_bb_offset;
>> +
>>         u32 tag; /* cookie passed to HW to track this context on submission */
>>  
>>         /* Time on GPU as tracked by the hw. */
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> index f04214a54f75..0c2adb4078a7 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
>> @@ -138,7 +138,7 @@
>>   */
>>  #define MI_LOAD_REGISTER_IMM(x)        MI_INSTR(0x22, 2*(x)-1)
>>  /* Gen11+. addr = base + (ctx_restore ? offset & GENMASK(12,2) : offset) */
>> -#define   MI_LRI_CS_MMIO               (1<<19)
>> +#define   MI_LRI_LRM_CS_MMIO           (1<<19)
>>  #define   MI_LRI_FORCE_POSTED          (1<<12)
>>  #define MI_LOAD_REGISTER_IMM_MAX_REGS (126)
>>  #define MI_STORE_REGISTER_MEM        MI_INSTR(0x24, 1)
>> @@ -155,6 +155,7 @@
>>  #define   MI_FLUSH_DW_USE_PPGTT                (0<<2)
>>  #define MI_LOAD_REGISTER_MEM      MI_INSTR(0x29, 1)
>>  #define MI_LOAD_REGISTER_MEM_GEN8  MI_INSTR(0x29, 2)
>> +#define   MI_LRM_ASYNC                 (1<<21)
>>  #define MI_LOAD_REGISTER_REG    MI_INSTR(0x2A, 1)
>>  #define MI_BATCH_BUFFER                MI_INSTR(0x30, 1)
>>  #define   MI_BATCH_NON_SECURE          (1)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> index 6fbad5e2343f..531884b9050c 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> @@ -234,7 +234,7 @@ static void execlists_init_reg_state(u32 *reg_state,
>>                                      const struct intel_ring *ring,
>>                                      bool close);
>>  static void
>> -__execlists_update_reg_state(const struct intel_context *ce,
>> +__execlists_update_reg_state(struct intel_context *ce,
>>                              const struct intel_engine_cs *engine,
>>                              u32 head);
>>  
>> @@ -537,7 +537,7 @@ static void set_offsets(u32 *regs,
>>                 if (flags & POSTED)
>>                         *regs |= MI_LRI_FORCE_POSTED;
>>                 if (INTEL_GEN(engine->i915) >= 11)
>> -                       *regs |= MI_LRI_CS_MMIO;
>> +                       *regs |= MI_LRI_LRM_CS_MMIO;
>>                 regs++;
>>  
>>                 GEM_BUG_ON(!count);
>> @@ -3142,8 +3142,152 @@ static void execlists_context_unpin(struct intel_context *ce)
>>         i915_gem_object_unpin_map(ce->state->obj);
>>  }
>>  
>> +static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
>> +{
>> +       u32 indirect_ctx_offset;
>> +
>> +       switch (INTEL_GEN(engine->i915)) {
>> +       default:
>> +               MISSING_CASE(INTEL_GEN(engine->i915));
>> +               fallthrough;
>> +       case 12:
>> +               indirect_ctx_offset =
>> +                       GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> +               break;
>> +       case 11:
>> +               indirect_ctx_offset =
>> +                       GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> +               break;
>> +       case 10:
>> +               indirect_ctx_offset =
>> +                       GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> +               break;
>> +       case 9:
>> +               indirect_ctx_offset =
>> +                       GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> +               break;
>> +       case 8:
>> +               indirect_ctx_offset =
>> +                       GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> +               break;
>> +       }
>> +
>> +       return indirect_ctx_offset;
>> +}
>> +
>> +static u32 *
>> +gen12_emit_timestamp_wa_lrm(struct intel_context *ce, u32 *cs)
>> +{
>> +       const u32 lrc_offset = i915_ggtt_offset(ce->state) +
>> +               LRC_STATE_PN * PAGE_SIZE;
>> +       const u32 lrm = MI_LOAD_REGISTER_MEM_GEN8 |
>> +               MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
>> +
>> +       *cs++ = lrm;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +       *cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
>> +       *cs++ = 0;
>> +
>> +       *cs++ = lrm | MI_LRM_ASYNC;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +       *cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
>> +       *cs++ = 0;
>> +
>> +       *cs++ = lrm | MI_LRM_ASYNC;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +       *cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
>> +       *cs++ = 0;
>> +
>> +       *cs++ = lrm;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +       *cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
>> +       *cs++ = 0;
>> +
>> +       return cs;
>> +}
>> +
>> +static u32 *
>> +gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
>> +{
>> +       const u32 lrc_offset = i915_ggtt_offset(ce->state) +
>> +               LRC_STATE_PN * PAGE_SIZE;
>
> Repetitive.

I will introduce LRC_STATE_OFFSET driverwide :P

>
>> +       const u32 lrm = MI_LOAD_REGISTER_MEM_GEN8 |
>> +               MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
>
> Used once, might as just use the constant inplace.
>
>> +       const u32 scratch_reg = 0x2198;
>> +
>> +       *cs++ = lrm;
>> +       *cs++ = scratch_reg;
>> +       *cs++ = lrc_offset + CTX_TIMESTAMP * sizeof(u32);
>> +       *cs++ = 0;
>> +
>> +       *cs++ = MI_LOAD_REGISTER_REG | MI_LRI_LRM_CS_MMIO;
>> +       *cs++ = scratch_reg;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +
>> +       *cs++ = MI_LOAD_REGISTER_REG | MI_LRI_LRM_CS_MMIO;
>> +       *cs++ = scratch_reg;
>> +       *cs++ = i915_mmio_reg_offset(RING_CTX_TIMESTAMP(0));
>> +
>> +       return cs;
>> +}
>> +
>> +static u32 *
>> +execlists_emit_ctx_bb(struct intel_context *ce,
>> +                     u32 *(*emit)(struct intel_context *, u32 *))
>> +{
>> +       u32 *cs = (void *)(ce->lrc_reg_state) -
>> +               LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;
>
> static u32 *context_indirect_bb(struct intel_context *ce)
> {
> 	void *ptr;
>
> 	GEM_BUG_ON(!intel_context_is_pinned(ce));

This happens during pinning as we need different
contents for each pinned location.

Apparently the pinned state will be set only
after until all these preparations are done.

So I can't use
GEM_BUG_ON(!intel_context_is_pinned(ce));
on this stage.

> 	GEM_BUG_ON(!ce->ctx_bb_offset);
>
> 	ptr = ce->lrc_reg_state;
> 	ptr -= LRC_STATE_PN * PAGE_SIZE; /* back to start of context image */
> 	ptr += ce->ctx_bb_offset;
>
> 	return ptr;
> }
>
>> +       const u32 * const batch_start = cs;
>> +
>> +       GEM_DEBUG_BUG_ON(!ce->ctx_bb_offset);
>> +
>> +       cs = emit(ce, cs);
>> +
>> +       GEM_DEBUG_BUG_ON(cs - batch_start >
>> +                        (I915_GTT_PAGE_SIZE - 4)/sizeof(*cs));
>> +
>> +       return cs;
>> +}
>> +
>> +static void
>> +execlists_setup_indirect_ctx_bb(struct intel_context *ce,
>> +                               u32 *(*emit)(struct intel_context *, u32 *))
>> +{
>> +       const u32 indirect_ptr_offset =
>> +               INTEL_GEN(ce->engine->i915) >= 12 ?
>> +               GEN12_CTX_BB_PER_CTX_PTR + 2 :
>> +               CTX_BB_PER_CTX_PTR + 2;
>
> Do we have this in live_lrc_layout yet?

Yes it is there.

>
>> +       const u32 * const start = (void *)(ce->lrc_reg_state) -
>> +               LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;
>> +       u32 *cs;
>> +
>> +       cs = execlists_emit_ctx_bb(ce, emit);
>> +
>> +       while ((unsigned long)cs % CACHELINE_BYTES)
>> +               *cs++ = MI_NOOP;
>> +
>> +       ce->lrc_reg_state[indirect_ptr_offset] =
>> +               (i915_ggtt_offset(ce->state) + ce->ctx_bb_offset) |
>> +               (cs - start) * sizeof(*cs) /
>> +               CACHELINE_BYTES;
>> +
>> +       ce->lrc_reg_state[indirect_ptr_offset + 2] =
>> +               intel_lr_indirect_ctx_offset(ce->engine) << 6;
>> +}
>> +
>>  static void
>> -__execlists_update_reg_state(const struct intel_context *ce,
>> +gen12_setup_timestamp_ctx_wa(struct intel_context *ce)
>> +{
>> +       if (ce->engine->class == RENDER_CLASS)
>> +               execlists_setup_indirect_ctx_bb(ce,
>
> I'd be tempted to drop the execlists_ at this depth.

Dropped.

>
>> +                                       gen12_emit_timestamp_wa_lrr);
>> +       else
>> +               execlists_setup_indirect_ctx_bb(ce,
>> +                                               gen12_emit_timestamp_wa_lrm);
>
> 	u32 *(*fn)(struct intel_context *ce, u32 *cs);
>
> 	fn = gen12_emit_timestamp_wa_lrm;
> 	if (ce->engine->class == RENDER_CLASS)
> 		fn = gen12_emit_timestamp_wa_lrr;
>
> 	setup_indirect_ctx_bb(ce, fn);
>
>
>> +static u32 *
>> +gen12_emit_timestamp_wa_lrr(struct intel_context *ce, u32 *cs)
>> +}
>> +
>> +static void
>> +__execlists_update_reg_state(struct intel_context *ce,
>>                              const struct intel_engine_cs *engine,
>>                              u32 head)
>>  {
>> @@ -3164,6 +3308,13 @@ __execlists_update_reg_state(const struct intel_context *ce,
>>                         intel_sseu_make_rpcs(engine->i915, &ce->sseu);
>>  
>>                 i915_oa_init_reg_state(ce, engine);
>> +
>> +       }
>> +
>> +       if (ce->ctx_bb_offset) {
>> +               /* Mutually exclusive wrt to global indirect bb */
>> +               GEM_BUG_ON(engine->wa_ctx.indirect_ctx.size);
>> +               gen12_setup_timestamp_ctx_wa(ce);
>>         }
>>  }
>>  
>> @@ -4667,40 +4818,6 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
>>         return 0;
>>  }
>>  
>> -static u32 intel_lr_indirect_ctx_offset(const struct intel_engine_cs *engine)
>> -{
>> -       u32 indirect_ctx_offset;
>> -
>> -       switch (INTEL_GEN(engine->i915)) {
>> -       default:
>> -               MISSING_CASE(INTEL_GEN(engine->i915));
>> -               /* fall through */
>> -       case 12:
>> -               indirect_ctx_offset =
>> -                       GEN12_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> -               break;
>> -       case 11:
>> -               indirect_ctx_offset =
>> -                       GEN11_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> -               break;
>> -       case 10:
>> -               indirect_ctx_offset =
>> -                       GEN10_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> -               break;
>> -       case 9:
>> -               indirect_ctx_offset =
>> -                       GEN9_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> -               break;
>> -       case 8:
>> -               indirect_ctx_offset =
>> -                       GEN8_CTX_RCS_INDIRECT_CTX_OFFSET_DEFAULT;
>> -               break;
>> -       }
>> -
>> -       return indirect_ctx_offset;
>> -}
>> -
>> -
>>  static void init_common_reg_state(u32 * const regs,
>>                                   const struct intel_engine_cs *engine,
>>                                   const struct intel_ring *ring,
>> @@ -4867,6 +4984,11 @@ static int __execlists_context_alloc(struct intel_context *ce,
>>         if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>>                 context_size += I915_GTT_PAGE_SIZE; /* for redzone */
>>  
>> +       if (INTEL_GEN(engine->i915) == 12) {
>> +               ce->ctx_bb_offset = context_size;
>> +               context_size += PAGE_SIZE;
>> +       }
>> +
>>         ctx_obj = i915_gem_object_create_shmem(engine->i915, context_size);
>>         if (IS_ERR(ctx_obj))
>>                 return PTR_ERR(ctx_obj);
>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
>> index d39b72590e40..bb444614f33b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc_reg.h
>> @@ -32,6 +32,7 @@
>>  
>>  /* GEN12+ Reg State Context */
>>  #define GEN12_CTX_BB_PER_CTX_PTR               (0x12 + 1)
>> +#define   CTX_BB_PER_CTX_PTR_VALID             BIT(0)
>>  
>>  #define ASSIGN_CTX_PDP(ppgtt, reg_state, n) do { \
>>         u32 *reg_state__ = (reg_state); \
>
> Was I imagining things, but didn't you devise a selftest to prove we
> could use the indirect-ctx-bb to do interesting things?

I have simple selftest and then some followup patches to show
how we can mold the context image.
-Mika

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
