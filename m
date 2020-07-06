Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 635E4215280
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 08:19:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF496E0A5;
	Mon,  6 Jul 2020 06:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6C196E0A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 06:19:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21724443-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jul 2020 07:19:24 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Jul 2020 07:19:06 +0100
Message-Id: <20200706061926.6687-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] s/obj->mm.lock//
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

This is the easy part; pulling reservation of multiple objects under an
ww acquire context. With one simple rule that eviction is handled by the
ww acquire context, we can carefully transition the driver over to using
eviction. Instead of feeding the acquire context everywhere, we make the
caller gather up all the objects they need to acquire into the context,
then acquire their backing store. The major boon here is that by
providing a clean set of objects (that we have not yet started to
acquire any auxiliary attachments for) to the acquire context, it can
handle all the EDEADLK processing for us [since it is a pure locking
operation and does not need to release attachments upon revoking the
locks].

As a sketch of what that would look like, to illustrate the major work
remaining:

static int evict(struct drm_i915_gem_object *obj, struct i915_acquire_ctx *ctx)
{
	struct intel_memory_region *mem = obj->mm->region;
	struct drm_i915_gem_object *swap; // struct i915_mm_bo *swap
	struct i915_request *rq;
	int err;

	/* swap = mem->create_eviction_target(obj); */
	swap = i915_gem_object_create_shmem(mem->i915, obj->base.size);
	if (IS_ERR(swap))
		return PTR_ERR(swap);

	err = dma_resv_lock_interruptible(swap, &ctx->ctx);
	GEM_BUG_ON(err == -EALREADY);
	if (err == -EDEADLK)
		goto out;

	/* Obviously swap has to be carefully chosen so that this may succeed */
	err = __i915_gem_object_get_pages_locked(swap);
	if (err)
		goto out_unlock;

	rq = pinned_evict_copy(ctx, obj, swap);
	if (IS_ERR(rq)) {
		err = PTR_ERR(rq);
		goto out_unlock;
	}

	err = i915_gem_revoke_mm(obj);
	if (err)
		goto out_request;

	/* Alternatively you could wait synchronously! */
	mem->release_blocks(&obj->mm->blocks, rq);
	i915_mm_bo_put(xchg(&obj->mm, i915_mm_bo_get(swap)));

	dma_resv_add_exclusive_fence(obj->base.resv, &rq->fence);
out_request:
	i915_request_put(rq);
out_unlock:
	dma_resv_unlock(swap);
out:
	i915_gem_object_put(swap);
	return err;
}

static int relock_all(struct i915_acquire_ctx *ctx)
{
	struct i915_acquire_link *lnk, *lock;
	int err;

	for (lnk = ctx->locked; lnk; lnk = lnk->next)
		dma_resv_unlock(lnk->obj->base.resv);

	lock = fetch_and_zero(&ctx->locked);
	while ((lnk = lock)) {
		struct drm_i915_gem_object *obj;

		obj = lnk->obj;
		lock = lnk->next;

		if (ctx->locked)
			err = dma_resv_lock_interruptible(obj->base.resv,
							  &ctx->ctx);
		else
			err = dma_resv_lock_slow_interruptible(obj->base.resv,
							       &ctx->ctx);
		GEM_BUG_ON(err == -EALREADY);
		if (err == -EDEADLK) {
			struct i915_acquire *old;

			while ((old = ctx->locked)) {
				dma_resv_unlock(old->obj->base.resv);
				ctx->locked = old->next;
				old->next = lock;
				lock = old;
			}

			lnk->next = lock;
			lock = lnk;
			continue;
		}
		if (err) {
			lock = lnk;
			break;
		}

		lnk->next = ctx->locked;
		ctx->locked = lnk;
	}

	while ((lnk = lock)) {
		lock = lnk->next;
		i915_gem_object_put(lnk->obj);
		i915_acquire_free(lnk);
	}

	return err;
}

int i915_acquire_mm(struct i915_acquire_ctx *ctx)
{
	struct i915_acquire_link *lnk;
	int n, err;

restart:
	for (lnk = ctx->locked; lnk; lnk = lnk->next) {
		for (n = 0;
		     !i915_gem_object_has_pages(lnk->obj);
		     n++) {
			struct drm_i915_gem_object *evictee = NULL;

			mem = get_preferred_memregion_for_object(lnk->obj, n);
			if (!mem)
				return -ENXIO;

			while (!i915_gem_object_get_pages(lnk->obj)) {
				struct i915_acquire_link *this;

				evictee = mem->get_eviction_candidate(mem,
								      evictee);
				if (!evictee)
					break;

				err = dma_resv_lock_interruptible(evictee,
								  &ctx->ctx);
				if (err == -EALREADY)
					continue; /* XXX fragmentation? */
				if (err == 0)
					err = evict(evictee);
				dma_resv_unlock(evictee);

				if (err == -EDEADLK) {
					err = relock_all(ctx);
					if (!err)
						goto restart;
				}
				if (err)
					return err;

				evictee = NULL;
			}
		}
	}

	return 0;
}

With the biggest task being seperating the GEM object from its backing
store, so that we can transparently exchange that backing store underneath
the user handles.

[There's also the challenge of *needing* to take ww_mutex underneath
userptr/mmu-notifier, but at the worst that's a bit of lockdep annotation
and a crafty if (page_maybe_dma_pinned)) in the LRU shrinker.]
-Chris


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
