Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4EC3081A8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 00:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12B86EA48;
	Thu, 28 Jan 2021 23:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C576F6EA48
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 23:04:55 +0000 (UTC)
IronPort-SDR: 6DFl1woICAVzg8jCCdqKXA3JF8/xbnX2rQnoVM8LhPmTfHKmH7/8HUoQ+59BRaJqPAUO6P9eib
 pdf28jFwbz/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="167998230"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="167998230"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 15:04:54 -0800
IronPort-SDR: EQbOrVkl7FBLtdG+nbdXqdObbi7iPDNvIKsm0cofTQjdioGusBTwrD5q2Pcw0G1nVpxJlJRtYk
 tmt7xoClV0dw==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="430753156"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 15:04:54 -0800
Date: Thu, 28 Jan 2021 14:56:04 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210128225604.GA20650@sdutt-i7>
References: <20210125140136.10494-1-chris@chris-wilson.co.uk>
 <20210125140136.10494-20-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125140136.10494-20-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 20/41] drm/i915: Replace priolist rbtree
 with a skiplist
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 25, 2021 at 02:01:15PM +0000, Chris Wilson wrote:
> Replace the priolist rbtree with a skiplist. The crucial difference is
> that walking and removing the first element of a skiplist is O(1), but
> O(lgN) for an rbtree, as we need to rebalance on remove. This is a
> hindrance for submission latency as it occurs between picking a request
> for the priolist and submitting it to hardware, as well effectively
> trippling the number of O(lgN) operations required under the irqoff lock.
> This is critical to reducing the latency jitter with multiple clients.
> =

> The downsides to skiplists are that lookup/insertion is only
> probablistically O(lgN) and there is a significant memory penalty to
> as each skip node is larger than the rbtree equivalent. Furthermore, we
> don't use dynamic arrays for the skiplist, so the allocation is fixed,
> and imposes an upper bound on the scalability wrt to the number of
> inflight requests.
> =


This is a fun data structure but IMO might be overkill to maintain this
code in the i915. The UMDs have effectively agreed to use only 3 levels,
is O(lgN) where N =3D=3D 3 really a big deal? With GuC submission we will
statically map all user levels into 3 buckets. If we are doing that, do
we even need a complex data structure? i.e. Could use just use can
array of linked lists?

Also BTW, seems like people are having a hard time understanding what a
skip list is, might have just started with the below link which explains
it quite nicely:
https://en.wikipedia.org/wiki/Skip_list

Matt

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  |  63 +++--
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  30 +--
>  drivers/gpu/drm/i915/i915_priolist_types.h    |  28 +-
>  drivers/gpu/drm/i915/i915_scheduler.c         | 244 ++++++++++++++----
>  drivers/gpu/drm/i915/i915_scheduler.h         |  11 +-
>  drivers/gpu/drm/i915/i915_scheduler_types.h   |   2 +-
>  .../drm/i915/selftests/i915_mock_selftests.h  |   1 +
>  .../gpu/drm/i915/selftests/i915_scheduler.c   |  53 +++-
>  8 files changed, 316 insertions(+), 116 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drive=
rs/gpu/drm/i915/gt/intel_execlists_submission.c
> index 1103c8a00af1..129144dd86b0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -244,11 +244,6 @@ static void ring_set_paused(const struct intel_engin=
e_cs *engine, int state)
>  		wmb();
>  }
>  =

> -static struct i915_priolist *to_priolist(struct rb_node *rb)
> -{
> -	return rb_entry(rb, struct i915_priolist, node);
> -}
> -
>  static int rq_prio(const struct i915_request *rq)
>  {
>  	return READ_ONCE(rq->sched.attr.priority);
> @@ -272,15 +267,31 @@ static int effective_prio(const struct i915_request=
 *rq)
>  	return prio;
>  }
>  =

> -static int queue_prio(const struct i915_sched_engine *se)
> +static struct i915_request *first_request(struct i915_sched_engine *se)
>  {
> -	struct rb_node *rb;
> +	struct i915_priolist *pl;
>  =

> -	rb =3D rb_first_cached(&se->queue);
> -	if (!rb)
> +	for_each_priolist(pl, &se->queue) {
> +		if (likely(!list_empty(&pl->requests)))
> +			return list_first_entry(&pl->requests,
> +						struct i915_request,
> +						sched.link);
> +
> +		i915_priolist_advance(&se->queue, pl);
> +	}
> +
> +	return NULL;
> +}
> +
> +static int queue_prio(struct i915_sched_engine *se)
> +{
> +	struct i915_request *rq;
> +
> +	rq =3D first_request(se);
> +	if (!rq)
>  		return INT_MIN;
>  =

> -	return to_priolist(rb)->priority;
> +	return rq_prio(rq);
>  }
>  =

>  static int virtual_prio(const struct intel_engine_execlists *el)
> @@ -290,7 +301,7 @@ static int virtual_prio(const struct intel_engine_exe=
clists *el)
>  	return rb ? rb_entry(rb, struct ve_node, rb)->prio : INT_MIN;
>  }
>  =

> -static bool need_preempt(const struct intel_engine_cs *engine,
> +static bool need_preempt(struct intel_engine_cs *engine,
>  			 const struct i915_request *rq)
>  {
>  	int last_prio;
> @@ -1136,6 +1147,7 @@ static void execlists_dequeue(struct intel_engine_c=
s *engine)
>  	struct i915_request ** const last_port =3D port + execlists->port_mask;
>  	struct i915_request *last, * const *active;
>  	struct virtual_engine *ve;
> +	struct i915_priolist *pl;
>  	struct rb_node *rb;
>  	bool submit =3D false;
>  =

> @@ -1346,11 +1358,10 @@ static void execlists_dequeue(struct intel_engine=
_cs *engine)
>  			break;
>  	}
>  =

> -	while ((rb =3D rb_first_cached(&engine->active.queue))) {
> -		struct i915_priolist *p =3D to_priolist(rb);
> +	for_each_priolist(pl, &engine->active.queue) {
>  		struct i915_request *rq, *rn;
>  =

> -		priolist_for_each_request_consume(rq, rn, p) {
> +		priolist_for_each_request_safe(rq, rn, pl) {
>  			bool merge =3D true;
>  =

>  			/*
> @@ -1425,8 +1436,7 @@ static void execlists_dequeue(struct intel_engine_c=
s *engine)
>  			}
>  		}
>  =

> -		rb_erase_cached(&p->node, &engine->active.queue);
> -		i915_priolist_free(p);
> +		i915_priolist_advance(&engine->active.queue, pl);
>  	}
>  done:
>  	*port++ =3D i915_request_get(last);
> @@ -2631,6 +2641,7 @@ static void execlists_reset_cancel(struct intel_eng=
ine_cs *engine)
>  {
>  	struct intel_engine_execlists * const execlists =3D &engine->execlists;
>  	struct i915_request *rq, *rn;
> +	struct i915_priolist *pl;
>  	struct rb_node *rb;
>  	unsigned long flags;
>  =

> @@ -2661,16 +2672,12 @@ static void execlists_reset_cancel(struct intel_e=
ngine_cs *engine)
>  	intel_engine_signal_breadcrumbs(engine);
>  =

>  	/* Flush the queued requests to the timeline list (for retiring). */
> -	while ((rb =3D rb_first_cached(&engine->active.queue))) {
> -		struct i915_priolist *p =3D to_priolist(rb);
> -
> -		priolist_for_each_request_consume(rq, rn, p) {
> +	for_each_priolist(pl, &engine->active.queue) {
> +		priolist_for_each_request_safe(rq, rn, pl) {
>  			i915_request_mark_eio(rq);
>  			__i915_request_submit(rq);
>  		}
> -
> -		rb_erase_cached(&p->node, &engine->active.queue);
> -		i915_priolist_free(p);
> +		i915_priolist_advance(&engine->active.queue, pl);
>  	}
>  	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
>  =

> @@ -2703,7 +2710,6 @@ static void execlists_reset_cancel(struct intel_eng=
ine_cs *engine)
>  	/* Remaining _unready_ requests will be nop'ed when submitted */
>  =

>  	execlists->queue_priority_hint =3D INT_MIN;
> -	engine->active.queue =3D RB_ROOT_CACHED;
>  =

>  	GEM_BUG_ON(__tasklet_is_enabled(&engine->active.tasklet));
>  	engine->active.tasklet.func =3D nop_submission_tasklet;
> @@ -3089,6 +3095,8 @@ static void virtual_context_exit(struct intel_conte=
xt *ce)
>  =

>  	for (n =3D 0; n < ve->num_siblings; n++)
>  		intel_engine_pm_put(ve->siblings[n]);
> +
> +	i915_sched_park_engine(&ve->base.active);
>  }
>  =

>  static const struct intel_context_ops virtual_context_ops =3D {
> @@ -3501,6 +3509,7 @@ void intel_execlists_show_requests(struct intel_eng=
ine_cs *engine,
>  {
>  	const struct intel_engine_execlists *execlists =3D &engine->execlists;
>  	struct i915_request *rq, *last;
> +	struct i915_priolist *pl;
>  	unsigned long flags;
>  	unsigned int count;
>  	struct rb_node *rb;
> @@ -3530,10 +3539,8 @@ void intel_execlists_show_requests(struct intel_en=
gine_cs *engine,
>  =

>  	last =3D NULL;
>  	count =3D 0;
> -	for (rb =3D rb_first_cached(&engine->active.queue); rb; rb =3D rb_next(=
rb)) {
> -		struct i915_priolist *p =3D rb_entry(rb, typeof(*p), node);
> -
> -		priolist_for_each_request(rq, p) {
> +	for_each_priolist(pl, &engine->active.queue) {
> +		priolist_for_each_request(rq, pl) {
>  			if (count++ < max - 1)
>  				show_request(m, rq, "\t\t", 0);
>  			else
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/=
gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2d7339ef3b4c..8d0c6cd277b3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -59,11 +59,6 @@
>  =

>  #define GUC_REQUEST_SIZE 64 /* bytes */
>  =

> -static inline struct i915_priolist *to_priolist(struct rb_node *rb)
> -{
> -	return rb_entry(rb, struct i915_priolist, node);
> -}
> -
>  static struct guc_stage_desc *__get_stage_desc(struct intel_guc *guc, u3=
2 id)
>  {
>  	struct guc_stage_desc *base =3D guc->stage_desc_pool_vaddr;
> @@ -185,8 +180,8 @@ static void __guc_dequeue(struct intel_engine_cs *eng=
ine)
>  	struct i915_request ** const last_port =3D first + execlists->port_mask;
>  	struct i915_request *last =3D first[0];
>  	struct i915_request **port;
> +	struct i915_priolist *pl;
>  	bool submit =3D false;
> -	struct rb_node *rb;
>  =

>  	lockdep_assert_held(&engine->active.lock);
>  =

> @@ -203,11 +198,10 @@ static void __guc_dequeue(struct intel_engine_cs *e=
ngine)
>  	 * event.
>  	 */
>  	port =3D first;
> -	while ((rb =3D rb_first_cached(&engine->active.queue))) {
> -		struct i915_priolist *p =3D to_priolist(rb);
> +	for_each_priolist(pl, &engine->active.queue) {
>  		struct i915_request *rq, *rn;
>  =

> -		priolist_for_each_request_consume(rq, rn, p) {
> +		priolist_for_each_request_safe(rq, rn, pl) {
>  			if (last && rq->context !=3D last->context) {
>  				if (port =3D=3D last_port)
>  					goto done;
> @@ -223,12 +217,11 @@ static void __guc_dequeue(struct intel_engine_cs *e=
ngine)
>  			last =3D rq;
>  		}
>  =

> -		rb_erase_cached(&p->node, &engine->active.queue);
> -		i915_priolist_free(p);
> +		i915_priolist_advance(&engine->active.queue, pl);
>  	}
>  done:
>  	execlists->queue_priority_hint =3D
> -		rb ? to_priolist(rb)->priority : INT_MIN;
> +		pl !=3D &engine->active.queue.sentinel ? pl->priority : INT_MIN;
>  	if (submit) {
>  		*port =3D schedule_in(last, port - execlists->inflight);
>  		*++port =3D NULL;
> @@ -327,7 +320,7 @@ static void guc_reset_cancel(struct intel_engine_cs *=
engine)
>  {
>  	struct intel_engine_execlists * const execlists =3D &engine->execlists;
>  	struct i915_request *rq, *rn;
> -	struct rb_node *rb;
> +	struct i915_priolist *p;
>  	unsigned long flags;
>  =

>  	ENGINE_TRACE(engine, "\n");
> @@ -355,25 +348,20 @@ static void guc_reset_cancel(struct intel_engine_cs=
 *engine)
>  	}
>  =

>  	/* Flush the queued requests to the timeline list (for retiring). */
> -	while ((rb =3D rb_first_cached(&engine->active.queue))) {
> -		struct i915_priolist *p =3D to_priolist(rb);
> -
> -		priolist_for_each_request_consume(rq, rn, p) {
> +	for_each_priolist(p, &engine->active.queue) {
> +		priolist_for_each_request_safe(rq, rn, p) {
>  			list_del_init(&rq->sched.link);
>  			__i915_request_submit(rq);
>  			dma_fence_set_error(&rq->fence, -EIO);
>  			i915_request_mark_complete(rq);
>  		}
> -
> -		rb_erase_cached(&p->node, &engine->active.queue);
> -		i915_priolist_free(p);
> +		i915_priolist_advance(&engine->active.queue, p);
>  	}
>  	GEM_BUG_ON(!i915_sched_is_idle(&engine->active));
>  =

>  	/* Remaining _unready_ requests will be nop'ed when submitted */
>  =

>  	execlists->queue_priority_hint =3D INT_MIN;
> -	engine->active.queue =3D RB_ROOT_CACHED;
>  =

>  	spin_unlock_irqrestore(&engine->active.lock, flags);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_priolist_types.h b/drivers/gpu/drm=
/i915/i915_priolist_types.h
> index bc2fa84f98a8..1200c3df6a4a 100644
> --- a/drivers/gpu/drm/i915/i915_priolist_types.h
> +++ b/drivers/gpu/drm/i915/i915_priolist_types.h
> @@ -38,10 +38,36 @@ enum {
>  #define I915_PRIORITY_UNPREEMPTABLE INT_MAX
>  #define I915_PRIORITY_BARRIER (I915_PRIORITY_UNPREEMPTABLE - 1)
>  =

> +#ifdef CONFIG_64BIT
> +#define I915_PRIOLIST_HEIGHT 12
> +#else
> +#define I915_PRIOLIST_HEIGHT 11
> +#endif
> +
>  struct i915_priolist {
>  	struct list_head requests;
> -	struct rb_node node;
>  	int priority;
> +
> +	int level;
> +	struct i915_priolist *next[I915_PRIOLIST_HEIGHT];
>  };
>  =

> +struct i915_priolist_root {
> +	struct i915_priolist sentinel;
> +	u32 prng;
> +};
> +
> +#define i915_priolist_is_empty(root) ((root)->sentinel.level < 0)
> +
> +#define for_each_priolist(p, root) \
> +	for ((p) =3D (root)->sentinel.next[0]; \
> +	     (p) !=3D &(root)->sentinel; \
> +	     (p) =3D (p)->next[0])
> +
> +#define priolist_for_each_request(it, plist) \
> +	list_for_each_entry(it, &(plist)->requests, sched.link)
> +
> +#define priolist_for_each_request_safe(it, n, plist) \
> +	list_for_each_entry_safe(it, n, &(plist)->requests, sched.link)
> +
>  #endif /* _I915_PRIOLIST_TYPES_H_ */
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915=
/i915_scheduler.c
> index a3ee06cb66d7..74000d3eebb1 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -4,7 +4,9 @@
>   * Copyright =A9 2018 Intel Corporation
>   */
>  =

> +#include <linux/bitops.h>
>  #include <linux/mutex.h>
> +#include <linux/prandom.h>
>  =

>  #include "gt/intel_ring.h"
>  #include "gt/intel_lrc_reg.h"
> @@ -91,15 +93,24 @@ static void i915_sched_init_ipi(struct i915_sched_ipi=
 *ipi)
>  	ipi->list =3D NULL;
>  }
>  =

> +static void init_priolist(struct i915_priolist_root *const root)
> +{
> +	struct i915_priolist *pl =3D &root->sentinel;
> +
> +	memset_p((void **)pl->next, pl, ARRAY_SIZE(pl->next));
> +	pl->priority =3D INT_MIN;
> +	pl->level =3D -1;
> +}
> +
>  void i915_sched_init_engine(struct i915_sched_engine *se,
>  			    unsigned int subclass)
>  {
>  	spin_lock_init(&se->lock);
>  	lockdep_set_subclass(&se->lock, subclass);
>  =

> +	init_priolist(&se->queue);
>  	INIT_LIST_HEAD(&se->requests);
>  	INIT_LIST_HEAD(&se->hold);
> -	se->queue =3D RB_ROOT_CACHED;
>  =

>  	i915_sched_init_ipi(&se->ipi);
>  =

> @@ -116,8 +127,57 @@ void i915_sched_init_engine(struct i915_sched_engine=
 *se,
>  #endif
>  }
>  =

> +__maybe_unused static bool priolist_idle(struct i915_priolist_root *root)
> +{
> +	struct i915_priolist *pl =3D &root->sentinel;
> +	int lvl;
> +
> +	for (lvl =3D 0; lvl < ARRAY_SIZE(pl->next); lvl++) {
> +		if (pl->next[lvl] !=3D pl) {
> +			GEM_TRACE_ERR("root[%d] is not empty\n", lvl);
> +			return false;
> +		}
> +	}
> +
> +	if (pl->level !=3D -1) {
> +		GEM_TRACE_ERR("root is not clear: %d\n", pl->level);
> +		return false;
> +	}
> +
> +	return true;
> +}
> +
> +static void pl_push(struct i915_priolist *pl, struct list_head *head)
> +{
> +	pl->requests.next =3D head->next;
> +	head->next =3D &pl->requests;
> +}
> +
> +static struct i915_priolist *pl_pop(struct list_head *head)
> +{
> +	struct i915_priolist *pl;
> +
> +	pl =3D container_of(head->next, typeof(*pl), requests);
> +	head->next =3D pl->requests.next;
> +
> +	return pl;
> +}
> +
> +static bool pl_empty(struct list_head *head)
> +{
> +	return !head->next;
> +}
> +
>  void i915_sched_park_engine(struct i915_sched_engine *se)
>  {
> +	struct i915_priolist_root *root =3D &se->queue;
> +	struct list_head *list =3D &root->sentinel.requests;
> +
> +	GEM_BUG_ON(!priolist_idle(root));
> +
> +	while (!pl_empty(list))
> +		kmem_cache_free(global.slab_priorities, pl_pop(list));
> +
>  	GEM_BUG_ON(!i915_sched_is_idle(se));
>  	se->no_priolist =3D false;
>  }
> @@ -183,71 +243,55 @@ static inline bool node_signaled(const struct i915_=
sched_node *node)
>  	return i915_request_completed(node_to_request(node));
>  }
>  =

> -static inline struct i915_priolist *to_priolist(struct rb_node *rb)
> +static inline unsigned int random_level(struct i915_priolist_root *root)
>  {
> -	return rb_entry(rb, struct i915_priolist, node);
> -}
> -
> -static void assert_priolists(struct i915_sched_engine * const se)
> -{
> -	struct rb_node *rb;
> -	long last_prio;
> -
> -	if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> -		return;
> -
> -	GEM_BUG_ON(rb_first_cached(&se->queue) !=3D
> -		   rb_first(&se->queue.rb_root));
> -
> -	last_prio =3D INT_MAX;
> -	for (rb =3D rb_first_cached(&se->queue); rb; rb =3D rb_next(rb)) {
> -		const struct i915_priolist *p =3D to_priolist(rb);
> -
> -		GEM_BUG_ON(p->priority > last_prio);
> -		last_prio =3D p->priority;
> -	}
> +	root->prng =3D next_pseudo_random32(root->prng);
> +	return  __ffs(root->prng) / 2;
>  }
>  =

>  static struct list_head *
>  lookup_priolist(struct intel_engine_cs *engine, int prio)
>  {
> +	struct i915_priolist *update[I915_PRIOLIST_HEIGHT];
>  	struct i915_sched_engine * const se =3D &engine->active;
> -	struct i915_priolist *p;
> -	struct rb_node **parent, *rb;
> -	bool first =3D true;
> -
> -	lockdep_assert_held(&engine->active.lock);
> -	assert_priolists(se);
> +	struct i915_priolist_root *root =3D &se->queue;
> +	struct i915_priolist *pl, *tmp;
> +	int lvl;
>  =

> +	lockdep_assert_held(&se->lock);
>  	if (unlikely(se->no_priolist))
>  		prio =3D I915_PRIORITY_NORMAL;
>  =

> +	for_each_priolist(pl, root) { /* recycle any empty elements before us */
> +		if (pl->priority >=3D prio || !list_empty(&pl->requests))
> +			break;
> +
> +		i915_priolist_advance(root, pl);
> +	}
> +
>  find_priolist:
> -	/* most positive priority is scheduled first, equal priorities fifo */
> -	rb =3D NULL;
> -	parent =3D &se->queue.rb_root.rb_node;
> -	while (*parent) {
> -		rb =3D *parent;
> -		p =3D to_priolist(rb);
> -		if (prio > p->priority) {
> -			parent =3D &rb->rb_left;
> -		} else if (prio < p->priority) {
> -			parent =3D &rb->rb_right;
> -			first =3D false;
> -		} else {
> -			return &p->requests;
> -		}
> +	pl =3D &root->sentinel;
> +	lvl =3D pl->level;
> +	while (lvl >=3D 0) {
> +		while (tmp =3D pl->next[lvl], tmp->priority >=3D prio)
> +			pl =3D tmp;
> +		if (pl->priority =3D=3D prio)
> +			goto out;
> +		update[lvl--] =3D pl;
>  	}
>  =

>  	if (prio =3D=3D I915_PRIORITY_NORMAL) {
> -		p =3D &se->default_priolist;
> +		pl =3D &se->default_priolist;
> +	} else if (!pl_empty(&root->sentinel.requests)) {
> +		pl =3D pl_pop(&root->sentinel.requests);
>  	} else {
> -		p =3D kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
> +		pl =3D kmem_cache_alloc(global.slab_priorities, GFP_ATOMIC);
>  		/* Convert an allocation failure to a priority bump */
> -		if (unlikely(!p)) {
> +		if (unlikely(!pl)) {
>  			prio =3D I915_PRIORITY_NORMAL; /* recurses just once */
>  =

> -			/* To maintain ordering with all rendering, after an
> +			/*
> +			 * To maintain ordering with all rendering, after an
>  			 * allocation failure we have to disable all scheduling.
>  			 * Requests will then be executed in fifo, and schedule
>  			 * will ensure that dependencies are emitted in fifo.
> @@ -260,18 +304,103 @@ lookup_priolist(struct intel_engine_cs *engine, in=
t prio)
>  		}
>  	}
>  =

> -	p->priority =3D prio;
> -	INIT_LIST_HEAD(&p->requests);
> +	pl->priority =3D prio;
> +	INIT_LIST_HEAD(&pl->requests);
>  =

> -	rb_link_node(&p->node, rb, parent);
> -	rb_insert_color_cached(&p->node, &se->queue, first);
> +	lvl =3D random_level(root);
> +	if (lvl > root->sentinel.level) {
> +		if (root->sentinel.level < I915_PRIOLIST_HEIGHT - 1) {
> +			lvl =3D ++root->sentinel.level;
> +			update[lvl] =3D &root->sentinel;
> +		} else {
> +			lvl =3D I915_PRIOLIST_HEIGHT - 1;
> +		}
> +	}
> +	GEM_BUG_ON(lvl < 0);
> +	GEM_BUG_ON(lvl >=3D ARRAY_SIZE(pl->next));
>  =

> -	return &p->requests;
> +	pl->level =3D lvl;
> +	do {
> +		tmp =3D update[lvl];
> +		pl->next[lvl] =3D update[lvl]->next[lvl];
> +		tmp->next[lvl] =3D pl;
> +	} while (--lvl >=3D 0);
> +
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
> +		struct i915_priolist *chk;
> +
> +		chk =3D &root->sentinel;
> +		lvl =3D chk->level;
> +		do {
> +			while (tmp =3D chk->next[lvl], tmp->priority >=3D prio)
> +				chk =3D tmp;
> +		} while (--lvl >=3D 0);
> +
> +		GEM_BUG_ON(chk !=3D pl);
> +	}
> +
> +out:
> +	GEM_BUG_ON(pl =3D=3D &root->sentinel);
> +	return &pl->requests;
>  }
>  =

> -void __i915_priolist_free(struct i915_priolist *p)
> +static void remove_priolist(struct intel_engine_cs *engine,
> +			    struct list_head *plist)
>  {
> -	kmem_cache_free(global.slab_priorities, p);
> +	struct i915_sched_engine * const se =3D &engine->active;
> +	struct i915_priolist_root *root =3D &se->queue;
> +	struct i915_priolist *pl, *tmp;
> +	struct i915_priolist *old =3D
> +		container_of(plist, struct i915_priolist, requests);
> +	int prio =3D old->priority;
> +	int lvl;
> +
> +	lockdep_assert_held(&se->lock);
> +	GEM_BUG_ON(!list_empty(plist));
> +
> +	pl =3D &root->sentinel;
> +	lvl =3D pl->level;
> +	GEM_BUG_ON(lvl < 0);
> +
> +	if (prio !=3D I915_PRIORITY_NORMAL)
> +		pl_push(old, &pl->requests);
> +
> +	do {
> +		while (tmp =3D pl->next[lvl], tmp->priority > prio)
> +			pl =3D tmp;
> +		if (lvl <=3D old->level) {
> +			pl->next[lvl] =3D old->next[lvl];
> +			if (pl =3D=3D &root->sentinel && old->next[lvl] =3D=3D pl) {
> +				GEM_BUG_ON(pl->level !=3D lvl);
> +				pl->level--;
> +			}
> +		}
> +	} while (--lvl >=3D 0);
> +	GEM_BUG_ON(tmp !=3D old);
> +}
> +
> +void i915_priolist_advance(struct i915_priolist_root *root,
> +			   struct i915_priolist *pl)
> +{
> +	struct i915_priolist * const s =3D &root->sentinel;
> +	int lvl;
> +
> +	GEM_BUG_ON(!list_empty(&pl->requests));
> +	GEM_BUG_ON(pl !=3D s->next[0]);
> +	GEM_BUG_ON(pl =3D=3D s);
> +
> +	if (pl->priority !=3D I915_PRIORITY_NORMAL)
> +		pl_push(pl, &s->requests);
> +
> +	lvl =3D pl->level;
> +	GEM_BUG_ON(lvl < 0);
> +	do {
> +		s->next[lvl] =3D pl->next[lvl];
> +		if (pl->next[lvl] =3D=3D s) {
> +			GEM_BUG_ON(s->level !=3D lvl);
> +			s->level--;
> +		}
> +	} while (--lvl >=3D 0);
>  }
>  =

>  static struct i915_request *
> @@ -420,8 +549,13 @@ static void __i915_request_set_priority(struct i915_=
request *rq, int prio)
>  			continue;
>  =

>  		GEM_BUG_ON(rq->engine !=3D engine);
> -		if (i915_request_in_priority_queue(rq))
> +		if (i915_request_in_priority_queue(rq)) {
> +			struct list_head *prev =3D rq->sched.link.prev;
> +
>  			list_move_tail(&rq->sched.link, plist);
> +			if (list_empty(prev))
> +				remove_priolist(engine, prev);
> +		}
>  =

>  		/* Defer (tasklet) submission until after all updates. */
>  		kick_submission(engine, rq, prio);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.h b/drivers/gpu/drm/i915=
/i915_scheduler.h
> index 0ab47cbf0e9c..bca89a58d953 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler.h
> @@ -16,12 +16,6 @@
>  =

>  struct drm_printer;
>  =

> -#define priolist_for_each_request(it, plist) \
> -	list_for_each_entry(it, &(plist)->requests, sched.link)
> -
> -#define priolist_for_each_request_consume(it, n, plist) \
> -	list_for_each_entry_safe(it, n, &(plist)->requests, sched.link)
> -
>  void i915_sched_node_init(struct i915_sched_node *node);
>  void i915_sched_node_reinit(struct i915_sched_node *node);
>  =

> @@ -69,7 +63,7 @@ static inline void i915_priolist_free(struct i915_priol=
ist *p)
>  =

>  static inline bool i915_sched_is_idle(const struct i915_sched_engine *se)
>  {
> -	return RB_EMPTY_ROOT(&se->queue.rb_root);
> +	return i915_priolist_is_empty(&se->queue);
>  }
>  =

>  static inline bool
> @@ -99,6 +93,9 @@ static inline void i915_sched_kick(struct i915_sched_en=
gine *se)
>  	tasklet_hi_schedule(&se->tasklet);
>  }
>  =

> +void i915_priolist_advance(struct i915_priolist_root *root,
> +			   struct i915_priolist *old);
> +
>  void i915_request_show_with_schedule(struct drm_printer *m,
>  				     const struct i915_request *rq,
>  				     const char *prefix,
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/dr=
m/i915/i915_scheduler_types.h
> index f668c680d290..e64750be4e77 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -89,7 +89,7 @@ struct i915_sched_engine {
>  	/**
>  	 * @queue: queue of requests, in priority lists
>  	 */
> -	struct rb_root_cached queue;
> +	struct i915_priolist_root queue;
>  =

>  	struct i915_sched_ipi ipi;
>  =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drive=
rs/gpu/drm/i915/selftests/i915_mock_selftests.h
> index 3db34d3eea58..946c93441c1f 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
> @@ -25,6 +25,7 @@ selftest(ring, intel_ring_mock_selftests)
>  selftest(engine, intel_engine_cs_mock_selftests)
>  selftest(timelines, intel_timeline_mock_selftests)
>  selftest(requests, i915_request_mock_selftests)
> +selftest(scheduler, i915_scheduler_mock_selftests)
>  selftest(objects, i915_gem_object_mock_selftests)
>  selftest(phys, i915_gem_phys_mock_selftests)
>  selftest(dmabuf, i915_gem_dmabuf_mock_selftests)
> diff --git a/drivers/gpu/drm/i915/selftests/i915_scheduler.c b/drivers/gp=
u/drm/i915/selftests/i915_scheduler.c
> index de44a66210b7..de5b1443129b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_scheduler.c
> @@ -12,6 +12,54 @@
>  #include "selftests/igt_spinner.h"
>  #include "selftests/i915_random.h"
>  =

> +static int mock_skiplist_levels(void *dummy)
> +{
> +	struct i915_priolist_root root =3D {};
> +	struct i915_priolist *pl =3D &root.sentinel;
> +	IGT_TIMEOUT(end_time);
> +	unsigned long total;
> +	int count, lvl;
> +
> +	total =3D 0;
> +	do {
> +		for (count =3D 0; count < 16384; count++) {
> +			lvl =3D random_level(&root);
> +			if (lvl > pl->level) {
> +				if (lvl < I915_PRIOLIST_HEIGHT - 1)
> +					lvl =3D ++pl->level;
> +				else
> +					lvl =3D I915_PRIOLIST_HEIGHT - 1;
> +			}
> +
> +			pl->next[lvl] =3D ptr_inc(pl->next[lvl]);
> +		}
> +		total +=3D count;
> +	} while (!__igt_timeout(end_time, NULL));
> +
> +	pr_info("Total %9lu\n", total);
> +	for (lvl =3D 0; lvl <=3D pl->level; lvl++) {
> +		int x =3D ilog2((unsigned long)pl->next[lvl]);
> +		char row[80];
> +
> +		memset(row, '*', x);
> +		row[x] =3D '\0';
> +
> +		pr_info(" [%2d] %9lu %s\n",
> +			lvl, (unsigned long)pl->next[lvl], row);
> +	}
> +
> +	return 0;
> +}
> +
> +int i915_scheduler_mock_selftests(void)
> +{
> +	static const struct i915_subtest tests[] =3D {
> +		SUBTEST(mock_skiplist_levels),
> +	};
> +
> +	return i915_subtests(tests, NULL);
> +}
> +
>  static void scheduling_disable(struct intel_engine_cs *engine)
>  {
>  	engine->props.preempt_timeout_ms =3D 0;
> @@ -80,9 +128,9 @@ static int all_engines(struct drm_i915_private *i915,
>  static bool check_context_order(struct intel_engine_cs *engine)
>  {
>  	u64 last_seqno, last_context;
> +	struct i915_priolist *p;
>  	unsigned long count;
>  	bool result =3D false;
> -	struct rb_node *rb;
>  	int last_prio;
>  =

>  	/* We expect the execution order to follow ascending fence-context */
> @@ -92,8 +140,7 @@ static bool check_context_order(struct intel_engine_cs=
 *engine)
>  	last_context =3D 0;
>  	last_seqno =3D 0;
>  	last_prio =3D 0;
> -	for (rb =3D rb_first_cached(&engine->active.queue); rb; rb =3D rb_next(=
rb)) {
> -		struct i915_priolist *p =3D rb_entry(rb, typeof(*p), node);
> +	for_each_priolist(p, &engine->active.queue) {
>  		struct i915_request *rq;
>  =

>  		priolist_for_each_request(rq, p) {
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
