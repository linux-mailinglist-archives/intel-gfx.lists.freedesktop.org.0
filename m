Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 004812EF4EB
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 650656E826;
	Fri,  8 Jan 2021 15:36:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1870 seconds by postgrey-1.36 at gabe;
 Fri, 08 Jan 2021 15:36:18 UTC
Received: from 2.mo69.mail-out.ovh.net (2.mo69.mail-out.ovh.net
 [178.33.251.80])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E1C6E826
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:36:17 +0000 (UTC)
Received: from player795.ha.ovh.net (unknown [10.108.54.108])
 by mo69.mail-out.ovh.net (Postfix) with ESMTP id B5813A8952
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 16:18:28 +0100 (CET)
Received: from etezian.org (213-243-141-64.bb.dnainternet.fi [213.243.141.64])
 (Authenticated sender: andi@etezian.org)
 by player795.ha.ovh.net (Postfix) with ESMTPSA id 8D41619A5251E;
 Fri,  8 Jan 2021 15:18:24 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass
 (GARM-103G005df885691-0f8d-4233-8753-5e4a910c3db8,
 83D1C09382E53F50CE2429AE6C9B6AA8FD9DCB87) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 213.243.141.64
Date: Fri, 8 Jan 2021 17:18:22 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <X/h3vgxF4DlV5jbN@jack.zhora.eu>
References: <20210107221724.10036-1-chris@chris-wilson.co.uk>
 <20210107221724.10036-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107221724.10036-2-chris@chris-wilson.co.uk>
X-Ovh-Tracer-Id: 8630022787770204681
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrvdeghedgtdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecuggftrfgrthhtvghrnheptdfgudduhfefueeujeefieehtdeftefggeevhefgueellefhudetgeeikeduieefnecukfhppedtrddtrddtrddtpddvudefrddvgeefrddugedurdeigeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejleehrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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

Hi Chris,

> +void intel_context_remove_breadcrumbs(struct intel_context *ce,
> +				      struct intel_breadcrumbs *b)
> +{
> +	struct i915_request *rq, *rn;
> +	bool release = false;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&ce->signal_lock, flags);
> +
> +	if (list_empty(&ce->signals))
> +		goto unlock;

does "list_empty" need to be under lock or you've been lazy?

The rest looks fine,
Andi

> +	list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
> +		GEM_BUG_ON(!__i915_request_is_complete(rq));
> +		if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
> +					&rq->fence.flags))
> +			continue;
> +
> +		list_del_rcu(&rq->signal_link);
> +		irq_signal_request(rq, b);
> +		i915_request_put(rq);
> +	}
> +	release = remove_signaling_context(b, ce);
> +
> +unlock:
> +	spin_unlock_irqrestore(&ce->signal_lock, flags);
> +	if (release)
> +		intel_context_put(ce);
> +
> +	while (atomic_read(&b->signaler_active))
> +		cpu_relax();
> +}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
