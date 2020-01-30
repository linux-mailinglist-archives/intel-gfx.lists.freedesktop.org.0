Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768A614E46B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 22:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41C4F6FA33;
	Thu, 30 Jan 2020 21:07:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66076FA32;
 Thu, 30 Jan 2020 21:07:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20065452-1500050 for multiple; Thu, 30 Jan 2020 21:07:32 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200130210125.5623-1-tvrtko.ursulin@linux.intel.com>
References: <20200130204124.29907-1-tvrtko.ursulin@linux.intel.com>
 <20200130210125.5623-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <158041845071.18112.17200100417096205100@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 30 Jan 2020 21:07:30 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3]
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

Quoting Tvrtko Ursulin (2020-01-30 21:01:25)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Converts all per-engine tests into dynamic subtests and in the process:
> 
>  * Put back I915_EXEC_BSD legacy coverage.
>  * Remove one added static engine list usage.
>  * Compact code by driving two groups of the name/func table.
> 
> v2:
>  * Convert smoketest to proper all engines.
> 
> v3:
>  * Undo subgroup mistake. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
