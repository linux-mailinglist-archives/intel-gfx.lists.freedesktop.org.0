Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7C21324B6
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 12:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509AE89CF6;
	Tue,  7 Jan 2020 11:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5556689CF6
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 11:20:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19794426-1500050 for multiple; Tue, 07 Jan 2020 11:20:33 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191222233558.2201901-1-chris@chris-wilson.co.uk>
 <bffc4098-183d-59af-cf74-09e96bb4063d@linux.intel.com>
In-Reply-To: <bffc4098-183d-59af-cf74-09e96bb4063d@linux.intel.com>
Message-ID: <157839603041.2273.13544185281064382398@skylake-alporthouse-com>
Date: Tue, 07 Jan 2020 11:20:30 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Mark the GEM context link as RCU
 protected
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

Quoting Tvrtko Ursulin (2020-01-07 11:15:39)
> 
> On 22/12/2019 23:35, Chris Wilson wrote:
> > The only protection for intel_context.gem_cotext is granted by RCU, so
> > annotate it as a rcu protected pointer and carefully dereference it in
> > the few occasions we need to use it.
> > 
> > Fixes: 9f3ccd40acf4 ("drm/i915: Drop GEM context as a direct link from i915_request")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gem/i915_gem_context.c   |  5 ++-
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |  2 +-
> >   drivers/gpu/drm/i915/gt/intel_reset.c         | 26 +++++++++---
> >   .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
> >   drivers/gpu/drm/i915/i915_gpu_error.c         | 40 ++++++++++++-------
> >   drivers/gpu/drm/i915/i915_request.c           |  6 +--
> >   drivers/gpu/drm/i915/i915_request.h           |  8 ++++
> >   7 files changed, 62 insertions(+), 27 deletions(-)
> > 
> 
> [snip]
> 
> >   
> >   static void engine_record_requests(struct intel_engine_cs *engine,
> > @@ -1298,28 +1304,34 @@ static void error_record_engine_execlists(const struct intel_engine_cs *engine,
> >   static bool record_context(struct drm_i915_error_context *e,
> >                          const struct i915_request *rq)
> >   {
> > -     const struct i915_gem_context *ctx = rq->context->gem_context;
> > +     struct i915_gem_context *ctx;
> > +     struct task_struct *task;
> > +     bool capture;
> >   
> > +     rcu_read_lock();
> > +     ctx = rcu_dereference(rq->context->gem_context);
> > +     if (ctx && !kref_get_unless_zero(&ctx->ref))
> > +             ctx = NULL;
> > +     rcu_read_unlock();
> >       if (!ctx)
> >               return false;
> >   
> > -     if (ctx->pid) {
> > -             struct task_struct *task;
> > -
> > -             rcu_read_lock();
> > -             task = pid_task(ctx->pid, PIDTYPE_PID);
> > -             if (task) {
> > -                     strcpy(e->comm, task->comm);
> > -                     e->pid = task->pid;
> > -             }
> > -             rcu_read_unlock();
> > +     rcu_read_lock();
> > +     task = pid_task(ctx->pid, PIDTYPE_PID);
> > +     if (task) {
> > +             strcpy(e->comm, task->comm);
> > +             e->pid = task->pid;
> >       }
> > +     rcu_read_unlock();
> 
> Why is this rcu_read_lock section needed? The first one obtained the 
> reference to the context so should be good.

The task returned by ctx->pid is not protected by that reference, and
pid_task() doesn't increment the reference on the task. That's what I
remember of the pid_task() interface, that requires rcu to be held while
you look inside, where get_pid_task() does not.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
