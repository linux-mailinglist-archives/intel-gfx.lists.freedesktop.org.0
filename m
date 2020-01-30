Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B34F14E4B7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 22:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBEA6FA32;
	Thu, 30 Jan 2020 21:17:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A69B56FA32;
 Thu, 30 Jan 2020 21:17:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065524-1500050 for multiple; Thu, 30 Jan 2020 21:17:11 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <f12e30f0-a287-f821-4bc4-c7545e9821b6@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
 <158041727856.18112.4906224695590570854@skylake-alporthouse-com>
 <f12e30f0-a287-f821-4bc4-c7545e9821b6@linux.intel.com>
Message-ID: <158041903003.20421.14685928348321853302@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 21:17:10 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_ctx_persistence:
 Convert engine subtests to dynamic
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

Quoting Tvrtko Ursulin (2020-01-30 20:56:23)
> 
> On 30/01/2020 20:47, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-01-30 20:41:24)
> > Then I had a plan to add the pathological engines[] here.
> 
> Will see later what you exactly mean.

        for_each_gem_engine(ce, __context_engines_static(ctx), it) {
                struct intel_engine_cs *engine;

                if (intel_context_set_banned(ce))
                        continue;

                engine = active_engine(ce);

That's the bit I want to try and confuse.
So 1..64xrcs0, 1...64xVirtual and make sure it kills the right active
context.

I hope I had such nastiness in mind while writing, so hopefully there's
no hole here.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
