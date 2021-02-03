Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2482C30D80E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 12:03:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835D96EA53;
	Wed,  3 Feb 2021 11:03:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D97A6EA53;
 Wed,  3 Feb 2021 11:03:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23781852-1500050 for multiple; Wed, 03 Feb 2021 11:03:23 +0000
MIME-Version: 1.0
In-Reply-To: <20210203102601.895197-1-tvrtko.ursulin@linux.intel.com>
References: <20210203102601.895197-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Wed, 03 Feb 2021 11:03:24 +0000
Message-ID: <161235020467.6538.5402506407450939609@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Always sort
 the clients array after update
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-03 10:26:01)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Walking the client "list" makes assumptions about the order of active and
> free slots which means we need to sort the array after every update.
> 
> Patch is mostly just code movement with the only functional difference of
> eliminating two subsequent scans with no sort in between This closes a
> very short window there list iteration could get confused if sysfs clients
> would change rapidly and unfavourably during tool startup.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
