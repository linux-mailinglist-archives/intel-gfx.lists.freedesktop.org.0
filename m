Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92AD917EB9B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 23:02:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C02C86E0FE;
	Mon,  9 Mar 2020 22:02:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A5866E0FE
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 22:02:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20501637-1500050 for multiple; Mon, 09 Mar 2020 22:02:03 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158379132236.16414.17733635371922307359@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 09 Mar 2020 22:02:02 +0000
Subject: Re: [Intel-gfx] [RFC 00/12] Per client engine busyness
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

Quoting Tvrtko Ursulin (2020-03-09 18:31:17)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Another re-spin of the per-client engine busyness series. Highlights from this
> version:
> 
>  * Different way of tracking runtime of exited/unreachable context. This time
>    round I accumulate those per context/client and engine class, but active
>    contexts are kept in a list and tallied on sysfs reads.
>  * I had to do a small tweak in the engine release code since I needed the
>    GEM context for a bit longer. (So I can accumulate the intel_context runtime
>    into it as it is getting freed, because context complete can be late.)
>  * PPHWSP method is back and even comes first in the series this time. It still
>    can't show the currently running workloads but the software tracking method
>    suffers from the CSB processing delay with high frequency and very short
>    batches.

I bet it's ksoftirqd, but this could be quite problematic for us.
gem_exec_nop/foo? I wonder if this also ties into how much harder it is
to saturate the GPU with nops from userspace than it is from the kernel.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
