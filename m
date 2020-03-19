Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F53818BA08
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 16:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87596EA20;
	Thu, 19 Mar 2020 15:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93B366EA20
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 15:02:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20618846-1500050 for multiple; Thu, 19 Mar 2020 15:02:31 +0000
MIME-Version: 1.0
In-Reply-To: <c80cf573-f328-39ac-993d-8a7259ca4152@linux.intel.com>
References: <20200319091943.7815-1-chris@chris-wilson.co.uk>
 <20200319091943.7815-3-chris@chris-wilson.co.uk>
 <c80cf573-f328-39ac-993d-8a7259ca4152@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158463015067.6873.9446816716629068800@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 19 Mar 2020 15:02:30 +0000
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/execlists: Force single
 submission for sentinels
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

Quoting Tvrtko Ursulin (2020-03-19 14:31:36)
> 
> On 19/03/2020 09:19, Chris Wilson wrote:
> > +                             if (has_sentinel(last, rq))
> >                                       goto done;
> 
> I am only confused by can_merge_rq saying two sentinel requests can be
> merged together:
> 
>         if (unlikely((i915_request_flags(prev) ^ i915_request_flags(next)) &
>                      (BIT(I915_FENCE_FLAG_NOPREEMPT) |
>                       BIT(I915_FENCE_FLAG_SENTINEL))))
>                 return false;
> 
> What am I missing?

I thought it was fine to coalesce consecutive sentinels within the
context into one.

Except you're thinking about gvt, and not my usage :|
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
