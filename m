Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA72FBD1C
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 18:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FE66E2D7;
	Tue, 19 Jan 2021 17:02:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521856E2D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 17:02:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23641623-1500050 for multiple; Tue, 19 Jan 2021 17:02:35 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHO_bTSEJgkEAzw2_a3=OYvi1tJKQ3Vew9RrJbCZkfUTyQ@mail.gmail.com>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-6-chris@chris-wilson.co.uk>
 <CAM0jSHO_bTSEJgkEAzw2_a3=OYvi1tJKQ3Vew9RrJbCZkfUTyQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 17:02:34 +0000
Message-ID: <161107575499.7548.13117018595783582424@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gem: Drop lru bumping on
 display unpinning
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2021-01-19 16:38:04)
> On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Simplify the frontbuffer unpin by removing the lock requirement. The LRU
> > bumping was primarily to protect the GTT from being evicted and from
> > frontbuffers being eagerly shrunk. Now we protect frontbuffers from the
> > shrinker, and we avoid accidentally evicting from the GTT, so the
> > benefit from bumping LRU is no more, and we can save more time by not.
> 
> For the GTT evict case, where/how do we currently try to prevent
> accidental eviction for fb?

Our preference is to try with NOEVICT, and then use smaller partial
mappings, reducing the risk of evicting anything that may be reused in
the near future. The goal is to really only use the full GTT mapping for
when HW needs access to the whole object.

However, we could apply the same rule as we do for the shrinker as leave
frontbuffer objects until the second pass. Such as

--- a/drivers/gpu/drm/i915/i915_gem_evict.c
+++ b/drivers/gpu/drm/i915/i915_gem_evict.c
@@ -61,6 +61,19 @@ mark_free(struct drm_mm_scan *scan,
        return drm_mm_scan_add_block(scan, &vma->node);
 }

+static bool skip_vma(struct i915_vma *vma)
+{
+       if (i915_vma_is_active(vma))
+               return true;
+
+       if (i915_is_ggtt(vma) &&
+           vma->obj &&
+           i915_gem_object_is_framebuffer(vma->obj))
+               return true;
+
+       return false;
+}
+
 /**
  * i915_gem_evict_something - Evict vmas to make room for binding a new one
  * @vm: address space to evict from
@@ -150,7 +163,7 @@ i915_gem_evict_something(struct i915_address_space *vm,
                 * To notice when we complete one full cycle, we record the
                 * first active element seen, before moving it to the tail.
                 */
-               if (active != ERR_PTR(-EAGAIN) && i915_vma_is_active(vma)) {
+               if (active != ERR_PTR(-EAGAIN) && skip_vma(vma)) {
                        if (!active)
                                active = vma;

That would be better if we mark the vma as being used by display.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
