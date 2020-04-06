Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B07919F815
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFCF89E11;
	Mon,  6 Apr 2020 14:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0A789BF8
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 14:37:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20817255-1500050 for multiple; Mon, 06 Apr 2020 15:37:47 +0100
MIME-Version: 1.0
In-Reply-To: <cc429267-6de3-0065-3920-7aa11920c0f5@intel.com>
References: <20200331114821.81957-1-lionel.g.landwerlin@intel.com>
 <20200331114821.81957-3-lionel.g.landwerlin@intel.com>
 <158567812981.5852.12449950625595064091@build.alporthouse.com>
 <5bdf47bd-91f5-9f84-fb3b-05a1d5350605@intel.com>
 <158618154668.6356.9721928351250010796@build.alporthouse.com>
 <ed57ddbf-c064-c26c-7fd4-44432f6ee90e@intel.com>
 <158618325988.6356.1956600450264682241@build.alporthouse.com>
 <cc429267-6de3-0065-3920-7aa11920c0f5@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158618386761.6356.8927063735766163727@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 06 Apr 2020 15:37:47 +0100
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable filtering on
 multiple contexts
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

Quoting Lionel Landwerlin (2020-04-06 15:30:38)
> On 06/04/2020 17:27, Chris Wilson wrote:
> > Quoting Lionel Landwerlin (2020-04-06 15:07:30)
> >> On 06/04/2020 16:59, Chris Wilson wrote:
> >>> Quoting Lionel Landwerlin (2020-04-06 14:54:38)
> >>>> On 31/03/2020 21:08, Chris Wilson wrote:
> >>>>> Quoting Lionel Landwerlin (2020-03-31 12:48:21)
> >>>>>> Add 2 new properties to the i915-perf open ioctl to specify an array
> >>>>>> of GEM context handles as well as the length of the array.
> >>>>> Hmm. The other thought is ctx->engine[] where one context may have more
> >>>>> than one logical context instance that OA could track. The extension to
> >>>>> track multiple pinned contexts should equally work for multiple engines.
> >>>>>
> >>>>>         I915_DEFINE_CONTEXT_PARAM_ENGINES(engines, 64) = {};
> >>>>>         struct drm_i915_gem_context_param p = {
> >>>>>                 .ctx_id = gem_context_create(i915),
> >>>>>                 .param = I915_CONTEXT_PARAM_ENGINES,
> >>>>>                 .value = to_user_pointer(&engines),
> >>>>>                 .size = sizeof(struct i915_context_param_engines),
> >>>>>         };
> >>>>>         gem_context_set_param(i915, &p);
> >>>>>
> >>>>> would do the trick in creating one context with 64 rcs0 that they may
> >>>>> want to track. And that also opens the door to virtual engines over top.
> >>>>> -Chris
> >>>> I rather punt this away for now :)
> >>>>
> >>>> I can't see use cases for Iris/Vulkan.
> >>> There's immediate use cases for iris, since it uses 2 contexts instead
> >>> of 2 logical instances within one GL/GEM context.
> >>
> >> I don't understand this. Are you saying Iris could use the stuff from
> >> above and still select what logical context to dispatch to?
> > Yes. And can be done so only by changing the context setup to create one
> > context with two independent rcs engines (different logical GPU state,
> > and rings, *only* sharing the same vm). And since legacy EXEC_DEFAULT[0]
> > and EXEC_RENDER[1] alias to the same engine, very little code needs to be
> > changed to support (1 ctx, 2 engines) vs (2 ctx, 1 engine).
> > -Chris
> 
> Sounds like there could a performance gain somewhere...
> 
> Will look into this.

A year old, so a bit stale,
https://gitlab.freedesktop.org/ickle/mesa/-/commits/iris-composite-context

Note it doesn't setup a single shared timeline as Kenneth wanted to keep
explicit control over the fencing between the pipelines.

* fingers crossed that's the right version.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
