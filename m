Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F331917ED51
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 01:30:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377616E11E;
	Tue, 10 Mar 2020 00:30:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 057DD6E11E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 00:30:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20502190-1500050 for multiple; Tue, 10 Mar 2020 00:13:53 +0000
MIME-Version: 1.0
In-Reply-To: <ee5b6168-4e0a-6bbc-731e-a7391cc96397@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
 <158378968022.16414.13552854522311222381@build.alporthouse.com>
 <ee5b6168-4e0a-6bbc-731e-a7391cc96397@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158379923268.3232.8572720070601085988@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 00:13:52 +0000
Subject: Re: [Intel-gfx] [RFC 01/12] drm/i915: Expose list of clients in
 sysfs
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

Quoting Tvrtko Ursulin (2020-03-09 23:26:34)
> 
> On 09/03/2020 21:34, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-03-09 18:31:18)
> >> +struct i915_drm_client *
> >> +i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
> >> +{
> >> +       struct i915_drm_client *client;
> >> +       int ret;
> >> +
> >> +       client = kzalloc(sizeof(*client), GFP_KERNEL);
> >> +       if (!client)
> >> +               return ERR_PTR(-ENOMEM);
> >> +
> >> +       kref_init(&client->kref);
> >> +       client->clients = clients;
> >> +
> >> +       ret = mutex_lock_interruptible(&clients->lock);
> >> +       if (ret)
> >> +               goto err_id;
> >> +       ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
> >> +                             xa_limit_32b, &clients->next_id, GFP_KERNEL);
> > 
> > So what's next_id used for that explains having the over-arching mutex?
> 
> It's to give out client id's "cyclically" - before I apparently 
> misunderstood what xa_alloc_cyclic is supposed to do - I thought after 
> giving out id 1 it would give out 2 next, even if 1 was returned to the 
> pool in the meantime. But it doesn't, I need to track the start point 
> for the next search with "next".

Ok. A requirement of the API for the external counter.
 
> I want this to make intel_gpu_top's life easier, so it doesn't have to 
> deal with id recycling for all practical purposes.

Fair enough. I only worry about the radix nodes and sparse ids :)
 
> And a peek into xa implementation told me the internal lock is not 
> protecting "next.

See xa_alloc_cyclic(), seems to cover __xa_alloc_cycle (where *next is
manipulated) under the xa_lock.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
