Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447373A2D91
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 15:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79B466ED27;
	Thu, 10 Jun 2021 13:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com
 [IPv6:2607:f8b0:4864:20::b36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22AF6ED27
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 13:57:30 +0000 (UTC)
Received: by mail-yb1-xb36.google.com with SMTP id i4so40954960ybe.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 06:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5QcCpUsL81D/Pm9POmopA3qakLcrxh2isiGDvvWevv8=;
 b=GjBy1bVfelnnTuKmsrVKvDgQCzGEFkf/t82+Gl51uFUQb7Lmf1kDk/HkwPUMp0h16v
 tKC34691GN/EPhvFGHaqZumAYaOyd6LxeHMcGgDUpPFib8XJbnv8f7PFXU6awM1iOMdr
 1PAUU2Vd3rShJ2qSohsU3pK5/nw7/rHcdUvJPXfrqUUIc1/tslB+rc4B0NQ+Zj87JUgK
 kYYA1PL3sCRlUtLLfkR49hQjjgj4Lrhh9yI2p6c6QthxnTIsNZ3ZcBexYdtXk2weSfrs
 9OY984sRN6/3NRBCi4NVmqwLCTFlpdeY1S2sTtCJYUSiQ1wXxMY535IgoT4fc6n/W7Jd
 55Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5QcCpUsL81D/Pm9POmopA3qakLcrxh2isiGDvvWevv8=;
 b=KlcDNpvy73vJRAUWjbyRx04JphVrLkIpYZbl4ZMhVYt8fx/4fabzN/UyzP1E+OS2vN
 ojvyObAfyN3FrYSUFSyj0n7BkcyaZeztVNVtqdzOWZXmKxR4vP4MgHbARq2hhhCJYurd
 0w5G0jKaQ2nbyNQrRVbymSR3GCoxXivnuLvTCxbSvEAPNSjS/lx0saa4i62J7ubD+EJW
 nc9xbRhdglkip/mUQEua9kUzQQzj85EYBNNINBABTXwDacjSH1uxx7w7yXlDdLzL6F+u
 R3tuE6aNKsGwFFIjAEbyHaTWFw4FPCTs7lenSDOfsNoVI/USsVPuW4Kl0j3aM2RdjgvR
 usow==
X-Gm-Message-State: AOAM531CH5DOZjHeNikOu4vkuVXM/t235frNUl9qSSHB+rbe4MmFdvO/
 VjKkqhabR56u2n/jyk5yWnyt0mGeLmYlr7/PuzS4HOarg3avgg==
X-Google-Smtp-Source: ABdhPJzF/jVln9fcAD0sIq8aEOZH7VmJdGYukkwx5ijbFpZ7ghWfKvLZ1Qwz4jnXRgjQeTqcFKmZfL6NRMTxbFi3IMk=
X-Received: by 2002:a5b:392:: with SMTP id k18mr8013306ybp.180.1623333449958; 
 Thu, 10 Jun 2021 06:57:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210609212959.471209-1-jason@jlekstrand.net>
 <20210609212959.471209-2-jason@jlekstrand.net>
 <0f63cba3-ec2f-c246-1375-5b1bced593f5@linux.intel.com>
In-Reply-To: <0f63cba3-ec2f-c246-1375-5b1bced593f5@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 10 Jun 2021 08:57:19 -0500
Message-ID: <CAOFGe957jdnhkYjROWSrVf0L+4FLrvBhnujXQaX18ZVjBt5CBw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Move
 intel_engine_free_request_pool to i915_request.c
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 5:04 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> On 09/06/2021 22:29, Jason Ekstrand wrote:
> > This appears to break encapsulation by moving an intel_engine_cs
> > function to a i915_request file.  However, this function is
> > intrinsically tied to the lifetime rules and allocation scheme of
> > i915_request and having it in intel_engine_cs.c leaks details of
> > i915_request.  We have an abstraction leak either way.  Since
> > i915_request's allocation scheme is far more subtle than the simple
> > pointer that is intel_engine_cs.request_pool, it's probably better to
> > keep i915_request's details to itself.
> >
> > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Matthew Auld <matthew.auld@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 8 --------
> >   drivers/gpu/drm/i915/i915_request.c       | 7 +++++--
> >   drivers/gpu/drm/i915/i915_request.h       | 2 --
> >   3 files changed, 5 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 9ceddfbb1687d..df6b80ec84199 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -422,14 +422,6 @@ void intel_engines_release(struct intel_gt *gt)
> >       }
> >   }
> >
> > -void intel_engine_free_request_pool(struct intel_engine_cs *engine)
> > -{
> > -     if (!engine->request_pool)
> > -             return;
> > -
> > -     kmem_cache_free(i915_request_slab_cache(), engine->request_pool);
>
> Argument that the slab cache shouldn't be exported from i915_request.c
> sounds good to me.
>
> But I think step better than simply reversing the break of encapsulation
> (And it's even worse because it leaks much higher level object!) could
> be to export a freeing helper from i915_request.c, engine pool would
> then use:
>
> void __i915_request_free(...)
> {
>         kmem_cache_free(...);
> }

That was what I did at first.  However, the semantics of how the
pointer is touched/modified are really also part of i915_request.  In
particular, the use of xchg and cmpxchg.  So I pulled the one other
access (besides NULL initializing) into i915_request.c which meant
pulling in intel_engine_free_request_pool.

Really, if we wanted proper encapsulation here, we'd have

struct i915_request_cache {
    struct i915_request *rq;
};

void i915_request_cache_init(struct i915_request_cache *cache);
void i915_request_cache_finish(struct i915_request_cache *cache);

all in i915_request.h and have all the gory details inside
i915_request.c.  Then all intel_engine_cs knows is that it has a
request cache.

If we really want to go that far, we can, I suppose.

--Jason

> Regards,
>
> Tvrtko
>
> > -}
> > -
> >   void intel_engines_free(struct intel_gt *gt)
> >   {
> >       struct intel_engine_cs *engine;
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 1014c71cf7f52..48c5f8527854b 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -106,9 +106,12 @@ static signed long i915_fence_wait(struct dma_fence *fence,
> >                                timeout);
> >   }
> >
> > -struct kmem_cache *i915_request_slab_cache(void)
> > +void intel_engine_free_request_pool(struct intel_engine_cs *engine)
> >   {
> > -     return global.slab_requests;
> > +     if (!engine->request_pool)
> > +             return;
> > +
> > +     kmem_cache_free(global.slab_requests, engine->request_pool);
> >   }
> >
> >   static void i915_fence_release(struct dma_fence *fence)
> > diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> > index 270f6cd37650c..f84c38d29f988 100644
> > --- a/drivers/gpu/drm/i915/i915_request.h
> > +++ b/drivers/gpu/drm/i915/i915_request.h
> > @@ -300,8 +300,6 @@ static inline bool dma_fence_is_i915(const struct dma_fence *fence)
> >       return fence->ops == &i915_fence_ops;
> >   }
> >
> > -struct kmem_cache *i915_request_slab_cache(void);
> > -
> >   struct i915_request * __must_check
> >   __i915_request_create(struct intel_context *ce, gfp_t gfp);
> >   struct i915_request * __must_check
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
