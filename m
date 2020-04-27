Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A501BAFDD
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 23:01:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B357989ECD;
	Mon, 27 Apr 2020 21:01:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5.mo177.mail-out.ovh.net (5.mo177.mail-out.ovh.net
 [46.105.39.154])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6880E89ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 21:01:26 +0000 (UTC)
Received: from player773.ha.ovh.net (unknown [10.110.208.147])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id BBA3F12DA39
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 22:42:43 +0200 (CEST)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player773.ha.ovh.net (Postfix) with ESMTPSA id 3723511E3C232;
 Mon, 27 Apr 2020 20:42:42 +0000 (UTC)
Date: Mon, 27 Apr 2020 23:42:40 +0300
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200427204240.GE3168@jack.zhora.eu>
References: <20200427085408.13879-1-chris@chris-wilson.co.uk>
 <20200427085408.13879-9-chris@chris-wilson.co.uk>
 <158799124667.17035.5417544090527568555@build.alporthouse.com>
 <158800720069.17035.8320088549773897221@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158800720069.17035.8320088549773897221@build.alporthouse.com>
X-Ovh-Tracer-Id: 4882746422906176009
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrheelgddugeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjeefrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

On Mon, Apr 27, 2020 at 06:06:40PM +0100, Chris Wilson wrote:
> Quoting Chris Wilson (2020-04-27 13:40:46)
> > Quoting Chris Wilson (2020-04-27 09:54:08)
> > > We reduced the clocks slowly after a boost event based on the
> > > observation that the smoothness of animations suffered. However, since
> > > reducing the evalution intervals, we should be able to respond to the
> > > rapidly fluctuating workload of a simple desktop animation and so
> > > restore the more aggressive downclocking.
> > > 
> > > References: 2a8862d2f3da ("drm/i915: Reduce the RPS shock")
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > 
> > *** ANECDOTAL ***
> 
> > I spot checked a few games during scenes where the GPU was not capped
> > out, and it was drawing about ~100MHz less for ~1W less.
> 
> For example, vsync'ed Talos,
> 
> hw: 59.7
> 2553.86,Joules,power/energy-pkg/,192545269820,100.00,,
> 1355.92,Joules,power/energy-cores/,192545266374,100.00,,
> 556.36,Joules,power/energy-gpu/,192545263536,100.00,,
> 86989,M,i915/actual-frequency/,192545247535,100.00,,
> 12736813129,ns,i915/rc6-residency/,192545239813,100.00,,
> 118321566117,ns,i915/rcs0-busy/,192545235095,100.00,,
> 0,ns,i915/bcs0-busy/,192545229596,100.00,,
> 0,ns,i915/vcs0-busy/,192545222782,100.00,,
> 
> manual: 59.7
> 2490.58,Joules,power/energy-pkg/,190751537693,100.00,,
> 1447.89,Joules,power/energy-cores/,190751542360,100.00,,
> 394.93,Joules,power/energy-gpu/,190751543518,100.00,,
> 67956,M,i915/actual-frequency/,190751526709,100.00,,
> 40240837120,ns,i915/rc6-residency/,190751523820,100.00,,
> 147090761985,ns,i915/rcs0-busy/,190751525291,100.00,,
> 0,ns,i915/bcs0-busy/,190751523611,100.00,,
> 0,ns,i915/vcs0-busy/,190751520733,100.00,,
> 
> > *** ANECDOTAL ***

Thanks anecdotes and the measurements!

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
