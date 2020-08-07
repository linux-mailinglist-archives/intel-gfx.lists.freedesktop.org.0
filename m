Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 903C623E9D3
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:11:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E20006E98D;
	Fri,  7 Aug 2020 09:11:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39B36E98D;
 Fri,  7 Aug 2020 09:11:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22058318-1500050 for multiple; Fri, 07 Aug 2020 10:11:16 +0100
MIME-Version: 1.0
In-Reply-To: <25f28f97-1e1f-e11f-ee6a-c524e4f854b2@intel.com>
References: <20200807084506.473089-1-chris@chris-wilson.co.uk>
 <25f28f97-1e1f-e11f-ee6a-c524e4f854b2@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 07 Aug 2020 10:11:15 +0100
Message-ID: <159679147552.16647.11735803367843972389@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_fence: Use
 default-context for syncobj-timeline-wait
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lionel Landwerlin (2020-08-07 10:00:14)
> On 07/08/2020 11:45, Chris Wilson wrote:
> > syncobj-timeline-wait is only exercising waits on the syncobj along a
> > single timeline, for which it can use the universally available default
> > context, and so not try and fail to create a HW context on very old
> > platforms.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2308
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> 
> 
> Hm... I thought maybe we didn't get all the engines on the default context.

A fresh context, either the default for a new fd or from
gem_context_create(), only gets the default set of engines. The context
created here has a clone of the engines from the default context, which
we hope has been reconfigured already to have the set of all available
engines.

__for_each_physical_engine() works by querying the kernel and
reconfiguring the default context to suite. Fortunately that is run in a
fixture early on in gem_exec_fence, so by the time we get to the syncobj
group, we have all engines available.

Looks like we're good to iterate over them all :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
