Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488B62208A8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 11:25:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61A9A6EA73;
	Wed, 15 Jul 2020 09:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com
 [IPv6:2607:f8b0:4864:20::d42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 158406EA74
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 09:25:38 +0000 (UTC)
Received: by mail-io1-xd42.google.com with SMTP id d18so1531590ion.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 02:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=basnieuwenhuizen-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9N7c3+4EQk3t5aJo24n0tWMhb0k3+hCHNbts8Wc4kH0=;
 b=mhyhQ8I2n37F811M1V4iNzwmDT/ZIXhPaECiizLHt9E7PByM8jEtxcVI4b/7fJ/y1A
 lOqPCp514XQVnqCrIJa19H0UvtUWef3bJYNY1kK8ew1K0/P+orsaA7AyvkRqG2SqgLw8
 H1UvIr5hE80/j5CV0u6kdanne15VBPETMkj0zt51KETnP1v9pW7nf/oqgXlkzMjeZUjE
 tIqMjA1bWyN3QXCD8w3nFrRNfx27cWtTi56bWAML0hc7mFgFNuUJqoKhl9mqgCxDOP+3
 3x7uqV8ESRWlKeXeFN0jWeIsmNH3bWnlNaayC2y88istBTrWW+nHpci2OrXRiLKRoux8
 Q7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9N7c3+4EQk3t5aJo24n0tWMhb0k3+hCHNbts8Wc4kH0=;
 b=csgDwhI7ebwuWA/llasd00dU8bVA0hzxAGb42FZ6qWY5U8unlAMbYRH61Sdu3dGTd3
 z7uedGORhBWS9arSaG+AUVstAjVaggEbrhMGmb9UZ1vXR2hi2l3bLEiOqRzemh/GFFAH
 rBLvhvXON5WvErevjFNZLwbOQZT1xCbE9q6nnocd/TtYkthDIMAL658XNC3198T1Oc+p
 kcvAtLccInft6Djr/XvwPiwIhIBZ9BzAh6zXXF1H59elFTftQ8y61tE+IhW4/16BG1EI
 9/IvCturvRSYVxnPmoDjXhjqFWIpIxLir/0T52DmDkRgroDSdHGJ7RdDBoZyqiBg5i+P
 ll9Q==
X-Gm-Message-State: AOAM530PV7v94tHG2fTGLvrma5i+Tb8j3/fKkAI3LYJrQLOrWUfsbB1t
 jCPTa0yhdpl3fvC6JbEeJ6AoZuxJ8eowryX/2gbCAw==
X-Google-Smtp-Source: ABdhPJwBl9zsKV4KNXWrB3LhCWqKIMHjdNQ079HGjNYW+qL0IfMxl2dzUPze1vIRS2/sKwesfcxOoJnlEuOkS4nPbcw=
X-Received: by 2002:a02:b899:: with SMTP id p25mr11082692jam.115.1594805137188; 
 Wed, 15 Jul 2020 02:25:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200714212401.15825-1-chris@chris-wilson.co.uk>
 <20200714212401.15825-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200714212401.15825-3-chris@chris-wilson.co.uk>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Wed, 15 Jul 2020 11:25:25 +0200
Message-ID: <CAP+8YyFEhM-cs00OD2LCNoLB8ypOabvCHxvi-0ghUE29Y+LUAA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v2 2/3] dma-buf/sw_sync: Separate
 signal/timeline locks
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
Cc: intel-gfx@lists.freedesktop.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Still Reviewed-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>

On Tue, Jul 14, 2020 at 11:24 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we decouple the sync_pt from the timeline tree upon release, in
> order to allow releasing the sync_pt from a signal callback we need to
> separate the sync_pt signaling lock from the timeline tree lock.
>
> v2: Mark up the unlocked read of the current timeline value.
> v3: Store a timeline pointer in the sync_pt as we cannot use the common
> fence->lock trick to find our parent anymore.
>
> Suggested-by: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
> ---
>  drivers/dma-buf/sw_sync.c    | 40 +++++++++++++++++++++---------------
>  drivers/dma-buf/sync_debug.c |  2 +-
>  drivers/dma-buf/sync_debug.h | 13 +++++++-----
>  3 files changed, 32 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/dma-buf/sw_sync.c b/drivers/dma-buf/sw_sync.c
> index 807c82148062..17a5c1a3b7ce 100644
> --- a/drivers/dma-buf/sw_sync.c
> +++ b/drivers/dma-buf/sw_sync.c
> @@ -123,33 +123,39 @@ static const char *timeline_fence_get_driver_name(struct dma_fence *fence)
>
>  static const char *timeline_fence_get_timeline_name(struct dma_fence *fence)
>  {
> -       struct sync_timeline *parent = dma_fence_parent(fence);
> -
> -       return parent->name;
> +       return sync_timeline(fence)->name;
>  }
>
>  static void timeline_fence_release(struct dma_fence *fence)
>  {
>         struct sync_pt *pt = dma_fence_to_sync_pt(fence);
> -       struct sync_timeline *parent = dma_fence_parent(fence);
> -       unsigned long flags;
> +       struct sync_timeline *parent = pt->timeline;
>
> -       spin_lock_irqsave(fence->lock, flags);
>         if (!list_empty(&pt->link)) {
> -               list_del(&pt->link);
> -               rb_erase(&pt->node, &parent->pt_tree);
> +               unsigned long flags;
> +
> +               spin_lock_irqsave(&parent->lock, flags);
> +               if (!list_empty(&pt->link)) {
> +                       list_del(&pt->link);
> +                       rb_erase(&pt->node, &parent->pt_tree);
> +               }
> +               spin_unlock_irqrestore(&parent->lock, flags);
>         }
> -       spin_unlock_irqrestore(fence->lock, flags);
>
>         sync_timeline_put(parent);
>         dma_fence_free(fence);
>  }
>
> -static bool timeline_fence_signaled(struct dma_fence *fence)
> +static int timeline_value(struct dma_fence *fence)
>  {
> -       struct sync_timeline *parent = dma_fence_parent(fence);
> +       return READ_ONCE(sync_timeline(fence)->value);
> +}
>
> -       return !__dma_fence_is_later(fence->seqno, parent->value, fence->ops);
> +static bool timeline_fence_signaled(struct dma_fence *fence)
> +{
> +       return !__dma_fence_is_later(fence->seqno,
> +                                    timeline_value(fence),
> +                                    fence->ops);
>  }
>
>  static bool timeline_fence_enable_signaling(struct dma_fence *fence)
> @@ -166,9 +172,7 @@ static void timeline_fence_value_str(struct dma_fence *fence,
>  static void timeline_fence_timeline_value_str(struct dma_fence *fence,
>                                              char *str, int size)
>  {
> -       struct sync_timeline *parent = dma_fence_parent(fence);
> -
> -       snprintf(str, size, "%d", parent->value);
> +       snprintf(str, size, "%d", timeline_value(fence));
>  }
>
>  static const struct dma_fence_ops timeline_fence_ops = {
> @@ -252,12 +256,14 @@ static struct sync_pt *sync_pt_create(struct sync_timeline *obj,
>                 return NULL;
>
>         sync_timeline_get(obj);
> -       dma_fence_init(&pt->base, &timeline_fence_ops, &obj->lock,
> +       spin_lock_init(&pt->lock);
> +       dma_fence_init(&pt->base, &timeline_fence_ops, &pt->lock,
>                        obj->context, value);
>         INIT_LIST_HEAD(&pt->link);
> +       pt->timeline = obj;
>
>         spin_lock_irq(&obj->lock);
> -       if (!dma_fence_is_signaled_locked(&pt->base)) {
> +       if (!dma_fence_is_signaled(&pt->base)) {
>                 struct rb_node **p = &obj->pt_tree.rb_node;
>                 struct rb_node *parent = NULL;
>
> diff --git a/drivers/dma-buf/sync_debug.c b/drivers/dma-buf/sync_debug.c
> index 101394f16930..2188ee17e889 100644
> --- a/drivers/dma-buf/sync_debug.c
> +++ b/drivers/dma-buf/sync_debug.c
> @@ -65,7 +65,7 @@ static const char *sync_status_str(int status)
>  static void sync_print_fence(struct seq_file *s,
>                              struct dma_fence *fence, bool show)
>  {
> -       struct sync_timeline *parent = dma_fence_parent(fence);
> +       struct sync_timeline *parent = sync_timeline(fence);
>         int status;
>
>         status = dma_fence_get_status_locked(fence);
> diff --git a/drivers/dma-buf/sync_debug.h b/drivers/dma-buf/sync_debug.h
> index 6176e52ba2d7..56589dae2159 100644
> --- a/drivers/dma-buf/sync_debug.h
> +++ b/drivers/dma-buf/sync_debug.h
> @@ -45,23 +45,26 @@ struct sync_timeline {
>         struct list_head        sync_timeline_list;
>  };
>
> -static inline struct sync_timeline *dma_fence_parent(struct dma_fence *fence)
> -{
> -       return container_of(fence->lock, struct sync_timeline, lock);
> -}
> -
>  /**
>   * struct sync_pt - sync_pt object
>   * @base: base fence object
>   * @link: link on the sync timeline's list
>   * @node: node in the sync timeline's tree
> + * @lock: fence signaling lock
>   */
>  struct sync_pt {
>         struct dma_fence base;
> +       struct sync_timeline *timeline;
>         struct list_head link;
>         struct rb_node node;
> +       spinlock_t lock;
>  };
>
> +static inline struct sync_timeline *sync_timeline(struct dma_fence *fence)
> +{
> +       return container_of(fence, struct sync_pt, base)->timeline;
> +}
> +
>  extern const struct file_operations sw_sync_debugfs_fops;
>
>  void sync_timeline_debug_add(struct sync_timeline *obj);
> --
> 2.20.1
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
