Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB85B1B7B32
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED09D6EAB8;
	Fri, 24 Apr 2020 16:12:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86AB76EAB8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:12:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21010739-1500050 for multiple; Fri, 24 Apr 2020 17:11:59 +0100
MIME-Version: 1.0
In-Reply-To: <20200424160150.19704-3-mika.kuoppala@linux.intel.com>
References: <20200424160150.19704-1-mika.kuoppala@linux.intel.com>
 <20200424160150.19704-3-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158774471839.27391.2153274648912149526@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 24 Apr 2020 17:11:58 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Add live selftests for
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

Quoting Mika Kuoppala (2020-04-24 17:01:49)
> Indirect ctx batchbuffers are a hw feature of which
> batch can be run, by hardware, during context restoration stage.
> Driver can setup a batchbuffer and also an offset into the
> context image. When context image is marshalled from
> memory to registers, and when the offset from the start of
> context register state is equal of what driver pre-determined,
> batch will run. So one can manipulate context restoration
> process at cacheline granularity, given some limitations,
> as you need to have rudimentaries in place before you can
> run a batch.
> 
> Add selftest which will write the ring start register
> to a canary spot. This will test that hardware will run a
> batchbuffer for the context in question.
> 
> v2: request wait fix, naming (Chris)
> 
> Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I'd still squash this with the user; so we have the check on the
interface along with it.

> ---
>  drivers/gpu/drm/i915/gt/selftest_lrc.c | 153 ++++++++++++++++++++++++-
>  1 file changed, 152 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 4996d511f6fc..89a3bbf72a7a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -5710,6 +5710,156 @@ static int live_lrc_isolation(void *arg)
>         return err;
>  }
>  
> +static int indirect_ctx_submit_req(struct intel_context *ce)
> +{
> +       struct i915_request *rq;
> +       int err = 0;
> +
> +       rq = intel_context_create_request(ce);
> +       if (IS_ERR(rq))
> +               return PTR_ERR(rq);
> +
> +       i915_request_get(rq);
> +       i915_request_add(rq);
> +
> +       if (i915_request_wait(rq, 0, HZ / 5) < 0)
> +               err = -ETIME;
> +
> +       i915_request_put(rq);
> +
> +       return err;
> +}
> +
> +#define CTX_BB_CANARY_OFFSET (3*1024)
> +#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
> +
> +static u32 *
> +emit_indirect_ctx_bb_canary(struct intel_context *ce, u32 *cs)
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
> +indirect_ctx_bb_setup(struct intel_context *ce)
> +{
> +       u32 *cs = context_indirect_bb(ce);
> +
> +       cs[CTX_BB_CANARY_INDEX] = 0xdeadf00d;
> +
> +       setup_indirect_ctx_bb(ce, emit_indirect_ctx_bb_canary);
> +}
> +
> +static bool check_ring_start(struct intel_context *ce)
> +{
> +       const u32 * const ctx_bb = (void *)(ce->lrc_reg_state) -
> +               LRC_STATE_OFFSET + ce->ctx_bb_offset;
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
> +static int indirect_ctx_bb_check(struct intel_context *ce)
> +{
> +       int err;
> +
> +       err = indirect_ctx_submit_req(ce);
> +       if (err)
> +               return err;
> +
> +       if (!check_ring_start(ce))
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
> +static int __live_lrc_indirect_ctx_bb(struct intel_engine_cs *engine)
> +{
> +       struct intel_context *a, *b;
> +       int err = 0;
> +
> +       a = intel_context_create(engine);
> +       b = intel_context_create(engine);
> +
> +       err = intel_context_pin(a);
> +       if (err)
> +               return err;
> +
> +       err = intel_context_pin(b);
> +       if (err) {
> +               intel_context_put(a);
> +               return err;
> +       }
> +
> +       /* We use the already reserved extra page in context state */
> +       if (!a->ctx_bb_offset) {
> +               GEM_BUG_ON(b->ctx_bb_offset);
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
> +       indirect_ctx_bb_setup(a);
> +       indirect_ctx_bb_setup(b);
> +
> +       err = indirect_ctx_bb_check(a);
> +       if (err)
> +               goto out;
> +
> +       err = indirect_ctx_bb_check(b);
> +out:
> +       intel_context_unpin(b);
> +       intel_context_put(b);
> +
> +       intel_context_unpin(a);
> +       intel_context_put(a);
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
> +               err = __live_lrc_indirect_ctx_bb(engine);
> +               intel_engine_pm_put(engine);
> +
> +               if (igt_flush_test(gt->i915))
> +                       err = -EIO;
> +
> +               if (err)
> +                       break;
> +       }
> +
> +       return err;
> +}
> +
>  static void garbage_reset(struct intel_engine_cs *engine,
>                           struct i915_request *rq)
>  {
> @@ -5941,10 +6091,11 @@ int intel_lrc_live_selftests(struct drm_i915_private *i915)
>                 SUBTEST(live_lrc_fixed),
>                 SUBTEST(live_lrc_state),
>                 SUBTEST(live_lrc_gpr),
> -               SUBTEST(live_lrc_isolation),
> +               SUBTEST(live_lrc_indirect_ctx_bb),
>                 SUBTEST(live_lrc_timestamp),
>                 SUBTEST(live_lrc_garbage),
>                 SUBTEST(live_pphwsp_runtime),
> +               SUBTEST(live_lrc_isolation),

For final; I'd keep isolation early, it's a rough sequence of severity.

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
