Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5626A19BF84
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA2236EA48;
	Thu,  2 Apr 2020 10:42:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2B16EA4C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 10:42:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20774666-1500050 for multiple; Thu, 02 Apr 2020 11:42:33 +0100
MIME-Version: 1.0
In-Reply-To: <ab862af7b50bb456072463e90328538fc563739d.camel@linux.intel.com>
References: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
 <158582291010.5852.5907909973655746744@build.alporthouse.com>
 <76357b91f247b1fddf17e49546cb3c16088f19cc.camel@linux.intel.com>
 <158582354467.5852.14996836692896232181@build.alporthouse.com>
 <ab862af7b50bb456072463e90328538fc563739d.camel@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158582415436.5852.10336291395981297377@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 11:42:34 +0100
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915: Suppress page allocation
 warnings on engine park
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

Quoting Janusz Krzysztofik (2020-04-02 11:36:21)
> On Thu, 2020-04-02 at 11:32 +0100, Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-04-02 11:28:03)
> > > On Thu, 2020-04-02 at 11:21 +0100, Chris Wilson wrote:
> > > > Quoting Janusz Krzysztofik (2020-04-02 11:19:06)
> > > > > On memory constrained systems it may happen that no pages are available
> > > > > for serving object creation attempt during engine park.  Since we can
> > > > > and we do ignore that failure, let's suppress possible warnings from
> > > > > page allocator to avoid confusion and make CI happy.
> > > > 
> > > > The effect of ignoring it though is dangerous, hence why I had a
> > > > warning.
> > > 
> > > Then maybe just WARN() from switch_to_kernel_context() on
> > > __i915_request_create() returning -ENOMEM instead?
> > 
> > The warning exists already. The only real question is what to do about
> > it; the best answer would be to preallocate the final request during
> > unpark where we can report an error, but that would take a bit more
> > effort to refactor request allocation. Hence the warning to make it a
> > futureselves problem.
> 
> I meant a warning with a very specific message that could be filtered
> easily by CI for now.

It has a very specific stacktrace, and I hope by filtered you mean
identified and reported as an issue, possibly with multiple causes since
this is an indication that reclaim is snafu.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
