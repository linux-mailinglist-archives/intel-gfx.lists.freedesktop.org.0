Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 634936F59A9
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 16:19:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E790210E2C2;
	Wed,  3 May 2023 14:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88E5210E2C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 14:19:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F215060C6C;
 Wed,  3 May 2023 14:19:32 +0000 (UTC)
Received: from rdvivi-mobl4 (fmdmzpr02-ext.fm.intel.com [192.55.54.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp.kernel.org (Postfix) with ESMTPSA id 02038C433D2;
 Wed,  3 May 2023 14:19:30 +0000 (UTC)
Date: Wed, 3 May 2023 10:19:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZFJtcWKnIxnrcHdj@rdvivi-mobl4>
References: <cover.1683041799.git.jani.nikula@intel.com>
 <62a7a0f6e5b33e59ef4339304d01e7ef7ee04430.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <62a7a0f6e5b33e59ef4339304d01e7ef7ee04430.1683041799.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/24] drm/i915/request: drop kernel-doc
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

On Tue, May 02, 2023 at 06:37:25PM +0300, Jani Nikula wrote:
> The documentation is closer to not being kernel-doc. Just drop the
> kernel-doc /** indicators.
> 
> drivers/gpu/drm/i915/i915_request.h:176: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  * Request queue structure.
> drivers/gpu/drm/i915/i915_request.h:477: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
>  * Returns true if seq1 is later than seq2.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.h | 52 ++++++++++++++---------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index f5e1bb5e857a..0ac55b2e4223 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -172,7 +172,7 @@ enum {
>  	I915_FENCE_FLAG_COMPOSITE,
>  };
>  
> -/**
> +/*
>   * Request queue structure.
>   *
>   * The request queue allows us to note sequence numbers that have been emitted
> @@ -198,7 +198,7 @@ struct i915_request {
>  
>  	struct drm_i915_private *i915;
>  
> -	/**
> +	/*
>  	 * Context and ring buffer related to this request
>  	 * Contexts are refcounted, so when this request is associated with a
>  	 * context, we must increment the context's refcount, to guarantee that
> @@ -251,9 +251,9 @@ struct i915_request {
>  	};
>  	struct llist_head execute_cb;
>  	struct i915_sw_fence semaphore;
> -	/**
> -	 * @submit_work: complete submit fence from an IRQ if needed for
> -	 * locking hierarchy reasons.
> +	/*
> +	 * complete submit fence from an IRQ if needed for locking hierarchy
> +	 * reasons.
>  	 */
>  	struct irq_work submit_work;
>  
> @@ -277,35 +277,35 @@ struct i915_request {
>  	 */
>  	const u32 *hwsp_seqno;
>  
> -	/** Position in the ring of the start of the request */
> +	/* Position in the ring of the start of the request */
>  	u32 head;
>  
> -	/** Position in the ring of the start of the user packets */
> +	/* Position in the ring of the start of the user packets */
>  	u32 infix;
>  
> -	/**
> +	/*
>  	 * Position in the ring of the start of the postfix.
>  	 * This is required to calculate the maximum available ring space
>  	 * without overwriting the postfix.
>  	 */
>  	u32 postfix;
>  
> -	/** Position in the ring of the end of the whole request */
> +	/* Position in the ring of the end of the whole request */
>  	u32 tail;
>  
> -	/** Position in the ring of the end of any workarounds after the tail */
> +	/* Position in the ring of the end of any workarounds after the tail */
>  	u32 wa_tail;
>  
> -	/** Preallocate space in the ring for the emitting the request */
> +	/* Preallocate space in the ring for the emitting the request */
>  	u32 reserved_space;
>  
> -	/** Batch buffer pointer for selftest internal use. */
> +	/* Batch buffer pointer for selftest internal use. */
>  	I915_SELFTEST_DECLARE(struct i915_vma *batch);
>  
>  	struct i915_vma_resource *batch_res;
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
> -	/**
> +	/*
>  	 * Additional buffers requested by userspace to be captured upon
>  	 * a GPU hang. The vma/obj on this list are protected by their
>  	 * active reference - all objects on this list must also be
> @@ -314,29 +314,29 @@ struct i915_request {
>  	struct i915_capture_list *capture_list;
>  #endif
>  
> -	/** Time at which this request was emitted, in jiffies. */
> +	/* Time at which this request was emitted, in jiffies. */
>  	unsigned long emitted_jiffies;
>  
> -	/** timeline->request entry for this request */
> +	/* timeline->request entry for this request */
>  	struct list_head link;
>  
> -	/** Watchdog support fields. */
> +	/* Watchdog support fields. */
>  	struct i915_request_watchdog {
>  		struct llist_node link;
>  		struct hrtimer timer;
>  	} watchdog;
>  
> -	/**
> -	 * @guc_fence_link: Requests may need to be stalled when using GuC
> -	 * submission waiting for certain GuC operations to complete. If that is
> -	 * the case, stalled requests are added to a per context list of stalled
> -	 * requests. The below list_head is the link in that list. Protected by
> +	/*
> +	 * Requests may need to be stalled when using GuC submission waiting for
> +	 * certain GuC operations to complete. If that is the case, stalled
> +	 * requests are added to a per context list of stalled requests. The
> +	 * below list_head is the link in that list. Protected by
>  	 * ce->guc_state.lock.
>  	 */
>  	struct list_head guc_fence_link;
>  
> -	/**
> -	 * @guc_prio: Priority level while the request is in flight. Differs
> +	/*
> +	 * Priority level while the request is in flight. Differs
>  	 * from i915 scheduler priority. See comment above
>  	 * I915_SCHEDULER_CAP_STATIC_PRIORITY_MAP for details. Protected by
>  	 * ce->guc_active.lock. Two special values (GUC_PRIO_INIT and
> @@ -348,8 +348,8 @@ struct i915_request {
>  #define	GUC_PRIO_FINI	0xfe
>  	u8 guc_prio;
>  
> -	/**
> -	 * @hucq: wait queue entry used to wait on the HuC load to complete
> +	/*
> +	 * wait queue entry used to wait on the HuC load to complete
>  	 */
>  	wait_queue_entry_t hucq;
>  
> @@ -473,7 +473,7 @@ i915_request_has_initial_breadcrumb(const struct i915_request *rq)
>  	return test_bit(I915_FENCE_FLAG_INITIAL_BREADCRUMB, &rq->fence.flags);
>  }
>  
> -/**
> +/*
>   * Returns true if seq1 is later than seq2.
>   */

hmmm... or all of these or properly move everything else to look like kernel doc,
but looking to this struct, let's just do this for now...


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  static inline bool i915_seqno_passed(u32 seq1, u32 seq2)
> -- 
> 2.39.2
> 
