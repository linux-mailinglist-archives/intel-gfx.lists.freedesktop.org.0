Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2E61806E0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 19:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1B96E365;
	Tue, 10 Mar 2020 18:36:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C399A6E365
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 18:36:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20513511-1500050 for multiple; Tue, 10 Mar 2020 18:36:05 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-10-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-10-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158386536527.28297.6280377355849267453@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 18:36:05 +0000
Subject: Re: [Intel-gfx] [RFC 09/12] drm/i915: Track per-context engine
 busyness
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

Quoting Tvrtko Ursulin (2020-03-09 18:31:26)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Some customers want to know how much of the GPU time are their clients
> using in order to make dynamic load balancing decisions.
> 
> With the hooks already in place which track the overall engine busyness,
> we can extend that slightly to split that time between contexts.
> 
> v2: Fix accounting for tail updates.
> v3: Rebase.
> v4: Mark currently running contexts as active on stats enable.
> v5: Include some headers to fix the build.
> v6: Added fine grained lock.
> v7: Convert to seqlock. (Chris Wilson)
> v8: Rebase and tidy with helpers.
> v9: Refactor.
> v10: Move recording start to promotion. (Chris)
> v11: Consolidate duplicated code. (Chris)
> v12: execlists->active cannot be NULL. (Chris)
> v13: Move start to set_timeslice. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_context.c       | 20 +++++++++++
>  drivers/gpu/drm/i915/gt/intel_context.h       | 13 +++++++
>  drivers/gpu/drm/i915/gt/intel_context_types.h |  9 +++++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 15 ++++++--
>  drivers/gpu/drm/i915/gt/intel_lrc.c           | 34 ++++++++++++++++++-
>  5 files changed, 88 insertions(+), 3 deletions(-)

We also should put together a basic selftest to accompany its
introduction. Just something that runs a context (using a spinner) for
50ms and check the stats report ~50ms.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
