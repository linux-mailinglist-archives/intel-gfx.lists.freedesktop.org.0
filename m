Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2677A4152EB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 23:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB6E96E04A;
	Wed, 22 Sep 2021 21:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1706E048;
 Wed, 22 Sep 2021 21:37:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10115"; a="284719255"
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="284719255"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:37:26 -0700
X-IronPort-AV: E=Sophos;i="5.85,315,1624345200"; d="scan'208";a="518742573"
Received: from shanshug-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.133.169])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2021 14:37:26 -0700
Date: Wed, 22 Sep 2021 14:37:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210922213723.amlkgi6qpvvxid3t@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210921174332.30784-1-matthew.brost@intel.com>
 <20210921184637.ullcwswqd6z5hi4j@ldmartin-desk2>
 <20210921225514.GA8109@jons-linux-dev-box>
 <20210921232931.5j4h4l7tmfp7mjzj@ldmartin-desk2>
 <20210922014041.GA13907@jons-linux-dev-box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210922014041.GA13907@jons-linux-dev-box>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix blank screen booting crashes
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

On Tue, Sep 21, 2021 at 06:40:41PM -0700, Matthew Brost wrote:
>On Tue, Sep 21, 2021 at 04:29:31PM -0700, Lucas De Marchi wrote:
>> On Tue, Sep 21, 2021 at 03:55:15PM -0700, Matthew Brost wrote:
>> > On Tue, Sep 21, 2021 at 11:46:37AM -0700, Lucas De Marchi wrote:
>> > > On Tue, Sep 21, 2021 at 10:43:32AM -0700, Matthew Brost wrote:
>> > > > From: Hugh Dickins <hughd@google.com>
>> > > >
>> > > > 5.15-rc1 crashes with blank screen when booting up on two ThinkPads
>> > > > using i915.  Bisections converge convincingly, but arrive at different
>> > > > and surprising "culprits", none of them the actual culprit.
>> > > >
>> > > > netconsole (with init_netconsole() hacked to call i915_init() when
>> > > > logging has started, instead of by module_init()) tells the story:
>> > > >
>> > > > kernel BUG at drivers/gpu/drm/i915/i915_sw_fence.c:245!
>> > > > with RSI: ffffffff814d408b pointing to sw_fence_dummy_notify().
>> > > > I've been building with CONFIG_CC_OPTIMIZE_FOR_SIZE=y, and that
>> > > > function needs to be 4-byte aligned.
>> > > >
>> > > > v2:
>> > > > (Jani Nikula)
>> > > >  - Change BUG_ON to WARN_ON
>> > > > v3:
>> > > > (Jani / Tvrtko)
>> > > >  - Short circuit __i915_sw_fence_init on WARN_ON
>> > > >
>> > > > Fixes: 62eaf0ae217d ("drm/i915/guc: Support request cancellation")
>> > > > Signed-off-by: Hugh Dickins <hughd@google.com>
>> > > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
>> > > > Reviewed-by: Matthew Brost <matthew.brost@intel.com>
>> > > > ---
>> > > > drivers/gpu/drm/i915/gt/intel_context.c |  4 ++--
>> > > > drivers/gpu/drm/i915/i915_sw_fence.c    | 17 ++++++++++-------
>> > > > 2 files changed, 12 insertions(+), 9 deletions(-)
>> > > >
>> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> > > > index ff637147b1a9..e7f78bc7ebfc 100644
>> > > > --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> > > > +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> > > > @@ -362,8 +362,8 @@ static int __intel_context_active(struct i915_active *active)
>> > > > 	return 0;
>> > > > }
>> > > >
>> > >
>> > > > -static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
>> > > > -				 enum i915_sw_fence_notify state)
>> > > > +static int __i915_sw_fence_call
>> > > > +sw_fence_dummy_notify(struct i915_sw_fence *sf, enum i915_sw_fence_notify state)
>> > > > {
>> > > > 	return NOTIFY_DONE;
>> > > > }
>> > > > diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
>> > > > index c589a681da77..08cea73264e7 100644
>> > > > --- a/drivers/gpu/drm/i915/i915_sw_fence.c
>> > > > +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
>> > > > @@ -13,9 +13,9 @@
>> > > > #include "i915_selftest.h"
>> > > >
>> > > > #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>> > > > -#define I915_SW_FENCE_BUG_ON(expr) BUG_ON(expr)
>> > > > +#define I915_SW_FENCE_WARN_ON(expr) WARN_ON(expr)
>> > > > #else
>> > > > -#define I915_SW_FENCE_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>> > > > +#define I915_SW_FENCE_WARN_ON(expr) BUILD_BUG_ON_INVALID(expr)
>> > > > #endif
>> > > >
>> > > > static DEFINE_SPINLOCK(i915_sw_fence_lock);
>> > > > @@ -129,7 +129,10 @@ static int __i915_sw_fence_notify(struct i915_sw_fence *fence,
>> > > > 	i915_sw_fence_notify_t fn;
>> > > >
>> > > > 	fn = (i915_sw_fence_notify_t)(fence->flags & I915_SW_FENCE_MASK);
>> > > > -	return fn(fence, state);
>> > > > +	if (likely(fn))
>> > > > +		return fn(fence, state);
>> > > > +	else
>> > > > +		return 0;
>> > >
>> > > since the knowledge for these being NULL (or with the wrong alignment)
>> > > are in the init/reinit functions,  wouldn't it be better to just add a
>> > > fence_nop() and assign it there instead this likely() here?
>> > >
>> >
>> > Maybe? I prefer the way it is.
>> >
>> > > > }
>> > > >
>> > > > #ifdef CONFIG_DRM_I915_SW_FENCE_DEBUG_OBJECTS
>> > > > @@ -242,9 +245,9 @@ void __i915_sw_fence_init(struct i915_sw_fence *fence,
>> > > > 			  const char *name,
>> > > > 			  struct lock_class_key *key)
>> > > > {
>> > > > -	BUG_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK);
>> > > > -
>> > > > 	__init_waitqueue_head(&fence->wait, name, key);
>> > > > +	if (WARN_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK))
>> > > > +		return;
>> > >
>> > > like:
>> > > 	if (WARN_ON(!fn || (unsigned long)fn & ~I915_SW_FENCE_MASK))
>> > > 		fence->flags = (unsigned long)sw_fence_dummy_notify;
>> > > 	else
>> > > 		fence->flags = (unsigned long)fn;
>> > >
>> > >
>> > > f you return here instead of calling i915_sw_fence_reinit(), aren't you
>> > > just going to use uninitialized memory later? At least in the selftests,
>> > > which allocate it with kmalloc()... I didn't check others.
>> > >
>> >
>> > I don't think so, maybe the fence won't work but it won't blow up
>> > either.
>> >
>> > >
>> > > For the bug fix we could just add the __aligned(4) and leave the rest to a
>> > > separate patch.
>> > >
>> >
>> > The bug was sw_fence_dummy_notify in gt/intel_context.c was not 4 byte
>> > align which triggered a BUG_ON during boot which blank screened a
>> > laptop. Jani / Tvrtko suggested that we make the BUG_ON to WARN_ONs so
>> > if someone makes this mistake in the future kernel should boot albiet
>> > with a WARNING.
>>
>> yes, I understood. But afaics with WARN_ON you are allowing it to
>> continue and may be using uninitialized memory later, just causing other
>> problems down the line, which may be equally difficult to debug.
>>
>> what I suggested is that there is the easy fix to apply to the current
>> rcX kernel, adding __aligned(4) to sw_fence_dummy_notify() (patch 1).
>> And there is the additional protection being added here (patch 2) which
>> is subject to the debate.
>>
>
>Got it. Will post as 2 different patches.
>
>> >
>> > The long term fix is just pull out the I915_SW_FENCE_MASK (stealing bits
>> > from a poitner) and we don't have to worry any of this.
>>
>> Patch 2 may not even be needed if you're going that route. But we are
>> not only protecting against unaligned, but also from code calling
>> i915_sw_fence_init() with a NULL fn.
>>
>
>Maybe, I'll just do the proper fix in patch #2 right away.

makes sense. Thanks

Lucas De Marchi
