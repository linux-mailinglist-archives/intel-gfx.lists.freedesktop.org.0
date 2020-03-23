Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C60E18F57E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:17:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F2E6E043;
	Mon, 23 Mar 2020 13:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BADD56E043
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:17:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20660823-1500050 for multiple; Mon, 23 Mar 2020 13:17:06 +0000
MIME-Version: 1.0
In-Reply-To: <20200323130821.47914-1-matthew.auld@intel.com>
References: <20200323130821.47914-1-matthew.auld@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158496942642.17851.15395283043398460951@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 13:17:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: mark huge_gem_object as
 not shrinkable
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

Quoting Matthew Auld (2020-03-23 13:08:21)
> It looks like the callers expect a non-volatile object, but it looks the
> shrinker will discard the object pages anyway, thinking that the pages
> can be swapped out if the object is marked as WILLNEED. If that's true
> then it might be better to mark it as volatile and fix the callers
> instead, but on the other hand huge_gem_objects are fairly unique in
> that they duplicate pages for the backing store, so maybe shrinking is
> not that applicable.

Duplication of backing store is irrelevant for the shrinker -- it just
deals with trying to make room by releasing objects. If we release the
entire object, all duplicate references are released and the pages
become recoverable.

Now as to whether the callers were expecting the object to be volatile
(for the backing pages to be discarded on swapping) is another question.
The answer would be that originally it was used with perma-pinned pages,
so it was never a problem. But looking at the users, they do *not*
expect to lose data on swapping.

So we need to fix the huge object to not gleefully throw away data,
which also means that we cannot shrink it (as there is no backing
storage to copy the pages to).

So both making the pages as DONTNEED and IS_SHRINKABLE are technically
incorrect.

> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> index fa16f2c3f3ac..2b46c6530da9 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_gem_object.c
> @@ -88,8 +88,7 @@ static void huge_put_pages(struct drm_i915_gem_object *obj,
>  }
>  
>  static const struct drm_i915_gem_object_ops huge_ops = {
> -       .flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE |
> -                I915_GEM_OBJECT_IS_SHRINKABLE,
> +       .flags = I915_GEM_OBJECT_HAS_STRUCT_PAGE,

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

but I think the changelog can be clarified and we either include the
DONTNEED fixes or follow up.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
