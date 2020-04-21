Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF8B1B21DD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 10:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A47E6E8EC;
	Tue, 21 Apr 2020 08:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C926E8EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 08:40:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20967834-1500050 for multiple; Tue, 21 Apr 2020 09:40:40 +0100
MIME-Version: 1.0
In-Reply-To: <87imhtmedi.fsf@gaia.fi.intel.com>
References: <20200420203040.8984-1-chris@chris-wilson.co.uk>
 <87imhtmedi.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158745843896.19285.398412829966914002@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 09:40:38 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Show the pstate limits
 on any failure to reset min
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

Quoting Mika Kuoppala (2020-04-21 09:28:41)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > We want to see the pstate limits whenever we fail to set the minimum
> > frequency as that may help for debugging.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

It was a nice idea but for soraka, it reports 0x000000ff, which means
unlimited [min = 0, max = ff]. Grr.

Thanks for the review, it may help for some systems!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
