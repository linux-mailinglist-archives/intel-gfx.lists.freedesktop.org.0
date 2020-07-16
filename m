Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05409221ECF
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 10:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 401626E071;
	Thu, 16 Jul 2020 08:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B886E071
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 08:47:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21835348-1500050 for multiple; Thu, 16 Jul 2020 09:47:37 +0100
MIME-Version: 1.0
In-Reply-To: <1019ccaf-383e-2c45-e82f-823669607c62@linux.intel.com>
References: <20200715105004.17973-1-chris@chris-wilson.co.uk>
 <2bbb4568-2f73-bedc-8f3b-726bb19a62f2@linux.intel.com>
 <079def6f-2382-6f55-cf1a-1f3e47d32fe0@linux.intel.com>
 <159482443523.13728.2597038711540808670@build.alporthouse.com>
 <159482447053.13728.16851584647996091210@build.alporthouse.com>
 <1019ccaf-383e-2c45-e82f-823669607c62@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 09:47:36 +0100
Message-ID: <159488925648.20322.751282854542515240@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reduce i915_request.lock
 contention for i915_request_wait
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-07-16 09:41:17)
> Right I missed dma_fence_is_signaled calls i915_request_completed.
> 
> In this case the remaining question is do we care about wait ioctl 
> potentially returning before the hypothetical sync fence for the same 
> request is signaled? This seems like a slight change in user observable 
> behaviour.

You would not be able to observe the difference after wakeup in state 
between a sync_file and busy_ioctl/wait_ioctl, as a query after wakeup
will see the same signaled bit. So the only possible difference is a
change in wakeup order; but process wakeup/execution order is definitely
not defined by us :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
