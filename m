Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE51B5979
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 12:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FAB76E184;
	Thu, 23 Apr 2020 10:42:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8106E184
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 10:42:39 +0000 (UTC)
IronPort-SDR: F1YJsWDsl+NynPeiUllHrLgfTy13N5QRrtVqjiySWBzirHq39VWNVGUvauPpXuT1CrZE5PU2nR
 lhP+/X8++kDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:42:39 -0700
IronPort-SDR: p65CCuNFjmzA36w3w76gAQbWskg4f0IgxM8/TykIKr/qBSbeumjaC2VFHB4vo3ysSdBMUWO1Fx
 e365XQSJLufw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="247720595"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 23 Apr 2020 03:42:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 743F45C3A0F; Thu, 23 Apr 2020 13:40:40 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158758427608.5423.728971975003408711@build.alporthouse.com>
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
 <20200421131633.8246-3-mika.kuoppala@linux.intel.com>
 <158758427608.5423.728971975003408711@build.alporthouse.com>
Date: Thu, 23 Apr 2020 13:40:40 +0300
Message-ID: <87o8rilc2f.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: Add live selftests for
 indirect ctx batchbuffers
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

> Quoting Mika Kuoppala (2020-04-21 14:16:31)
>> Indirect ctx batchbuffers are a hw feature of which
>> batch can be run, by hardware, during context restoration stage.
>> Driver can setup a batchbuffer and also an offset into the
>> context image. When context image is marshalled from
>> memory to registers, and when the offset from the start of
>> context register state is equal of what driver pre-determined,
>> batch will run. So one can manipulate context restoration
>> process at any granularity of one lri, given some
>> limitations, as you need to have rudimentaries in place
>> before you can run a batch.
>> 
>> Add selftest which will write the ring start register
>> to a canary spot. This will test that hardware will run a
>> batchbuffer for the context in question.
>> 
>> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 156 ++++++++++++++++++++++++-
>>  1 file changed, 155 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> index 32d2b0850dec..32c4096b627b 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> @@ -5363,6 +5363,159 @@ static int live_lrc_isolation(void *arg)
>>         return err;
>>  }
>>  
>> +static int ctx_bb_submit_req(struct intel_context *ce)
>> +{
>> +       struct i915_request *rq;
>> +       int err;
>> +
>> +       rq = intel_context_create_request(ce);
>> +       if (IS_ERR(rq))
>> +               return PTR_ERR(rq);
>> +
>> +       i915_request_get(rq);
>> +       i915_request_add(rq);
>> +
>> +       err = i915_request_wait(rq, 0, HZ / 5);
>> +       if (err < 0)
>> +               pr_err("%s: request not completed!\n", rq->engine->name);
>> +
>> +       i915_request_put(rq);
>> +
>> +       return 0;
>
> if (i915_request_wait() < 0)
> 	err = -ETIME;
>
> return err;
>
>
>> +}
>> +
>> +#define CTX_BB_CANARY_OFFSET (3*1024)
>> +#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
>> +
>> +static u32 *
>> +emit_ctx_bb_canary(struct intel_context *ce, u32 *cs)
>> +{
>> +       const u32 ring_start_reg = i915_mmio_reg_offset(RING_START(0));
>> +       const u32 srm = MI_STORE_REGISTER_MEM_GEN8 |
>> +               MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
>> +
>> +       *cs++ = srm;
>> +       *cs++ = ring_start_reg;
>> +       *cs++ = i915_ggtt_offset(ce->state) +
>> +               ce->ctx_bb_offset + CTX_BB_CANARY_OFFSET;
>> +       *cs++ = 0;
>> +
>> +       return cs;
>> +}
>> +
>> +static void
>> +ctx_bb_setup(struct intel_context *ce)
>> +{
>> +       u32 *cs = context_indirect_bb(ce);
>> +
>> +       cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
>> +
>> +       setup_indirect_ctx_bb(ce, emit_ctx_bb_canary);
>> +}
>> +
>> +static bool check_ring_start(struct intel_context *ce)
>> +{
>> +       const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
>> +               LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;
>
> _OFFSET or did this get updated?
>
>> +
>> +       if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
>> +               return true;
>> +
>> +       pr_err("ring start mismatch: canary 0x%08x vs state 0x%08x\n",
>> +              ctx_bb[CTX_BB_CANARY_INDEX],
>> +              ce->lrc_reg_state[CTX_RING_START]);
>> +
>> +       return false;
>> +}
>> +
>> +static int ctx_bb_check(struct intel_context *ce)
>> +{
>> +       int err;
>> +
>> +       err = ctx_bb_submit_req(ce);
>> +       if (err)
>> +               return err;
>> +
>> +       if (!check_ring_start(ce))
>> +               return -EINVAL;
>> +
>> +       return 0;
>> +}
>> +
>> +static int __per_ctx_bb(struct intel_engine_cs *engine)
>> +{
>> +       struct intel_context *ce1, *ce2;
>
> I'd vote for a, b; a greater %% of unique characters for ease of the
> reader.
>
>> +       int err = 0;
>> +
>> +       ce1 = intel_context_create(engine);
>> +       ce2 = intel_context_create(engine);
>> +
>> +       err = intel_context_pin(ce1);
>> +       if (err)
>> +               return err;
>> +
>> +       err = intel_context_pin(ce2);
>> +       if (err) {
>> +               intel_context_put(ce1);
>> +               return err;
>> +       }
>> +
>> +       /* We use the already reserved extra page in context state */
>> +       if (!ce1->ctx_bb_offset) {
>> +               GEM_BUG_ON(ce2->ctx_bb_offset);
>> +               GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
>> +               goto out;
>> +       }
>> +
>> +       /* In order to test that our per context bb is truly per context,
>> +        * and executes at the intended spot on context restoring process,
>> +        * make the batch store the ring start value to memory.
>> +        * As ring start is restored apriori of starting the indirect ctx bb and
>> +        * as it will be different for each context, it fits to this purpose.
>> +        */
>> +       ctx_bb_setup(ce1);
>> +       ctx_bb_setup(ce2);
>> +
>> +       err = ctx_bb_check(ce1);
>> +       if (err)
>> +               goto out;
>> +
>> +       err = ctx_bb_check(ce2);
>> +out:
>> +       intel_context_unpin(ce2);
>> +       intel_context_put(ce2);
>> +
>> +       intel_context_unpin(ce1);
>> +       intel_context_put(ce1);
>> +
>> +       return err;
>> +}
>> +
>> +static int live_lrc_indirect_ctx_bb(void *arg)
>> +{
>> +       struct intel_gt *gt = arg;
>> +       struct intel_engine_cs *engine;
>> +       enum intel_engine_id id;
>> +       int err = 0;
>> +
>> +       for_each_engine(engine, gt, id) {
>> +
>> +               intel_engine_pm_get(engine);
>> +               err = __per_ctx_bb(engine);
>> +               intel_engine_pm_put(engine);
>> +
>> +               if (err)
>> +                       break;
>> +
>> +               if (igt_flush_test(gt->i915)) {
>> +                       err = -EIO;
>> +                       break;
>> +               }
>
> for_each_engine() {
> 	intel_engine_pm_get()
> 	err = __per_ctx_bb();
> 	intel_engine_pm_put();
> 	if (igt_flush_test())
> 		err = -EIO;
> 	if (err)
> 		break;
>
> __per_ctx_bb is a bit confusing, no?

It is, remnants of when this test did both indirect and per ctx.
But that is for future work if we ever need it.

>
> Should it be __live_lrc_indirect_ctx_bb or __lrc_indirect_ctx_bb?

Both are better, I will try to see what fits.
-Mika
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
