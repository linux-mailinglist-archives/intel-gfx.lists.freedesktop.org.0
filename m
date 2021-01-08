Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E10022EF533
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555146E833;
	Fri,  8 Jan 2021 15:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10.mo3.mail-out.ovh.net (10.mo3.mail-out.ovh.net
 [87.98.165.232])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B99CD6E833
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:54:36 +0000 (UTC)
Received: from player718.ha.ovh.net (unknown [10.108.57.141])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id E4EB9273679
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 16:54:34 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player718.ha.ovh.net (Postfix) with ESMTPSA id 9946219B191B3;
 Fri,  8 Jan 2021 15:54:30 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-98R002a52ab1c7-da26-4897-bafe-388f1d92b3e4,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 17:54:28 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/iANAEgWXF6YlXX@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <20210107221724.10036-2-chris@chris-wilson.co.uk>
 <X/h3vgxF4DlV5jbN@jack.zhora.eu>
 <161011948741.28368.9687495779764618235@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161011948741.28368.9687495779764618235@build.alporthouse.com>
X-Ovh-Tracer-Id: 9239697587658408457
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeghedgudegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejudekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Restore ce->signal flush
 before releasing virtual engine
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

> > > +void intel_context_remove_breadcrumbs(struct intel_context *ce,
> > > +                                   struct intel_breadcrumbs *b)
> > > +{
> > > +     struct i915_request *rq, *rn;
> > > +     bool release = false;
> > > +     unsigned long flags;
> > > +
> > > +     spin_lock_irqsave(&ce->signal_lock, flags);
> > > +
> > > +     if (list_empty(&ce->signals))
> > > +             goto unlock;
> > 
> > does "list_empty" need to be under lock or you've been lazy?
> 
> This check is required to be under the lock, we have to be careful about
> not calling remove_signaling_context() from here and signal_irq_work.
> I put the unlocked check in the caller to avoid the function call as well.

OK...

Reviewed-by: Andi Shyti <andi.shyti@intel.com>

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
