Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93598398B4A
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 16:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0618E6E09A;
	Wed,  2 Jun 2021 14:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4895B6E09A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 14:01:32 +0000 (UTC)
IronPort-SDR: KC038/S7wQHh7V25qPfR9F738iywci/OGTwB/H9cV5psSaAeT0eJtZgtrAK73LWPWSHzgI3qQg
 kukTYLfnqwVQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="203604431"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="203604431"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 07:01:31 -0700
IronPort-SDR: sutUSiZ1LKFzzTb762onmNbRwS4hn88VPiA1cUhwhe1el66fqwvF0/TWb49IhEMiFnva9kQzwO
 fNBcnvTmibWQ==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="483048647"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 07:01:30 -0700
Date: Wed, 2 Jun 2021 17:01:27 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20210602140127.GB2936436@ideak-desk.fi.intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
 <20210526143729.2563672-2-imre.deak@intel.com>
 <20210602090527.GF8620@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602090527.GF8620@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix incorrect assert about
 pending power domain async-put work
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 02:35:28PM +0530, Anshuman Gupta wrote:
> On 2021-05-26 at 20:07:28 +0530, Imre Deak wrote:
> > It's possible that an already dequeued put_async_work() will release the
> > reference (*) that was put asynchronously after the dequeue happened.
> > This leaves an async-put work pending, without any reference to release.
> > A subsequent async-put may trigger the
> > 
> > drm_WARN_ON(!queue_delayed_work(&power_domains->async_put_work));
> > 
> > warn due to async_put_work() still pending. To avoid the warn, cancel
> > the pending async_put_work() when releasing the reference at (*) above.
>
> Not able to visulize the race here between __intel_display_power_put_async
> and intel_display_power_put_async_work() considering both are protected by
> power_domains->lock.
>
> queue_delayed_work_on() documentation says following about return value.
> "Return: %false if @work was already on a queue, %true otherwise."
> AFAIU from the doc, queue_delayed_work will return false only when
> work was in queue after dequeued put_async_work() it should return true ?

Yes, and so the WARN is triggered when __intel_display_power_put_async()
tries to queue a work when one is already pending in the queue:

1. get(A)
2. put_async(A)  -> queues put_async_work()
3. put_async_work() dequeued, blocking on power_domains->lock
4. get(A) -> grab_async_put_ref(), reacquires the ref that was put in 2.
5. put_async(A) -> queues put_async_work()
6. put_async_work() dequeued in 3. unblocks, releases the ref that was put in
   5., put_async_work() queued in 5. still pending in the queue, without
   any reference to release.
7. get(A)
8. put_async(A) -> tries to queue put_async_work(), but it's already
   pending -> WARN triggers.

The patch avoids the WARN in 8 by cancelling the queued work at 6.

> Thanks,
> Anshuman Gupta.
> > 
> > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/3421
> > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/2289
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 2f7d1664c4738..a95bbf23e6b7c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -2263,6 +2263,12 @@ intel_display_power_put_async_work(struct work_struct *work)
> >  			fetch_and_zero(&power_domains->async_put_domains[1]);
> >  		queue_async_put_domains_work(power_domains,
> >  					     fetch_and_zero(&new_work_wakeref));
> > +	} else {
> > +		/*
> > +		 * Cancel the work that got queued after this one got dequeued,
> > +		 * since here we released the corresponding async-put reference.
> > +		 */
> > +		cancel_delayed_work(&power_domains->async_put_work);
> >  	}
> >  
> >  out_verify:
> > -- 
> > 2.27.0
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
