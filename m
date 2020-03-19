Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F76118BBD1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 17:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B73636EA32;
	Thu, 19 Mar 2020 16:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD81E6EA32
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 16:02:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20619848-1500050 for multiple; Thu, 19 Mar 2020 16:02:30 +0000
MIME-Version: 1.0
In-Reply-To: <158462954105.6873.17855848411603572916@build.alporthouse.com>
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-2-chris@chris-wilson.co.uk>
 <99ee9e55-1aeb-5cb7-4378-a62f671f4811@linux.intel.com>
 <158462954105.6873.17855848411603572916@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158463374987.7928.17509989538711739599@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 19 Mar 2020 16:02:29 +0000
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gem: Avoid gem_context->mutex
 for simple vma lookup
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

Quoting Chris Wilson (2020-03-19 14:52:21)
> Quoting Tvrtko Ursulin (2020-03-19 14:20:04)
> > 
> > On 19/03/2020 09:19, Chris Wilson wrote:
> > > +static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
> > > +{
> > > +     do {
> > > +             struct drm_i915_gem_object *obj;
> > >               struct i915_vma *vma;
> > > +             int err;
> > >   
> > > -             vma = radix_tree_lookup(handles_vma, handle);
> > > +             rcu_read_lock();
> > > +             vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
> > 
> > radix_tree_lookup is documented to be RCU safe okay. How about freeing 
> > VMAs - is that done after a RCU grace period?
> 
> As we are still stuck with the horrible i915_vma.kref semantics (yes, I
> know I'm supposed to be fixing that), there are 3 paths which may
> destroy i915_vma: the object (RCU safe), the vm (RCU safe) and
> i915_vma_parked, not safe in any way shape or form.

Actually, the nasty fact I keep forgetting is that i915_vma_parked is
serialised with execbuf by virtue of the engine-pm. That has caught me
out many times, but is why this is safe (and takes extra effort to
convert to kref).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
