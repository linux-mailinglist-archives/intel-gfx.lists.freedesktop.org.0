Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 149AD1554E5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 10:41:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 620BC6FBE8;
	Fri,  7 Feb 2020 09:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E64F56FBE8
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 09:41:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 01:41:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,412,1574150400"; d="scan'208";a="225324637"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 07 Feb 2020 01:41:24 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2F4805C0D64; Fri,  7 Feb 2020 11:40:29 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158106754158.7306.3828961672199232273@skylake-alporthouse-com>
References: <20200206204915.2636606-1-chris@chris-wilson.co.uk>
 <877e0yahfx.fsf@gaia.fi.intel.com>
 <158106754158.7306.3828961672199232273@skylake-alporthouse-com>
Date: Fri, 07 Feb 2020 11:40:29 +0200
Message-ID: <87zhdu91ma.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-02-07 09:13:22)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > Virtual engines are fleeting. They carry a reference count and may be freed
>> > when their last request is retired. This makes them unsuitable for the
>> > task of housing engine->retire.work so assert that it is not used.
>> 
>> There is chicken and egg problem here that I fail to grasp.
>
> In the general case, an engine may be providing a workqueue for requests
> for other engines. That's the conundrum I had in mind when writing that;
> if and only if, we have the latest request from that engine on that
> retire worker, then it will be protected by the last request (and our
> careful ordering of dereferences). That is not guaranteed to be the case
> (even for only virtual requests on a virtual engine, as we may not have
> the last request queued for retirement, and so it may be retired ahead
> of time.)
>
> So as I write that, it becomes much clearer that there is a lifetime
> issue with the concept of retirement queues on the virtual engine.
>
>> If the retire work is the mechanism which triggers the request
>> freeing, then the order should be fine. As the engine is still
>> there for last request.
>
> It's not the only mechanism, so concurrent retirements are expected.

Well, it is somewhat embarrassing for me that this is described by the
lower half of the commit message...

>> Or is the problem that it happens inside the worker which is inside
>> the engine?
>
> The immediate problem is that we didn't even set up the virtual engine to
> have retirement queues :)

Indeed, there is none.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
