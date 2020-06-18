Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7CD1FED30
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 10:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2B76EB07;
	Thu, 18 Jun 2020 08:07:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BAA6EB11
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 08:07:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21534360-1500050 for multiple; Thu, 18 Jun 2020 09:07:47 +0100
MIME-Version: 1.0
In-Reply-To: <ea8887b4-e5d7-2940-3c78-18785ee815ea@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-7-tvrtko.ursulin@linux.intel.com>
 <159241093617.19488.6127572319183957508@build.alporthouse.com>
 <ea8887b4-e5d7-2940-3c78-18785ee815ea@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159246766519.4042.17567924336007381150@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 18 Jun 2020 09:07:45 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 06/10] gem_wsim: Support scaling
 workload batch durations
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

Quoting Tvrtko Ursulin (2020-06-18 09:01:10)
> 
> On 17/06/2020 17:22, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-06-17 17:01:16)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> -f <float> on the command line can be used to scale batch buffer durations
> >> in all parsed workloads.
> > 
> > But not the period?
> 
> I had it scale both at some point but then it ended up more useful to 
> only do batches. So I could stuff more clients in before saturation. I 
> suppose that's an argument to have both independently controlled.

I was moreover trying to work out why one would want to. I was guessing
shrink the duration and add more clients, and there you would the
independent control, but if you just shrank the duration for a fixed
number of clients, you would also want to shrink the period.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
