Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF491FED1C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 10:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7796EAD6;
	Thu, 18 Jun 2020 08:02:12 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7B5C6EAD6
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 08:02:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21534258-1500050 for multiple; Thu, 18 Jun 2020 09:02:06 +0100
MIME-Version: 1.0
In-Reply-To: <d38387a9-45c7-4138-8f65-0879f74f2f2d@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-9-tvrtko.ursulin@linux.intel.com>
 <159241590881.2739.7990352305579268212@build.alporthouse.com>
 <d38387a9-45c7-4138-8f65-0879f74f2f2d@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159246732394.4042.8495240313391590510@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 18 Jun 2020 09:02:03 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 08/10] gem_wsim: Snippet of a workload
 extracted from carchase
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

Quoting Tvrtko Ursulin (2020-06-18 08:53:47)
> 
> On 17/06/2020 18:45, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-06-17 17:01:18)
> >> +1.RCS.1000.r3-47/w27-0/r0-58/r3-80/r22-31/r3-42/r9-4/w34-0/r3-18/r3-41/r21-0/r9-5/r3-78/r25-4/r3-104/r3-23/r30-0/r3-88/r22-27/r22-1/r25-45/r3-50/r22-12/r22-22/r22-3/r22-0/r25-56/r3-4/r22-15/r25-113/r3-7/r22-18/r25-60/r3-81/r25-21/r3-89/r18-5/r3-93/r17-8/r25-28/r25-87/r25-9/r25-13/r25-42/r25-90/r22-16/r34-2/r3-15/w3-64/r0-67/r25-99/r25-73/r3-6/r25-40/r3-90/r22-20/r0-45/r3-110/w32-17/w32-16/w32-3/w32-1/w33-2/r28-2/r3-98/r3-85/r25-48/r3-12/r25-104/r24-23/r3-87/r3-108/r3-26/r3-96/r22-5/r22-14/r3-49/r3-103/r22-6/r3-68/r3-112/r22-29/r22-28/r25-14/r25-44/r25-19/r3-67/r25-111/r18-4/r3-66/r18-17/r4-5/r25-68/r25-86/r25-26/r25-67/r3-37/r25-0/r22-7/r25-59/r25-71/r25-101/r25-75/r25-20/r25-91/r3-2/r3-117/r3-33/r22-2/r25-55/r25-66/r25-24/r25-105/r25-61/r25-11/r25-51/r25-64/r25-70/r18-19/r18-26/r18-21/r25-81/r25-78/r25-37/r25-50/r25-102/r25-35/r18-18/r18-13/r18-12/r3-69/r3-19/r3-100/r22-21/r25-22/r3-29/r25-93/r18-2/r18-14/r18-3/r22-10/r18-23/r18-7/r18-11/r3-73/r8-0/r25-92/r25-41/w33-3/r!
>  0-1!
> >>   07/w19-0.
> >>   0
> > 
> > This patch has been mangled.
> 
> Could it be your email client? (Very long lines in the patch.) I don't 
> see corruption anywhere on my side, or on the copy I received from the 
> mailing list.

Somewhere in the chain, it's the same breakage in the file as well. It's
not something I've seen before; and extremely strange choice for
breaking the subsequent lines.

Anyway, it did lead me to suggest to add printing the _token for the
invalid step; and perhaps change that from "step" to "line"?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
