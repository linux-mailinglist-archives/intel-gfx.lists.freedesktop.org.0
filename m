Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CEA2C6807
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 15:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DAD6EE01;
	Fri, 27 Nov 2020 14:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108DF6EDFD;
 Fri, 27 Nov 2020 14:40:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23134491-1500050 for multiple; Fri, 27 Nov 2020 14:40:29 +0000
MIME-Version: 1.0
In-Reply-To: <20201127120718.454037-158-matthew.auld@intel.com>
References: <20201127120718.454037-1-matthew.auld@intel.com>
 <20201127120718.454037-158-matthew.auld@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 14:40:28 +0000
Message-ID: <160648802888.2925.2681758176898405257@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC PATCH 157/162] drm/i915: Improve accuracy of
 eviction stats
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-11-27 12:07:13)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Current code uses jiffie time to do the accounting and then does:
> 
>   diff = jiffies - start;
>   msec = diff * 1000 / HZ;
>   ...
>   atomic_long_add(msec, &i915->time_swap_out_ms);
> 
> If we assume jiffie can be as non-granular as 10ms and that the current
> accounting records all evictions faster than one jiffie as infinite speed,
> we can end up over-estimating the reported eviction throughput.
> 
> Fix this by accumulating ktime_t and only dividing to more user friendly
> granularity at presentation time (debugfs read).
> 
> At the same time consolidate the code a bit and convert from multiple
> atomics to single seqlock per stat.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: CQ Tang <cq.tang@intel.com>
> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

A lot of effort to fix up patches after the fact, might as well make it
a real PMU interface.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
