Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C29D19D886
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:02:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751176E136;
	Fri,  3 Apr 2020 14:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B127E6E137
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 14:02:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20789420-1500050 for multiple; Fri, 03 Apr 2020 15:02:30 +0100
MIME-Version: 1.0
In-Reply-To: <b3ce59260b89a55bb192ba6dfebc32ce9ca131dc.camel@linux.intel.com>
References: <20200402183836.21508-1-chris@chris-wilson.co.uk>
 <20200402184037.21630-1-chris@chris-wilson.co.uk>
 <b3ce59260b89a55bb192ba6dfebc32ce9ca131dc.camel@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158592254841.5852.16232423903281934321@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 03 Apr 2020 15:02:28 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Keep a per-engine request pools
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

Quoting Janusz Krzysztofik (2020-04-03 14:58:47)
> On Thu, 2020-04-02 at 19:40 +0100, Chris Wilson wrote:
> > Add a tiny per-engine request mempool so that we should always have a
> > request available for powermanagement allocations from tricky
> > contexts. This reserve is expected to be only used for kernel
> > contexts when barriers must be emitted [almost] without fail.
> > 
> > The main consumer for this reserved request is expected to be engine-pm,
> > for which we know that there will always be at least the previous pm
> > request that we can reuse under mempressure (so there should always be
> > a spare request for engine_park()).
> > 
> > This is an alternative to using a comparatively bulky mempool, which
> > requires custom handling for both our reserved allocation requirement
> > and to protect our TYPESAFE_BY_RCU slab cache.
> 
> This change resolves the issue for me, and being more simple than the
> mempool approach, looks still better.

Cool. I couldn't decide if mempool was worth it or not. If we needed
more than a single slot, definitely, but the impedance mismatch and that
the general advice is not to add more mempools suggest no.

Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
