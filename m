Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B5018F66E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:56:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD56C89CB9;
	Mon, 23 Mar 2020 13:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7D2789CB9
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 13:56:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20661324-1500050 for multiple; Mon, 23 Mar 2020 13:56:47 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHM9gThEKh21vzswvLfb3rMbqWaVzu90WVimBza5KvPq+A@mail.gmail.com>
References: <20200323130821.47914-1-matthew.auld@intel.com>
 <158496942642.17851.15395283043398460951@build.alporthouse.com>
 <CAM0jSHM9gThEKh21vzswvLfb3rMbqWaVzu90WVimBza5KvPq+A@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <158497180783.13839.15800830248775752301@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 23 Mar 2020 13:56:47 +0000
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-03-23 13:53:13)
> On Mon, 23 Mar 2020 at 13:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Matthew Auld (2020-03-23 13:08:21)
> > > It looks like the callers expect a non-volatile object, but it looks the
> > > shrinker will discard the object pages anyway, thinking that the pages
> > > can be swapped out if the object is marked as WILLNEED. If that's true
> > > then it might be better to mark it as volatile and fix the callers
> > > instead, but on the other hand huge_gem_objects are fairly unique in
> > > that they duplicate pages for the backing store, so maybe shrinking is
> > > not that applicable.
> >
> > Duplication of backing store is irrelevant for the shrinker -- it just
> > deals with trying to make room by releasing objects. If we release the
> > entire object, all duplicate references are released and the pages
> > become recoverable.
> 
> Ok. My rough thinking was that the shrinker page accounting(i.e what
> we return) is currently based on obj->base.size, which might be pure
> lies for huge_gem_object.
> 
> >
> > Now as to whether the callers were expecting the object to be volatile
> > (for the backing pages to be discarded on swapping) is another question.
> > The answer would be that originally it was used with perma-pinned pages,
> > so it was never a problem. But looking at the users, they do *not*
> > expect to lose data on swapping.
> >
> > So we need to fix the huge object to not gleefully throw away data,
> > which also means that we cannot shrink it (as there is no backing
> > storage to copy the pages to).
> >
> > So both making the pages as DONTNEED and IS_SHRINKABLE are technically
> > incorrect.
> 
> Do you mean WILLNEED and IS_SHRINKABLE, if object doesn't also support
> swapping? DONTNEED and IS_SHRINKABLE is correct for volatile objects.
> 
> GEM_BUG_ON(is_shrinkable(obj) && !is_swappable(obj) && obj->mm.madv ==
> WILLNEED);

For the moment, we can just drop IS_SHRINKABLE here. But there is room
for a huge object that can take part in shrinker ops by being volatile.

But for the moment there's no pressing need, so we can defer the API
problem. (I'm thinking we'll need to expose i915_gem_object_madvise.)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
