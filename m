Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D11903190C3
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 18:17:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301276E117;
	Thu, 11 Feb 2021 17:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF0A96E117
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 17:17:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23841303-1500050 for multiple; Thu, 11 Feb 2021 17:17:48 +0000
MIME-Version: 1.0
In-Reply-To: <1b471fa1-8982-5d1e-3635-715b5b957b94@intel.com>
References: <20210210233946.7602-1-chris@chris-wilson.co.uk>
 <312a3a6b-be50-612f-b903-c71fae6261f8@intel.com>
 <161305679241.7731.6662161186383322237@build.alporthouse.com>
 <1b471fa1-8982-5d1e-3635-715b5b957b94@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 17:17:46 +0000
Message-ID: <161306386698.7731.10780058024859135868@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine VT-d scanout workaround
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

Quoting Matthew Auld (2021-02-11 17:00:20)
> Throwing some color_adjust at it might be another option to consider. 
> Maybe something like:
> 
> +static void i915_ggtt_color_adjust_vdt(const struct drm_mm_node *node,
> +                                      unsigned long color,
> +                                      u64 *start,
> +                                      u64 *end)
> +{
> +       if (color == COLOR_VDT) {
> +               *start += VDT_PADDING;
> +               *end -= VDT_PADDING;
> +               return;
> +       }
> +
> +       if (node->allocated && node->color == COLOR_VDT)
> +               *start += VDT_PADDING;
> +
> +       node = list_next_entry(node, node_list);
> +       if (node->allocated && node->color == COLOR_VDT)
> +               *end -= VDT_PADDING;
> +}
> 
> But not sure if I would call that simpler. Plus we need to add more 
> special casing in the eviction code. And I guess the cache coloring 
> might also be active here, which might be nasty. Also we end up with a 
> bunch of holes in the address space that are unusable, yet the mm search 
> will keep hitting them anyway. Ok, I guess that's what you meant with 
> not introducing "extra nodes". Hmmm.

I considered trying to use coloring, but the problem I found was in
knowing whether or not to fill outside of the vma with scratch pages. We
would have to lookup each PTE to check it is not in use, then fill with
scratch. And if we removed a neighbour, it would have to check to see if
it should replace the guard pages. (And it's more complicated by the
wrap-around of the VT-d, an object at beginning of the GGTT would
overfetch into the pages at the other end of the GGTT.)

I felt that make an explicit reservation and accounting the VT-d
overfetch to the scanout vma would save a lot of hassle. The PTE are
accounted for (will not be reused, and safe to clear after resume),
dedicated as scratch for the overfetch and the overfetch cannot wrap
around as we force the vma to be away from the edges.

Packing the information into the single scanout i915_vma so that we do a
single padded i915_vma_insert seemed to be much easier to manage than
having to do additional i915_vma_inserts on either side (and so we have
to somehow manage searching for enough space for all 3 in the first call
etc). Plus i915_vma is already massive :|
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
