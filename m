Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3191411E385
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:24:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E796E53C;
	Fri, 13 Dec 2019 12:23:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B651B6E53C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 12:23:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19567195-1500050 for multiple; Fri, 13 Dec 2019 12:23:52 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213122058.ji7cukwkclpezmod@kili.mountain>
References: <20191213122058.ji7cukwkclpezmod@kili.mountain>
Message-ID: <157623982999.6987.13582572027789215309@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Dec 2019 12:23:50 +0000
Subject: Re: [Intel-gfx] [bug report] drm/i915: Use the i915_device name for
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

Quoting Dan Carpenter (2019-12-13 12:20:58)
> Hello Chris Wilson,
> 
> The patch 65c29dbb19b2: "drm/i915: Use the i915_device name for
> identifying our request fences" from Dec 11, 2019, leads to the
> following static checker warning:
> 
>         drivers/gpu/drm/i915/i915_request.c:77 i915_fence_get_timeline_name()
>         warn: this array is non-NULL. 'to_request(fence)->gem_context->name'
> 
> drivers/gpu/drm/i915/i915_request.c
>     63  static const char *i915_fence_get_timeline_name(struct dma_fence *fence)
>     64  {
>     65          /*
>     66           * The timeline struct (as part of the ppgtt underneath a context)
>     67           * may be freed when the request is no longer in use by the GPU.
>     68           * We could extend the life of a context to beyond that of all
>     69           * fences, possibly keeping the hw resource around indefinitely,
>     70           * or we just give them a false name. Since
>     71           * dma_fence_ops.get_timeline_name is a debug feature, the occasional
>     72           * lie seems justifiable.
>                    ^^^^^^^^^^^^^^^^^^^^^
> Obsolete comment?

Hmm, indeed.

>     73           */
>     74          if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
>     75                  return "signaled";
>     76  
>     77          return to_request(fence)->gem_context->name ?: "[" DRIVER_NAME "]";
>                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Not possibly NULL.

Coming to a patch near you.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
