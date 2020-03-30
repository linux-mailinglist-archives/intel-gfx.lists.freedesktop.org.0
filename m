Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A5197CE5
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31A16E143;
	Mon, 30 Mar 2020 13:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF8D36E143
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:28:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20740290-1500050 for multiple; Mon, 30 Mar 2020 14:28:38 +0100
MIME-Version: 1.0
In-Reply-To: <c95f1cf3-cb17-43a7-6a1c-0f6228edea5d@intel.com>
References: <20200327103209.3099292-1-lionel.g.landwerlin@intel.com>
 <158530572912.19268.13066457564563491836@build.alporthouse.com>
 <c95f1cf3-cb17-43a7-6a1c-0f6228edea5d@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158557491688.3228.459734736089932684@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 14:28:36 +0100
Subject: Re: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add support for multi
 context filtering
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

Quoting Lionel Landwerlin (2020-03-30 14:14:18)
> On 27/03/2020 12:42, Chris Wilson wrote:
> > Quoting Lionel Landwerlin (2020-03-27 10:32:06)
> >> Hi all,
> >>
> >> i915/perf has currently support for single context filtering. This
> >> allows mesa to read the content of the OA buffer and cut out any
> >> unrelated context running in a middle of a query.
> >>
> >> Iris currently uses 2 GEM contexts for 3D & compute commands. In order
> >> to support performance queries on the compute context we need to be
> >> able to also filter on the second GEM context used for compute
> >> commands.
> >>
> >> This series add support for filtering up to 4 GEM contexts in
> >> i915/perf.
> > Why make it a fixed size? [From a quick look it's just fixed storage as
> > you use a dynamically sized array. Considered sorting and bsearching?]
> > -Chris
> 
> I figured you might not like too many contexts to be pinned.

Well if you can pin 65,356 contexts and still be able to profile, I'll
be impressed. Having things pinned will bite us [that fragmentation is
going to cause issues in the long run], but here's there's definitely a
natural limit in being able to pin everything the user requests. If we
can do that, we can likely profile their workload. Failure here will mean
that other users start seeing ENOSPC randomly (which is what we want to
avoid).

I think the first limit that will be hit will be the unique sw id space
for contexts. icl+ brings that down to 1023, minus the 3 bits we use
internally, so 127.

> Also a small size makes bsort kind of pointless ;)

Yeah, but otoh bsearch is such a small amount overhead for a small array
that unless it is very hot, I'm sure we can find other things to fill
the profiles.

> I'll see how that looks. What the goto bsort utility in the kernel?

#include <linux/sort.h>
#include <linux/bsearch.h>

I do wish the latter would have a macro generator.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
