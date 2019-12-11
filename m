Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5303B11B757
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 17:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB77892EF;
	Wed, 11 Dec 2019 16:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCDE892EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 16:07:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19543699-1500050 for multiple; Wed, 11 Dec 2019 16:07:06 +0000
MIME-Version: 1.0
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191211155908.GC47225@intel.com>
References: <20191211150204.133471-1-chris@chris-wilson.co.uk>
 <20191211155908.GC47225@intel.com>
Message-ID: <157608042677.27099.2108685443689165611@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Dec 2019 16:07:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the i915_device name for
 identifying our request fences
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Venkata Sandeep Dhanalakota (2019-12-11 15:59:09)
> On 19/12/11 03:02, Chris Wilson wrote:
> > Use the dev_name(i915) to identify the requests for debugging, so we can
> > tell different device timelines apart.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index a6238c626a16..9646e02edea3 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -57,7 +57,7 @@ static struct i915_global_request {
> >  
> >  static const char *i915_fence_get_driver_name(struct dma_fence *fence)
> >  {
> > -     return "i915";
> > +     return dev_name(to_request(fence)->i915->drm.dev);
> >  }
> >  
> Sure, should we also update i915_fence_get_timeline_name() 
> return to_request(fence)->gem_context->name ?:
> i915_fence_get_driver_name(fence);

No need really. It's either a user context or a kernel context, the less
said to userspace about internals the better. It will be presented as

00:00:02.00 i915::[i915] (or something like that)

If you would rather that "[i915]" be "[k]" or probably better yet "["
DRIVER_NAME "]"
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
