Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166621BE3F5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 18:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC8E6EAB5;
	Wed, 29 Apr 2020 16:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 572B16EAB5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 16:35:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21060979-1500050 for multiple; Wed, 29 Apr 2020 17:35:26 +0100
MIME-Version: 1.0
In-Reply-To: <5bfcc25a-5af8-926c-6906-5a7af20dba05@intel.com>
References: <20200428215511.15435-1-chris@chris-wilson.co.uk>
 <5bfcc25a-5af8-926c-6906-5a7af20dba05@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158817812501.2633.9719183420821466392@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 29 Apr 2020 17:35:25 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Keep a no-frills swappable
 copy of the default context state
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

Quoting Matthew Auld (2020-04-29 17:11:38)
> On 28/04/2020 22:55, Chris Wilson wrote:
> > We need to keep the default context state around to instantiate new
> > contexts (aka golden rendercontext), and we also keep it pinned while
> > the engine is active so that we can quickly reset a hanging context.
> > However, the default contexts are large enough to merit keeping in
> > swappable memory as opposed to kernel memory, so we store them inside
> > shmemfs. Currently, we use the normal GEM objects to create the default
> > context image, but we can throw away all but the shmemfs file.
> > 
> > This greatly simplifies the tricky power management code which wants to
> > run underneath the normal GT locking, and we definitely do not want to
> > use any high level objects that may appear to recurse back into the GT.
> > Though perhaps the primary advantage of the complex GEM object is that
> > we aggressively cache the mapping, but here we are recreating the
> > vm_area everytime time we unpark. At the worst, we add a lightweight
> > cache, but first find a microbenchmark that is impacted.
> > 
> > Having started to create some utility functions to make working with
> > shmemfs objects easier, we can start putting them to wider use, where
> > GEM objects are overkill, such as storing persistent error state.
> 
> Is there any point in having the default state in device local-memory, 
> and if so does this change the story at all? I'm guessing not...

We want it in CPU memory unless you plan on blitting the default context
image? Otherwise we have to do UC reads for each new context.

And it since the default state is not required for running the context,
we'd prefer not to waste precious device memory on them, if we can avoid
doing so. At worst, we could reuse the kernel_context image for the
default state. Hmm. Well we'd have to give up poisoning it, and do some
recovery after [runtime] suspend. I'd rather keep a copy of the default
state in swap, and push it to lmem on demand :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
