Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA03148507
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E72316E358;
	Fri, 24 Jan 2020 12:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDE826E358
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 12:14:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19994544-1500050 for multiple; Fri, 24 Jan 2020 12:14:06 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200123224459.38128-1-chris@chris-wilson.co.uk>
 <51d86897-7c11-b7f8-b9b9-f49490c62d7a@linux.intel.com>
 <157985821394.6050.1226658095306678166@skylake-alporthouse-com>
 <992ad20d-3a26-2131-3fff-4ac601458729@linux.intel.com>
In-Reply-To: <992ad20d-3a26-2131-3fff-4ac601458729@linux.intel.com>
Message-ID: <157986804483.2524.2736709458227421229@skylake-alporthouse-com>
Date: Fri, 24 Jan 2020 12:14:04 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Check activity on i915_vma
 after confirming pin_count==0
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

Quoting Tvrtko Ursulin (2020-01-24 10:33:14)
> 
> On 24/01/2020 09:30, Chris Wilson wrote:
> Okay, it's not dangerous or anything so worth a try even without 
> bothering (on my side) to think of all possible paths.

We/I will need to look at why that i915_vma_sync() before the pin_count
is required as it seems to be possible to upset the shrinker when it
tries to unbind itself.

I hope CI is good enough to say yes/no.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
