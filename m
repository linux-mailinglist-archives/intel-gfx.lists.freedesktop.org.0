Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBC51D7509
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319126E147;
	Mon, 18 May 2020 10:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DA7C6E147
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21227942-1500050 for multiple; Mon, 18 May 2020 11:21:47 +0100
MIME-Version: 1.0
In-Reply-To: <6bbdd286-4a82-6ca5-a4f8-743c17050468@linux.intel.com>
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
 <20200518081440.17948-2-chris@chris-wilson.co.uk>
 <6bbdd286-4a82-6ca5-a4f8-743c17050468@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158979730634.17769.4332863397571750948@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 11:21:46 +0100
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Add tests for
 timeslicing virtual engines
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

Quoting Tvrtko Ursulin (2020-05-18 11:12:29)
> 
> On 18/05/2020 09:14, Chris Wilson wrote:
> > Make sure that we can execute a virtual request on an already busy
> > engine, and conversely that we can execute a normal request if the
> > engines are already fully occupied by virtual requests.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >   drivers/gpu/drm/i915/gt/selftest_lrc.c | 179 +++++++++++++++++++++++++
> >   1 file changed, 179 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > index 824f99c4cc7c..1fc54359bd53 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> > @@ -3766,6 +3766,184 @@ static int live_virtual_mask(void *arg)
> >       return 0;
> >   }
> >   
> > +static int slicein_virtual_engine(struct intel_gt *gt,
> > +                               struct intel_engine_cs **siblings,
> > +                               unsigned int nsibling)
> > +{
> > +     struct intel_context *ce;
> > +     struct i915_request *rq;
> > +     struct igt_spinner spin;
> > +     unsigned int n;
> > +     int err = 0;
> > +
> > +     /*
> > +      * Virtual requests must take part in timeslicing on the target engines.
> > +      */
> > +
> > +     if (igt_spinner_init(&spin, gt))
> > +             return -ENOMEM;
> > +
> > +     for (n = 0; n < nsibling; n++) {
> > +             ce = intel_context_create(siblings[n]);
> > +             if (IS_ERR(ce)) {
> > +                     err = PTR_ERR(ce);
> > +                     goto out;
> > +             }
> > +
> > +             rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> > +             intel_context_put(ce);
> > +
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     goto out;
> > +             }
> > +
> > +             i915_request_add(rq);
> > +     }
> > +
> > +     ce = intel_execlists_create_virtual(siblings, nsibling);
> > +     if (IS_ERR(ce)) {
> > +             err = PTR_ERR(ce);
> > +             goto out;
> > +     }
> > +
> > +     rq = intel_context_create_request(ce);
> > +     intel_context_put(ce);
> > +     if (IS_ERR(rq)) {
> > +             err = PTR_ERR(rq);
> > +             goto out;
> > +     }
> > +
> > +     i915_request_get(rq);
> > +     i915_request_add(rq);
> > +     if (i915_request_wait(rq, 0, HZ / 10) < 0) {
> > +             GEM_TRACE_ERR("%s(%s) failed to slice in virtual request\n",
> > +                           __func__, rq->engine->name);
> > +             GEM_TRACE_DUMP();
> > +             intel_gt_set_wedged(gt);
> > +             err = -EIO;
> > +     }
> > +     i915_request_put(rq);
> > +
> > +out:
> > +     igt_spinner_end(&spin);
> > +     if (igt_flush_test(gt->i915))
> > +             err = -EIO;
> > +     igt_spinner_fini(&spin);
> > +     return err;
> > +}
> > +
> > +static int sliceout_virtual_engine(struct intel_gt *gt,
> > +                                struct intel_engine_cs **siblings,
> > +                                unsigned int nsibling)
> > +{
> > +     struct intel_context *ce;
> > +     struct i915_request *rq;
> > +     struct igt_spinner spin;
> > +     unsigned int n;
> > +     int err = 0;
> > +
> > +     /*
> > +      * Virtual requests must allow others a fair timeslice.
> > +      */
> > +
> > +     if (igt_spinner_init(&spin, gt))
> > +             return -ENOMEM;
> > +
> > +     for (n = 0; n <= nsibling; n++) { /* oversubscribed */
> > +             ce = intel_execlists_create_virtual(siblings, nsibling);
> > +             if (IS_ERR(ce)) {
> > +                     err = PTR_ERR(ce);
> > +                     goto out;
> > +             }
> > +
> > +             rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
> > +             intel_context_put(ce);
> > +
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     goto out;
> > +             }
> > +
> > +             i915_request_add(rq);
> > +     }
> > +
> > +     for (n = 0; !err && n < nsibling; n++) {
> > +             ce = intel_context_create(siblings[n]);
> > +             if (IS_ERR(ce)) {
> > +                     err = PTR_ERR(ce);
> > +                     goto out;
> > +             }
> > +
> > +             rq = intel_context_create_request(ce);
> > +             intel_context_put(ce);
> > +
> > +             if (IS_ERR(rq)) {
> > +                     err = PTR_ERR(rq);
> > +                     goto out;
> > +             }
> > +
> > +             i915_request_get(rq);
> > +             i915_request_add(rq);
> > +             if (i915_request_wait(rq, 0, HZ / 10) < 0) {
> > +                     GEM_TRACE_ERR("%s(%s) failed to slice out virtual request\n",
> > +                                   __func__, siblings[n]->name);
> > +                     GEM_TRACE_DUMP();
> > +                     intel_gt_set_wedged(gt);
> > +                     err = -EIO;
> > +             }
> > +             i915_request_put(rq);
> > +     }
> > +
> > +out:
> > +     igt_spinner_end(&spin);
> > +     if (igt_flush_test(gt->i915))
> > +             err = -EIO;
> > +     igt_spinner_fini(&spin);
> > +     return err;
> > +}
> > +
> > +static int live_virtual_slice(void *arg)
> > +{
> > +     struct intel_gt *gt = arg;
> > +     struct intel_engine_cs *siblings[MAX_ENGINE_INSTANCE + 1];
> > +     unsigned int class, inst;
> > +     int err;
> > +
> > +     if (intel_uc_uses_guc_submission(&gt->uc))
> > +             return 0;
> 
> Shouldn't the intel_engine_has_timeslices check below be enough? I am 
> worried not to silently skip this seemingly pretty generic too much.

I haven't looked too hard which of these are execlists specific. I have
a plan somewhere to recreate a bunch of these as functional tests for
the i915_request layer.

That would give us a rough progression like

low level live_execlists_selftests
-> mid level live_request_selftests
 -> uapi gem_exec_scheduler at al

> > +
> > +     for (class = 0; class <= MAX_ENGINE_CLASS; class++) {
> > +             unsigned int nsibling;
> > +
> > +             nsibling = 0;
> > +             for (inst = 0; inst <= MAX_ENGINE_INSTANCE; inst++) {
> > +                     struct intel_engine_cs *engine;
> > +
> > +                     engine = gt->engine_class[class][inst];
> > +                     if (!engine)
> > +                             break;
> 
> This should be continue I think, to account for vcs0 + vcs2 on Icelake.

Oh, they all break atm iirc. Ah, no just the one I copied. Do I hear
the plea for refactoring the duplicated code :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
