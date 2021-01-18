Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 967CF2FA540
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 16:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9605689F75;
	Mon, 18 Jan 2021 15:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5134589F75
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 15:55:59 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id z6so4480918qtn.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 07:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PWdFhQRVZYz1ie/2Sv+lnrBsaOSGiKQgIMZl8Y0jJLM=;
 b=WGLRTev6dyKlJhPmgoSGQziqHBenGdTMt17wuDXLEOnyLMNvhxi9ipClXFO6DSdHxj
 MZqDQP+plpTy+L3z7A/DbjKqdTSGJZsIDdvzNm9YzPcrXsmGcd6Aj5rygZdtIQF1rDj7
 9IiDVo6KHwkiUqdRB+lVUp+FJDrNxUS6MwW7GcYw+NxPZVb1jBWhd1AIDO/2GiQN6yYS
 loBTpeU768EpyS80OWn/FvmZzrfJ1zbFCJVFwPZKd1M8Dd0lmepYS/SPXRJ3vPnO4yA8
 aGH6c2gGVajf33SsrY8Gbbx5ax7raUCmF7KXEvQkZLs0QAp+IDcdTvV95FyYLpyrshcA
 oMCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PWdFhQRVZYz1ie/2Sv+lnrBsaOSGiKQgIMZl8Y0jJLM=;
 b=VQMbyLHDYbrSuTmoRWRrK+VJ7bEqOMWaZ77S6Y4rOKtiW9nq3rObmQMt00cKoW6tvX
 3MOLMflqExMU11IC9Xl6dZpyb89GvihQQVjhJDXO+YZD8I5W+hpgppGeWGWgsUljbafT
 Uhg75gg/VTNQ1XVGeYCxe2MSWqa4pABO+XDdpwKTIiDcQ/6mAhyhDgsPw7f9BemkFP1a
 UizQ0lEnTVynKPTo2706KiZq35SmPjr+Kd44JnoT89R6IGltj2oFzryBZR7IDHL23K4T
 muOLEi2eOOFUe5PXs4QVHW2bZtP5fY/r4gYKKxeYRp+ifZMPcfxOKdZnDAex5vsrHP4r
 ASPg==
X-Gm-Message-State: AOAM530tGS576pCLoj4xApMibGPnc+xiMh2JnhBxECU/v7ykUw334EuF
 thuna4cmc2iLQH4meistdBPVwt/5K9ss4ccslAg=
X-Google-Smtp-Source: ABdhPJzcW/U3M1855B5TJC8Za3WN7CCXaNPFPnaMiQ6M/lHO1eoWZjedw4bGt2+REr2t2XFkE7pBfvR2QXV3w+vDgxA=
X-Received: by 2002:ac8:65d1:: with SMTP id t17mr229025qto.95.1610985358376;
 Mon, 18 Jan 2021 07:55:58 -0800 (PST)
MIME-Version: 1.0
References: <20210118141732.90173-1-matthew.auld@intel.com>
 <20210118141732.90173-2-matthew.auld@intel.com>
 <161098167206.301.604373583078584678@build.alporthouse.com>
In-Reply-To: <161098167206.301.604373583078584678@build.alporthouse.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 18 Jan 2021 15:55:31 +0000
Message-ID: <CAM0jSHOiBDAPT-szRYw0xTYTV2YF96BKsR3ep1Vs=B-3Ry1uUw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: prefer FORCE_WC for the
 blitter routines
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Jan 2021 at 14:54, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Matthew Auld (2021-01-18 14:17:31)
> > From: CQ Tang <cq.tang@intel.com>
> >
> > The pool is shared and so we might find that there is a pool object with
> > an existing mapping, but is mapped with different underlying type, which
> > will result in -EBUSY.
> >
> > Signed-off-by: CQ Tang <cq.tang@intel.com>
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_object_blt.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> > index 10cac9fac79b..c6db745900b3 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> > @@ -55,7 +55,7 @@ struct i915_vma *intel_emit_vma_fill_blt(struct intel_context *ce,
> >         if (unlikely(err))
> >                 goto out_put;
> >
> > -       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
> > +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> >         if (IS_ERR(cmd)) {
> >                 err = PTR_ERR(cmd);
> >                 goto out_unpin;
> > @@ -277,7 +277,7 @@ struct i915_vma *intel_emit_vma_copy_blt(struct intel_context *ce,
> >         if (unlikely(err))
> >                 goto out_put;
> >
> > -       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_WC);
> > +       cmd = i915_gem_object_pin_map(pool->obj, I915_MAP_FORCE_WC);
> >         if (IS_ERR(cmd)) {
> >                 err = PTR_ERR(cmd);
> >                 goto out_unpin;
>
> FORCE is becoming meaningless.
>
> In this case we pin the pages upon acquiring from the pool, which then
> prevents us from changing the mapping type. The purpose of which was so
> that we could cache the mapping between users, and here we are saying
> that cache is made useless. The danger is that we are now thrashing the
> cache, hurting ourselves with the vmap overhead.
>
> Maybe we should move the mapping-type into the buffer-pool cache itself?

Yeah, makes sense I think. Maybe something simple like:

--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
@@ -145,7 +145,8 @@ static void pool_retire(struct i915_active *ref)
 }

 static struct intel_gt_buffer_pool_node *
-node_create(struct intel_gt_buffer_pool *pool, size_t sz)
+node_create(struct intel_gt_buffer_pool *pool, size_t sz,
+           enum i915_map_type type)
 {
        struct intel_gt *gt = to_gt(pool);
        struct intel_gt_buffer_pool_node *node;
@@ -169,12 +170,14 @@ node_create(struct intel_gt_buffer_pool *pool, size_t sz)

        i915_gem_object_set_readonly(obj);

+       node->type = type;
        node->obj = obj;
        return node;
 }

 struct intel_gt_buffer_pool_node *
-intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
+intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size,
+                        enum i915_map_type type)
 {
        struct intel_gt_buffer_pool *pool = &gt->buffer_pool;
        struct intel_gt_buffer_pool_node *node;
@@ -191,6 +194,9 @@ intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
                if (node->obj->base.size < size)
                        continue;

+               if (node->type != type)
+                       continue;
+
                age = READ_ONCE(node->age);
                if (!age)
                        continue;
@@ -205,7 +211,7 @@ intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size)
        rcu_read_unlock();

        if (&node->link == list) {
-               node = node_create(pool, size);
+               node = node_create(pool, size, type);
                if (IS_ERR(node))
                        return node;
        }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
index 42cbac003e8a..6068f8f1762e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.h
@@ -15,7 +15,8 @@ struct intel_gt;
 struct i915_request;

 struct intel_gt_buffer_pool_node *
-intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size);
+intel_gt_get_buffer_pool(struct intel_gt *gt, size_t size,
+                        enum i915_map_type type);

 static inline int
 intel_gt_buffer_pool_mark_active(struct intel_gt_buffer_pool_node *node,
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
index bcf1658c9633..e8f7dba36b76 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool_types.h
@@ -31,6 +31,7 @@ struct intel_gt_buffer_pool_node {
                struct rcu_head rcu;
        };
        unsigned long age;
+       enum i915_map_type type;
 };

Or maybe it should be split over multiple lists or something, one for each type?

> -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
