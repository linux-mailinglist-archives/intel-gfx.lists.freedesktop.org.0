Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF89E154811
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 16:29:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BACC6FA87;
	Thu,  6 Feb 2020 15:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5056FA87
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 15:29:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20137971-1500050 for multiple; Thu, 06 Feb 2020 15:29:24 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
References: <20200206152325.2521787-1-chris@chris-wilson.co.uk>
Message-ID: <158100296311.7306.6375353895241979260@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Feb 2020 15:29:23 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent queuing retire workers
 on the virtual engine
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

Quoting Chris Wilson (2020-02-06 15:23:25)
> Virtual engines are fleeting. They carry a reference count and may be freed
> when their last request is retired. This makes them unsuitable for the
> task of housing engine->retire.work so assert that it is not used.
> 
> Tvrtko tracked down an instance where we did indeed violate this rule.
> In virtal_submit_request, we flush a completed request directly with
> __i915_request_submit and this causes us to queue that request on the
> veng's breadcrumb list and signal it. Leading us down a path where we
> should not attach the retire.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Alternatively we could fixup the rq->engine before
__i915_request_submit. That would stop the spread of
intel_virtual_engine_get_sibling().

This is likely to be the cleaner fix, so I think I would prefer this and
then remove the get_sibling().
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
