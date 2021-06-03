Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F20E2399A91
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 08:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CE16E039;
	Thu,  3 Jun 2021 06:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ADB86E039
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 06:22:31 +0000 (UTC)
IronPort-SDR: YtmK3hROGD3YNkKWrbhaSmMw94f/0ZfaJ0cfSebPE0WIi/x2YeL5Qqx2+35n9ZtyGN2drL/Htg
 n293Lb+ZV8GA==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="191323128"
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="191323128"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 23:22:29 -0700
IronPort-SDR: tYSiZ9u2Zh/CK7/bgfRu6HEIPXIAoUZ3L3FjqLgAfAQJ5OrzUSUiBOBblE0F+Zt88GKSIOq72r
 wNt+tqKx4X7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,244,1616482800"; d="scan'208";a="417260442"
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138])
 by orsmga002.jf.intel.com with ESMTP; 02 Jun 2021 23:22:28 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 3 Jun 2021 07:22:27 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Thu, 3 Jun 2021 11:52:26 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Fix incorrect assert about
 pending power domain async-put work
Thread-Index: AQHXUjzGrqOW7qCnM0ChQ6p7rZxTTasAeGKA///2gICAAW1SIA==
Date: Thu, 3 Jun 2021 06:22:25 +0000
Message-ID: <efa7bfa8f8fb4d799c70aa4f093d0c11@intel.com>
References: <20210526143729.2563672-1-imre.deak@intel.com>
 <20210526143729.2563672-2-imre.deak@intel.com>
 <20210602090527.GF8620@intel.com>
 <20210602140127.GB2936436@ideak-desk.fi.intel.com>
In-Reply-To: <20210602140127.GB2936436@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, June 2, 2021 7:31 PM
> To: Gupta, Anshuman <anshuman.gupta@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix incorrect assert about pending
> power domain async-put work
> 
> On Wed, Jun 02, 2021 at 02:35:28PM +0530, Anshuman Gupta wrote:
> > On 2021-05-26 at 20:07:28 +0530, Imre Deak wrote:
> > > It's possible that an already dequeued put_async_work() will release
> > > the reference (*) that was put asynchronously after the dequeue happened.
> > > This leaves an async-put work pending, without any reference to release.
> > > A subsequent async-put may trigger the
> > >
> > > drm_WARN_ON(!queue_delayed_work(&power_domains-
> >async_put_work));
> > >
> > > warn due to async_put_work() still pending. To avoid the warn,
> > > cancel the pending async_put_work() when releasing the reference at (*)
> above.
> >
> > Not able to visulize the race here between
> > __intel_display_power_put_async and
> > intel_display_power_put_async_work() considering both are protected by
> power_domains->lock.
> >
> > queue_delayed_work_on() documentation says following about return value.
> > "Return: %false if @work was already on a queue, %true otherwise."
> > AFAIU from the doc, queue_delayed_work will return false only when
> > work was in queue after dequeued put_async_work() it should return true ?
> 
> Yes, and so the WARN is triggered when __intel_display_power_put_async()
> tries to queue a work when one is already pending in the queue:
> 
> 1. get(A)
> 2. put_async(A)  -> queues put_async_work() 3. put_async_work() dequeued,
> blocking on power_domains->lock 4. get(A) -> grab_async_put_ref(), reacquires
> the ref that was put in 2.
> 5. put_async(A) -> queues put_async_work() 6. put_async_work() dequeued in 3.
> unblocks, releases the ref that was put in
>    5., put_async_work() queued in 5. still pending in the queue, without
>    any reference to release.
> 7. get(A)
> 8. put_async(A) -> tries to queue put_async_work(), but it's already
>    pending -> WARN triggers.
> 
> The patch avoids the WARN in 8 by cancelling the queued work at 6.
Thanks for explaining it.
Patch looks good to me.
Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> > Thanks,
> > Anshuman Gupta.
> > >
> > > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/3421
> > > Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/2289
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_power.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 2f7d1664c4738..a95bbf23e6b7c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -2263,6 +2263,12 @@ intel_display_power_put_async_work(struct
> work_struct *work)
> > >  			fetch_and_zero(&power_domains-
> >async_put_domains[1]);
> > >  		queue_async_put_domains_work(power_domains,
> > >
> fetch_and_zero(&new_work_wakeref));
> > > +	} else {
> > > +		/*
> > > +		 * Cancel the work that got queued after this one got dequeued,
> > > +		 * since here we released the corresponding async-put
> reference.
> > > +		 */
> > > +		cancel_delayed_work(&power_domains->async_put_work);
> > >  	}
> > >
> > >  out_verify:
> > > --
> > > 2.27.0
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
