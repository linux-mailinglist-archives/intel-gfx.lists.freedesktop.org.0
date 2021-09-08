Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C19B403F1E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 20:31:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B726E255;
	Wed,  8 Sep 2021 18:31:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 368C76E255
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 18:30:59 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id g22so4141706edy.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Sep 2021 11:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=/Qn6ettxHUUoxqY83dg+ur8SjU1z9HvqkiJi94oBfho=;
 b=WxFpfRLNjaZpO/2CuP+mTre5GuaHvTQMhYzbjqTPagPHEXTcvsj6iG8jwEamgYQPxV
 3lqRjPv3oQ0OYD4pgcWC3IuoV7ySuoUq2b8K5MVqTNIc55GfKCotJatBofjrVUln5ecO
 XrQBt7fQKm4DXqtYcbTWdzcbVtTFV2kYPG458=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=/Qn6ettxHUUoxqY83dg+ur8SjU1z9HvqkiJi94oBfho=;
 b=NCK7QgNcfRnhb0nF6XFlcr0dlU18Wa+BgGpH9pBDmlhnFOAQNhEeP04MHcRh1qHZVo
 StnmG3O+7CfggNE3ABAcV5uEw8LfHAuxIWypx52WLfHOGe1u0j4VF0UlOF4HzFuUTzgI
 Adk7XXrozSQ8Qy357uFJismUUhgHMUhE8dmwGA+RwsacgUmOC7PgnlzL7WGVj6nwuIS6
 oX0FOWVQIC/ZCVjORsrFuNmhsEEePBrn/vOtOC1pdoTpvxGm4g/LKTZ+HfM+n9q9OSid
 id13xjFTnkYpd+UWNvgHR5QDK505D9jLvFnLIhfv8817FVWLgfIGyFPYk6zWgnQzXmuw
 LIvw==
X-Gm-Message-State: AOAM5331uhH00YWg2ptEFkggXrGiQih+CORBPLOC8uL3IMupXpqJg9GV
 sMLeuJzVstClZYi990C3Ui+Kdw==
X-Google-Smtp-Source: ABdhPJzfI6Dt3rToBuXWwhqleGZ3105bWeKsWetnzWu6+M9Zwc3CxKRDDbnDMVWO6Xp6hXQxmkopqw==
X-Received: by 2002:aa7:d40b:: with SMTP id z11mr5374364edq.224.1631125857634; 
 Wed, 08 Sep 2021 11:30:57 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p8sm1402262ejo.2.2021.09.08.11.30.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Sep 2021 11:30:56 -0700 (PDT)
Date: Wed, 8 Sep 2021 20:30:54 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org
Message-ID: <YTkBXhu1QRxfqq1R@phenom.ffwll.local>
Mail-Followup-To: Peter Zijlstra <peterz@infradead.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
 Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org
References: <20210907132044.157225-1-maarten.lankhorst@linux.intel.com>
 <YTiM/zf8BuNw7wes@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YTiM/zf8BuNw7wes@hirez.programming.kicks-ass.net>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] kernel/locking: Add context to
 ww_mutex_trylock.
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

On Wed, Sep 08, 2021 at 12:14:23PM +0200, Peter Zijlstra wrote:
> On Tue, Sep 07, 2021 at 03:20:44PM +0200, Maarten Lankhorst wrote:
> > i915 will soon gain an eviction path that trylock a whole lot of locks
> > for eviction, getting dmesg failures like below:
> > 
> > BUG: MAX_LOCK_DEPTH too low!
> > turning off the locking correctness validator.
> > depth: 48  max: 48!
> > 48 locks held by i915_selftest/5776:
> >  #0: ffff888101a79240 (&dev->mutex){....}-{3:3}, at: __driver_attach+0x88/0x160
> >  #1: ffffc900009778c0 (reservation_ww_class_acquire){+.+.}-{0:0}, at: i915_vma_pin.constprop.63+0x39/0x1b0 [i915]
> >  #2: ffff88800cf74de8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_vma_pin.constprop.63+0x5f/0x1b0 [i915]
> >  #3: ffff88810c7f9e38 (&vm->mutex/1){+.+.}-{3:3}, at: i915_vma_pin_ww+0x1c4/0x9d0 [i915]
> >  #4: ffff88810bad5768 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_gem_evict_something+0x110/0x860 [i915]
> >  #5: ffff88810bad60e8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_gem_evict_something+0x110/0x860 [i915]
> > ...
> >  #46: ffff88811964d768 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_gem_evict_something+0x110/0x860 [i915]
> >  #47: ffff88811964e0e8 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_gem_evict_something+0x110/0x860 [i915]
> > INFO: lockdep is turned off.
> 
> > As an intermediate solution, add an acquire context to ww_mutex_trylock,
> > which allows us to do proper nesting annotations on the trylocks, making
> > the above lockdep splat disappear.
> 
> Fair enough I suppose.

What's maybe missing from the commit message
- we'll probably use this for ttm too eventually
- even when we add full ww_mutex locking we'll still have the trylock
  fastpath. This is because we have a lock inversion against list locks in
  these eviction paths, and the slow path unroll to drop that list lock is
  a bit nasty (and defintely expensive).

iow even long term this here is needed in some form I think.
-Daniel

> 
> > +/**
> > + * ww_mutex_trylock - tries to acquire the w/w mutex with optional acquire context
> > + * @lock: mutex to lock
> > + * @ctx: optional w/w acquire context
> > + *
> > + * Trylocks a mutex with the optional acquire context; no deadlock detection is
> > + * possible. Returns 1 if the mutex has been acquired successfully, 0 otherwise.
> > + *
> > + * Unlike ww_mutex_lock, no deadlock handling is performed. However, if a @ctx is
> > + * specified, -EALREADY and -EDEADLK handling may happen in calls to ww_mutex_lock.
> > + *
> > + * A mutex acquired with this function must be released with ww_mutex_unlock.
> > + */
> > +int __sched
> > +ww_mutex_trylock(struct ww_mutex *ww, struct ww_acquire_ctx *ctx)
> > +{
> > +	bool locked;
> > +
> > +	if (!ctx)
> > +		return mutex_trylock(&ww->base);
> > +
> > +#ifdef CONFIG_DEBUG_MUTEXES
> > +	DEBUG_LOCKS_WARN_ON(ww->base.magic != &ww->base);
> > +#endif
> > +
> > +	preempt_disable();
> > +	locked = __mutex_trylock(&ww->base);
> > +
> > +	if (locked) {
> > +		ww_mutex_set_context_fastpath(ww, ctx);
> > +		mutex_acquire_nest(&ww->base.dep_map, 0, 1, &ctx->dep_map, _RET_IP_);
> > +	}
> > +	preempt_enable();
> > +
> > +	return locked;
> > +}
> > +EXPORT_SYMBOL(ww_mutex_trylock);
> 
> You'll need a similar hunk in ww_rt_mutex.c

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
