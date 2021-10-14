Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7138442DE5A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 17:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF006E192;
	Thu, 14 Oct 2021 15:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00F236E192;
 Thu, 14 Oct 2021 15:39:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="288571384"
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="288571384"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 08:39:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,372,1624345200"; d="scan'208";a="461225875"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 08:39:26 -0700
Date: Thu, 14 Oct 2021 08:34:42 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20211014153442.GA9709@jons-linux-dev-box>
References: <20211013204231.19287-1-matthew.brost@intel.com>
 <20211013204231.19287-21-matthew.brost@intel.com>
 <c094e258-289f-ca9e-dd9a-38a9fbfc153b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c094e258-289f-ca9e-dd9a-38a9fbfc153b@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 20/25] drm/i915: Multi-BB execbuf
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

On Wed, Oct 13, 2021 at 05:55:51PM -0700, John Harrison wrote:
> On 10/13/2021 13:42, Matthew Brost wrote:
> > Allow multiple batch buffers to be submitted in a single execbuf IOCTL
> > after a context has been configured with the 'set_parallel' extension.
> > The number batches is implicit based on the contexts configuration.
> > 
> > This is implemented with a series of loops. First a loop is used to find
> > all the batches, a loop to pin all the HW contexts, a loop to create all
> > the requests, a loop to submit (emit BB start, etc...) all the requests,
> > a loop to tie the requests to the VMAs they touch, and finally a loop to
> > commit the requests to the backend.
> > 
> > A composite fence is also created for the generated requests to return
> > to the user and to stick in dma resv slots.
> > 
> > No behavior from the existing IOCTL should be changed aside from when
> > throttling because the ring for a context is full. In this situation,
> > i915 will now wait while holding the object locks. This change was done
> > because the code is much simpler to wait while holding the locks and we
> > believe there isn't a huge benefit of dropping these locks. If this
> > proves false we can restructure the code to drop the locks during the
> > wait.
> > 
> > IGT: https://patchwork.freedesktop.org/patch/447008/?series=93071&rev=1
> > media UMD: https://github.com/intel/media-driver/pull/1252
> > 
> > v2:
> >   (Matthew Brost)
> >    - Return proper error value if i915_request_create fails
> > v3:
> >   (John Harrison)
> >    - Add comment explaining create / add order loops + locking
> >    - Update commit message explaining different in IOCTL behavior
> >    - Line wrap some comments
> >    - eb_add_request returns void
> >    - Return -EINVAL rather triggering BUG_ON if cmd parser used
> >   (Checkpatch)
> >    - Check eb->batch_len[*current_batch]
> > v4:
> >   (CI)
> >    - Set batch len if passed if via execbuf args
> >    - Call __i915_request_skip after __i915_request_commit
> >   (Kernel test robot)
> >    - Initialize rq to NULL in eb_pin_timeline
> > 
> > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > ---
> >   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 783 ++++++++++++------
> >   drivers/gpu/drm/i915/gt/intel_context.h       |   8 +-
> >   drivers/gpu/drm/i915/gt/intel_context_types.h |  10 +
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |   2 +
> >   drivers/gpu/drm/i915/i915_request.h           |   9 +
> >   drivers/gpu/drm/i915/i915_vma.c               |  21 +-
> >   drivers/gpu/drm/i915/i915_vma.h               |  13 +-
> >   7 files changed, 595 insertions(+), 251 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > index c75afc8784e3..6509c9d8c298 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> > @@ -246,17 +246,25 @@ struct i915_execbuffer {
> >   	struct drm_i915_gem_exec_object2 *exec; /** ioctl execobj[] */
> >   	struct eb_vma *vma;
> > -	struct intel_engine_cs *engine; /** engine to queue the request to */
> > +	struct intel_gt *gt; /* gt for the execbuf */
> >   	struct intel_context *context; /* logical state for the request */
> >   	struct i915_gem_context *gem_context; /** caller's context */
> > -	struct i915_request *request; /** our request to build */
> > -	struct eb_vma *batch; /** identity of the batch obj/vma */
> > +	/** our requests to build */
> > +	struct i915_request *requests[MAX_ENGINE_INSTANCE + 1];
> > +	/** identity of the batch obj/vma */
> > +	struct eb_vma *batches[MAX_ENGINE_INSTANCE + 1];
> >   	struct i915_vma *trampoline; /** trampoline used for chaining */
> > +	/** used for excl fence in dma_resv objects when > 1 BB submitted */
> > +	struct dma_fence *composite_fence;
> > +
> >   	/** actual size of execobj[] as we may extend it for the cmdparser */
> >   	unsigned int buffer_count;
> > +	/* number of batches in execbuf IOCTL */
> > +	unsigned int num_batches;
> > +
> >   	/** list of vma not yet bound during reservation phase */
> >   	struct list_head unbound;
> > @@ -283,7 +291,8 @@ struct i915_execbuffer {
> >   	u64 invalid_flags; /** Set of execobj.flags that are invalid */
> > -	u64 batch_len; /** Length of batch within object */
> > +	/** Length of batch within object */
> > +	u64 batch_len[MAX_ENGINE_INSTANCE + 1];
> >   	u32 batch_start_offset; /** Location within object of batch */
> >   	u32 batch_flags; /** Flags composed for emit_bb_start() */
> >   	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
> > @@ -301,14 +310,13 @@ struct i915_execbuffer {
> >   };
> >   static int eb_parse(struct i915_execbuffer *eb);
> > -static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb,
> > -					  bool throttle);
> > +static int eb_pin_engine(struct i915_execbuffer *eb, bool throttle);
> >   static void eb_unpin_engine(struct i915_execbuffer *eb);
> >   static inline bool eb_use_cmdparser(const struct i915_execbuffer *eb)
> >   {
> > -	return intel_engine_requires_cmd_parser(eb->engine) ||
> > -		(intel_engine_using_cmd_parser(eb->engine) &&
> > +	return intel_engine_requires_cmd_parser(eb->context->engine) ||
> > +		(intel_engine_using_cmd_parser(eb->context->engine) &&
> >   		 eb->args->batch_len);
> >   }
> > @@ -546,11 +554,21 @@ eb_validate_vma(struct i915_execbuffer *eb,
> >   	return 0;
> >   }
> > -static void
> > +static inline bool
> > +is_batch_buffer(struct i915_execbuffer *eb, unsigned int buffer_idx)
> > +{
> > +	return eb->args->flags & I915_EXEC_BATCH_FIRST ?
> > +		buffer_idx < eb->num_batches :
> > +		buffer_idx >= eb->args->buffer_count - eb->num_batches;
> > +}
> > +
> > +static int
> >   eb_add_vma(struct i915_execbuffer *eb,
> > -	   unsigned int i, unsigned batch_idx,
> > +	   unsigned int *current_batch,
> > +	   unsigned int i,
> >   	   struct i915_vma *vma)
> >   {
> > +	struct drm_i915_private *i915 = eb->i915;
> >   	struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
> >   	struct eb_vma *ev = &eb->vma[i];
> > @@ -577,15 +595,43 @@ eb_add_vma(struct i915_execbuffer *eb,
> >   	 * Note that actual hangs have only been observed on gen7, but for
> >   	 * paranoia do it everywhere.
> >   	 */
> > -	if (i == batch_idx) {
> > +	if (is_batch_buffer(eb, i)) {
> >   		if (entry->relocation_count &&
> >   		    !(ev->flags & EXEC_OBJECT_PINNED))
> >   			ev->flags |= __EXEC_OBJECT_NEEDS_BIAS;
> >   		if (eb->reloc_cache.has_fence)
> >   			ev->flags |= EXEC_OBJECT_NEEDS_FENCE;
> > -		eb->batch = ev;
> > +		eb->batches[*current_batch] = ev;
> > +
> > +		if (unlikely(ev->flags & EXEC_OBJECT_WRITE)) {
> > +			drm_dbg(&i915->drm,
> > +				"Attempting to use self-modifying batch buffer\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		if (range_overflows_t(u64,
> > +				      eb->batch_start_offset,
> > +				      eb->args->batch_len,
> > +				      ev->vma->size)) {
> > +			drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		if (eb->args->batch_len == 0)
> > +			eb->batch_len[*current_batch] = ev->vma->size -
> > +				eb->batch_start_offset;
> > +		else
> > +			eb->batch_len[*current_batch] = eb->args->batch_len;
> > +		if (unlikely(eb->batch_len[*current_batch] == 0)) { /* impossible! */
> > +			drm_dbg(&i915->drm, "Invalid batch length\n");
> > +			return -EINVAL;
> > +		}
> > +
> > +		++*current_batch;
> >   	}
> > +
> > +	return 0;
> >   }
> >   static inline int use_cpu_reloc(const struct reloc_cache *cache,
> > @@ -729,14 +775,6 @@ static int eb_reserve(struct i915_execbuffer *eb)
> >   	} while (1);
> >   }
> > -static unsigned int eb_batch_index(const struct i915_execbuffer *eb)
> > -{
> > -	if (eb->args->flags & I915_EXEC_BATCH_FIRST)
> > -		return 0;
> > -	else
> > -		return eb->buffer_count - 1;
> > -}
> > -
> >   static int eb_select_context(struct i915_execbuffer *eb)
> >   {
> >   	struct i915_gem_context *ctx;
> > @@ -857,9 +895,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
> >   static int eb_lookup_vmas(struct i915_execbuffer *eb)
> >   {
> > -	struct drm_i915_private *i915 = eb->i915;
> > -	unsigned int batch = eb_batch_index(eb);
> > -	unsigned int i;
> > +	unsigned int i, current_batch = 0;
> >   	int err = 0;
> >   	INIT_LIST_HEAD(&eb->relocs);
> > @@ -879,7 +915,9 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
> >   			goto err;
> >   		}
> > -		eb_add_vma(eb, i, batch, vma);
> > +		err = eb_add_vma(eb, &current_batch, i, vma);
> > +		if (err)
> > +			return err;
> >   		if (i915_gem_object_is_userptr(vma->obj)) {
> >   			err = i915_gem_object_userptr_submit_init(vma->obj);
> > @@ -902,26 +940,6 @@ static int eb_lookup_vmas(struct i915_execbuffer *eb)
> >   		}
> >   	}
> > -	if (unlikely(eb->batch->flags & EXEC_OBJECT_WRITE)) {
> > -		drm_dbg(&i915->drm,
> > -			"Attempting to use self-modifying batch buffer\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	if (range_overflows_t(u64,
> > -			      eb->batch_start_offset, eb->batch_len,
> > -			      eb->batch->vma->size)) {
> > -		drm_dbg(&i915->drm, "Attempting to use out-of-bounds batch\n");
> > -		return -EINVAL;
> > -	}
> > -
> > -	if (eb->batch_len == 0)
> > -		eb->batch_len = eb->batch->vma->size - eb->batch_start_offset;
> > -	if (unlikely(eb->batch_len == 0)) { /* impossible! */
> > -		drm_dbg(&i915->drm, "Invalid batch length\n");
> > -		return -EINVAL;
> > -	}
> > -
> >   	return 0;
> >   err:
> > @@ -1654,8 +1672,7 @@ static int eb_reinit_userptr(struct i915_execbuffer *eb)
> >   	return 0;
> >   }
> > -static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
> > -					   struct i915_request *rq)
> > +static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb)
> >   {
> >   	bool have_copy = false;
> >   	struct eb_vma *ev;
> > @@ -1671,21 +1688,6 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
> >   	eb_release_vmas(eb, false);
> >   	i915_gem_ww_ctx_fini(&eb->ww);
> > -	if (rq) {
> > -		/* nonblocking is always false */
> > -		if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE,
> > -				      MAX_SCHEDULE_TIMEOUT) < 0) {
> > -			i915_request_put(rq);
> > -			rq = NULL;
> > -
> > -			err = -EINTR;
> > -			goto err_relock;
> > -		}
> > -
> > -		i915_request_put(rq);
> > -		rq = NULL;
> > -	}
> > -
> >   	/*
> >   	 * We take 3 passes through the slowpatch.
> >   	 *
> > @@ -1712,28 +1714,21 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
> >   	if (!err)
> >   		err = eb_reinit_userptr(eb);
> > -err_relock:
> >   	i915_gem_ww_ctx_init(&eb->ww, true);
> >   	if (err)
> >   		goto out;
> >   	/* reacquire the objects */
> >   repeat_validate:
> > -	rq = eb_pin_engine(eb, false);
> > -	if (IS_ERR(rq)) {
> > -		err = PTR_ERR(rq);
> > -		rq = NULL;
> > +	err = eb_pin_engine(eb, false);
> > +	if (err)
> >   		goto err;
> > -	}
> > -
> > -	/* We didn't throttle, should be NULL */
> > -	GEM_WARN_ON(rq);
> >   	err = eb_validate_vmas(eb);
> >   	if (err)
> >   		goto err;
> > -	GEM_BUG_ON(!eb->batch);
> > +	GEM_BUG_ON(!eb->batches[0]);
> >   	list_for_each_entry(ev, &eb->relocs, reloc_link) {
> >   		if (!have_copy) {
> > @@ -1797,46 +1792,23 @@ static noinline int eb_relocate_parse_slow(struct i915_execbuffer *eb,
> >   		}
> >   	}
> > -	if (rq)
> > -		i915_request_put(rq);
> > -
> >   	return err;
> >   }
> >   static int eb_relocate_parse(struct i915_execbuffer *eb)
> >   {
> >   	int err;
> > -	struct i915_request *rq = NULL;
> >   	bool throttle = true;
> >   retry:
> > -	rq = eb_pin_engine(eb, throttle);
> > -	if (IS_ERR(rq)) {
> > -		err = PTR_ERR(rq);
> > -		rq = NULL;
> > +	err = eb_pin_engine(eb, throttle);
> > +	if (err) {
> >   		if (err != -EDEADLK)
> >   			return err;
> >   		goto err;
> >   	}
> > -	if (rq) {
> > -		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
> > -
> > -		/* Need to drop all locks now for throttling, take slowpath */
> > -		err = i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE, 0);
> > -		if (err == -ETIME) {
> > -			if (nonblock) {
> > -				err = -EWOULDBLOCK;
> > -				i915_request_put(rq);
> > -				goto err;
> > -			}
> > -			goto slow;
> > -		}
> > -		i915_request_put(rq);
> > -		rq = NULL;
> > -	}
> > -
> >   	/* only throttle once, even if we didn't need to throttle */
> >   	throttle = false;
> > @@ -1876,7 +1848,7 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
> >   	return err;
> >   slow:
> > -	err = eb_relocate_parse_slow(eb, rq);
> > +	err = eb_relocate_parse_slow(eb);
> >   	if (err)
> >   		/*
> >   		 * If the user expects the execobject.offset and
> > @@ -1890,11 +1862,40 @@ static int eb_relocate_parse(struct i915_execbuffer *eb)
> >   	return err;
> >   }
> > +/*
> > + * Using two helper loops for the order of which requests / batches are created
> > + * and added the to backend. Requests are created in order from the parent to
> > + * the last child. Requests are add in the reverse order, from the last child to
> are add -> are added
> 

Yep.

> > + * parent. This is down from locking reasons as the timeline lock is acquired
> down from -> done for?
>

And yep. Will fix.

Matt

> John.
> 
> > + * during request creation and released when the request is added to the
> > + * backend. To make lockdep happy (see intel_context_timeline_lock) this must be
> > + * the ordering.
> > + */
> > +#define for_each_batch_create_order(_eb, _i) \
> > +	for ((_i) = 0; (_i) < (_eb)->num_batches; ++(_i))
> > +#define for_each_batch_add_order(_eb, _i) \
> > +	BUILD_BUG_ON(!typecheck(int, _i)); \
> > +	for ((_i) = (_eb)->num_batches - 1; (_i) >= 0; --(_i))
> > +
> > +static struct i915_request *
> > +eb_find_first_request_added(struct i915_execbuffer *eb)
> > +{
> > +	int i;
> > +
> > +	for_each_batch_add_order(eb, i)
> > +		if (eb->requests[i])
> > +			return eb->requests[i];
> > +
> > +	GEM_BUG_ON("Request not found");
> > +
> > +	return NULL;
> > +}
> > +
> >   static int eb_move_to_gpu(struct i915_execbuffer *eb)
> >   {
> >   	const unsigned int count = eb->buffer_count;
> >   	unsigned int i = count;
> > -	int err = 0;
> > +	int err = 0, j;
> >   	while (i--) {
> >   		struct eb_vma *ev = &eb->vma[i];
> > @@ -1907,11 +1908,17 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
> >   		if (flags & EXEC_OBJECT_CAPTURE) {
> >   			struct i915_capture_list *capture;
> > -			capture = kmalloc(sizeof(*capture), GFP_KERNEL);
> > -			if (capture) {
> > -				capture->next = eb->request->capture_list;
> > -				capture->vma = vma;
> > -				eb->request->capture_list = capture;
> > +			for_each_batch_create_order(eb, j) {
> > +				if (!eb->requests[j])
> > +					break;
> > +
> > +				capture = kmalloc(sizeof(*capture), GFP_KERNEL);
> > +				if (capture) {
> > +					capture->next =
> > +						eb->requests[j]->capture_list;
> > +					capture->vma = vma;
> > +					eb->requests[j]->capture_list = capture;
> > +				}
> >   			}
> >   		}
> > @@ -1932,14 +1939,26 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
> >   				flags &= ~EXEC_OBJECT_ASYNC;
> >   		}
> > +		/* We only need to await on the first request */
> >   		if (err == 0 && !(flags & EXEC_OBJECT_ASYNC)) {
> >   			err = i915_request_await_object
> > -				(eb->request, obj, flags & EXEC_OBJECT_WRITE);
> > +				(eb_find_first_request_added(eb), obj,
> > +				 flags & EXEC_OBJECT_WRITE);
> >   		}
> > -		if (err == 0)
> > -			err = i915_vma_move_to_active(vma, eb->request,
> > -						      flags | __EXEC_OBJECT_NO_RESERVE);
> > +		for_each_batch_add_order(eb, j) {
> > +			if (err)
> > +				break;
> > +			if (!eb->requests[j])
> > +				continue;
> > +
> > +			err = _i915_vma_move_to_active(vma, eb->requests[j],
> > +						       j ? NULL :
> > +						       eb->composite_fence ?
> > +						       eb->composite_fence :
> > +						       &eb->requests[j]->fence,
> > +						       flags | __EXEC_OBJECT_NO_RESERVE);
> > +		}
> >   	}
> >   #ifdef CONFIG_MMU_NOTIFIER
> > @@ -1970,11 +1989,16 @@ static int eb_move_to_gpu(struct i915_execbuffer *eb)
> >   		goto err_skip;
> >   	/* Unconditionally flush any chipset caches (for streaming writes). */
> > -	intel_gt_chipset_flush(eb->engine->gt);
> > +	intel_gt_chipset_flush(eb->gt);
> >   	return 0;
> >   err_skip:
> > -	i915_request_set_error_once(eb->request, err);
> > +	for_each_batch_create_order(eb, j) {
> > +		if (!eb->requests[j])
> > +			break;
> > +
> > +		i915_request_set_error_once(eb->requests[j], err);
> > +	}
> >   	return err;
> >   }
> > @@ -2069,14 +2093,17 @@ static int eb_parse(struct i915_execbuffer *eb)
> >   	int err;
> >   	if (!eb_use_cmdparser(eb)) {
> > -		batch = eb_dispatch_secure(eb, eb->batch->vma);
> > +		batch = eb_dispatch_secure(eb, eb->batches[0]->vma);
> >   		if (IS_ERR(batch))
> >   			return PTR_ERR(batch);
> >   		goto secure_batch;
> >   	}
> > -	len = eb->batch_len;
> > +	if (intel_context_is_parallel(eb->context))
> > +		return -EINVAL;
> > +
> > +	len = eb->batch_len[0];
> >   	if (!CMDPARSER_USES_GGTT(eb->i915)) {
> >   		/*
> >   		 * ppGTT backed shadow buffers must be mapped RO, to prevent
> > @@ -2090,11 +2117,11 @@ static int eb_parse(struct i915_execbuffer *eb)
> >   	} else {
> >   		len += I915_CMD_PARSER_TRAMPOLINE_SIZE;
> >   	}
> > -	if (unlikely(len < eb->batch_len)) /* last paranoid check of overflow */
> > +	if (unlikely(len < eb->batch_len[0])) /* last paranoid check of overflow */
> >   		return -EINVAL;
> >   	if (!pool) {
> > -		pool = intel_gt_get_buffer_pool(eb->engine->gt, len,
> > +		pool = intel_gt_get_buffer_pool(eb->gt, len,
> >   						I915_MAP_WB);
> >   		if (IS_ERR(pool))
> >   			return PTR_ERR(pool);
> > @@ -2119,7 +2146,7 @@ static int eb_parse(struct i915_execbuffer *eb)
> >   		trampoline = shadow;
> >   		shadow = shadow_batch_pin(eb, pool->obj,
> > -					  &eb->engine->gt->ggtt->vm,
> > +					  &eb->gt->ggtt->vm,
> >   					  PIN_GLOBAL);
> >   		if (IS_ERR(shadow)) {
> >   			err = PTR_ERR(shadow);
> > @@ -2141,26 +2168,29 @@ static int eb_parse(struct i915_execbuffer *eb)
> >   	if (err)
> >   		goto err_trampoline;
> > -	err = intel_engine_cmd_parser(eb->engine,
> > -				      eb->batch->vma,
> > +	err = intel_engine_cmd_parser(eb->context->engine,
> > +				      eb->batches[0]->vma,
> >   				      eb->batch_start_offset,
> > -				      eb->batch_len,
> > +				      eb->batch_len[0],
> >   				      shadow, trampoline);
> >   	if (err)
> >   		goto err_unpin_batch;
> > -	eb->batch = &eb->vma[eb->buffer_count++];
> > -	eb->batch->vma = i915_vma_get(shadow);
> > -	eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
> > +	eb->batches[0] = &eb->vma[eb->buffer_count++];
> > +	eb->batches[0]->vma = i915_vma_get(shadow);
> > +	eb->batches[0]->flags = __EXEC_OBJECT_HAS_PIN;
> >   	eb->trampoline = trampoline;
> >   	eb->batch_start_offset = 0;
> >   secure_batch:
> >   	if (batch) {
> > -		eb->batch = &eb->vma[eb->buffer_count++];
> > -		eb->batch->flags = __EXEC_OBJECT_HAS_PIN;
> > -		eb->batch->vma = i915_vma_get(batch);
> > +		if (intel_context_is_parallel(eb->context))
> > +			return -EINVAL;
> > +
> > +		eb->batches[0] = &eb->vma[eb->buffer_count++];
> > +		eb->batches[0]->flags = __EXEC_OBJECT_HAS_PIN;
> > +		eb->batches[0]->vma = i915_vma_get(batch);
> >   	}
> >   	return 0;
> > @@ -2176,19 +2206,18 @@ static int eb_parse(struct i915_execbuffer *eb)
> >   	return err;
> >   }
> > -static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
> > +static int eb_request_submit(struct i915_execbuffer *eb,
> > +			     struct i915_request *rq,
> > +			     struct i915_vma *batch,
> > +			     u64 batch_len)
> >   {
> >   	int err;
> > -	if (intel_context_nopreempt(eb->context))
> > -		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &eb->request->fence.flags);
> > -
> > -	err = eb_move_to_gpu(eb);
> > -	if (err)
> > -		return err;
> > +	if (intel_context_nopreempt(rq->context))
> > +		__set_bit(I915_FENCE_FLAG_NOPREEMPT, &rq->fence.flags);
> >   	if (eb->args->flags & I915_EXEC_GEN7_SOL_RESET) {
> > -		err = i915_reset_gen7_sol_offsets(eb->request);
> > +		err = i915_reset_gen7_sol_offsets(rq);
> >   		if (err)
> >   			return err;
> >   	}
> > @@ -2199,26 +2228,26 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
> >   	 * allows us to determine if the batch is still waiting on the GPU
> >   	 * or actually running by checking the breadcrumb.
> >   	 */
> > -	if (eb->engine->emit_init_breadcrumb) {
> > -		err = eb->engine->emit_init_breadcrumb(eb->request);
> > +	if (rq->context->engine->emit_init_breadcrumb) {
> > +		err = rq->context->engine->emit_init_breadcrumb(rq);
> >   		if (err)
> >   			return err;
> >   	}
> > -	err = eb->engine->emit_bb_start(eb->request,
> > -					batch->node.start +
> > -					eb->batch_start_offset,
> > -					eb->batch_len,
> > -					eb->batch_flags);
> > +	err = rq->context->engine->emit_bb_start(rq,
> > +						 batch->node.start +
> > +						 eb->batch_start_offset,
> > +						 batch_len,
> > +						 eb->batch_flags);
> >   	if (err)
> >   		return err;
> >   	if (eb->trampoline) {
> > +		GEM_BUG_ON(intel_context_is_parallel(rq->context));
> >   		GEM_BUG_ON(eb->batch_start_offset);
> > -		err = eb->engine->emit_bb_start(eb->request,
> > -						eb->trampoline->node.start +
> > -						eb->batch_len,
> > -						0, 0);
> > +		err = rq->context->engine->emit_bb_start(rq,
> > +							 eb->trampoline->node.start +
> > +							 batch_len, 0, 0);
> >   		if (err)
> >   			return err;
> >   	}
> > @@ -2226,6 +2255,27 @@ static int eb_submit(struct i915_execbuffer *eb, struct i915_vma *batch)
> >   	return 0;
> >   }
> > +static int eb_submit(struct i915_execbuffer *eb)
> > +{
> > +	unsigned int i;
> > +	int err;
> > +
> > +	err = eb_move_to_gpu(eb);
> > +
> > +	for_each_batch_create_order(eb, i) {
> > +		if (!eb->requests[i])
> > +			break;
> > +
> > +		trace_i915_request_queue(eb->requests[i], eb->batch_flags);
> > +		if (!err)
> > +			err = eb_request_submit(eb, eb->requests[i],
> > +						eb->batches[i]->vma,
> > +						eb->batch_len[i]);
> > +	}
> > +
> > +	return err;
> > +}
> > +
> >   static int num_vcs_engines(const struct drm_i915_private *i915)
> >   {
> >   	return hweight_long(VDBOX_MASK(&i915->gt));
> > @@ -2291,26 +2341,11 @@ static struct i915_request *eb_throttle(struct i915_execbuffer *eb, struct intel
> >   	return i915_request_get(rq);
> >   }
> > -static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb, bool throttle)
> > +static int eb_pin_timeline(struct i915_execbuffer *eb, struct intel_context *ce,
> > +			   bool throttle)
> >   {
> > -	struct intel_context *ce = eb->context;
> >   	struct intel_timeline *tl;
> >   	struct i915_request *rq = NULL;
> > -	int err;
> > -
> > -	GEM_BUG_ON(eb->args->flags & __EXEC_ENGINE_PINNED);
> > -
> > -	if (unlikely(intel_context_is_banned(ce)))
> > -		return ERR_PTR(-EIO);
> > -
> > -	/*
> > -	 * Pinning the contexts may generate requests in order to acquire
> > -	 * GGTT space, so do this first before we reserve a seqno for
> > -	 * ourselves.
> > -	 */
> > -	err = intel_context_pin_ww(ce, &eb->ww);
> > -	if (err)
> > -		return ERR_PTR(err);
> >   	/*
> >   	 * Take a local wakeref for preparing to dispatch the execbuf as
> > @@ -2321,33 +2356,108 @@ static struct i915_request *eb_pin_engine(struct i915_execbuffer *eb, bool throt
> >   	 * taken on the engine, and the parent device.
> >   	 */
> >   	tl = intel_context_timeline_lock(ce);
> > -	if (IS_ERR(tl)) {
> > -		intel_context_unpin(ce);
> > -		return ERR_CAST(tl);
> > -	}
> > +	if (IS_ERR(tl))
> > +		return PTR_ERR(tl);
> >   	intel_context_enter(ce);
> >   	if (throttle)
> >   		rq = eb_throttle(eb, ce);
> >   	intel_context_timeline_unlock(tl);
> > +	if (rq) {
> > +		bool nonblock = eb->file->filp->f_flags & O_NONBLOCK;
> > +		long timeout = nonblock ? 0 : MAX_SCHEDULE_TIMEOUT;
> > +
> > +		if (i915_request_wait(rq, I915_WAIT_INTERRUPTIBLE,
> > +				      timeout) < 0) {
> > +			i915_request_put(rq);
> > +
> > +			tl = intel_context_timeline_lock(ce);
> > +			intel_context_exit(ce);
> > +			intel_context_timeline_unlock(tl);
> > +
> > +			if (nonblock)
> > +				return -EWOULDBLOCK;
> > +			else
> > +				return -EINTR;
> > +		}
> > +		i915_request_put(rq);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int eb_pin_engine(struct i915_execbuffer *eb, bool throttle)
> > +{
> > +	struct intel_context *ce = eb->context, *child;
> > +	int err;
> > +	int i = 0, j = 0;
> > +
> > +	GEM_BUG_ON(eb->args->flags & __EXEC_ENGINE_PINNED);
> > +
> > +	if (unlikely(intel_context_is_banned(ce)))
> > +		return -EIO;
> > +
> > +	/*
> > +	 * Pinning the contexts may generate requests in order to acquire
> > +	 * GGTT space, so do this first before we reserve a seqno for
> > +	 * ourselves.
> > +	 */
> > +	err = intel_context_pin_ww(ce, &eb->ww);
> > +	if (err)
> > +		return err;
> > +	for_each_child(ce, child) {
> > +		err = intel_context_pin_ww(child, &eb->ww);
> > +		GEM_BUG_ON(err);	/* perma-pinned should incr a counter */
> > +	}
> > +
> > +	for_each_child(ce, child) {
> > +		err = eb_pin_timeline(eb, child, throttle);
> > +		if (err)
> > +			goto unwind;
> > +		++i;
> > +	}
> > +	err = eb_pin_timeline(eb, ce, throttle);
> > +	if (err)
> > +		goto unwind;
> > +
> >   	eb->args->flags |= __EXEC_ENGINE_PINNED;
> > -	return rq;
> > +	return 0;
> > +
> > +unwind:
> > +	for_each_child(ce, child) {
> > +		if (j++ < i) {
> > +			mutex_lock(&child->timeline->mutex);
> > +			intel_context_exit(child);
> > +			mutex_unlock(&child->timeline->mutex);
> > +		}
> > +	}
> > +	for_each_child(ce, child)
> > +		intel_context_unpin(child);
> > +	intel_context_unpin(ce);
> > +	return err;
> >   }
> >   static void eb_unpin_engine(struct i915_execbuffer *eb)
> >   {
> > -	struct intel_context *ce = eb->context;
> > -	struct intel_timeline *tl = ce->timeline;
> > +	struct intel_context *ce = eb->context, *child;
> >   	if (!(eb->args->flags & __EXEC_ENGINE_PINNED))
> >   		return;
> >   	eb->args->flags &= ~__EXEC_ENGINE_PINNED;
> > -	mutex_lock(&tl->mutex);
> > +	for_each_child(ce, child) {
> > +		mutex_lock(&child->timeline->mutex);
> > +		intel_context_exit(child);
> > +		mutex_unlock(&child->timeline->mutex);
> > +
> > +		intel_context_unpin(child);
> > +	}
> > +
> > +	mutex_lock(&ce->timeline->mutex);
> >   	intel_context_exit(ce);
> > -	mutex_unlock(&tl->mutex);
> > +	mutex_unlock(&ce->timeline->mutex);
> >   	intel_context_unpin(ce);
> >   }
> > @@ -2398,7 +2508,7 @@ eb_select_legacy_ring(struct i915_execbuffer *eb)
> >   static int
> >   eb_select_engine(struct i915_execbuffer *eb)
> >   {
> > -	struct intel_context *ce;
> > +	struct intel_context *ce, *child;
> >   	unsigned int idx;
> >   	int err;
> > @@ -2411,6 +2521,20 @@ eb_select_engine(struct i915_execbuffer *eb)
> >   	if (IS_ERR(ce))
> >   		return PTR_ERR(ce);
> > +	if (intel_context_is_parallel(ce)) {
> > +		if (eb->buffer_count < ce->parallel.number_children + 1) {
> > +			intel_context_put(ce);
> > +			return -EINVAL;
> > +		}
> > +		if (eb->batch_start_offset || eb->args->batch_len) {
> > +			intel_context_put(ce);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +	eb->num_batches = ce->parallel.number_children + 1;
> > +
> > +	for_each_child(ce, child)
> > +		intel_context_get(child);
> >   	intel_gt_pm_get(ce->engine->gt);
> >   	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags)) {
> > @@ -2418,6 +2542,13 @@ eb_select_engine(struct i915_execbuffer *eb)
> >   		if (err)
> >   			goto err;
> >   	}
> > +	for_each_child(ce, child) {
> > +		if (!test_bit(CONTEXT_ALLOC_BIT, &child->flags)) {
> > +			err = intel_context_alloc_state(child);
> > +			if (err)
> > +				goto err;
> > +		}
> > +	}
> >   	/*
> >   	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
> > @@ -2428,7 +2559,7 @@ eb_select_engine(struct i915_execbuffer *eb)
> >   		goto err;
> >   	eb->context = ce;
> > -	eb->engine = ce->engine;
> > +	eb->gt = ce->engine->gt;
> >   	/*
> >   	 * Make sure engine pool stays alive even if we call intel_context_put
> > @@ -2439,6 +2570,8 @@ eb_select_engine(struct i915_execbuffer *eb)
> >   err:
> >   	intel_gt_pm_put(ce->engine->gt);
> > +	for_each_child(ce, child)
> > +		intel_context_put(child);
> >   	intel_context_put(ce);
> >   	return err;
> >   }
> > @@ -2446,7 +2579,11 @@ eb_select_engine(struct i915_execbuffer *eb)
> >   static void
> >   eb_put_engine(struct i915_execbuffer *eb)
> >   {
> > -	intel_gt_pm_put(eb->engine->gt);
> > +	struct intel_context *child;
> > +
> > +	intel_gt_pm_put(eb->gt);
> > +	for_each_child(eb->context, child)
> > +		intel_context_put(child);
> >   	intel_context_put(eb->context);
> >   }
> > @@ -2669,7 +2806,8 @@ static void put_fence_array(struct eb_fence *fences, int num_fences)
> >   }
> >   static int
> > -await_fence_array(struct i915_execbuffer *eb)
> > +await_fence_array(struct i915_execbuffer *eb,
> > +		  struct i915_request *rq)
> >   {
> >   	unsigned int n;
> >   	int err;
> > @@ -2683,8 +2821,7 @@ await_fence_array(struct i915_execbuffer *eb)
> >   		if (!eb->fences[n].dma_fence)
> >   			continue;
> > -		err = i915_request_await_dma_fence(eb->request,
> > -						   eb->fences[n].dma_fence);
> > +		err = i915_request_await_dma_fence(rq, eb->fences[n].dma_fence);
> >   		if (err < 0)
> >   			return err;
> >   	}
> > @@ -2692,9 +2829,9 @@ await_fence_array(struct i915_execbuffer *eb)
> >   	return 0;
> >   }
> > -static void signal_fence_array(const struct i915_execbuffer *eb)
> > +static void signal_fence_array(const struct i915_execbuffer *eb,
> > +			       struct dma_fence * const fence)
> >   {
> > -	struct dma_fence * const fence = &eb->request->fence;
> >   	unsigned int n;
> >   	for (n = 0; n < eb->num_fences; n++) {
> > @@ -2742,9 +2879,9 @@ static void retire_requests(struct intel_timeline *tl, struct i915_request *end)
> >   			break;
> >   }
> > -static int eb_request_add(struct i915_execbuffer *eb, int err)
> > +static int eb_request_add(struct i915_execbuffer *eb, struct i915_request *rq,
> > +			  int err, bool last_parallel)
> >   {
> > -	struct i915_request *rq = eb->request;
> >   	struct intel_timeline * const tl = i915_request_timeline(rq);
> >   	struct i915_sched_attr attr = {};
> >   	struct i915_request *prev;
> > @@ -2766,6 +2903,17 @@ static int eb_request_add(struct i915_execbuffer *eb, int err)
> >   		err = -ENOENT; /* override any transient errors */
> >   	}
> > +	if (intel_context_is_parallel(eb->context)) {
> > +		if (err) {
> > +			__i915_request_skip(rq);
> > +			set_bit(I915_FENCE_FLAG_SKIP_PARALLEL,
> > +				&rq->fence.flags);
> > +		}
> > +		if (last_parallel)
> > +			set_bit(I915_FENCE_FLAG_SUBMIT_PARALLEL,
> > +				&rq->fence.flags);
> > +	}
> > +
> >   	__i915_request_queue(rq, &attr);
> >   	/* Try to clean up the client's timeline after submitting the request */
> > @@ -2777,6 +2925,25 @@ static int eb_request_add(struct i915_execbuffer *eb, int err)
> >   	return err;
> >   }
> > +static int eb_requests_add(struct i915_execbuffer *eb, int err)
> > +{
> > +	int i;
> > +
> > +	/*
> > +	 * We iterate in reverse order of creation to release timeline mutexes in
> > +	 * same order.
> > +	 */
> > +	for_each_batch_add_order(eb, i) {
> > +		struct i915_request *rq = eb->requests[i];
> > +
> > +		if (!rq)
> > +			continue;
> > +		err |= eb_request_add(eb, rq, err, i == 0);
> > +	}
> > +
> > +	return err;
> > +}
> > +
> >   static const i915_user_extension_fn execbuf_extensions[] = {
> >   	[DRM_I915_GEM_EXECBUFFER_EXT_TIMELINE_FENCES] = parse_timeline_fences,
> >   };
> > @@ -2803,6 +2970,182 @@ parse_execbuf2_extensions(struct drm_i915_gem_execbuffer2 *args,
> >   				    eb);
> >   }
> > +static void eb_requests_get(struct i915_execbuffer *eb)
> > +{
> > +	unsigned int i;
> > +
> > +	for_each_batch_create_order(eb, i) {
> > +		if (!eb->requests[i])
> > +			break;
> > +
> > +		i915_request_get(eb->requests[i]);
> > +	}
> > +}
> > +
> > +static void eb_requests_put(struct i915_execbuffer *eb)
> > +{
> > +	unsigned int i;
> > +
> > +	for_each_batch_create_order(eb, i) {
> > +		if (!eb->requests[i])
> > +			break;
> > +
> > +		i915_request_put(eb->requests[i]);
> > +	}
> > +}
> > +
> > +static struct sync_file *
> > +eb_composite_fence_create(struct i915_execbuffer *eb, int out_fence_fd)
> > +{
> > +	struct sync_file *out_fence = NULL;
> > +	struct dma_fence_array *fence_array;
> > +	struct dma_fence **fences;
> > +	unsigned int i;
> > +
> > +	GEM_BUG_ON(!intel_context_is_parent(eb->context));
> > +
> > +	fences = kmalloc_array(eb->num_batches, sizeof(*fences), GFP_KERNEL);
> > +	if (!fences)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	for_each_batch_create_order(eb, i)
> > +		fences[i] = &eb->requests[i]->fence;
> > +
> > +	fence_array = dma_fence_array_create(eb->num_batches,
> > +					     fences,
> > +					     eb->context->parallel.fence_context,
> > +					     eb->context->parallel.seqno,
> > +					     false);
> > +	if (!fence_array) {
> > +		kfree(fences);
> > +		return ERR_PTR(-ENOMEM);
> > +	}
> > +
> > +	/* Move ownership to the dma_fence_array created above */
> > +	for_each_batch_create_order(eb, i)
> > +		dma_fence_get(fences[i]);
> > +
> > +	if (out_fence_fd != -1) {
> > +		out_fence = sync_file_create(&fence_array->base);
> > +		/* sync_file now owns fence_arry, drop creation ref */
> > +		dma_fence_put(&fence_array->base);
> > +		if (!out_fence)
> > +			return ERR_PTR(-ENOMEM);
> > +	}
> > +
> > +	eb->composite_fence = &fence_array->base;
> > +
> > +	return out_fence;
> > +}
> > +
> > +static struct sync_file *
> > +eb_fences_add(struct i915_execbuffer *eb, struct i915_request *rq,
> > +	      struct dma_fence *in_fence, int out_fence_fd)
> > +{
> > +	struct sync_file *out_fence = NULL;
> > +	int err;
> > +
> > +	if (unlikely(eb->gem_context->syncobj)) {
> > +		struct dma_fence *fence;
> > +
> > +		fence = drm_syncobj_fence_get(eb->gem_context->syncobj);
> > +		err = i915_request_await_dma_fence(rq, fence);
> > +		dma_fence_put(fence);
> > +		if (err)
> > +			return ERR_PTR(err);
> > +	}
> > +
> > +	if (in_fence) {
> > +		if (eb->args->flags & I915_EXEC_FENCE_SUBMIT)
> > +			err = i915_request_await_execution(rq, in_fence);
> > +		else
> > +			err = i915_request_await_dma_fence(rq, in_fence);
> > +		if (err < 0)
> > +			return ERR_PTR(err);
> > +	}
> > +
> > +	if (eb->fences) {
> > +		err = await_fence_array(eb, rq);
> > +		if (err)
> > +			return ERR_PTR(err);
> > +	}
> > +
> > +	if (intel_context_is_parallel(eb->context)) {
> > +		out_fence = eb_composite_fence_create(eb, out_fence_fd);
> > +		if (IS_ERR(out_fence))
> > +			return ERR_PTR(-ENOMEM);
> > +	} else if (out_fence_fd != -1) {
> > +		out_fence = sync_file_create(&rq->fence);
> > +		if (!out_fence)
> > +			return ERR_PTR(-ENOMEM);
> > +	}
> > +
> > +	return out_fence;
> > +}
> > +
> > +static struct intel_context *
> > +eb_find_context(struct i915_execbuffer *eb, unsigned int context_number)
> > +{
> > +	struct intel_context *child;
> > +
> > +	if (likely(context_number == 0))
> > +		return eb->context;
> > +
> > +	for_each_child(eb->context, child)
> > +		if (!--context_number)
> > +			return child;
> > +
> > +	GEM_BUG_ON("Context not found");
> > +
> > +	return NULL;
> > +}
> > +
> > +static struct sync_file *
> > +eb_requests_create(struct i915_execbuffer *eb, struct dma_fence *in_fence,
> > +		   int out_fence_fd)
> > +{
> > +	struct sync_file *out_fence = NULL;
> > +	unsigned int i;
> > +
> > +	for_each_batch_create_order(eb, i) {
> > +		/* Allocate a request for this batch buffer nice and early. */
> > +		eb->requests[i] = i915_request_create(eb_find_context(eb, i));
> > +		if (IS_ERR(eb->requests[i])) {
> > +			out_fence = ERR_PTR(PTR_ERR(eb->requests[i]));
> > +			eb->requests[i] = NULL;
> > +			return out_fence;
> > +		}
> > +
> > +		/*
> > +		 * Only the first request added (committed to backend) has to
> > +		 * take the in fences into account as all subsequent requests
> > +		 * will have fences inserted inbetween them.
> > +		 */
> > +		if (i + 1 == eb->num_batches) {
> > +			out_fence = eb_fences_add(eb, eb->requests[i],
> > +						  in_fence, out_fence_fd);
> > +			if (IS_ERR(out_fence))
> > +				return out_fence;
> > +		}
> > +
> > +		/*
> > +		 * Whilst this request exists, batch_obj will be on the
> > +		 * active_list, and so will hold the active reference. Only when
> > +		 * this request is retired will the batch_obj be moved onto
> > +		 * the inactive_list and lose its active reference. Hence we do
> > +		 * not need to explicitly hold another reference here.
> > +		 */
> > +		eb->requests[i]->batch = eb->batches[i]->vma;
> > +		if (eb->batch_pool) {
> > +			GEM_BUG_ON(intel_context_is_parallel(eb->context));
> > +			intel_gt_buffer_pool_mark_active(eb->batch_pool,
> > +							 eb->requests[i]);
> > +		}
> > +	}
> > +
> > +	return out_fence;
> > +}
> > +
> >   static int
> >   i915_gem_do_execbuffer(struct drm_device *dev,
> >   		       struct drm_file *file,
> > @@ -2813,7 +3156,6 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> >   	struct i915_execbuffer eb;
> >   	struct dma_fence *in_fence = NULL;
> >   	struct sync_file *out_fence = NULL;
> > -	struct i915_vma *batch;
> >   	int out_fence_fd = -1;
> >   	int err;
> > @@ -2837,12 +3179,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> >   	eb.buffer_count = args->buffer_count;
> >   	eb.batch_start_offset = args->batch_start_offset;
> > -	eb.batch_len = args->batch_len;
> >   	eb.trampoline = NULL;
> >   	eb.fences = NULL;
> >   	eb.num_fences = 0;
> > +	memset(eb.requests, 0, sizeof(struct i915_request *) *
> > +	       ARRAY_SIZE(eb.requests));
> > +	eb.composite_fence = NULL;
> > +
> >   	eb.batch_flags = 0;
> >   	if (args->flags & I915_EXEC_SECURE) {
> >   		if (GRAPHICS_VER(i915) >= 11)
> > @@ -2926,70 +3271,25 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> >   	ww_acquire_done(&eb.ww.ctx);
> > -	batch = eb.batch->vma;
> > -
> > -	/* Allocate a request for this batch buffer nice and early. */
> > -	eb.request = i915_request_create(eb.context);
> > -	if (IS_ERR(eb.request)) {
> > -		err = PTR_ERR(eb.request);
> > -		goto err_vma;
> > -	}
> > -
> > -	if (unlikely(eb.gem_context->syncobj)) {
> > -		struct dma_fence *fence;
> > -
> > -		fence = drm_syncobj_fence_get(eb.gem_context->syncobj);
> > -		err = i915_request_await_dma_fence(eb.request, fence);
> > -		dma_fence_put(fence);
> > -		if (err)
> > -			goto err_ext;
> > -	}
> > -
> > -	if (in_fence) {
> > -		if (args->flags & I915_EXEC_FENCE_SUBMIT)
> > -			err = i915_request_await_execution(eb.request,
> > -							   in_fence);
> > -		else
> > -			err = i915_request_await_dma_fence(eb.request,
> > -							   in_fence);
> > -		if (err < 0)
> > -			goto err_request;
> > -	}
> > -
> > -	if (eb.fences) {
> > -		err = await_fence_array(&eb);
> > -		if (err)
> > +	out_fence = eb_requests_create(&eb, in_fence, out_fence_fd);
> > +	if (IS_ERR(out_fence)) {
> > +		err = PTR_ERR(out_fence);
> > +		if (eb.requests[0])
> >   			goto err_request;
> > +		else
> > +			goto err_vma;
> >   	}
> > -	if (out_fence_fd != -1) {
> > -		out_fence = sync_file_create(&eb.request->fence);
> > -		if (!out_fence) {
> > -			err = -ENOMEM;
> > -			goto err_request;
> > -		}
> > -	}
> > -
> > -	/*
> > -	 * Whilst this request exists, batch_obj will be on the
> > -	 * active_list, and so will hold the active reference. Only when this
> > -	 * request is retired will the the batch_obj be moved onto the
> > -	 * inactive_list and lose its active reference. Hence we do not need
> > -	 * to explicitly hold another reference here.
> > -	 */
> > -	eb.request->batch = batch;
> > -	if (eb.batch_pool)
> > -		intel_gt_buffer_pool_mark_active(eb.batch_pool, eb.request);
> > -
> > -	trace_i915_request_queue(eb.request, eb.batch_flags);
> > -	err = eb_submit(&eb, batch);
> > +	err = eb_submit(&eb);
> >   err_request:
> > -	i915_request_get(eb.request);
> > -	err = eb_request_add(&eb, err);
> > +	eb_requests_get(&eb);
> > +	err = eb_requests_add(&eb, err);
> >   	if (eb.fences)
> > -		signal_fence_array(&eb);
> > +		signal_fence_array(&eb, eb.composite_fence ?
> > +				   eb.composite_fence :
> > +				   &eb.requests[0]->fence);
> >   	if (out_fence) {
> >   		if (err == 0) {
> > @@ -3004,10 +3304,15 @@ i915_gem_do_execbuffer(struct drm_device *dev,
> >   	if (unlikely(eb.gem_context->syncobj)) {
> >   		drm_syncobj_replace_fence(eb.gem_context->syncobj,
> > -					  &eb.request->fence);
> > +					  eb.composite_fence ?
> > +					  eb.composite_fence :
> > +					  &eb.requests[0]->fence);
> >   	}
> > -	i915_request_put(eb.request);
> > +	if (!out_fence && eb.composite_fence)
> > +		dma_fence_put(eb.composite_fence);
> > +
> > +	eb_requests_put(&eb);
> >   err_vma:
> >   	eb_release_vmas(&eb, true);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> > index 1bc705f98e2a..1781419fa105 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> > @@ -239,7 +239,13 @@ intel_context_timeline_lock(struct intel_context *ce)
> >   	struct intel_timeline *tl = ce->timeline;
> >   	int err;
> > -	err = mutex_lock_interruptible(&tl->mutex);
> > +	if (intel_context_is_parent(ce))
> > +		err = mutex_lock_interruptible_nested(&tl->mutex, 0);
> > +	else if (intel_context_is_child(ce))
> > +		err = mutex_lock_interruptible_nested(&tl->mutex,
> > +						      ce->parallel.child_index + 1);
> > +	else
> > +		err = mutex_lock_interruptible(&tl->mutex);
> >   	if (err)
> >   		return ERR_PTR(err);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > index 95a5b94b4ece..9e0177dc5484 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_context_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
> > @@ -248,6 +248,16 @@ struct intel_context {
> >   		 * context
> >   		 */
> >   		struct i915_request *last_rq;
> > +		/**
> > +		 * @fence_context: fence context composite fence when doing
> > +		 * parallel submission
> > +		 */
> > +		u64 fence_context;
> > +		/**
> > +		 * @seqno: seqno for composite fence when doing parallel
> > +		 * submission
> > +		 */
> > +		u32 seqno;
> >   		/** @number_children: number of children if parent */
> >   		u8 number_children;
> >   		/** @child_index: index into child_list if child */
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index ae08a196ba0a..bfafe996e2d2 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -3099,6 +3099,8 @@ guc_create_parallel(struct intel_engine_cs **engines,
> >   		}
> >   	}
> > +	parent->parallel.fence_context = dma_fence_context_alloc(1);
> > +
> >   	parent->engine->emit_bb_start =
> >   		emit_bb_start_parent_no_preempt_mid_batch;
> >   	parent->engine->emit_fini_breadcrumb =
> > diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> > index 8950785e55d6..24db8459376b 100644
> > --- a/drivers/gpu/drm/i915/i915_request.h
> > +++ b/drivers/gpu/drm/i915/i915_request.h
> > @@ -147,6 +147,15 @@ enum {
> >   	 * tail.
> >   	 */
> >   	I915_FENCE_FLAG_SUBMIT_PARALLEL,
> > +
> > +	/*
> > +	 * I915_FENCE_FLAG_SKIP_PARALLEL - request with a context in a
> > +	 * parent-child relationship (parallel submission, multi-lrc) that
> > +	 * hit an error while generating requests in the execbuf IOCTL.
> > +	 * Indicates this request should be skipped as another request in
> > +	 * submission / relationship encoutered an error.
> > +	 */
> > +	I915_FENCE_FLAG_SKIP_PARALLEL,
> >   };
> >   /**
> > diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> > index 4b7fc4647e46..90546fa58fc1 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.c
> > +++ b/drivers/gpu/drm/i915/i915_vma.c
> > @@ -1234,9 +1234,10 @@ int __i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq)
> >   	return i915_active_add_request(&vma->active, rq);
> >   }
> > -int i915_vma_move_to_active(struct i915_vma *vma,
> > -			    struct i915_request *rq,
> > -			    unsigned int flags)
> > +int _i915_vma_move_to_active(struct i915_vma *vma,
> > +			     struct i915_request *rq,
> > +			     struct dma_fence *fence,
> > +			     unsigned int flags)
> >   {
> >   	struct drm_i915_gem_object *obj = vma->obj;
> >   	int err;
> > @@ -1257,9 +1258,11 @@ int i915_vma_move_to_active(struct i915_vma *vma,
> >   			intel_frontbuffer_put(front);
> >   		}
> > -		dma_resv_add_excl_fence(vma->resv, &rq->fence);
> > -		obj->write_domain = I915_GEM_DOMAIN_RENDER;
> > -		obj->read_domains = 0;
> > +		if (fence) {
> > +			dma_resv_add_excl_fence(vma->resv, fence);
> > +			obj->write_domain = I915_GEM_DOMAIN_RENDER;
> > +			obj->read_domains = 0;
> > +		}
> >   	} else {
> >   		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
> >   			err = dma_resv_reserve_shared(vma->resv, 1);
> > @@ -1267,8 +1270,10 @@ int i915_vma_move_to_active(struct i915_vma *vma,
> >   				return err;
> >   		}
> > -		dma_resv_add_shared_fence(vma->resv, &rq->fence);
> > -		obj->write_domain = 0;
> > +		if (fence) {
> > +			dma_resv_add_shared_fence(vma->resv, fence);
> > +			obj->write_domain = 0;
> > +		}
> >   	}
> >   	if (flags & EXEC_OBJECT_NEEDS_FENCE && vma->fence)
> > diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> > index ed69f66c7ab0..648dbe744c96 100644
> > --- a/drivers/gpu/drm/i915/i915_vma.h
> > +++ b/drivers/gpu/drm/i915/i915_vma.h
> > @@ -57,9 +57,16 @@ static inline bool i915_vma_is_active(const struct i915_vma *vma)
> >   int __must_check __i915_vma_move_to_active(struct i915_vma *vma,
> >   					   struct i915_request *rq);
> > -int __must_check i915_vma_move_to_active(struct i915_vma *vma,
> > -					 struct i915_request *rq,
> > -					 unsigned int flags);
> > +int __must_check _i915_vma_move_to_active(struct i915_vma *vma,
> > +					  struct i915_request *rq,
> > +					  struct dma_fence *fence,
> > +					  unsigned int flags);
> > +static inline int __must_check
> > +i915_vma_move_to_active(struct i915_vma *vma, struct i915_request *rq,
> > +			unsigned int flags)
> > +{
> > +	return _i915_vma_move_to_active(vma, rq, &rq->fence, flags);
> > +}
> >   #define __i915_vma_flags(v) ((unsigned long *)&(v)->flags.counter)
> 
