Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C9A124EDD
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 18:10:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBB6895C4;
	Wed, 18 Dec 2019 17:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7426B895C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 17:10:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19623568-1500050 for multiple; Wed, 18 Dec 2019 17:10:50 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191217095642.3124521-1-chris@chris-wilson.co.uk>
 <20191217095642.3124521-7-chris@chris-wilson.co.uk>
 <65d1543e-be04-61ef-3653-51c50f595e5e@linux.intel.com>
In-Reply-To: <65d1543e-be04-61ef-3653-51c50f595e5e@linux.intel.com>
Message-ID: <157668904753.6469.8214860190737663975@skylake-alporthouse-com>
Date: Wed, 18 Dec 2019 17:10:47 +0000
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/gt: Remove direct invocation
 of breadcrumb signaling
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

Quoting Tvrtko Ursulin (2019-12-18 16:48:20)
> 
> On 17/12/2019 09:56, Chris Wilson wrote:
> > Only signal the breadcrumbs from inside the irq_work, simplifying our
> > interface and calling conventions. The micro-optimisation here is that
> > by always using the irq_work interface, we know we are always inside an
> > irq-off critical section for the breadcrumb signaling and can ellide
> > save/restore of the irq flags.
> 
> Assuming no significant impact on saturated media workloads:

v5.5-rc1 and v5.5-rc2 have been quite a rollercoaster; but this patch
does not seem to affect wsim, apart from making the flamegraphs tidier.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
