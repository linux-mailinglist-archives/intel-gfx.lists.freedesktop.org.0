Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFBF28D6F1
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 01:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8F66E98B;
	Tue, 13 Oct 2020 23:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21EE16E98B
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Oct 2020 23:29:15 +0000 (UTC)
IronPort-SDR: qITGlgFZ3x8zSBW0L/yaGkPIIqks4cBZYd5riVEK29dTTqOkU5ozJ/VSxiCuQ9zDPeINt0WIef
 DCg17kc72DPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166063498"
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="166063498"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 16:29:14 -0700
IronPort-SDR: W1wiaBIyGNDzvawaPh2KzjT7RTcNgY7vDAnIgLaaCMxCkj0uY4UKv0Crf3/zqy1eSKa876Hhb5
 nylKxztWyihQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,372,1596524400"; d="scan'208";a="345438110"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 13 Oct 2020 16:29:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 16:29:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 13 Oct 2020 16:29:13 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Tue, 13 Oct 2020 16:29:13 -0700
From: "Tang, CQ" <cq.tang@intel.com>
To: "Tang, CQ" <cq.tang@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
Thread-Index: AQHWoUw7vknVeKpXoUG0dRnaVPrLvamVsYWggAB79wD//4wCsIAAbQPg
Date: Tue, 13 Oct 2020 23:29:13 +0000
Message-ID: <917a40e55bb64ff1a9692563eb459611@intel.com>
References: <20201013103256.31446-1-chris@chris-wilson.co.uk>
 <8c41461201764a0d8a05caba47d1589a@intel.com>
 <160260628825.2946.16678261690978530238@build.alporthouse.com>
 <daa1a1f388a94b07ad95ce5d12132925@intel.com>
In-Reply-To: <daa1a1f388a94b07ad95ce5d12132925@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
 high priority
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

i915_gem_free_object() is called by multiple threads/processes, they all add objects onto the same free_list. The free_list processing worker thread becomes bottle-neck. I see that the worker is mostly a single thread (with particular thread ID), but sometimes multiple threads are launched to process the 'free_list' work concurrently. But the processing speed is still slower than the multiple process's feeding speed, and 'free_list' is holding more and more memory.

The worker launching time is delayed a lot, we call queue_work() when we add the first object onto the empty 'free_list', but when the worker is launched, the 'free_list' has sometimes accumulated 1M objects. Maybe it is because of waiting currently running worker to finish?

This happens with direct call to __i915_gem_free_object_rcu() and no cond_resched().

--CQ

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Tang, CQ
> Sent: Tuesday, October 13, 2020 9:41 AM
> To: Chris Wilson <chris@chris-wilson.co.uk>; intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim workqueue
> high priority
> 
> 
> 
> > -----Original Message-----
> > From: Chris Wilson <chris@chris-wilson.co.uk>
> > Sent: Tuesday, October 13, 2020 9:25 AM
> > To: Tang, CQ <cq.tang@intel.com>; intel-gfx@lists.freedesktop.org
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make the GEM reclaim
> > workqueue high priority
> >
> > Quoting Tang, CQ (2020-10-13 17:19:27)
> > > Chris,
> > >     I tested this patch. It is still not enough, I keep catch running out of
> lmem.
> > Every worker invocation takes larger and larger freeing object count.
> > >
> >
> > Was that with the immediate call (not via call_rcu) to
> > __i915_gem_free_object_rcu?
> >
> > If this brings the freelist under control, the next item is judicious
> > use of cond_synchronize_rcu(). We just have to make sure we penalize
> > the right hog.
> >
> > Otherwise, we have to shotgun apply i915_gem_flush_free_objects() and
> > still find somewhere to put the rcu sync.
> 
> This is with call_rcu().
> 
> Then I removed cond_resched(), it does not help, and then I call
> __i915_gem_free_object_rcu() directly, still the same error, However, I
> noticed that sometimes 'queue_work()' return false, which means the work
> is already queued, how? The worker had been called so 'free_list' is empty:
> 
> [  117.381888] queue_work: 107967, 107930; 1 [  119.180230] queue_work:
> 125531, 125513; 1 [  121.349308] queue_work: 155017, 154996; 1 [  124.214885]
> queue_work: 193918, 193873; 1 [  127.967260] queue_work: 256838, 256776;
> 1 [  133.281045] queue_work: 345753, 345734; 1 [  141.457995] queue_work:
> 516943, 516859; 1 [  156.264420] queue_work: 863622, 863516; 1 [  156.322619]
> queue_work: 865849, 3163; 0 [  156.448551] queue_work: 865578, 7141; 0
> [  156.882985] queue_work: 866984, 24138; 0 [  157.952163] queue_work:
> 862902, 53365; 0 [  159.838412] queue_work: 842522, 95504; 0 [  174.321508]
> queue_work: 937179, 657323; 0
> 
> --CQ
> 
> > -Chris
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
