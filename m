Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FED714E448
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 21:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8ED906E90A;
	Thu, 30 Jan 2020 20:50:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 051A36E909;
 Thu, 30 Jan 2020 20:50:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065337-1500050 for multiple; Thu, 30 Jan 2020 20:50:39 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <d295e6e3-7022-de90-ae9e-36ac2baeb750@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
 <d295e6e3-7022-de90-ae9e-36ac2baeb750@linux.intel.com>
Message-ID: <158041743824.18112.16945030008587210959@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 20:50:38 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t]
 tests/i915/gem_ctx_persistence: Convert engine subtests to dynamic
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
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-30 20:44:57)
> 
> On 30/01/2020 20:41, Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >   
> > -     igt_subtest("smoketest")
> > -             smoketest(i915);
> 
> I also moved this one to before the default context is configured with 
> engine map, since it uses legacy for_each_physical_engine, and is 
> therefore confused as to engine selection.
> 
> But perhaps better would be to leave it last and convert to 
> __for_each_physical_engine. In the spirit of a smoke test is to exercise 
> all engines after all.

Earlier was fine by me. It did make a bit of sense to get the smoketest
running earlier, but later is also fine.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
