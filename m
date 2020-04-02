Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6034D19BF5F
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 12:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FBB46EA44;
	Thu,  2 Apr 2020 10:32:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913B06EA44
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 10:32:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20774559-1500050 for multiple; Thu, 02 Apr 2020 11:32:24 +0100
MIME-Version: 1.0
In-Reply-To: <76357b91f247b1fddf17e49546cb3c16088f19cc.camel@linux.intel.com>
References: <20200402101906.26770-1-janusz.krzysztofik@linux.intel.com>
 <158582291010.5852.5907909973655746744@build.alporthouse.com>
 <76357b91f247b1fddf17e49546cb3c16088f19cc.camel@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158582354467.5852.14996836692896232181@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 11:32:24 +0100
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

Quoting Janusz Krzysztofik (2020-04-02 11:28:03)
> On Thu, 2020-04-02 at 11:21 +0100, Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-04-02 11:19:06)
> > > On memory constrained systems it may happen that no pages are available
> > > for serving object creation attempt during engine park.  Since we can
> > > and we do ignore that failure, let's suppress possible warnings from
> > > page allocator to avoid confusion and make CI happy.
> > 
> > The effect of ignoring it though is dangerous, hence why I had a
> > warning.
> 
> Then maybe just WARN() from switch_to_kernel_context() on
> __i915_request_create() returning -ENOMEM instead?

The warning exists already. The only real question is what to do about
it; the best answer would be to preallocate the final request during
unpark where we can report an error, but that would take a bit more
effort to refactor request allocation. Hence the warning to make it a
futureselves problem.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
