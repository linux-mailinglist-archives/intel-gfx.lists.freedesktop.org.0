Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B113E53B5
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 08:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A559F89EB8;
	Tue, 10 Aug 2021 06:43:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6002989EAC
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 06:43:54 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id b13so24790335wrs.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 23:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tQrb84AAvjPylGq2aBgEZZP0TkAH80oJdGXB1AXqCV8=;
 b=NlcoT4APsanlR3Y+feh1S37u7oceXLUyviRpAjIhOJW9P/Idt3DRtuseusoZ8K1IHv
 gsTTAdl6N9yTbb5snOnVVED5GutaVfbDdYW69Om3Kt8DxFctIt50IEE+PVqi3++azQss
 oBa7Bhxbnp2goGSsk1h/okefnqr8Eijh9qohw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tQrb84AAvjPylGq2aBgEZZP0TkAH80oJdGXB1AXqCV8=;
 b=lf6G2fFQzpM+j2xTv+J7j4hBhPeC3+kC3s7bqv7u6O9pc4VEHOzRJsq4CexI/7E1jV
 ZQYNqpde9MSi9cMAdT9nO8Ta/4VXTheBedB0fM8zf/brnlXT07xYTjm/4KF3IptjbPTE
 dmV9ScIZAJvj5uteBYVN7G5i8Z0ItpyVILla49+fBu6Ftiw+aS6BGo9ypIA/p5GQa+c8
 BOd13QDsVPagNSqA5j//7KaijT7y/QvmZkFpSpYjc2H9If6rLCAynEjzoMB/XZotD4ca
 Uj4vpU7Q094KAmt/bMl7XJNA1mLT7GdbCkkpJGUeDIDPQRPOsc9a/ik2FngBbrJHrAWL
 yFmg==
X-Gm-Message-State: AOAM530Ozgl/Mo+TRvCAbRsY9MLhhsmX6bisaZuWORZ7wiCsvnlHTkxI
 ba4Pw5D8ZyV7a1iHBzLzPXSWf4DB7mPqeA==
X-Google-Smtp-Source: ABdhPJzylbU0AJDVt2Fpjlngn3DJ9ffxNo1EXuGPYejPGY7YrTy97/fQl6vYc2br1oBCZlG3I48uyQ==
X-Received: by 2002:adf:ef85:: with SMTP id d5mr28852131wro.372.1628577832896; 
 Mon, 09 Aug 2021 23:43:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g6sm4850072wrm.73.2021.08.09.23.43.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 23:43:52 -0700 (PDT)
Date: Tue, 10 Aug 2021 08:43:50 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <YRIgJidfbYF0fkKU@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-11-matthew.brost@intel.com>
 <YRE6bodEDhb6zj8M@phenom.ffwll.local>
 <20210809181137.GA123494@DUT151-ICLU.fm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210809181137.GA123494@DUT151-ICLU.fm.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/46] drm/i915/guc: Take engine PM when a
 context is pinned with GuC submission
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

On Mon, Aug 09, 2021 at 06:11:37PM +0000, Matthew Brost wrote:
> On Mon, Aug 09, 2021 at 04:23:42PM +0200, Daniel Vetter wrote:
> > On Tue, Aug 03, 2021 at 03:29:07PM -0700, Matthew Brost wrote:
> > > Taking a PM reference to prevent intel_gt_wait_for_idle from short
> > > circuiting while a scheduling of user context could be enabled.
> > > 
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 36 +++++++++++++++++--
> > >  2 files changed, 34 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > > index 903de270f2db..5e3a1e2095b0 100644
> > > --- a/drivers/gpu/drm/i915/Makefile
> > > +++ b/drivers/gpu/drm/i915/Makefile
> > > @@ -103,6 +103,7 @@ gt-y += \
> > >  	gt/intel_gt_clock_utils.o \
> > >  	gt/intel_gt_irq.o \
> > >  	gt/intel_gt_pm.o \
> > > +	gt/intel_gt_pm_unpark_work.o \
> > 
> > This file isn't here?
> > 
> 
> Yep, included this in the wrong patch. Should be in:
> https://patchwork.freedesktop.org/patch/448462/?series=92789&rev=2
> 
> > Also pm stuff tends to have very nasty locking requirements, doing special
> > stuff like this in the backend tends to lead to really big surprises. I
> > think two options to make sure our locking design stays consistent:
> > - Lift this to generic code.
> 
> Not sure I'm following this, intel_engine_pm_get/put are generic calls.
> Those calls should have all the correct annoations. If they don't we can
> add them.

But you only call them in the GuC backend, not in all of them. Which is an
inconsistency in locking, and unfortunately runtime pm is extremely nasty,
so having potentially very divergent locking behind the same interface in
the same driver is a recipe for an unmaintainable mess.

Iow, if the high-level code runs on execlist or the ringbuffer backend we
still need to go through at least the lockdep motions of what you're
adding here.

This is similar in spirit to all the might_sleep/might_lock calls we have
all over the kernel where in many cases something doesn't happen, but we
need to make sure it's allowed to have a consistent design.

So essentially in the intel_context_pin and all these functions put a
intel_engine_pm_might_get (which compiles out without debugging enabled),
unconditionally, across all platforms and sched backends.

In general I think backend specific locking (irrespective of what kind of
backend or interface you implement) is a pretty bad idea in the kernel,
and needs to be avoided if at all possible. Avoid here means "pull the
might_lock/might_sleep/might_whatever checks into generic code".
-Daniel

> Matt
> 
> > - expose some engine_pm_migt_get/put() calls which do have the right set
> >   of might_lock annoations, and call those in the generic code.
> > 
> > Imo the worst kernel abstractions are those where all implementations
> > look&act the same, except for locking. Unfortunately i915-gem code is full
> > of this stuff, and we need to stop this by enlisting lockdep to check the
> > contracts for us.
> > -Daniel
> > 
> > >  	gt/intel_gt_pm_irq.o \
> > >  	gt/intel_gt_requests.o \
> > >  	gt/intel_gtt.o \
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 7fe4d1559a81..c5d9548bfd00 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -2056,7 +2056,12 @@ static int guc_context_pre_pin(struct intel_context *ce,
> > >  
> > >  static int guc_context_pin(struct intel_context *ce, void *vaddr)
> > >  {
> > > -	return __guc_context_pin(ce, ce->engine, vaddr);
> > > +	int ret = __guc_context_pin(ce, ce->engine, vaddr);
> > > +
> > > +	if (likely(!ret && !intel_context_is_barrier(ce)))
> > > +		intel_engine_pm_get(ce->engine);
> > > +
> > > +	return ret;
> > >  }
> > >  
> > >  static void guc_context_unpin(struct intel_context *ce)
> > > @@ -2067,6 +2072,9 @@ static void guc_context_unpin(struct intel_context *ce)
> > >  
> > >  	unpin_guc_id(guc, ce, true);
> > >  	lrc_unpin(ce);
> > > +
> > > +	if (likely(!intel_context_is_barrier(ce)))
> > > +		intel_engine_pm_put(ce->engine);
> > >  }
> > >  
> > >  static void guc_context_post_unpin(struct intel_context *ce)
> > > @@ -3002,8 +3010,30 @@ static int guc_virtual_context_pre_pin(struct intel_context *ce,
> > >  static int guc_virtual_context_pin(struct intel_context *ce, void *vaddr)
> > >  {
> > >  	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> > > +	int ret = __guc_context_pin(ce, engine, vaddr);
> > > +	intel_engine_mask_t tmp, mask = ce->engine->mask;
> > > +
> > > +	if (likely(!ret))
> > > +		for_each_engine_masked(engine, ce->engine->gt, mask, tmp)
> > > +			intel_engine_pm_get(engine);
> > >  
> > > -	return __guc_context_pin(ce, engine, vaddr);
> > > +	return ret;
> > > +}
> > > +
> > > +static void guc_virtual_context_unpin(struct intel_context *ce)
> > > +{
> > > +	intel_engine_mask_t tmp, mask = ce->engine->mask;
> > > +	struct intel_engine_cs *engine;
> > > +	struct intel_guc *guc = ce_to_guc(ce);
> > > +
> > > +	GEM_BUG_ON(context_enabled(ce));
> > > +	GEM_BUG_ON(intel_context_is_barrier(ce));
> > > +
> > > +	unpin_guc_id(guc, ce, true);
> > > +	lrc_unpin(ce);
> > > +
> > > +	for_each_engine_masked(engine, ce->engine->gt, mask, tmp)
> > > +		intel_engine_pm_put(engine);
> > >  }
> > >  
> > >  static void guc_virtual_context_enter(struct intel_context *ce)
> > > @@ -3040,7 +3070,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
> > >  
> > >  	.pre_pin = guc_virtual_context_pre_pin,
> > >  	.pin = guc_virtual_context_pin,
> > > -	.unpin = guc_context_unpin,
> > > +	.unpin = guc_virtual_context_unpin,
> > >  	.post_unpin = guc_context_post_unpin,
> > >  
> > >  	.ban = guc_context_ban,
> > > -- 
> > > 2.28.0
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
