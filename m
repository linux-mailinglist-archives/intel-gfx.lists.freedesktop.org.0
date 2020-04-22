Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0B81B4D73
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:38:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2189389CDE;
	Wed, 22 Apr 2020 19:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C550E89CDE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:38:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20988900-1500050 for multiple; Wed, 22 Apr 2020 20:37:57 +0100
MIME-Version: 1.0
In-Reply-To: <20200421131633.8246-3-mika.kuoppala@linux.intel.com>
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
 <20200421131633.8246-3-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158758427608.5423.728971975003408711@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 22 Apr 2020 20:37:56 +0100
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

Quoting Mika Kuoppala (2020-04-21 14:16:31)
> Indirect ctx batchbuffers are a hw feature of which
> batch can be run, by hardware, during context restoration stage.
> Driver can setup a batchbuffer and also an offset into the
> context image. When context image is marshalled from
> memory to registers, and when the offset from the start of
> context register state is equal of what driver pre-determined,
> batch will run. So one can manipulate context restoration
> process at any granularity of one lri, given some
> limitations, as you need to have rudimentaries in place
> before you can run a batch.
> 
> Add selftest which will write the ring start register
> to a canary spot. This will test that hardware will run a
> batchbuffer for the context in question.
> 
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 156 ++++++++++++++++++++++++-
>  1 file changed, 155 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 32d2b0850dec..32c4096b627b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -5363,6 +5363,159 @@ static int live_lrc_isolation(void *arg)
>         return err;
>  }
>  
> +static int ctx_bb_submit_req(struct intel_context *ce)
> +{
> +       struct i915_request *rq;
> +       int err;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq))
> +               return PTR_ERR(rq);
> +
> +       i915_request_get(rq);
> +       i915_request_add(rq);
> +
> +       err = i915_request_wait(rq, 0, HZ / 5);
> +       if (err < 0)
> +               pr_err("%s: request not completed!\n", rq->engine->name);
> +
> +       i915_request_put(rq);
> +
> +       return 0;

if (i915_request_wait() < 0)
	err = -ETIME;

return err;


> +}
> +
> +#define CTX_BB_CANARY_OFFSET (3*1024)
> +#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
> +
> +static u32 *
> +emit_ctx_bb_canary(struct intel_context *ce, u32 *cs)
> +{
> +       const u32 ring_start_reg = i915_mmio_reg_offset(RING_START(0));
> +       const u32 srm = MI_STORE_REGISTER_MEM_GEN8 |
> +               MI_SRM_LRM_GLOBAL_GTT | MI_LRI_LRM_CS_MMIO;
> +
> +       *cs++ = srm;
> +       *cs++ = ring_start_reg;
> +       *cs++ = i915_ggtt_offset(ce->state) +
> +               ce->ctx_bb_offset + CTX_BB_CANARY_OFFSET;
> +       *cs++ = 0;
> +
> +       return cs;
> +}
> +
> +static void
> +ctx_bb_setup(struct intel_context *ce)
> +{
> +       u32 *cs = context_indirect_bb(ce);
> +
> +       cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
> +
> +       setup_indirect_ctx_bb(ce, emit_ctx_bb_canary);
> +}
> +
> +static bool check_ring_start(struct intel_context *ce)
> +{
> +       const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
> +               LRC_STATE_PN * PAGE_SIZE + ce->ctx_bb_offset;

_OFFSET or did this get updated?

> +
> +       if (ctx_bb[CTX_BB_CANARY_INDEX] == ce->lrc_reg_state[CTX_RING_START])
> +               return true;
> +
> +       pr_err("ring start mismatch: canary 0x%08x vs state 0x%08x\n",
> +              ctx_bb[CTX_BB_CANARY_INDEX],
> +              ce->lrc_reg_state[CTX_RING_START]);
> +
> +       return false;
> +}
> +
> +static int ctx_bb_check(struct intel_context *ce)
> +{
> +       int err;
> +
> +       err = ctx_bb_submit_req(ce);
> +       if (err)
> +               return err;
> +
> +       if (!check_ring_start(ce))
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int __per_ctx_bb(struct intel_engine_cs *engine)
> +{
> +       struct intel_context *ce1, *ce2;

I'd vote for a, b; a greater %% of unique characters for ease of the
reader.

> +       int err = 0;
> +
> +       ce1 = intel_context_create(engine);
> +       ce2 = intel_context_create(engine);
> +
> +       err = intel_context_pin(ce1);
> +       if (err)
> +               return err;
> +
> +       err = intel_context_pin(ce2);
> +       if (err) {
> +               intel_context_put(ce1);
> +               return err;
> +       }
> +
> +       /* We use the already reserved extra page in context state */
> +       if (!ce1->ctx_bb_offset) {
> +               GEM_BUG_ON(ce2->ctx_bb_offset);
> +               GEM_BUG_ON(INTEL_GEN(engine->i915) == 12);
> +               goto out;
> +       }
> +
> +       /* In order to test that our per context bb is truly per context,
> +        * and executes at the intended spot on context restoring process,
> +        * make the batch store the ring start value to memory.
> +        * As ring start is restored apriori of starting the indirect ctx bb and
> +        * as it will be different for each context, it fits to this purpose.
> +        */
> +       ctx_bb_setup(ce1);
> +       ctx_bb_setup(ce2);
> +
> +       err = ctx_bb_check(ce1);
> +       if (err)
> +               goto out;
> +
> +       err = ctx_bb_check(ce2);
> +out:
> +       intel_context_unpin(ce2);
> +       intel_context_put(ce2);
> +
> +       intel_context_unpin(ce1);
> +       intel_context_put(ce1);
> +
> +       return err;
> +}
> +
> +static int live_lrc_indirect_ctx_bb(void *arg)
> +{
> +       struct intel_gt *gt = arg;
> +       struct intel_engine_cs *engine;
> +       enum intel_engine_id id;
> +       int err = 0;
> +
> +       for_each_engine(engine, gt, id) {
> +
> +               intel_engine_pm_get(engine);
> +               err = __per_ctx_bb(engine);
> +               intel_engine_pm_put(engine);
> +
> +               if (err)
> +                       break;
> +
> +               if (igt_flush_test(gt->i915)) {
> +                       err = -EIO;
> +                       break;
> +               }

for_each_engine() {
	intel_engine_pm_get()
	err = __per_ctx_bb();
	intel_engine_pm_put();
	if (igt_flush_test())
		err = -EIO;
	if (err)
		break;

__per_ctx_bb is a bit confusing, no?

Should it be __live_lrc_indirect_ctx_bb or __lrc_indirect_ctx_bb?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
