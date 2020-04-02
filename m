Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DDC19CB3A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 22:31:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B77E6E157;
	Thu,  2 Apr 2020 20:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 645856E157
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 20:31:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20781385-1500050 for multiple; Thu, 02 Apr 2020 21:30:54 +0100
MIME-Version: 1.0
In-Reply-To: <87369lprrf.fsf@gaia.fi.intel.com>
References: <20200401110435.30389-1-chris@chris-wilson.co.uk>
 <87369lprrf.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158585945503.5852.11386030936984510648@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 02 Apr 2020 21:30:55 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Peek at the next
 submission for error interrupts
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

Quoting Mika Kuoppala (2020-04-02 21:16:52)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > If we receive the error interrupt before the CS interrupt, we may find
> > ourselves without an active request to reset, skipping the GPU reset.
> > All because the attempt to reset was too early.
> >
> 
> With the tracing, we will see the the out of sync situations
> so
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

I think that's the main benefit and it makes sense to have this patch
by itself so that we can get a bit more info perhaps next time. Then if
it keeps on failing, that might justify trying the second patch.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
