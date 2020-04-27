Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F981BAABA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:06:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFD989F53;
	Mon, 27 Apr 2020 17:06:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68BE189E5A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:06:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21038046-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 18:06:41 +0100
MIME-Version: 1.0
In-Reply-To: <158799124667.17035.5417544090527568555@build.alporthouse.com>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-9-chris@chris-wilson.co.uk>
 <158799124667.17035.5417544090527568555@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Message-ID: <158800720069.17035.8320088549773897221@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 18:06:40 +0100
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/gt: Restore aggressive
 post-boost downclocking
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

Quoting Chris Wilson (2020-04-27 13:40:46)
> Quoting Chris Wilson (2020-04-27 09:54:08)
> > We reduced the clocks slowly after a boost event based on the
> > observation that the smoothness of animations suffered. However, since
> > reducing the evalution intervals, we should be able to respond to the
> > rapidly fluctuating workload of a simple desktop animation and so
> > restore the more aggressive downclocking.
> > 
> > References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> *** ANECDOTAL ***

> I spot checked a few games during scenes where the GPU was not capped
> out, and it was drawing about ~100MHz less for ~1W less.

For example, vsync'ed Talos,

hw: 59.7
2553.86,Joules,power/energy-pkg/,192545269820,100.00,,
1355.92,Joules,power/energy-cores/,192545266374,100.00,,
556.36,Joules,power/energy-gpu/,192545263536,100.00,,
86989,M,i915/actual-frequency/,192545247535,100.00,,
12736813129,ns,i915/rc6-residency/,192545239813,100.00,,
118321566117,ns,i915/rcs0-busy/,192545235095,100.00,,
0,ns,i915/bcs0-busy/,192545229596,100.00,,
0,ns,i915/vcs0-busy/,192545222782,100.00,,

manual: 59.7
2490.58,Joules,power/energy-pkg/,190751537693,100.00,,
1447.89,Joules,power/energy-cores/,190751542360,100.00,,
394.93,Joules,power/energy-gpu/,190751543518,100.00,,
67956,M,i915/actual-frequency/,190751526709,100.00,,
40240837120,ns,i915/rc6-residency/,190751523820,100.00,,
147090761985,ns,i915/rcs0-busy/,190751525291,100.00,,
0,ns,i915/bcs0-busy/,190751523611,100.00,,
0,ns,i915/vcs0-busy/,190751520733,100.00,,

> *** ANECDOTAL ***
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
