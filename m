Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A66323FBD00
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 21:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BDE89C07;
	Mon, 30 Aug 2021 19:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8DD889C07
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 19:38:22 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 f9-20020a05600c1549b029025b0f5d8c6cso220467wmg.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=WYoie9udrqWwx/mp6AADwkeCwHuZjaR6LVPeG2MtU0c=;
 b=eUsCG3UoTTbLf8oN64rq+qHVKJNAZTgDpQp95Wj8G97Z0OYhNSUbMlALg3U68IELLQ
 BuA0rIzmhfCqiPVV4FfuSF11hehkjZ6+Wn7KPYpNLpkYjrQzt88JUZYkex2fivK+m5VB
 Dg6F5vpawI47dMlcwJwVwh6wFJGbyse8DxU8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=WYoie9udrqWwx/mp6AADwkeCwHuZjaR6LVPeG2MtU0c=;
 b=ghNfkvtqTfjb0YJPfZjzoVwl3HrljyIijIRaoJFyH0XLVHTx+Yy2vqnSpcld5lDOIu
 vvpq7KRF0ci2BrY+cy+HpaD4ZzS4p4gEDJmeOJGA8KdkJ/wR/lW5Yc6JK+vJDH8H+jGI
 HB1enltPWmEspx9ucg/vYlSii+8oixNsDZ+JaBmaUJLQ3Aj4uz56qqM942Ibj2zPt7D8
 qspx9aTOQ7eIy7shyiBZWh/FWXt+WOOyeRv8auj7NtmIsk4o73AgBsy2TwnVI0GSOpJ4
 0tGHQ1VAUo+MMOrBxHRWpKrNh82IUgy/w4sPEUq9hLy+gk5xJab7F9KoUZEPOPijbvmD
 L8QA==
X-Gm-Message-State: AOAM5336VFWJe55TvpQcxqJJ2Tv2yjXlt4wIsBL84AVwaeN56zWeawQU
 uNBxUf5IN35aa/xqTP8CUQcYTg==
X-Google-Smtp-Source: ABdhPJxT9vS5t7FdR+DG5dhgT1UxoKfs1uQRWSNfNzPr5Nupm0oJF8S1377i2Amlj9osfmrO8gSbZw==
X-Received: by 2002:a1c:ed03:: with SMTP id l3mr612162wmh.56.1630352301109;
 Mon, 30 Aug 2021 12:38:21 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x11sm16429629wro.83.2021.08.30.12.38.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 12:38:20 -0700 (PDT)
Date: Mon, 30 Aug 2021 21:38:18 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Jason Ekstrand <jason@jlekstrand.net>,
 Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
Message-ID: <YS0zqk73eauG3rA/@phenom.ffwll.local>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
 <20210805104705.862416-21-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210805104705.862416-21-daniel.vetter@ffwll.ch>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH v5 20/20] dma-resv: Give the docs a do-over
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

On Thu, Aug 05, 2021 at 12:47:05PM +0200, Daniel Vetter wrote:
> Specifically document the new/clarified rules around how the shared
> fences do not have any ordering requirements against the exclusive
> fence.
> 
> But also document all the things a bit better, given how central
> struct dma_resv to dynamic buffer management the docs have been very
> inadequat.
> 
> - Lots more links to other pieces of the puzzle. Unfortunately
>   ttm_buffer_object has no docs, so no links :-(
> 
> - Explain/complain a bit about dma_resv_locking_ctx(). I still don't
>   like that one, but fixing the ttm call chains is going to be
>   horrible. Plus we want to plug in real slowpath locking when we do
>   that anyway.
> 
> - Main part of the patch is some actual docs for struct dma_resv.
> 
> Overall I think we still have a lot of bad naming in this area (e.g.
> dma_resv.fence is singular, but contains the multiple shared fences),
> but I think that's more indicative of how the semantics and rules are
> just not great.
> 
> Another thing that's real awkard is how chaining exclusive fences
> right now means direct dma_resv.exclusive_fence pointer access with an
> rcu_assign_pointer. Not so great either.
> 
> v2:
> - Fix a pile of typos (Matt, Jason)
> - Hammer it in that breaking the rules leads to use-after-free issues
>   around dma-buf sharing (Christian)
> 
> Reviewed-by: Christian K�nig <christian.koenig@amd.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: "Christian K�nig" <christian.koenig@amd.com>
> Cc: linux-media@vger.kernel.org
> Cc: linaro-mm-sig@lists.linaro.org

Also pushed to drm-misc-next.
-Daniel

> ---
>  drivers/dma-buf/dma-resv.c |  24 ++++++---
>  include/linux/dma-buf.h    |   7 +++
>  include/linux/dma-resv.h   | 104 +++++++++++++++++++++++++++++++++++--
>  3 files changed, 124 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/dma-buf/dma-resv.c b/drivers/dma-buf/dma-resv.c
> index e744fd87c63c..84fbe60629e3 100644
> --- a/drivers/dma-buf/dma-resv.c
> +++ b/drivers/dma-buf/dma-resv.c
> @@ -48,6 +48,8 @@
>   * write operations) or N shared fences (read operations).  The RCU
>   * mechanism is used to protect read access to fences from locked
>   * write-side updates.
> + *
> + * See struct dma_resv for more details.
>   */
>  
>  DEFINE_WD_CLASS(reservation_ww_class);
> @@ -137,7 +139,11 @@ EXPORT_SYMBOL(dma_resv_fini);
>   * @num_fences: number of fences we want to add
>   *
>   * Should be called before dma_resv_add_shared_fence().  Must
> - * be called with obj->lock held.
> + * be called with @obj locked through dma_resv_lock().
> + *
> + * Note that the preallocated slots need to be re-reserved if @obj is unlocked
> + * at any time before calling dma_resv_add_shared_fence(). This is validated
> + * when CONFIG_DEBUG_MUTEXES is enabled.
>   *
>   * RETURNS
>   * Zero for success, or -errno
> @@ -234,8 +240,10 @@ EXPORT_SYMBOL(dma_resv_reset_shared_max);
>   * @obj: the reservation object
>   * @fence: the shared fence to add
>   *
> - * Add a fence to a shared slot, obj->lock must be held, and
> + * Add a fence to a shared slot, @obj must be locked with dma_resv_lock(), and
>   * dma_resv_reserve_shared() has been called.
> + *
> + * See also &dma_resv.fence for a discussion of the semantics.
>   */
>  void dma_resv_add_shared_fence(struct dma_resv *obj, struct dma_fence *fence)
>  {
> @@ -278,9 +286,11 @@ EXPORT_SYMBOL(dma_resv_add_shared_fence);
>  /**
>   * dma_resv_add_excl_fence - Add an exclusive fence.
>   * @obj: the reservation object
> - * @fence: the shared fence to add
> + * @fence: the exclusive fence to add
>   *
> - * Add a fence to the exclusive slot.  The obj->lock must be held.
> + * Add a fence to the exclusive slot. @obj must be locked with dma_resv_lock().
> + * Note that this function replaces all fences attached to @obj, see also
> + * &dma_resv.fence_excl for a discussion of the semantics.
>   */
>  void dma_resv_add_excl_fence(struct dma_resv *obj, struct dma_fence *fence)
>  {
> @@ -609,9 +619,11 @@ static inline int dma_resv_test_signaled_single(struct dma_fence *passed_fence)
>   * fence
>   *
>   * Callers are not required to hold specific locks, but maybe hold
> - * dma_resv_lock() already
> + * dma_resv_lock() already.
> + *
>   * RETURNS
> - * true if all fences signaled, else false
> + *
> + * True if all fences signaled, else false.
>   */
>  bool dma_resv_test_signaled(struct dma_resv *obj, bool test_all)
>  {
> diff --git a/include/linux/dma-buf.h b/include/linux/dma-buf.h
> index 678b2006be78..fc62b5f9980c 100644
> --- a/include/linux/dma-buf.h
> +++ b/include/linux/dma-buf.h
> @@ -420,6 +420,13 @@ struct dma_buf {
>  	 * - Dynamic importers should set fences for any access that they can't
>  	 *   disable immediately from their &dma_buf_attach_ops.move_notify
>  	 *   callback.
> +	 *
> +	 * IMPORTANT:
> +	 *
> +	 * All drivers must obey the struct dma_resv rules, specifically the
> +	 * rules for updating fences, see &dma_resv.fence_excl and
> +	 * &dma_resv.fence. If these dependency rules are broken access tracking
> +	 * can be lost resulting in use after free issues.
>  	 */
>  	struct dma_resv *resv;
>  
> diff --git a/include/linux/dma-resv.h b/include/linux/dma-resv.h
> index e1ca2080a1ff..9100dd3dc21f 100644
> --- a/include/linux/dma-resv.h
> +++ b/include/linux/dma-resv.h
> @@ -62,16 +62,90 @@ struct dma_resv_list {
>  
>  /**
>   * struct dma_resv - a reservation object manages fences for a buffer
> - * @lock: update side lock
> - * @seq: sequence count for managing RCU read-side synchronization
> - * @fence_excl: the exclusive fence, if there is one currently
> - * @fence: list of current shared fences
> + *
> + * There are multiple uses for this, with sometimes slightly different rules in
> + * how the fence slots are used.
> + *
> + * One use is to synchronize cross-driver access to a struct dma_buf, either for
> + * dynamic buffer management or just to handle implicit synchronization between
> + * different users of the buffer in userspace. See &dma_buf.resv for a more
> + * in-depth discussion.
> + *
> + * The other major use is to manage access and locking within a driver in a
> + * buffer based memory manager. struct ttm_buffer_object is the canonical
> + * example here, since this is where reservation objects originated from. But
> + * use in drivers is spreading and some drivers also manage struct
> + * drm_gem_object with the same scheme.
>   */
>  struct dma_resv {
> +	/**
> +	 * @lock:
> +	 *
> +	 * Update side lock. Don't use directly, instead use the wrapper
> +	 * functions like dma_resv_lock() and dma_resv_unlock().
> +	 *
> +	 * Drivers which use the reservation object to manage memory dynamically
> +	 * also use this lock to protect buffer object state like placement,
> +	 * allocation policies or throughout command submission.
> +	 */
>  	struct ww_mutex lock;
> +
> +	/**
> +	 * @seq:
> +	 *
> +	 * Sequence count for managing RCU read-side synchronization, allows
> +	 * read-only access to @fence_excl and @fence while ensuring we take a
> +	 * consistent snapshot.
> +	 */
>  	seqcount_ww_mutex_t seq;
>  
> +	/**
> +	 * @fence_excl:
> +	 *
> +	 * The exclusive fence, if there is one currently.
> +	 *
> +	 * There are two ways to update this fence:
> +	 *
> +	 * - First by calling dma_resv_add_excl_fence(), which replaces all
> +	 *   fences attached to the reservation object. To guarantee that no
> +	 *   fences are lost, this new fence must signal only after all previous
> +	 *   fences, both shared and exclusive, have signalled. In some cases it
> +	 *   is convenient to achieve that by attaching a struct dma_fence_array
> +	 *   with all the new and old fences.
> +	 *
> +	 * - Alternatively the fence can be set directly, which leaves the
> +	 *   shared fences unchanged. To guarantee that no fences are lost, this
> +	 *   new fence must signal only after the previous exclusive fence has
> +	 *   signalled. Since the shared fences are staying intact, it is not
> +	 *   necessary to maintain any ordering against those. If semantically
> +	 *   only a new access is added without actually treating the previous
> +	 *   one as a dependency the exclusive fences can be strung together
> +	 *   using struct dma_fence_chain.
> +	 *
> +	 * Note that actual semantics of what an exclusive or shared fence mean
> +	 * is defined by the user, for reservation objects shared across drivers
> +	 * see &dma_buf.resv.
> +	 */
>  	struct dma_fence __rcu *fence_excl;
> +
> +	/**
> +	 * @fence:
> +	 *
> +	 * List of current shared fences.
> +	 *
> +	 * There are no ordering constraints of shared fences against the
> +	 * exclusive fence slot. If a waiter needs to wait for all access, it
> +	 * has to wait for both sets of fences to signal.
> +	 *
> +	 * A new fence is added by calling dma_resv_add_shared_fence(). Since
> +	 * this often needs to be done past the point of no return in command
> +	 * submission it cannot fail, and therefore sufficient slots need to be
> +	 * reserved by calling dma_resv_reserve_shared().
> +	 *
> +	 * Note that actual semantics of what an exclusive or shared fence mean
> +	 * is defined by the user, for reservation objects shared across drivers
> +	 * see &dma_buf.resv.
> +	 */
>  	struct dma_resv_list __rcu *fence;
>  };
>  
> @@ -98,6 +172,13 @@ static inline void dma_resv_reset_shared_max(struct dma_resv *obj) {}
>   * undefined order, a #ww_acquire_ctx is passed to unwind if a cycle
>   * is detected. See ww_mutex_lock() and ww_acquire_init(). A reservation
>   * object may be locked by itself by passing NULL as @ctx.
> + *
> + * When a die situation is indicated by returning -EDEADLK all locks held by
> + * @ctx must be unlocked and then dma_resv_lock_slow() called on @obj.
> + *
> + * Unlocked by calling dma_resv_unlock().
> + *
> + * See also dma_resv_lock_interruptible() for the interruptible variant.
>   */
>  static inline int dma_resv_lock(struct dma_resv *obj,
>  				struct ww_acquire_ctx *ctx)
> @@ -119,6 +200,12 @@ static inline int dma_resv_lock(struct dma_resv *obj,
>   * undefined order, a #ww_acquire_ctx is passed to unwind if a cycle
>   * is detected. See ww_mutex_lock() and ww_acquire_init(). A reservation
>   * object may be locked by itself by passing NULL as @ctx.
> + *
> + * When a die situation is indicated by returning -EDEADLK all locks held by
> + * @ctx must be unlocked and then dma_resv_lock_slow_interruptible() called on
> + * @obj.
> + *
> + * Unlocked by calling dma_resv_unlock().
>   */
>  static inline int dma_resv_lock_interruptible(struct dma_resv *obj,
>  					      struct ww_acquire_ctx *ctx)
> @@ -134,6 +221,8 @@ static inline int dma_resv_lock_interruptible(struct dma_resv *obj,
>   * Acquires the reservation object after a die case. This function
>   * will sleep until the lock becomes available. See dma_resv_lock() as
>   * well.
> + *
> + * See also dma_resv_lock_slow_interruptible() for the interruptible variant.
>   */
>  static inline void dma_resv_lock_slow(struct dma_resv *obj,
>  				      struct ww_acquire_ctx *ctx)
> @@ -167,7 +256,7 @@ static inline int dma_resv_lock_slow_interruptible(struct dma_resv *obj,
>   * if they overlap with a writer.
>   *
>   * Also note that since no context is provided, no deadlock protection is
> - * possible.
> + * possible, which is also not needed for a trylock.
>   *
>   * Returns true if the lock was acquired, false otherwise.
>   */
> @@ -193,6 +282,11 @@ static inline bool dma_resv_is_locked(struct dma_resv *obj)
>   *
>   * Returns the context used to lock a reservation object or NULL if no context
>   * was used or the object is not locked at all.
> + *
> + * WARNING: This interface is pretty horrible, but TTM needs it because it
> + * doesn't pass the struct ww_acquire_ctx around in some very long callchains.
> + * Everyone else just uses it to check whether they're holding a reservation or
> + * not.
>   */
>  static inline struct ww_acquire_ctx *dma_resv_locking_ctx(struct dma_resv *obj)
>  {
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
