Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3436213F995
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 20:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83FBB6EEAC;
	Thu, 16 Jan 2020 19:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0196EEAC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 19:33:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19907093-1500050 for multiple; Thu, 16 Jan 2020 19:33:08 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200116192809.843138-1-matthew.auld@intel.com>
 <20200116192809.843138-2-matthew.auld@intel.com>
In-Reply-To: <20200116192809.843138-2-matthew.auld@intel.com>
Message-ID: <157920318532.7612.6697205195487564198@skylake-alporthouse-com>
Date: Thu, 16 Jan 2020 19:33:05 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/userptr: fix size calculation
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

Quoting Matthew Auld (2020-01-16 19:28:09)
> If we create a rather large userptr object(e.g 1ULL << 32) we might
> shift past the type-width of num_pages: (int)num_pages << PAGE_SHIFT,
> resulting in a totally bogus sg_table, which fortunately will eventually
> manifest as:
> 
> gen8_ppgtt_insert_huge:463 GEM_BUG_ON(iter->sg->length < page_size)
> kernel BUG at drivers/gpu/drm/i915/gt/gen8_ppgtt.c:463!
> 
> Fixes: 5cc9ed4b9a7a ("drm/i915: Introduce mapping of user pages into video memory (userptr) ioctl")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_userptr.c | 3 ++-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c        | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> index fef96a303d9d..81fa53495c9d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_userptr.c
> @@ -405,6 +405,7 @@ static struct sg_table *
>  __i915_gem_userptr_alloc_pages(struct drm_i915_gem_object *obj,
>                                struct page **pvec, int num_pages)

Well that answers that question. Why not use unsigned long?

That's what the comment is all about, fixing the code! Not continuing to
bodge it.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
