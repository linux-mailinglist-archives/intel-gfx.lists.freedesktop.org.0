Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E71C7155495
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:25:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F31C76FBE0;
	Fri,  7 Feb 2020 09:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from spamshield.firefly-cloud.com
 (ec2-52-211-27-78.eu-west-1.compute.amazonaws.com [52.211.27.78])
 by gabe.freedesktop.org (Postfix) with ESMTP id C418B6EA70
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:25:49 +0000 (UTC)
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id EDAEE1CC612
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:25:48 +0000 (GMT)
Received: from localhost (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id E84BA1CC611
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:25:48 +0000 (GMT)
X-Virus-Scanned: by SpamTitan at eu-west-1.compute.internal
Received: from spamshield.firefly-cloud.com (localhost [127.0.0.1])
 by spamshield.firefly-cloud.com (Postfix) with ESMTP id 0727E1CC593
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:25:47 +0000 (GMT)
Authentication-Results: spamshield.firefly-cloud.com; none
Received: from fireflyinternet.com (unknown [77.68.26.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by spamshield.firefly-cloud.com (Postfix) with ESMTPS id 4B7F21CC5E7
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:25:45 +0000 (GMT)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20145346-1500050 for multiple; Fri, 07 Feb 2020 09:25:42 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
 <877e0yahfx.fsf@gaia.fi.intel.com>
In-Reply-To: <877e0yahfx.fsf@gaia.fi.intel.com>
Message-ID: <158106754158.7306.3828961672199232273@skylake-alporthouse-com>
Date: Fri, 07 Feb 2020 09:25:41 +0000
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/gt: Prevent queuing retire
 workers on the virtual engine
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

Quoting Mika Kuoppala (2020-02-07 09:13:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Virtual engines are fleeting. They carry a reference count and may be freed
> > when their last request is retired. This makes them unsuitable for the
> > task of housing engine->retire.work so assert that it is not used.
> 
> There is chicken and egg problem here that I fail to grasp.

In the general case, an engine may be providing a workqueue for requests
for other engines. That's the conundrum I had in mind when writing that;
if and only if, we have the latest request from that engine on that
retire worker, then it will be protected by the last request (and our
careful ordering of dereferences). That is not guaranteed to be the case
(even for only virtual requests on a virtual engine, as we may not have
the last request queued for retirement, and so it may be retired ahead
of time.)

So as I write that, it becomes much clearer that there is a lifetime
issue with the concept of retirement queues on the virtual engine.

> If the retire work is the mechanism which triggers the request
> freeing, then the order should be fine. As the engine is still
> there for last request.

It's not the only mechanism, so concurrent retirements are expected.
 
> Or is the problem that it happens inside the worker which is inside
> the engine?

The immediate problem is that we didn't even set up the virtual engine to
have retirement queues :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
