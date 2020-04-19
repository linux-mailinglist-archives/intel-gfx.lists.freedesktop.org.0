Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696C51AFBAF
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Apr 2020 17:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 526BC6E081;
	Sun, 19 Apr 2020 15:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6816E081
 for <intel-gfx@lists.freedesktop.org>; Sun, 19 Apr 2020 15:19:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20951362-1500050 for multiple; Sun, 19 Apr 2020 16:19:51 +0100
MIME-Version: 1.0
In-Reply-To: <20200419134627.359025-1-lionel.g.landwerlin@intel.com>
References: <20200419134627.359025-1-lionel.g.landwerlin@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158730959048.12400.11466875103243492311@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 19 Apr 2020 16:19:50 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: store HW tagging information
 into tracepoints
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

Quoting Lionel Landwerlin (2020-04-19 14:46:27)
> In Gpuvis [1] we added matching of the OA report tags against i915
> tracepoints fields to figure what workload was submitted by what
> process. It doesn't matter much whether HW tags get reused for a
> single request, as it gets preempted for example. All we need is link
> between the OA report and seqno/engine over a short period of time.
> That is enough to find the relationship between the different elements
> on a timeline.
> 
> The tags got removed from the tracepoints in 2935ed5339c4 ("drm/i915:
> Remove logical HW ID"). I was fine with the idea of reuse and dropping
> them from most tracepoints, but we still need it at execlist port
> insertion.
> 
> This change brings the hw_id back just for the i915_request_in
> tracepoint.

I'd rather remove the tracepoints if they are not being used for the
sole purpose of debugging the kernel. We are not committing to these
to being any form of ABI, and that you want to use these in an
application is a mistake [on our part].

As for the meat of the patch, since nothing is using i915_request.tag,
there's no reason to add it; and the tracepoint would be better at
tracking the context in/out.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
